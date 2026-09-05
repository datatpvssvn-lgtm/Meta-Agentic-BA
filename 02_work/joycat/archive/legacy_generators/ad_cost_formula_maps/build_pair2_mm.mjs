import fs from "node:fs/promises";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const productSource = "D:/Meta Agentic BA/03_outputs/joycat/JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx";
const outputPath = "D:/BA_library/Ad_Cost_cap_2.mm";

const workbook = await SpreadsheetFile.importXlsx(await FileBlob.load(productSource));
const sheet = workbook.worksheets.getItem("Danh sách sản phẩm");
const rows = sheet.getRange("A8:N32").values;

const products = rows.map((row) => ({
  stt: Number(row[0]),
  status: String(row[1] ?? ""),
  group: String(row[2] ?? ""),
  pack: String(row[3] ?? ""),
  fullName: String(row[4] ?? ""),
  itemId: String(row[10] ?? ""),
}));

const platforms = ["Facebook", "Instagram", "WhatsApp"];
const funnels = ["TOFU", "MOFU", "BOFU"];

let idCounter = 0;
const xmlEscape = (value) => String(value)
  .replaceAll("&", "&amp;")
  .replaceAll('"', "&quot;")
  .replaceAll("<", "&lt;")
  .replaceAll(">", "&gt;");

const node = (text, children = [], options = {}) => {
  const id = `PAIR2_${String(++idCounter).padStart(5, "0")}`;
  const attrs = [
    `ID="${id}"`,
    `TEXT="${xmlEscape(text)}"`,
    options.style ? `STYLE="${options.style}"` : "",
    options.position ? `POSITION="${options.position}"` : "",
    options.folded ? `FOLDED="true"` : "",
    options.color ? `COLOR="${options.color}"` : "",
    options.background ? `BACKGROUND_COLOR="${options.background}"` : "",
  ].filter(Boolean).join(" ");
  const font = options.bold || options.size
    ? `<font${options.bold ? ' BOLD="true"' : ""}${options.size ? ` SIZE="${options.size}"` : ""}/>`
    : "";
  if (children.length === 0) return `<node ${attrs}>${font}</node>`;
  return `<node ${attrs}>${font}${children.join("")}</node>`;
};

const productLabel = (p) => {
  const soldOut = p.status === "Đã bán hết" ? " | Đã bán hết ở snapshot" : "";
  return `${p.group} | ${p.pack} | Item ${p.itemId}${soldOut}`;
};

const productTerm = (prefix, p) => node(
  `AS ${prefix} (${productLabel(p)})`,
  [node(`Tên đầy đủ: ${p.fullName}`)],
  { folded: true, color: "#1F4E79" },
);

const platformProduct = node(
  "CẶP 1 — NỀN TẢNG × SẢN PHẨM",
  [
    node("Trả lời: Mỗi sản phẩm được chi bao nhiêu trên từng nền tảng?"),
    node("Tổng Ads Cost =", [
      ...platforms.map((platform) => node(
        `AS ${platform} = tổng các khoản chi dưới đây`,
        [
          ...products.map((p) => productTerm(platform, p)),
          node(`AS ${platform} (Quảng cáo nhiều sản phẩm / branding / chưa ánh xạ)`),
        ],
        { folded: true, color: "#1F4E79" },
      )),
      node("AS Nền tảng khác hoặc chưa xác định", [
        node("Chỉ dùng khi export thực tế còn publisher platform ngoài ba nền tảng đang giả định"),
      ], { folded: true, color: "#7F6000" }),
    ], { folded: false, color: "#006100" }),
    node("Cách đọc ngược theo từng sản phẩm", products.map((p) => node(
      `AS ${productLabel(p)} =`,
      [
        ...platforms.map((platform) => node(`AS ${platform} (${productLabel(p)})`)),
        node(`AS Nền tảng khác/chưa xác định (${productLabel(p)})`),
      ],
      { folded: true },
    )), { folded: true }),
  ],
  { folded: false, style: "bubble", background: "#F4B183", bold: true },
);

const platformFunnel = node(
  "CẶP 2 — NỀN TẢNG × PHỄU",
  [
    node("Trả lời: Trên từng nền tảng, tiền được chia cho TOFU, MOFU và BOFU như thế nào?"),
    node("Tổng Ads Cost =", platforms.map((platform) => node(
      `AS ${platform} =`,
      [
        ...funnels.map((funnel) => node(`AS ${platform} (${funnel})`)),
        node(`AS ${platform} (Shared/Mixed Funnel)`),
        node(`AS ${platform} (Chưa phân loại phễu)`),
      ],
      { folded: true },
    )), { color: "#006100" }),
    node("Cách đọc ngược theo từng tầng phễu", [
      ...funnels.map((funnel) => node(
        `AS ${funnel} =`,
        [
          ...platforms.map((platform) => node(`AS ${platform} (${funnel})`)),
          node(`AS Nền tảng khác/chưa xác định (${funnel})`),
        ],
        { folded: true },
      )),
    ], { folded: true }),
  ],
  { folded: false, style: "bubble", background: "#F4B183", bold: true },
);

const objectiveBlocked = (leftLabel) => node(
  `AS ${leftLabel} theo từng Campaign objective [To be updated]`,
  [
    node("Thiếu: Field Campaign objective và danh sách objective thực tế trong cùng kỳ"),
    node("Nguồn cần bổ sung: Meta export có Campaign ID + Campaign objective + Amount spent"),
    node("Không được lấy Result indicator hoặc tên Campaign thay Campaign objective"),
    node("Khi có nguồn: viết đầy đủ từng khoản AS theo tên objective thực tế, không dùng CO1/CO2/COn"),
  ],
  { folded: true, color: "#7F6000" },
);

const platformObjective = node(
  "CẶP 3 — NỀN TẢNG × CAMPAIGN OBJECTIVE",
  [
    node("Trả lời: Trên từng nền tảng, tiền được chi cho từng Campaign objective như thế nào?"),
    node("Chưa thể viết công thức cụ thể mà không bịa objective", [
      ...platforms.map((platform) => objectiveBlocked(platform)),
      objectiveBlocked("Nền tảng khác/chưa xác định"),
    ], { color: "#9C0006" }),
  ],
  { folded: false, style: "bubble", background: "#F4B183", bold: true },
);

const productFunnel = node(
  "CẶP 4 — PHỄU × SẢN PHẨM",
  [
    node("Trả lời: Trong từng tầng phễu, tiền đang được chi cho 25 sản phẩm như thế nào?"),
    node("Tổng Ads Cost =", [
      ...funnels.map((funnel) => node(
        `AS ${funnel} = tổng chi của 25 sản phẩm dưới đây`,
        products.map((p) => node(`AS ${funnel} (${productLabel(p)})`)),
        { folded: true },
      )),
    ], { color: "#006100" }),
    node("Phần cần đối soát ngoài ba block", [
      node("Campaign dùng chung nhiều tầng phễu: chưa ép vào TOFU/MOFU/BOFU"),
      node("Campaign chưa phân loại phễu: giữ riêng cho tới khi Duy xác nhận mapping"),
    ], { folded: true, color: "#7F6000" }),
    node("Cách đọc ngược theo từng sản phẩm", products.map((p) => node(
      `AS ${productLabel(p)} =`,
      [
        ...funnels.map((funnel) => node(`AS ${funnel} (${productLabel(p)})`)),
        node(`AS Shared/Mixed Funnel (${productLabel(p)})`),
        node(`AS Chưa phân loại phễu (${productLabel(p)})`),
      ],
      { folded: true },
    )), { folded: true }),
  ],
  { folded: false, style: "bubble", background: "#F4B183", bold: true },
);

const productObjective = node(
  "CẶP 5 — SẢN PHẨM × CAMPAIGN OBJECTIVE",
  [
    node("Trả lời: Mỗi sản phẩm được chi bao nhiêu cho từng Campaign objective?"),
    node("Chưa thể viết công thức objective cụ thể mà không bịa dữ liệu", products.map((p) =>
      objectiveBlocked(productLabel(p))
    ), { color: "#9C0006", folded: true }),
  ],
  { folded: false, style: "bubble", background: "#F4B183", bold: true },
);

const funnelObjective = node(
  "CẶP 6 — PHỄU × CAMPAIGN OBJECTIVE",
  [
    node("Trả lời: Trong từng tầng phễu, tiền được chi cho từng Campaign objective như thế nào?"),
    node("Chưa thể viết công thức objective cụ thể mà không bịa dữ liệu", [
      ...funnels.map((funnel) => objectiveBlocked(funnel)),
      objectiveBlocked("Shared/Mixed Funnel"),
      objectiveBlocked("Chưa phân loại phễu"),
    ], { color: "#9C0006" }),
  ],
  { folded: false, style: "bubble", background: "#F4B183", bold: true },
);

const root = node(
  "ADS COST — PHÂN RÃ CẶP 2",
  [
    node("Phạm vi đã khóa", [
      node("Bốn chiều: Nền tảng, Sản phẩm, Phễu, Campaign objective"),
      node("Sáu cặp 2: Nền tảng×Sản phẩm; Nền tảng×Phễu; Nền tảng×Objective; Phễu×Sản phẩm; Sản phẩm×Objective; Phễu×Objective"),
      node("Chưa làm cặp 3"),
    ], { folded: true, color: "#1F4E79" }),
    node("Công thức kiểm soát", [
      node("Tổng Ads Cost = tổng tất cả ô thuộc MỘT cặp 2"),
      node("Không cộng kết quả của sáu cặp với nhau vì chúng là sáu cách đọc cùng một khoản tiền"),
      node("Mỗi cách phân rã phải có Shared/Unmapped để không ép Campaign vào sai nhóm"),
      node("Nguồn tiền gốc: Amount spent (VND) tại một cấp dữ liệu thống nhất"),
    ], { folded: true, color: "#006100" }),
    platformProduct,
    platformFunnel,
    platformObjective,
    productFunnel,
    productObjective,
    funnelObjective,
    node("Ranh giới bằng chứng", [
      node("25 sản phẩm lấy từ catalog Shopee snapshot 2026-08-25; chưa chứng minh toàn bộ đều được chạy Ads trong 03–05/2026"),
      node("Facebook/Instagram/WhatsApp là cấu trúc Duy đang đề xuất; cần publisher-platform breakdown để tái tính"),
      node("Phễu là mapping do Duy xây; phải có phiên bản và quy tắc gắn nhãn"),
      node("Campaign objective chưa có trong preferred export; ba cặp objective được giữ nhưng chưa tự điền"),
    ], { folded: true, color: "#9C0006" }),
  ],
  { style: "bubble", background: "#4472C4", color: "#FFFFFF", bold: true, size: 20 },
);

const xml = `<?xml version="1.0" encoding="UTF-8"?>\n<map version="1.0.1">${root}</map>\n`;
await fs.writeFile(outputPath, xml, "utf8");
process.stdout.write(JSON.stringify({ outputPath, products: products.length, nodes: idCounter }, null, 2));
