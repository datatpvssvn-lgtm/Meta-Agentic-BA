from __future__ import annotations

import json
import argparse
from collections import defaultdict
from pathlib import Path


WORKSPACE = Path(__file__).resolve().parents[3]
INVENTORY = WORKSPACE / "02_work" / "joycat" / "dataset_audit" / "schema_inventory.json"


def main() -> None:
    parser = argparse.ArgumentParser(description="Summarize a portable Joycat schema inventory.")
    parser.add_argument("--root", type=Path, default=WORKSPACE)
    parser.add_argument("--inventory", type=Path)
    args = parser.parse_args()
    root = args.root.expanduser().resolve()
    inventory = (args.inventory or root / "02_work" / "joycat" / "dataset_audit" / "schema_inventory.json").resolve()
    data = json.loads(inventory.read_text(encoding="utf-8"))
    preferred = [f for f in data["files"] if f["relative_path"].startswith("meta_ads\\preferred_candidate\\")]
    print("=== PREFERRED CANDIDATE ===")
    level_fields: dict[str, list[set[str]]] = defaultdict(list)
    all_preferred_fields: set[str] = set()
    for record in preferred:
        sheet = record["sheets"][0]
        name = Path(record["relative_path"]).name
        if "Campaigns" in name:
            level = "Campaign"
        elif "Ad-sets" in name:
            level = "Ad set"
        else:
            level = "Ad"
        fields = set(sheet["headers"])
        level_fields[level].append(fields)
        all_preferred_fields |= fields
        print(f"\n{level} | {name} | rows={sheet['max_row']} | cols={len(sheet['headers'])}")
        print(" | ".join(sheet["headers"]))

    print("\n=== INTERSECTION / UNION BY LEVEL ===")
    for level in ("Campaign", "Ad set", "Ad"):
        groups = level_fields[level]
        intersection = set.intersection(*groups) if groups else set()
        union = set.union(*groups) if groups else set()
        print(f"\n{level}: intersection={len(intersection)}, union={len(union)}, inconsistent={len(union-intersection)}")
        print("INCONSISTENT:", " | ".join(sorted(union - intersection)) or "none")

    print("\n=== ALL PREFERRED FIELDS ===")
    print("\n".join(sorted(all_preferred_fields)))

    print("\n=== BUSINESS / MAPPING WORKBOOKS ===")
    for record in data["files"]:
        rel = record["relative_path"]
        if not rel.startswith("business_workbooks\\") and "overview.xlsx" not in rel:
            continue
        print(f"\nFILE: {rel}")
        for sheet in record.get("sheets", []):
            print(f"  SHEET: {sheet['sheet']} rows={sheet['max_row']} cols={sheet['max_column']} header_row={sheet['header_row']}")
            print("   ", " | ".join(sheet["headers"]))

    print("\n=== META VARIANTS ===")
    for record in data["files"]:
        rel = record["relative_path"]
        if not rel.startswith("meta_ads\\variants\\") or "overview.xlsx" in rel:
            continue
        print(f"\nFILE: {rel}")
        for sheet in record.get("sheets", []):
            print(f"  SHEET: {sheet['sheet']} rows={sheet['max_row']} cols={sheet['max_column']} header_row={sheet['header_row']}")
            print("   ", " | ".join(sheet["headers"]))

    print("\n=== FILES WITHOUT DETECTED HEADERS OR WITH ERRORS ===")
    for record in data["files"]:
        if record.get("error"):
            print(f"\nERROR: {record['relative_path']} -> {record['error']}")
        for sheet in record.get("sheets", []):
            if sheet["headers"]:
                continue
            print(f"\nNO HEADER: {record['relative_path']} | {sheet['sheet']}")
            for row in sheet.get("top_rows", []):
                print(f"  row {row['row']}: {row['values']}")


if __name__ == "__main__":
    main()
