from pathlib import Path
import hashlib
import xml.etree.ElementTree as ET


ROOT = Path(r"D:\Meta Agentic BA")
OUT = ROOT / "03_outputs" / "joycat" / "LOGIC_TREE.mm"


def node_id(path: str) -> str:
    return "LOGICV2_" + hashlib.sha1(path.encode("utf-8")).hexdigest()[:14].upper()


def add(parent, text, path, children=None, color=None, folded=True):
    attrs = {"ID": node_id(path), "TEXT": text}
    if folded and children:
        attrs["FOLDED"] = "true"
    if color:
        attrs["COLOR"] = color
    current = ET.SubElement(parent, "node", attrs)
    for index, child in enumerate(children or [], 1):
        if isinstance(child, tuple):
            child_text, grandchildren = child
        else:
            child_text, grandchildren = child, None
        add(current, child_text, f"{path}/{index}:{child_text}", grandchildren)
    return current


map_el = ET.Element("map", {"version": "1.0.1"})
root = ET.SubElement(map_el, "node", {
    "ID": node_id("root"),
    "TEXT": "JOYCAT — LOGIC TREE HỢP NHẤT | ADS COST VÀ BUSINESS ROAS — v2.0",
    "STYLE": "bubble",
    "COLOR": "#FFFFFF",
    "BACKGROUND_COLOR": "#4472C4",
})
ET.SubElement(root, "font", {"BOLD": "true", "SIZE": "20"})

add(root, "1. ĐỌC NHANH CHO DUY VÀ CẬU SINH", "root/overview", [
    "Đích: biết phân tích gì, chia theo đầu mục nào, lấy dữ liệu ở đâu và dataset làm được tới đâu",
    "Business ROAS = GMV business cùng phạm vi, cùng kỳ / Ads Cost cùng phạm vi, cùng kỳ",
    "Không dùng Purchases conversion value của Meta thay GMV business",
    ("Ba Tree", [
        "KPI Tree = cần lượng hóa chỉ số gì",
        "Metric Tree = công thức tới raw field hoặc điểm dừng",
        "Logic Tree = đường đi câu hỏi, phép so sánh và bằng chứng",
    ]),
    ("Bốn chiều", ["Nền tảng", "Sản phẩm", "Phễu", "Campaign objective"]),
    ("Trạng thái", [
        "Tổng Campaign/tháng: đã đối soát",
        "Objective suy luận: Duy xác nhận dùng cho ETL",
        "Phễu và sản phẩm: mapping một phần",
        "Publisher platform và GMV business: chưa có",
        "Chưa tuyên bố ETL production sẵn sàng",
    ]),
], "#1F4E79")

add(root, "2. HỢP ĐỒNG KIỂM SOÁT", "root/control", [
    "Tổng Ads Cost tháng = tổng Amount spent (VND) của các Campaign có tên",
    "Đối soát: Tổng Campaign ≈ Tổng Ad set ≈ Tổng Ad; không cộng ba tổng",
    "03/2026 = 50.195.692 VND; 04/2026 = 64.825.305 VND; 05/2026 = 63.518.031 VND",
    "Tháng 04 lệch 40 VND so với Ad set/Ad; giữ nguyên sai lệch nguồn",
    "Bốn Campaign có spend nhưng không có Results vẫn giữ trong tổng",
    ("Data gate", [
        "Cùng kỳ, timezone, currency và grain",
        "Cùng attribution và Result indicator khi dùng Results",
        "Chiều có source/mapping và version rõ",
        "GMV cùng phạm vi Ads Cost",
        "Join không tăng số tiền sai",
        "Không đạt → Chỉ thăm dò hoặc Chưa so sánh được",
    ]),
], "#548235")

add(root, "3. CHIỀU NỀN TẢNG", "root/platform", [
    ("Ba khái niệm", [
        "Publisher platform = nơi Ads hiển thị",
        "Destination = nơi khách được dẫn tới",
        "Sales channel = nơi business ghi nhận đơn và GMV",
    ]),
    "Tổng Ads Cost = Facebook + Instagram + Messenger + Audience Network + WhatsApp nếu là publisher thật + Nền tảng khác + Unknown/Unmapped",
    "Field cần: Publisher platform; có thể thêm Platform position và Impression device",
    "Không suy platform từ Campaign name, CPAS-SHOPEE hoặc Result indicator",
    "Hiện thiếu publisher/destination trong 32 workbook raw → ba cặp có Nền tảng bị chặn",
    ("Đường phân tích", [
        "So spend và tỷ trọng platform",
        "Kiểm soát sản phẩm, objective, phễu, kỳ và attribution",
        "Đọc CPM, Reach, Frequency, CTR/CPC và Result đúng loại",
        "Kiểm tra placement/device trước khi quy nguyên nhân cho platform",
    ]),
], "#2F5597")

add(root, "4. CHIỀU SẢN PHẨM", "root/product", [
    "Ba cấp: Nhóm sản phẩm ≠ Listing/Item ID ≠ SKU/biến thể",
    "Tổng Ads Cost = SP01 + SP02 + ... + SP25 + Product group only + Multi-product/Shared + Unmapped",
    ("Gợi ý từ Campaign name — chưa phải mapping được duyệt", [
        "VI SINH → nhóm Vi sinh khử mùi",
        "NA → nhóm Cát Sắn Natural",
        "PFX → nhóm Cát Mix PerformX",
        "MNX → nhóm Cát Khoáng MineralX",
        "CÁT → ngành hàng cát nói chung",
        "Sale/Branding/không có mã → Shared/Unmapped",
    ]),
    "Không chia đều spend; không phân bổ theo GMV khi chưa có owner duyệt",
    "Catalog có 25 listing; chưa có khóa Ads → Item ID/SKU",
    "Catalog tháng 08 không chứng minh lịch sử chạy Ads tháng 03–05",
    ("Đường phân tích", [
        "Sản phẩm nào nhận spend",
        "So cùng sản phẩm qua objective, phễu, platform, format và kỳ",
        "Kiểm tra Campaign nhiều sản phẩm/branding",
        "GMV/AOV chỉ dùng khi cùng Item/SKU và rule hoàn hủy",
    ]),
], "#7030A0")

add(root, "5. CHIỀU PHỄU", "root/funnel-dim", [
    "Tổng Ads Cost = TOFU + MOFU + BOFU + Mixed/Shared + Chưa phân loại",
    "TOFU = phân phối, nhận biết, tạo tín hiệu/tệp ban đầu",
    "MOFU = quan tâm, click, tương tác sâu, messaging",
    "BOFU = hành động mua, đơn và GMV",
    "84 Campaign có spend: MOFU 47; TOFU 27; BOFU 10",
    "Phễu là human mapping; còn thiếu grain, basis, version, owner và hiệu lực đầy đủ",
    "Không mặc định CPM TOFU đắt/BOFU rẻ hoặc tầng nào ROAS cao",
], "#8064A2")

add(root, "6. CHIỀU CAMPAIGN OBJECTIVE", "root/objective", [
    ("Ba lớp", [
        "Campaign objective = cấu hình mục tiêu ở Campaign",
        "Optimization/Performance goal = hành động Meta tối ưu ở Ad set",
        "Result indicator = Results trong report đang đại diện loại gì",
    ]),
    "Tổng Ads Cost = Engagement-Messaging + Engagement-Post engagement + Sales-Purchase + Awareness-Ad recall + Objective khác + Chưa xác định",
    ("Objective suy luận — human-curated ETL input", [
        "Duy xác nhận dùng cho ETL vì raw thiếu Objective",
        "Không giả thành field Meta gốc",
        "Meta objective nếu có sau lưu riêng để đối soát",
        "Giữ rule, version, basis, mapped_by, mapped_at và review_status",
    ]),
    ("Rule hiện dùng", [
        "messaging_conversation_started_7d → Engagement - Messaging",
        "post_engagement → Engagement - Post engagement",
        "purchase → Sales - Purchase",
        "estimated_ad_recallers → Awareness - Ad recall",
        "Result trống + tên có Doanh số → Sales - Purchase suy từ tên",
        "Thiếu tín hiệu → Chưa xác định",
    ]),
    "Coverage 84 Campaign: 49 Messaging; 26 Post engagement; 4 Purchase; 2 Sales theo tên; 1 Ad recall; 2 chưa xác định",
], "#C65911")

pairs = [
    ("Cặp 1 — Nền tảng × Sản phẩm", [
        "Câu hỏi: Mỗi platform chi bao nhiêu cho từng sản phẩm?",
        "Ads Cost (Facebook) = Ads Cost (Facebook, SP01) + ... + Ads Cost (Facebook, SP25) + Product group only + Multi-product/Shared + Unmapped",
        "Nguồn: Publisher platform + Ads ID→Item/SKU",
        "Coverage: chưa tính — thiếu cả Publisher và Ads→product",
        "Kiểm soát: tổng mọi ô phải về Tổng Ads Cost",
    ]),
    ("Cặp 2 — Nền tảng × Phễu", [
        "Câu hỏi: Mỗi platform chi bao nhiêu cho TOFU/MOFU/BOFU?",
        "Ads Cost (Facebook) = Ads Cost (Facebook, TOFU) + Ads Cost (Facebook, MOFU) + Ads Cost (Facebook, BOFU) + Mixed/Unmapped",
        "Nguồn: Publisher platform + map_funnel",
        "Coverage: chưa tính — thiếu Publisher; Phễu còn cần khóa hợp đồng",
    ]),
    ("Cặp 3 — Nền tảng × Objective", [
        "Câu hỏi: Mỗi platform chi bao nhiêu cho từng objective?",
        "Ads Cost (Facebook) = Facebook Messaging + Facebook Post engagement + Facebook Sales + Facebook Awareness + Other/Unmapped",
        "Nguồn: Publisher platform + Objective suy luận",
        "Coverage: bị chặn bởi Publisher; Objective human mapping đã dùng được",
    ]),
    ("Cặp 4 — Phễu × Sản phẩm", [
        "Câu hỏi: Trong mỗi tầng phễu, tiền chi cho sản phẩm nào?",
        "Ads Cost (TOFU) = Ads Cost (TOFU, SP01) + ... + Ads Cost (TOFU, SP25) + Product group only/Multi-product/Unmapped",
        "Trình bày ba block TOFU, MOFU, BOFU; cộng thêm Mixed/Unmapped",
        "Coverage: thăm dò ở cấp nhóm sản phẩm; chưa xuống 25 listing",
    ]),
    ("Cặp 5 — Sản phẩm × Objective", [
        "Câu hỏi: Mỗi sản phẩm chi bao nhiêu cho từng objective?",
        "Ads Cost (SP01) = SP01 Messaging + SP01 Post engagement + SP01 Sales + SP01 Awareness + Other/Unmapped",
        "Nguồn: Ads→product + Objective suy luận",
        "Coverage: nhóm sản phẩm × Objective human mapping; chưa xác minh SP01–SP25",
    ]),
    ("Cặp 6 — Phễu × Objective", [
        "Câu hỏi: Trong từng tầng phễu, tiền phục vụ objective nào?",
        "Ads Cost (TOFU) = TOFU Messaging + TOFU Post engagement + TOFU Sales + TOFU Awareness + Other/Unmapped",
        "Nguồn: Phễu + Objective suy luận trên 84 Campaign",
        "Coverage: ETL/EDA human mapping được; cần khóa hợp đồng Phễu",
    ]),
]
add(root, "7. SÁU CẶP — CÔNG THỨC VÀ COVERAGE", "root/pairs", pairs + [
    "Không cộng sáu cặp với nhau; chúng là sáu cách đọc cùng một Tổng Ads Cost",
    "Hai tổng riêng không suy ra phần giao hai chiều",
], "#5B9BD5")

add(root, "8. ĐƯỜNG ĐI FUNNEL/JOURNEY", "root/journey", [
    ("TOFU", [
        "Câu hỏi: phân phối đúng phạm vi và tạo tín hiệu chưa?",
        "Metrics: Spend, Impressions, Reach, Frequency, CPM, video/engagement result",
        "So cùng sản phẩm, objective, platform, format, kỳ, attribution",
        "Giả thuyết: audience, creative, placement, thời gian, optimization",
    ]),
    ("MOFU", [
        "Câu hỏi: tín hiệu có thành click, tương tác sâu hoặc conversation chưa?",
        "Metrics: Clicks, Link Clicks, CTR, CPC, Messaging, New Contact, CPR",
        "Không so post engagement và messaging như cùng result",
        "Mess rẻ chưa chứng minh Purchase/GMV tốt",
    ]),
    ("BOFU", [
        "Câu hỏi: tín hiệu cuối phễu có thành đơn business và GMV không?",
        "Metrics: Meta Purchase/Orders; đơn business, hoàn hủy, GMV, AOV",
        "So cùng sales channel, sản phẩm, kỳ, attribution và rule GMV",
        "Meta Purchase/value không thay đơn và GMV business",
    ]),
    "Impression → Click → Messaging → Purchase → Order → GMV là đường phân tích; không gọi là cùng cohort nếu thiếu tracking key",
], "#2F5597")

add(root, "9. CÔNG THỨC HỖ TRỢ ĐỌC METRICS", "root/formulas", [
    "Ads Cost = Amount Spent",
    "Ads Cost = Impressions × CPM / 1.000",
    "Ads Cost = Reach × Frequency × CPM / 1.000",
    "Ads Cost = Clicks (all) × CPC (all)",
    "Ads Cost = Link Clicks × CPC (link)",
    "Ads Cost = Results cùng loại × Cost per Result cùng loại",
    "Business ROAS = GMV business / Ads Cost",
    "Các công thức là nhiều cách biểu diễn cùng spend; không cộng chúng",
    "Thuận/nghịch phải ghi biến giữ nguyên; ROAS tăng/giảm chỉ kết luận trong từng case",
], "#8064A2")

add(root, "10. THIẾT KẾ ETL TỐI THIỂU", "root/etl", [
    ("Bảng", [
        "fact_ads_spend_campaign_period",
        "dim_campaign_config",
        "dim_adset_config",
        "map_funnel",
        "bridge_ad_product",
        "fact_ads_spend_publisher",
        "fact_business_order_gmv",
    ]),
    ("Metadata mapping", [
        "object_level + object_id_text + mapped_value",
        "mapping_basis + mapping_version",
        "mapped_by/confirmed_by + mapped_at",
        "valid_from + valid_to + review_status + source",
    ]),
    ("Kiểm tra join", [
        "ID text nguyên vẹn và grain tương thích",
        "Cardinality, row count, orphan, duplicate và conflict",
        "Tổng Amount Spent trước/sau join không tăng sai",
        "Shared/Unmapped vẫn giữ",
        "Many-to-many product không nhân spend",
    ]),
    ("Aggregate", [
        "Ads Cost cộng đúng một grain",
        "CPM/CPC/CPR/ROAS tính lại từ tổng tử số và mẫu số",
        "Reach không cộng tùy tiện",
        "Results chỉ cộng cùng indicator/attribution",
    ]),
], "#548235")

add(root, "11. AUDIT DATASET VÀ GAP", "root/audit", [
    "Raw: 32 XLSX + một archive; không có CSV đã bung",
    "Preferred candidate: 9 file Campaign/Ad set/Ad tháng 03–05/2026",
    "Schema: Campaign 23; Ad set 27; Ad 30 cột; 21 metrics chung",
    ("Cột riêng theo grain", [
        "Campaign: name, delivery",
        "Ad set: name, delivery, starts, bid, bid type, last significant edit",
        "Ad: name, delivery, bid, edit, quality/engagement/conversion rankings, ad set name",
    ]),
    "Thiếu/không ổn định: ID text, Clicks, Link Clicks, Objective/Optimization, Destination, Publisher, Product/SKU, Funnel contract, video metrics và GMV",
    ("P0 nên export", [
        "ID/name ba cấp dạng text + date/kỳ",
        "Objective, Optimization, Conversion location, Destination, attribution và cấu hình bid/budget",
        "Spend, Impressions, Reach, Clicks, Link clicks, Outbound clicks, Results + indicator",
        "Messaging, Purchases, Orders và conversion events được tracking",
    ]),
    ("P1 breakdown riêng", [
        "Publisher platform + placement + device",
        "Engagement + video milestones",
        "Age/Gender/Region chỉ khi câu hỏi cần",
    ]),
    "Business source riêng: Order, channel, Item/SKU, status, hoàn hủy, voucher, shipping rule và GMV",
    "ID đã scientific/làm tròn không khôi phục được bằng đổi format hoặc thay hậu tố",
    "Cần CSV gốc nén ZIP hoặc XLSX tạo ID dạng text ngay từ nguồn",
], "#C65911")

add(root, "12. OWNER CẦN XÁC NHẬN", "root/owners", [
    "OBJ-01 — version Objective suy luận, override và reviewer — Duy/cậu Sinh",
    "FUN-01 — grain, rule, version, owner và hiệu lực Phễu",
    "PROD-01 — mã nhóm sản phẩm và xử lý multi-product",
    "PLT-01 — publisher breakdown và grain export",
    "ID-01 — ID nguyên vẹn dạng text",
    "GMV-01 — định nghĩa/kỳ/channel/hoàn hủy/voucher/shipping",
], "#7F6000")

products = [
    ("SP01", "Vi sinh khử mùi", "Combo xịt và bột", "54652253159"),
    ("SP02", "Vi sinh khử mùi", "1 túi 75g", "44502278009"),
    ("SP03", "Cát Sắn Natural", "Combo 3 túi", "53301517532"),
    ("SP04", "Cát Sắn Natural", "1 túi 2,5kg / 6L", "41659422198"),
    ("SP05", "Cát Mix PerformX", "Combo 3 túi", "47303410867"),
    ("SP06", "Cát Mix PerformX", "1 túi 2,5kg / 6L", "43727202767"),
    ("SP07", "Cát Sắn Natural", "Combo 2 túi", "43026477525"),
    ("SP08", "Vi sinh khử mùi", "1 chai 450ml", "48902263316"),
    ("SP09", "Cát Khoáng MineralX", "1 túi 3,5kg / 8L", "44908677009"),
    ("SP10", "Cát Khoáng MineralX", "Combo 2 túi", "53758652941"),
    ("SP11", "Cát Sắn Natural", "1 thùng", "54401512661"),
    ("SP12", "Cát Mix PerformX", "Combo 2 túi", "54153386367"),
    ("SP13", "Cát Đậu Nành Mix Khoáng PowerX", "1 túi 2,5kg / 6L", "40981732711"),
    ("SP14", "Cát Sắn Mix Đậu Nành Tofuu.X", "1 túi 2,5kg / 6L", "54812261805"),
    ("SP15", "Cát Khoáng MineralX", "Combo 4 túi", "52008652913"),
    ("SP16", "Cát Mix PerformX", "1 thùng", "43227384196"),
    ("SP17", "Cát Sắn Mix Đậu Nành Tofuu.X", "Combo 3 túi", "55712258330"),
    ("SP18", "Cát Khoáng MineralX", "Combo 3 túi", "48458681913"),
    ("SP19", "Cát Đậu Nành Mix Khoáng PowerX", "Combo 2 túi", "48762287172"),
    ("SP20", "Cát Đậu Nành Mix Khoáng PowerX", "Combo 3 túi", "52462262098"),
    ("SP21", "Cát Sắn Mix Đậu Nành Tofuu.X", "Combo 2 túi", "52712266855"),
    ("SP22", "Cát Đậu Nành Mix Khoáng PowerX", "Combo 6 túi", "46362295656"),
    ("SP23", "Cát Sắn Mix Đậu Nành Tofuu.X", "Combo 6 túi", "40481736189"),
    ("SP24", "Cát Mix PerformX", "1 túi 4,5kg; bán hết ở snapshot", "27144047088"),
    ("SP25", "Cát Sắn Natural", "1 túi 4,5kg; bán hết ở snapshot", "54104795820"),
]
add(root, "13. PHỤ LỤC — 25 LISTING", "root/products", [
    f"{code} | {group} | {pack} | Item {item}" for code, group, pack, item in products
] + ["Nguồn: catalog snapshot 25/08/2026; không chứng minh lịch sử Ads 03–05/2026"], "#7030A0")

add(root, "14. CHANGELOG VÀ KIỂM ĐỊNH", "root/validation", [
    "Đã nhập định nghĩa bốn chiều, sáu cặp, coverage, audit schema, ETL contract và decision Objective suy luận",
    "KPI Tree, Metric Tree và bộ 5 công thức v3 giữ vai trò riêng",
    "AHP, catalog Excel và META_ALL_METRICS không nhập vào Logic Tree",
    "MD/MM phải có cùng 14 nhánh chính; chi tiết MM được thu gọn",
    "XML hợp lệ và ID không trùng chưa đồng nghĩa đã mở thử trên Lark/MindManager",
    "Gộp tài liệu xong không đồng nghĩa dữ liệu/mapping đã đủ cho ETL production",
], "#1F4E79")

add(root, "15. BẢN NÓI NGẮN ĐỂ DUY TRÌNH BÀY", "root/plain", [
    "Đối soát tổng chi phí ở cấp Campaign trước",
    "Đọc cùng khoản chi qua Nền tảng, Sản phẩm, Phễu và Objective",
    "Chỉ tính sáu cặp khi cùng grain hoặc join bằng ID nguyên vẹn mà không tăng spend",
    "Objective suy luận do Duy map là input ETL human-curated; phải giữ rule/version",
    "Thiếu Publisher, Ads→25 listing và GMV business nên chưa gọi ETL hoàn toàn sẵn sàng hoặc kết luận ROAS",
], "#548235")

tree = ET.ElementTree(map_el)
ET.indent(tree, space="  ")
OUT.parent.mkdir(parents=True, exist_ok=True)
tree.write(OUT, encoding="utf-8", xml_declaration=True)
print(OUT)
