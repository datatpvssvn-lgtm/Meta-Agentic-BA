from pathlib import Path
import copy
import hashlib
import xml.etree.ElementTree as ET


ROOT = Path(r"D:\Meta Agentic BA")
SRC = ROOT / "03_outputs" / "joycat" / "Ad_Cost_cap_2_v2.mm"
OUT = ROOT / "03_outputs" / "joycat" / "Ad_Cost_cap_2_v3.mm"


def new_id(text: str) -> str:
    return "PAIR2V3_" + hashlib.sha1(text.encode("utf-8")).hexdigest()[:12].upper()


def add(parent, text, key, children=None, color=None):
    attrs = {"ID": new_id(key), "TEXT": text}
    if children:
        attrs["FOLDED"] = "true"
    if color:
        attrs["COLOR"] = color
    n = ET.Element("node", attrs)
    for i, child in enumerate(children or [], 1):
        add(n, child, f"{key}/{i}:{child}")
    parent.append(n)
    return n


tree = ET.parse(SRC)
map_el = tree.getroot()
root = map_el.find("node")
root.set("TEXT", "ADS COST — PHÂN RÃ CẶP 2 — v3 | ĐỊNH NGHĨA + COVERAGE")

for n in root.iter("node"):
    if n.get("ID") == "PAIR2V2_OBJECTIVE_SOURCE_02":
        n.set("TEXT", "Nguồn ETL hiện dùng: Objective suy luận do Duy/con người map; giữ rule, version, mapped_by và review_status; không phải field Meta gốc")
    if n.get("ID") == "PAIR2V2_OBJECTIVE_SOURCE":
        n.set("TEXT", "Campaign objective — trạng thái nguồn hiện tại")

definition = ET.Element(
    "node",
    {
        "ID": new_id("definitions"),
        "TEXT": "Định nghĩa bốn chiều trước khi đọc công thức",
        "FOLDED": "true",
        "COLOR": "#1F4E79",
    },
)
add(definition, "Nền tảng = Publisher platform nơi Ads hiển thị; tách Destination và Sales channel", "definitions/platform")
add(definition, "Sản phẩm = nhóm/listing/biến thể-SKU; catalog có Item ID nhưng Ads → sản phẩm chưa có khóa xác minh", "definitions/product")
add(definition, "Phễu = mapping TOFU/MOFU/BOFU/Mixed/Unmapped có rule, version, owner và kỳ hiệu lực", "definitions/funnel")
add(definition, "Campaign objective phân tích = Objective suy luận do Duy map để ETL; tách field Meta gốc, Optimization goal và Result indicator", "definitions/objective")
add(definition, "Shared/Mixed/Unmapped vẫn giữ trong tổng Ads Cost; không ép phân bổ", "definitions/exception")
root.insert(1, definition)

coverage = ET.Element(
    "node",
    {
        "ID": new_id("coverage"),
        "TEXT": "Coverage dataset cho sáu cặp — kiểm tra 05/09/2026",
        "FOLDED": "true",
        "COLOR": "#C65911",
    },
)
for key, text in [
    ("p1", "Nền tảng × Sản phẩm — chưa tính được: thiếu Publisher platform và Ads → Item ID/SKU"),
    ("p2", "Nền tảng × Phễu — chưa tính được: thiếu Publisher platform; rule Phễu chưa khóa"),
    ("p3", "Nền tảng × Objective — chưa tính được vì thiếu Publisher platform; Objective human mapping đã có"),
    ("p4", "Phễu × Sản phẩm — mapping suy luận/một phần: mới tới nhóm sản phẩm"),
    ("p5", "Sản phẩm × Objective — Objective human mapping dùng được; còn thiếu product key/mapping chi tiết"),
    ("p6", "Phễu × Objective — hai human mapping cùng có; cần khóa rule, version và người review"),
    ("rule", "Viết được công thức không có nghĩa dataset tính được phần giao; hai tổng riêng không suy ra giao hai chiều"),
]:
    add(coverage, text, f"coverage/{key}")
root.insert(2, coverage)

source = ET.Element(
    "node",
    {
        "ID": new_id("source"),
        "TEXT": "Hợp đồng nguồn và điểm dừng",
        "FOLDED": "true",
        "COLOR": "#7030A0",
    },
)
for key, text in [
    ("control", "Tổng kiểm soát = Amount spent tại cấp Campaign theo tháng; Ad set/Ad chỉ đối soát"),
    ("join", "Chỉ mở cặp khi hai chiều cùng grain hoặc join bằng ID text nguyên vẹn mà không nhân bản spend"),
    ("mapping", "Objective suy luận là human-curated ETL input; mapping phải có basis, version, mapped_by/review_status, hiệu lực và xử lý conflict"),
    ("detail", "Chi tiết định nghĩa/coverage: DIMENSION_MAPPING_VA_DO_PHU_DATASET.md"),
    ("audit", "Schema và cột cần export: DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md"),
]:
    add(source, text, f"source/{key}")
root.insert(3, source)

ET.indent(tree, space="  ")
tree.write(OUT, encoding="utf-8", xml_declaration=True)
print(OUT)
