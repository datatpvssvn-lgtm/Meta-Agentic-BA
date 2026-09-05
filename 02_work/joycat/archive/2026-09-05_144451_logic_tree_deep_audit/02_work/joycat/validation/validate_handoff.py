from pathlib import Path
import json
import re
import xml.etree.ElementTree as ET


ROOT = Path(r"D:\Meta Agentic BA")
OUT = ROOT / "02_work" / "joycat" / "validation" / "handoff_validation.json"

required = [
    "context/WORKSPACE_CONTEXT.md",
    "context/CURRENT_INTENT.md",
    "01_inputs/joycat/context.md",
    "03_outputs/joycat/LOGIC_TREE.md",
    "03_outputs/joycat/LOGIC_TREE.mm",
    "03_outputs/joycat/KPI_TREE.md",
    "03_outputs/joycat/KPI_TREE.mm",
    "03_outputs/joycat/METRIC_TREE.md",
    "03_outputs/joycat/METRIC_TREE.mm",
    "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md",
    "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.mm",
    "02_work/joycat/archive/2026-09-05_context_logic_mapping_before_merge/ARCHIVE_MAPPING.md",
]

result = {"required_files": {}, "xml": {}, "content_checks": {}, "raw": {}}
for rel in required:
    result["required_files"][rel] = (ROOT / rel).exists()

for rel in [
    "03_outputs/joycat/LOGIC_TREE.mm",
    "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.mm",
    "03_outputs/joycat/METRIC_TREE.mm",
    "03_outputs/joycat/KPI_TREE.mm",
]:
    p = ROOT / rel
    entry = {"parse_ok": False, "node_count": 0, "duplicate_ids": []}
    try:
        root = ET.parse(p).getroot()
        ids = [n.get("ID") for n in root.iter("node") if n.get("ID")]
        seen = set()
        dup = sorted({x for x in ids if x in seen or seen.add(x)})
        entry.update(parse_ok=True, node_count=len(ids), duplicate_ids=dup)
    except Exception as exc:
        entry["error"] = str(exc)
    result["xml"][rel] = entry

logic_md = (ROOT / "03_outputs/joycat/LOGIC_TREE.md").read_text(encoding="utf-8")
logic_mm = (ROOT / "03_outputs/joycat/LOGIC_TREE.mm").read_text(encoding="utf-8")
formula_md = (ROOT / "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md").read_text(encoding="utf-8")
contexts = "\n".join((ROOT / p).read_text(encoding="utf-8") for p in [
    "context/WORKSPACE_CONTEXT.md", "context/CURRENT_INTENT.md", "01_inputs/joycat/context.md"
])

result["content_checks"] = {
    "four_dimensions_in_logic_md": all(x in logic_md for x in ["Chiều 1 — Nền tảng", "Chiều 2 — Sản phẩm", "Chiều 3 — Phễu", "Chiều 4 — Campaign objective"]),
    "six_pairs_in_logic_md": all(f"{i}." in logic_md and f"Cặp {i}" in logic_mm for i in range(1, 7)),
    "logic_md_has_data_gate": "Data gate" in logic_md,
    "logic_md_has_objective_contract": all(x in logic_md for x in ["Objective suy luận", "human-curated", "campaign_objective_meta", "objective_mapping_version"]),
    "logic_md_has_etl_and_audit": all(x in logic_md for x in ["Thiết kế ETL tối thiểu", "Audit dataset", "Kiểm tra join bắt buộc"]),
    "logic_mm_has_15_main_branches": all(f"{i}. " in logic_mm for i in range(1, 16)),
    "formula_uses_business_gmv": "Business ROAS = GMV / Ads Cost" in formula_md,
    "formula_no_unconditional_roas_arrows": not bool(re.search(r"ROAS\s*[↑↓]|→\s*ROAS\s*(tăng|giảm)", formula_md, flags=re.I)),
    "context_new_tree_definition": all(x in contexts for x in ["KPI Tree: lượng hóa", "Metric Tree: công thức", "Logic Tree: đường đi"]),
    "context_points_to_consolidated_logic": all(x in contexts for x in ["LOGIC_TREE.md", "LOGIC_TREE.mm", "đã hợp nhất"]),
    "no_stale_primary_refs": not any(x in contexts for x in ["DIMENSION_MAPPING_VA_DO_PHU_DATASET.md", "DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md", "Ad_Cost_cap_2_v3.mm"]),
}

raw_files = [p for p in (ROOT / "01_inputs/joycat/raw").rglob("*") if p.is_file()]
result["raw"] = {
    "file_count": len(raw_files),
    "xlsx_count": sum(p.suffix.lower() == ".xlsx" for p in raw_files),
    "csv_count": sum(p.suffix.lower() == ".csv" for p in raw_files),
    "new_output_files_inside_raw": [str(p.relative_to(ROOT)) for p in raw_files if p.name in {"LOGIC_TREE.md", "LOGIC_TREE.mm", "handoff_validation.json"}],
}

result["overall_pass"] = (
    all(result["required_files"].values())
    and all(v["parse_ok"] and not v["duplicate_ids"] for v in result["xml"].values())
    and all(result["content_checks"].values())
    and not result["raw"]["new_output_files_inside_raw"]
)

OUT.parent.mkdir(parents=True, exist_ok=True)
OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
print(json.dumps(result, ensure_ascii=False, indent=2))
