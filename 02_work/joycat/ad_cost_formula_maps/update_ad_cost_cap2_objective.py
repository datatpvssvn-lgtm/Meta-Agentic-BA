from copy import deepcopy
from pathlib import Path
import re
import xml.etree.ElementTree as ET


SOURCE = Path(r"D:\BA_library\Ad_Cost_cap_2.mm")
OUTPUT = Path(r"D:\Meta Agentic BA\03_outputs\joycat\Ad_Cost_cap_2_v2.mm")

OBJECTIVES = [
    "Engagement - Messaging",
    "Engagement - Post engagement",
    "Sales - Purchase",
    "Awareness - Ad recall",
    "Chưa xác định",
]


def node(node_id: str, text: str, *, folded: bool = False, color: str | None = None):
    attrs = {"ID": node_id, "TEXT": text}
    if folded:
        attrs["FOLDED"] = "true"
    if color:
        attrs["COLOR"] = color
    return ET.Element("node", attrs)


def objective_formula(scope: str) -> str:
    parts = [f"AS {scope} ({objective})" for objective in OBJECTIVES]
    return f"AS {scope} = " + " + ".join(parts)


def add_scope(parent, prefix: str, scope: str, *, label: str | None = None):
    scope_node = node(f"{prefix}_SCOPE", label or f"AS {scope}", folded=True, color="#1F4E79")
    scope_node.append(node(f"{prefix}_FORMULA", objective_formula(scope), color="#006100"))
    for index, objective in enumerate(OBJECTIVES, start=1):
        scope_node.append(node(f"{prefix}_OBJ_{index:02d}", f"AS {scope} ({objective})"))
    parent.append(scope_node)


tree = ET.parse(SOURCE)
root = tree.getroot()
root_node = root.find("node")
if root_node is None:
    raise RuntimeError("Mindmap không có root node")

root_node.set("TEXT", "ADS COST — PHÂN RÃ CẶP 2 — v2 | OBJECTIVE ĐÃ BUNG")

top_by_text = {child.get("TEXT", ""): child for child in root_node.findall("node")}

# Cặp 3 — Nền tảng × Campaign objective
pair3 = top_by_text["CẶP 3 — NỀN TẢNG × CAMPAIGN OBJECTIVE"]
question3 = deepcopy(pair3.findall("node")[0])
pair3.clear()
pair3.attrib.update(
    {
        "ID": "PAIR2_00347",
        "TEXT": "CẶP 3 — NỀN TẢNG × CAMPAIGN OBJECTIVE",
        "STYLE": "bubble",
        "BACKGROUND_COLOR": "#F4B183",
    }
)
pair3.append(question3)
pair3.append(
    node(
        "PAIR2V2_P3_TOTAL",
        "Tổng Ads Cost = AS Facebook + AS Instagram + AS WhatsApp + AS Nền tảng khác/chưa xác định",
        color="#006100",
    )
)
for index, scope in enumerate(
    ["Facebook", "Instagram", "WhatsApp", "Nền tảng khác/chưa xác định"], start=1
):
    add_scope(pair3, f"PAIR2V2_P3_{index:02d}", scope)

# Cặp 5 — Sản phẩm × Campaign objective
pair5 = top_by_text["CẶP 5 — SẢN PHẨM × CAMPAIGN OBJECTIVE"]
question5 = deepcopy(pair5.findall("node")[0])
old_product_nodes = pair5.findall("node")[1].findall("node")
products = []
for old in old_product_nodes:
    text = old.get("TEXT", "")
    text = re.sub(r"^AS\s+", "", text)
    text = re.sub(r"\s+theo từng Campaign objective\s+\[To be updated\]$", "", text)
    products.append(text)

pair5.clear()
pair5.attrib.update(
    {
        "ID": "PAIR2_00710",
        "TEXT": "CẶP 5 — SẢN PHẨM × CAMPAIGN OBJECTIVE",
        "STYLE": "bubble",
        "BACKGROUND_COLOR": "#F4B183",
    }
)
pair5.append(question5)
pair5.append(
    node(
        "PAIR2V2_P5_TOTAL",
        "Tổng Ads Cost = AS SP01 + AS SP02 + AS SP03 + ... + AS SP25 + AS Nhiều sản phẩm/branding/chưa ánh xạ",
        color="#006100",
    )
)
for index, product in enumerate(products, start=1):
    code = f"SP{index:02d}"
    add_scope(
        pair5,
        f"PAIR2V2_P5_{index:02d}",
        code,
        label=f"{code} — {product}",
    )
add_scope(
    pair5,
    "PAIR2V2_P5_99",
    "Nhiều sản phẩm/branding/chưa ánh xạ",
)

# Cặp 6 — Phễu × Campaign objective
pair6 = top_by_text["CẶP 6 — PHỄU × CAMPAIGN OBJECTIVE"]
question6 = deepcopy(pair6.findall("node")[0])
pair6.clear()
pair6.attrib.update(
    {
        "ID": "PAIR2_00738",
        "TEXT": "CẶP 6 — PHỄU × CAMPAIGN OBJECTIVE",
        "STYLE": "bubble",
        "BACKGROUND_COLOR": "#F4B183",
    }
)
pair6.append(question6)
pair6.append(
    node(
        "PAIR2V2_P6_TOTAL",
        "Tổng Ads Cost = AS TOFU + AS MOFU + AS BOFU + AS Shared/Mixed Funnel + AS Chưa phân loại phễu",
        color="#006100",
    )
)
for index, scope in enumerate(
    ["TOFU", "MOFU", "BOFU", "Shared/Mixed Funnel", "Chưa phân loại phễu"], start=1
):
    add_scope(pair6, f"PAIR2V2_P6_{index:02d}", scope)

# Thêm ghi chú nguồn Objective ở đầu cây.
source_note = node(
    "PAIR2V2_OBJECTIVE_SOURCE",
    "Campaign objective dùng trong bản này",
    folded=True,
    color="#7030A0",
)
source_note.append(
    node(
        "PAIR2V2_OBJECTIVE_SOURCE_01",
        "Danh mục đang có: Engagement - Messaging; Engagement - Post engagement; Sales - Purchase; Awareness - Ad recall; Chưa xác định",
    )
)
source_note.append(
    node(
        "PAIR2V2_OBJECTIVE_SOURCE_02",
        "Nguồn hiện thấy trên ổ đĩa: cột Objective suy luận trong JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx",
    )
)
source_note.append(
    node(
        "PAIR2V2_OBJECTIVE_SOURCE_03",
        "Campaign objective, Optimization goal và Result indicator là ba trường khác nhau; file này chỉ phân rã theo nhãn Objective đã cung cấp",
    )
)
root_node.insert(2, source_note)

# Kiểm tra ID trước khi ghi.
ids = [element.get("ID") for element in root.iter("node")]
duplicates = sorted({node_id for node_id in ids if ids.count(node_id) > 1})
if duplicates:
    raise RuntimeError(f"Trùng ID: {duplicates}")

OUTPUT.parent.mkdir(parents=True, exist_ok=True)
ET.indent(tree, space="  ")
tree.write(OUTPUT, encoding="utf-8", xml_declaration=True)
print(f"WROTE={OUTPUT}")
print(f"PRODUCTS={len(products)}")
print(f"OBJECTIVES={len(OBJECTIVES)}")
print(f"NODES={len(ids)}")
