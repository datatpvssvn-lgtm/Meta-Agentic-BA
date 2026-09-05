from pathlib import Path
import csv
import json
import re
import xml.etree.ElementTree as ET


ROOT = Path(r"D:\Meta Agentic BA")
OUT = ROOT / "02_work" / "joycat" / "validation" / "handoff_validation.json"

REQUIRED = [
    "context/WORKSPACE_CONTEXT.md", "context/CURRENT_INTENT.md", "01_inputs/joycat/context.md",
    "03_outputs/joycat/KPI_TREE.md", "03_outputs/joycat/KPI_TREE.mm",
    "03_outputs/joycat/METRIC_TREE.md", "03_outputs/joycat/METRIC_TREE.mm",
    "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md", "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.mm",
    "03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md", "03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.mm",
    "03_outputs/joycat/LOGIC_TREE.md", "03_outputs/joycat/LOGIC_TREE.mm",
    "02_work/joycat/coverage_audit/coverage_6_pairs_detail.csv",
    "02_work/joycat/coverage_audit/coverage_audit_summary.json",
    "02_work/joycat/archive/2026-09-05_logic_tree_rebuild_before/03_outputs/joycat/KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT.md",
]

MAPPING_HEADINGS = [
    "1. Đọc nhanh cho Duy và cậu Sinh", "2. Hợp đồng Context và bằng chứng",
    "3. Kiểm soát Tổng Ads Cost", "4. Chiều Nền tảng", "5. Chiều Sản phẩm",
    "6. Chiều Phễu", "7. Chiều Campaign objective",
    "8. Sáu cặp: công thức, nguồn và cách đối soát", "9. Coverage từng tổ hợp đã kiểm tra",
    "10. Đường phân tích các nhóm metric", "11. Quan hệ toán học và giới hạn diễn giải",
    "12. Funnel, drill-down và đường tới recommendation", "13. Hợp đồng ETL, modeling và report",
    "14. Ví dụ xuyên suốt bằng Campaign thật", "15. Nguồn, phần còn thiếu và kiểm định",
    "16. Phụ lục — 25 listing Joycat",
]

LOGIC_HEADINGS = [
    "1. Đọc nhanh", "2. Cổng vào trước khi phân tích",
    "3. TOFU — tạo độ phủ và tín hiệu đầu phễu",
    "4. MOFU — biến quan tâm thành click, tương tác sâu hoặc hội thoại",
    "5. BOFU — kiểm tra chuyển đổi thành đơn và GMV business",
    "6. Điều tra xuyên phễu và nhiều chiều", "7. Cây bằng chứng và recommendation",
    "8. Trạng thái nguồn và điểm dừng hiện tại", "9. Bản nói ngắn để Duy trình bày",
]

PAIR_NAMES = [
    "Nền tảng × Sản phẩm", "Nền tảng × Phễu", "Nền tảng × Campaign objective",
    "Phễu × Sản phẩm", "Sản phẩm × Campaign objective", "Phễu × Campaign objective",
]


def parse_mm(rel):
    entry = {"parse_ok": False, "node_count": 0, "duplicate_ids": []}
    parsed = None
    try:
        parsed = ET.parse(ROOT / rel).getroot()
        ids = [node.get("ID") for node in parsed.iter("node") if node.get("ID")]
        seen, duplicates = set(), []
        for item in ids:
            if item in seen and item not in duplicates:
                duplicates.append(item)
            seen.add(item)
        entry.update(parse_ok=True, node_count=len(ids), duplicate_ids=duplicates)
    except Exception as exc:
        entry["error"] = str(exc)
    return entry, parsed


def mm_content(root):
    if root is None:
        return [], ""
    map_root = root.find("node")
    if map_root is None:
        return [], ""
    main = [child.get("TEXT", "") for child in map_root.findall("node")]
    text = "\n".join(node.get("TEXT", "") for node in map_root.iter("node"))
    return main, text


result = {"required_files": {}, "xml": {}, "mapping_coverage": {}, "logic_tree": {}, "coverage": {}, "contexts": {}, "raw": {}}
for rel in REQUIRED:
    result["required_files"][rel] = (ROOT / rel).exists()

xml_roots = {}
for rel in [
    "03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.mm", "03_outputs/joycat/LOGIC_TREE.mm",
    "03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.mm",
    "03_outputs/joycat/METRIC_TREE.mm", "03_outputs/joycat/KPI_TREE.mm",
]:
    entry, parsed = parse_mm(rel)
    result["xml"][rel] = entry
    xml_roots[rel] = parsed

mapping_md = (ROOT / "03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md").read_text(encoding="utf-8")
mapping_headings = re.findall(r"^## (.+)$", mapping_md, flags=re.M)
mapping_mm_main, mapping_mm_text = mm_content(xml_roots["03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.mm"])
mapping_tokens = [
    "Ads Cost (Facebook, SP01)", "Ads Cost (Facebook, TOFU)",
    "Ads Cost (Facebook, Engagement - Messaging)", "Ads Cost (TOFU, SP01)",
    "Ads Cost (SP01, Engagement - Messaging)", "Ads Cost (TOFU, Engagement - Messaging)",
    "Campaign objective gốc", "Optimization/Performance goal", "Result indicator", "Objective suy luận",
    "64.834.557 VND", "9.252 VND", "dòng 15", "dòng 6",
]
result["mapping_coverage"] = {
    "md_exact_16_main_headings": mapping_headings == MAPPING_HEADINGS,
    "mm_exact_16_main_branches": mapping_mm_main == MAPPING_HEADINGS,
    "six_pairs_in_both": all(name in mapping_md and name in mapping_mm_text for name in PAIR_NAMES),
    "required_detail_in_both": all(token in mapping_md and token in mapping_mm_text for token in mapping_tokens),
    "sp01_to_sp25_in_both": all(f"SP{i:02d}" in mapping_md and f"SP{i:02d}" in mapping_mm_text for i in range(1, 26)),
    "no_banned_shorthand": not any(token in mapping_md or token in mapping_mm_text for token in [
        "Facebook Messaging", "SP01 Messaging", "TOFU Messaging", "AS CO", "AS SP", "AS TOF",
    ]),
}

logic_md = (ROOT / "03_outputs/joycat/LOGIC_TREE.md").read_text(encoding="utf-8")
logic_headings = re.findall(r"^## (.+)$", logic_md, flags=re.M)
logic_mm_main, logic_mm_text = mm_content(xml_roots["03_outputs/joycat/LOGIC_TREE.mm"])
logic_tokens = [
    "TOFU", "MOFU", "BOFU", "Comparator", "Data gate", "Campaign → Ad set → Ad",
    "bằng chứng hỗ trợ", "bằng chứng phản bác", "decision gate", "Objective suy luận",
    "Reach chất lượng", "CPR Messaging bằng 5–10% giá trị sản phẩm", "Messaging bằng 1–2% Reach",
    "DATA_MAPPING_COVERAGE_JOYCAT.md", "METRIC_TREE.md",
]
result["logic_tree"] = {
    "md_exact_9_main_headings": logic_headings == LOGIC_HEADINGS,
    "mm_exact_9_main_branches": logic_mm_main == LOGIC_HEADINGS,
    "required_logic_in_both": all(token.lower() in logic_md.lower() and token.lower() in logic_mm_text.lower() for token in logic_tokens),
    "no_unconditional_roas_arrow": not bool(re.search(r"ROAS\s*[↑↓]|→\s*ROAS\s*(tăng|giảm)", logic_md, flags=re.I)),
    "not_formula_inventory": len(re.findall(r"^```", logic_md, flags=re.M)) <= 14,
    "owner_assumptions_not_facts": all(token in logic_md for token in [
        "objective dự kiến/owner mapping", "Giả định chưa xác minh", "Chưa có decision gate",
    ]),
}

summary = json.loads((ROOT / "02_work/joycat/coverage_audit/coverage_audit_summary.json").read_text(encoding="utf-8"))
with (ROOT / "02_work/joycat/coverage_audit/coverage_6_pairs_detail.csv").open(encoding="utf-8-sig", newline="") as handle:
    rows = list(csv.DictReader(handle))
platform_rows = [row for row in rows if row["Cặp phân tích"].startswith("Nền tảng")]
reconciles = [
    values["mapped_rows"] == values["demo_rows"] and values["mapped_spend"] == values["demo_spend"]
    for periods in summary["pair_reconciliation"].values() for values in periods.values()
]
result["coverage"] = {
    "row_count_279": len(rows) == summary.get("coverage_row_count") == 279,
    "all_six_pairs_present": set(row["Cặp phân tích"] for row in rows) == set(PAIR_NAMES),
    "platform_rows_blocked_and_blank": bool(platform_rows) and all(
        row["Trạng thái coverage"] == "Thiếu nguồn/thiếu chiều" and row["Ads Cost (VND)"] == ""
        for row in platform_rows
    ),
    "mapped_pairs_reconcile_to_demo": all(reconciles),
    "april_difference_9252": summary["demo_control"]["2026-04"]["spend"] - summary["raw_control"]["2026-04"]["sum_positive_campaign_spend"] == 9252.0,
}

contexts = {
    rel: (ROOT / rel).read_text(encoding="utf-8")
    for rel in ["context/WORKSPACE_CONTEXT.md", "context/CURRENT_INTENT.md", "01_inputs/joycat/context.md"]
}
context_all = "\n".join(contexts.values())
result["contexts"] = {
    "versions_updated": all(token in text for token, text in [
        ("Phiên bản: 11.0", contexts["context/WORKSPACE_CONTEXT.md"]),
        ("Phiên bản: 16.0", contexts["context/CURRENT_INTENT.md"]),
        ("Phiên bản: 12.0", contexts["01_inputs/joycat/context.md"]),
    ]),
    "both_current_artifacts_linked": all(
        "LOGIC_TREE.md" in text and "DATA_MAPPING_COVERAGE_JOYCAT.md" in text for text in contexts.values()
    ),
    "review_not_production": all("review" in text.lower() and "production" in text.lower() for text in contexts.values()),
    "objective_human_mapping_preserved": "Objective suy luận" in context_all and "human-curated" in context_all,
    "april_gap_preserved": "9.252 VND" in context_all,
    "old_framework_name_removed": "KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT" not in context_all,
}

raw_files = [path for path in (ROOT / "01_inputs/joycat/raw").rglob("*") if path.is_file()]
result["raw"] = {
    "file_count": len(raw_files), "xlsx_count": sum(path.suffix.lower() == ".xlsx" for path in raw_files),
    "csv_count": sum(path.suffix.lower() == ".csv" for path in raw_files),
    "generated_files_inside_raw": [str(path.relative_to(ROOT)) for path in raw_files if path.name in {
        "LOGIC_TREE.md", "LOGIC_TREE.mm", "DATA_MAPPING_COVERAGE_JOYCAT.md", "DATA_MAPPING_COVERAGE_JOYCAT.mm",
    }],
}

result["overall_pass"] = (
    all(result["required_files"].values())
    and all(item["parse_ok"] and not item["duplicate_ids"] for item in result["xml"].values())
    and all(result["mapping_coverage"].values()) and all(result["logic_tree"].values())
    and all(result["coverage"].values()) and all(result["contexts"].values())
    and not result["raw"]["generated_files_inside_raw"]
)

OUT.parent.mkdir(parents=True, exist_ok=True)
OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
print(json.dumps(result, ensure_ascii=False, indent=2))
