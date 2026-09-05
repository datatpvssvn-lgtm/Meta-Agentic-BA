import fs from "node:fs/promises";

const outputPath = "D:/BA_library/Ad_Cost_cap_3.mm";
const platforms = ["Facebook", "Instagram", "WhatsApp"];
const funnels = ["TOFU", "MOFU", "BOFU"];
const products = ["SP1", "SP2", "...", "SPn"];
const objectives = ["Objective 1", "Objective 2", "...", "Objective n"];

let idCounter = 0;
const escapeXml = (value) => String(value)
  .replaceAll("&", "&amp;")
  .replaceAll('"', "&quot;")
  .replaceAll("<", "&lt;")
  .replaceAll(">", "&gt;");

const node = (text, children = [], options = {}) => {
  const id = `PAIR3_${String(++idCounter).padStart(5, "0")}`;
  const attrs = [
    `ID="${id}"`,
    `TEXT="${escapeXml(text)}"`,
    options.style ? `STYLE="${options.style}"` : "",
    options.folded ? `FOLDED="true"` : "",
    options.color ? `COLOR="${options.color}"` : "",
    options.background ? `BACKGROUND_COLOR="${options.background}"` : "",
  ].filter(Boolean).join(" ");
  const font = options.bold || options.size
    ? `<font${options.bold ? ' BOLD="true"' : ""}${options.size ? ` SIZE="${options.size}"` : ""}/>`
    : "";
  return `<node ${attrs}>${font}${children.join("")}</node>`;
};

const pair1 = node("CẶP 3.1 — PHỄU × NỀN TẢNG × SẢN PHẨM", [
  node("Tổng Ads Cost =", funnels.map((funnel) => node(`AS ${funnel} =`,
    platforms.map((platform) => node(`AS ${platform} (${funnel}) =`,
      products.map((product) => node(`AS ${platform} (${funnel}, ${product})`)),
      { folded: true }
    )),
    { folded: false }
  )), { color: "#006100" }),
  node("Ví dụ cách đọc", [
    node("AS Facebook (TOFU) = AS Facebook (TOFU, SP1) + AS Facebook (TOFU, SP2) + ... + AS Facebook (TOFU, SPn)"),
    node("AS TOFU = AS Facebook (TOFU) + AS Instagram (TOFU) + AS WhatsApp (TOFU)"),
  ], { folded: true, color: "#7030A0" }),
], { style: "bubble", background: "#F4B183", bold: true });

const pair2 = node("CẶP 3.2 — NỀN TẢNG × SẢN PHẨM × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", platforms.map((platform) => node(`AS ${platform} =`,
    products.map((product) => node(`AS ${platform} (${product}) =`,
      objectives.map((objective) => node(`AS ${platform} (${product}, ${objective})`)),
      { folded: true }
    )),
    { folded: true }
  )), { color: "#006100" }),
  node("Objective 1 ... Objective n là ký hiệu cấu trúc; tên objective thực tế vẫn To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#F4B183", bold: true });

const pair3 = node("CẶP 3.3 — PHỄU × NỀN TẢNG × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", funnels.map((funnel) => node(`AS ${funnel} =`,
    platforms.map((platform) => node(`AS ${platform} (${funnel}) =`,
      objectives.map((objective) => node(`AS ${platform} (${funnel}, ${objective})`)),
      { folded: true }
    )),
    { folded: false }
  )), { color: "#006100" }),
  node("Objective 1 ... Objective n là ký hiệu cấu trúc; tên objective thực tế vẫn To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#F4B183", bold: true });

const pair4 = node("CẶP 3.4 — PHỄU × SẢN PHẨM × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", funnels.map((funnel) => node(`AS ${funnel} =`,
    products.map((product) => node(`AS ${funnel} (${product}) =`,
      objectives.map((objective) => node(`AS ${funnel} (${product}, ${objective})`)),
      { folded: true }
    )),
    { folded: false }
  )), { color: "#006100" }),
  node("Objective 1 ... Objective n là ký hiệu cấu trúc; tên objective thực tế vẫn To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#F4B183", bold: true });

const root = node("ADS COST — CẶP 3 — TỔNG QUAN", [
  node("Cách đọc", [
    node("Chỉ mô tả cấu trúc công thức: SP1 + SP2 + ... + SPn"),
    node("Không bung danh sách 25 sản phẩm trong file này"),
    node("Mỗi tổ hợp là một cách đọc cùng Tổng Ads Cost; không cộng các tổ hợp với nhau"),
    node("Chưa làm cặp 4"),
  ], { folded: true, color: "#1F4E79" }),
  pair1,
  pair2,
  pair3,
  pair4,
  node("Phần cần xác minh", [
    node("Nền tảng thực tế cần publisher-platform breakdown"),
    node("Phễu cần mapping do Duy xác nhận"),
    node("Tên Campaign objective thực tế chưa có trong preferred export"),
    node("SP1 ... SPn là ký hiệu sản phẩm; mapping tên sản phẩm thật nằm ở nguồn catalog riêng"),
  ], { folded: true, color: "#9C0006" }),
], { style: "bubble", background: "#4472C4", color: "#FFFFFF", bold: true, size: 20 });

await fs.writeFile(outputPath, `<?xml version="1.0" encoding="UTF-8"?>\n<map version="1.0.1">${root}</map>\n`, "utf8");
process.stdout.write(JSON.stringify({ outputPath, nodes: idCounter }, null, 2));
