import fs from "node:fs/promises";

const outputPath = "D:/BA_library/Ad_Cost_cap_2_va_3_tong_quan.mm";
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
  const id = `AS_OVERVIEW_${String(++idCounter).padStart(5, "0")}`;
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

const formulaBranch = (label, values, formatter, folded = true) => node(
  `${label} =`,
  values.map((value) => node(formatter(value))),
  { folded },
);

const pair2PlatformProduct = node("2.1 — NỀN TẢNG × SẢN PHẨM", [
  node("Tổng Ads Cost =", platforms.map((platform) =>
    formulaBranch(`AS ${platform}`, products, (product) => `AS ${platform} (${product})`)
  ), { color: "#006100" }),
  node("Ví dụ: AS Facebook = AS Facebook (SP1) + AS Facebook (SP2) + ... + AS Facebook (SPn)", [], { color: "#7030A0" }),
], { style: "bubble", background: "#FFD966", bold: true });

const pair2PlatformFunnel = node("2.2 — NỀN TẢNG × PHỄU", [
  node("Tổng Ads Cost =", platforms.map((platform) =>
    formulaBranch(`AS ${platform}`, funnels, (funnel) => `AS ${platform} (${funnel})`)
  ), { color: "#006100" }),
], { style: "bubble", background: "#FFD966", bold: true });

const pair2PlatformObjective = node("2.3 — NỀN TẢNG × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", platforms.map((platform) =>
    formulaBranch(`AS ${platform}`, objectives, (objective) => `AS ${platform} (${objective})`)
  ), { color: "#006100" }),
  node("Tên objective thực tế: To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#FFD966", bold: true });

const pair2FunnelProduct = node("2.4 — PHỄU × SẢN PHẨM", [
  node("Tổng Ads Cost =", funnels.map((funnel) =>
    formulaBranch(`AS ${funnel}`, products, (product) => `AS ${funnel} (${product})`, false)
  ), { color: "#006100" }),
  node("Ví dụ: AS TOFU = AS TOFU (SP1) + AS TOFU (SP2) + ... + AS TOFU (SPn)", [], { color: "#7030A0" }),
], { style: "bubble", background: "#FFD966", bold: true });

const pair2ProductObjective = node("2.5 — SẢN PHẨM × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", products.map((product) =>
    formulaBranch(`AS ${product}`, objectives, (objective) => `AS ${product} (${objective})`)
  ), { color: "#006100" }),
  node("Tên objective thực tế: To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#FFD966", bold: true });

const pair2FunnelObjective = node("2.6 — PHỄU × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", funnels.map((funnel) =>
    formulaBranch(`AS ${funnel}`, objectives, (objective) => `AS ${funnel} (${objective})`, false)
  ), { color: "#006100" }),
  node("Tên objective thực tế: To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#FFD966", bold: true });

const pair2 = node("CẶP 2 — TỔNG QUAN", [
  pair2PlatformProduct,
  pair2PlatformFunnel,
  pair2PlatformObjective,
  pair2FunnelProduct,
  pair2ProductObjective,
  pair2FunnelObjective,
], { style: "bubble", background: "#ED7D31", bold: true, size: 16 });

const pair3FunnelPlatformProduct = node("3.1 — PHỄU × NỀN TẢNG × SẢN PHẨM", [
  node("Tổng Ads Cost =", funnels.map((funnel) => node(`AS ${funnel} =`,
    platforms.map((platform) => formulaBranch(
      `AS ${platform} (${funnel})`,
      products,
      (product) => `AS ${platform} (${funnel}, ${product})`
    )),
    { folded: false }
  )), { color: "#006100" }),
], { style: "bubble", background: "#A9D18E", bold: true });

const pair3PlatformProductObjective = node("3.2 — NỀN TẢNG × SẢN PHẨM × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", platforms.map((platform) => node(`AS ${platform} =`,
    products.map((product) => formulaBranch(
      `AS ${platform} (${product})`,
      objectives,
      (objective) => `AS ${platform} (${product}, ${objective})`
    )),
    { folded: true }
  )), { color: "#006100" }),
  node("Tên objective thực tế: To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#A9D18E", bold: true });

const pair3FunnelPlatformObjective = node("3.3 — PHỄU × NỀN TẢNG × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", funnels.map((funnel) => node(`AS ${funnel} =`,
    platforms.map((platform) => formulaBranch(
      `AS ${platform} (${funnel})`,
      objectives,
      (objective) => `AS ${platform} (${funnel}, ${objective})`
    )),
    { folded: false }
  )), { color: "#006100" }),
  node("Tên objective thực tế: To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#A9D18E", bold: true });

const pair3FunnelProductObjective = node("3.4 — PHỄU × SẢN PHẨM × CAMPAIGN OBJECTIVE", [
  node("Tổng Ads Cost =", funnels.map((funnel) => node(`AS ${funnel} =`,
    products.map((product) => formulaBranch(
      `AS ${funnel} (${product})`,
      objectives,
      (objective) => `AS ${funnel} (${product}, ${objective})`
    )),
    { folded: false }
  )), { color: "#006100" }),
  node("Tên objective thực tế: To be updated", [], { color: "#7F6000" }),
], { style: "bubble", background: "#A9D18E", bold: true });

const pair3 = node("CẶP 3 — TỔNG QUAN", [
  pair3FunnelPlatformProduct,
  pair3PlatformProductObjective,
  pair3FunnelPlatformObjective,
  pair3FunnelProductObjective,
], { style: "bubble", background: "#70AD47", bold: true, size: 16 });

const root = node("ADS COST — CẶP 2 + CẶP 3 — TỔNG QUAN", [
  node("Quy ước", [
    node("SP1 + SP2 + ... + SPn: toàn bộ sản phẩm"),
    node("Objective 1 + Objective 2 + ... + Objective n: toàn bộ objective thực tế sau khi có nguồn"),
    node("Mỗi cặp là một cách đọc lại cùng Tổng Ads Cost; không cộng các cặp với nhau"),
    node("Không bung danh sách 25 sản phẩm trong file tổng quan này"),
  ], { folded: true, color: "#1F4E79" }),
  pair2,
  pair3,
  node("Nguồn còn thiếu", [
    node("Publisher-platform breakdown để xác nhận Facebook, Instagram, WhatsApp và nền tảng khác"),
    node("Phiên bản mapping TOFU/MOFU/BOFU do Duy xác nhận"),
    node("Field Campaign objective thực tế; không thay bằng Result indicator"),
  ], { folded: true, color: "#9C0006" }),
], { style: "bubble", background: "#4472C4", color: "#FFFFFF", bold: true, size: 20 });

await fs.writeFile(outputPath, `<?xml version="1.0" encoding="UTF-8"?>\n<map version="1.0.1">${root}</map>\n`, "utf8");
process.stdout.write(JSON.stringify({ outputPath, nodes: idCounter }, null, 2));
