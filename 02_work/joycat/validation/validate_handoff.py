from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote
import xml.etree.ElementTree as ET


REQUIRED = [
    "AGENTS.md",
    "context/WORKSPACE_CONTEXT.md",
    "context/CURRENT_INTENT.md",
    "01_inputs/project/KPI_TREE.md",
    "01_inputs/project/KPI_TREE.mm",
    "01_inputs/joycat/context.md",
    "01_inputs/joycat/DATA_DICTIONARY_JOYCAT.md",
    "01_inputs/joycat/Ad_Cost_GMV_all_platform v3.md",
    "01_inputs/joycat/Ad_Cost_GMV_all_platform v3.mm",
    "01_inputs/joycat/METRIC_TREE.md",
    "01_inputs/joycat/METRIC_TREE.mm",
    "01_inputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md",
    "01_inputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.mm",
    "01_inputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md",
    "01_inputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.mm",
    "02_work/joycat/GATE_2_CHECKLIST.md",
    "02_work/joycat/coverage_audit/coverage_6_pairs_detail.csv",
    "02_work/joycat/coverage_audit/coverage_audit_summary.json",
    "04_reference/META_ALL_METRICS.mm",
]

ACTIVE_MD_DIRS = ["context", "01_inputs/project", "01_inputs/joycat"]
ACTIVE_MM_DIRS = ["01_inputs/project", "01_inputs/joycat"]
LINK_RE = re.compile(r"(?<!!)\[[^\]]+\]\(([^)]+)\)")


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def active_files(root: Path, folders: list[str], suffix: str) -> list[Path]:
    files: list[Path] = []
    for folder in folders:
        base = root / folder
        if base.exists():
            files.extend(path for path in base.glob(f"*{suffix}") if path.is_file())
    return sorted(set(files), key=lambda path: str(path).casefold())


def validate_links(root: Path, markdown_files: list[Path]) -> list[dict[str, str | int]]:
    broken: list[dict[str, str | int]] = []
    for source in markdown_files:
        text = source.read_text(encoding="utf-8")
        for line_number, line in enumerate(text.splitlines(), start=1):
            for match in LINK_RE.finditer(line):
                raw_target = match.group(1).strip()
                if not raw_target or raw_target.startswith(("#", "http://", "https://", "mailto:")):
                    continue
                target_text = raw_target.split("#", 1)[0]
                if not target_text:
                    continue
                target = (source.parent / unquote(target_text)).resolve()
                if not target.exists():
                    broken.append(
                        {
                            "source": str(source.relative_to(root)),
                            "line": line_number,
                            "target": raw_target,
                        }
                    )
    return broken


def validate_mm(root: Path, mm_files: list[Path]) -> dict[str, dict[str, object]]:
    result: dict[str, dict[str, object]] = {}
    for path in mm_files:
        record: dict[str, object] = {
            "parse_ok": False,
            "node_count": 0,
            "duplicate_ids": [],
            "broken_links": [],
        }
        try:
            parsed = ET.parse(path).getroot()
            ids = [node.get("ID") for node in parsed.iter("node") if node.get("ID")]
            seen: set[str] = set()
            duplicates: list[str] = []
            for value in ids:
                if value in seen and value not in duplicates:
                    duplicates.append(value)
                seen.add(value)
            broken_links: list[str] = []
            for node in parsed.iter("node"):
                raw_link = (node.get("LINK") or "").strip()
                if not raw_link or raw_link.startswith(("#", "http://", "https://", "mailto:")):
                    continue
                target_text = unquote(raw_link.split("#", 1)[0])
                if not target_text:
                    continue
                candidate = Path(target_text)
                target = candidate if candidate.is_absolute() else (path.parent / candidate).resolve()
                if not target.exists() and raw_link not in broken_links:
                    broken_links.append(raw_link)
            record.update(
                parse_ok=True,
                node_count=len(ids),
                duplicate_ids=duplicates,
                broken_links=broken_links,
            )
        except Exception as exc:  # validator must report the file, not hide the failure
            record["error"] = str(exc)
        result[str(path.relative_to(root))] = record
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description="Validate the active Joycat handoff in any workspace location.")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[3])
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    root = args.root.expanduser().resolve()
    output = (args.output or root / "02_work/joycat/validation/handoff_validation.json").resolve()

    required = {relative: (root / relative).is_file() for relative in REQUIRED}
    markdown_files = active_files(root, ACTIVE_MD_DIRS, ".md")
    mm_files = active_files(root, ACTIVE_MM_DIRS, ".mm")
    reference_mm = root / "04_reference/META_ALL_METRICS.mm"
    if reference_mm.is_file():
        mm_files.append(reference_mm)

    broken_links = validate_links(root, markdown_files)
    xml = validate_mm(root, sorted(set(mm_files), key=lambda path: str(path).casefold()))

    raw_root = root / "01_inputs/joycat/raw"
    raw_files = sorted((path for path in raw_root.rglob("*") if path.is_file()), key=lambda p: str(p).casefold())
    raw_manifest = [
        {
            "path": str(path.relative_to(root)),
            "size_bytes": path.stat().st_size,
            "sha256": sha256(path),
        }
        for path in raw_files
    ]

    semantic_files = [
        root / "01_inputs/joycat/DATA_DICTIONARY_JOYCAT.md",
        root / "01_inputs/joycat/METRIC_TREE.md",
        root / "01_inputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md",
    ]
    semantic_text = "\n".join(path.read_text(encoding="utf-8") for path in semantic_files if path.is_file())
    semantics = {
        "has_meta_purchases_attributed": "meta_purchases_attributed" in semantic_text,
        "has_business_orders_eligible": "business_orders_eligible" in semantic_text,
        "has_business_gmv": "GMV_business" in semantic_text,
        "keeps_meta_purchase_value_separate": "Purchases conversion value" in semantic_text,
    }

    errors: list[str] = []
    missing = [path for path, exists in required.items() if not exists]
    if missing:
        errors.append(f"Missing required files: {len(missing)}")
    if broken_links:
        errors.append(f"Broken active Markdown links: {len(broken_links)}")
    bad_xml = [
        name
        for name, value in xml.items()
        if not value["parse_ok"] or value["duplicate_ids"] or value["broken_links"]
    ]
    if bad_xml:
        errors.append(f"Invalid mindmaps: {len(bad_xml)}")
    if not raw_files:
        errors.append("Raw folder is missing or empty")
    if not all(semantics.values()):
        errors.append("Purchase/GMV semantic contract is incomplete")

    result = {
        "generated_at": datetime.now(timezone.utc).isoformat(),
        "workspace_root": str(root),
        "validator": str(Path(__file__).resolve()),
        "required_files": required,
        "markdown": {"files_checked": len(markdown_files), "broken_links": broken_links},
        "mindmaps": xml,
        "semantics": semantics,
        "raw_manifest": {"file_count": len(raw_manifest), "files": raw_manifest},
        "errors": errors,
        "technical_pass": not errors,
        "gate_2_status": "WAITING_FOR_SINH_REVIEW",
        "note": "Technical PASS does not approve Gate 2 or authorize ETL/Power BI.",
    }

    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0 if result["technical_pass"] else 1


if __name__ == "__main__":
    sys.exit(main())
