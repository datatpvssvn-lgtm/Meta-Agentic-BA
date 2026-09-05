import fs from "node:fs/promises";

const outputPath = "D:/BA_library/Ad_Cost_GMV_kich_ban_5_10_demo.mm";
let idCounter = 0;

const escapeXml = (value) => String(value)
  .replaceAll("&", "&amp;")
  .replaceAll('"', "&quot;")
  .replaceAll("<", "&lt;")
  .replaceAll(">", "&gt;");

const node = (text, children = [], options = {}) => {
  const id = `RATIO_DEMO_${String(++idCounter).padStart(4, "0")}`;
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

const root = node("KỊCH BẢN ADS COST / GMV TOÀN NỀN TẢNG TỪ 5–10%", [
  node("CÔNG THỨC GỐC", [
    node("Ads Cost / GMV = Tổng Ads Cost cùng kỳ / GMV toàn nền tảng cùng kỳ × 100%"),
    node("Business ROAS = GMV toàn nền tảng cùng kỳ / Tổng Ads Cost cùng kỳ"),
    node("Business ROAS = 1 / (Ads Cost / GMV)"),
  ], { style: "bubble", background: "#5B9BD5", color: "#FFFFFF", bold: true }),

  node("KỊCH BẢN 5%", [
    node("Ads Cost / GMV = 5%"),
    node("Business ROAS = 1 / 5% = 20 lần", [], { color: "#006100" }),
    node("Biết GMV", [
      node("Ads Cost tối đa = GMV × 5%"),
      node("Ví dụ: GMV 100 triệu → Ads Cost tối đa 5 triệu"),
    ], { folded: true }),
    node("Biết Ads Cost", [
      node("GMV cần đạt = Ads Cost / 5%"),
      node("Ví dụ: Ads Cost 10 triệu → GMV cần đạt 200 triệu"),
    ], { folded: true }),
    node("Cách hiểu: 1 đồng Ads Cost đi cùng 20 đồng GMV toàn nền tảng"),
  ], { style: "bubble", background: "#A9D18E", bold: true }),

  node("KỊCH BẢN 10%", [
    node("Ads Cost / GMV = 10%"),
    node("Business ROAS = 1 / 10% = 10 lần", [], { color: "#006100" }),
    node("Biết GMV", [
      node("Ads Cost tối đa = GMV × 10%"),
      node("Ví dụ: GMV 100 triệu → Ads Cost tối đa 10 triệu"),
    ], { folded: true }),
    node("Biết Ads Cost", [
      node("GMV cần đạt = Ads Cost / 10%"),
      node("Ví dụ: Ads Cost 10 triệu → GMV cần đạt 100 triệu"),
    ], { folded: true }),
    node("Cách hiểu: 1 đồng Ads Cost đi cùng 10 đồng GMV toàn nền tảng"),
  ], { style: "bubble", background: "#FFD966", bold: true }),

  node("VÙNG ĐÁNH GIÁ", [
    node("Dưới 5% → Business ROAS lớn hơn 20 lần"),
    node("Từ 5–10% → Business ROAS từ 20 đến 10 lần"),
    node("Trên 10% → Business ROAS nhỏ hơn 10 lần"),
    node("Chưa kết luận tốt/xấu nếu chưa có target, margin và bối cảnh cùng kỳ"),
  ], { style: "bubble", background: "#F4B183", bold: true }),

  node("PHÂN TÍCH ĐỘ NHẠY", [
    node("Ads Cost tăng, GMV không đổi → Ads Cost/GMV tăng"),
    node("GMV tăng, Ads Cost không đổi → Ads Cost/GMV giảm"),
    node("Ads Cost tăng nhanh hơn GMV → tỷ lệ xấu đi"),
    node("GMV tăng nhanh hơn Ads Cost → tỷ lệ cải thiện"),
    node("Ads Cost và GMV tăng cùng tỷ lệ → Ads Cost/GMV không đổi"),
  ], { style: "bubble", background: "#D9EAD3", bold: true }),

  node("RANH GIỚI BẰNG CHỨNG", [
    node("5–10% hiện là thông tin/chuẩn mục tiêu của case, chưa được raw tái tính"),
    node("Business ROAS dùng GMV toàn nền tảng; không phải Purchase ROAS do Meta báo cáo"),
    node("Nên nói 1 đồng Ads đi cùng GMV, chưa khẳng định toàn bộ GMV do Ads tạo ra"),
    node("Muốn tính thật cần Tổng Ads Cost và GMV toàn nền tảng cùng kỳ"),
  ], { style: "bubble", background: "#F4CCCC", color: "#9C0006", bold: true }),
], { style: "bubble", background: "#4472C4", color: "#FFFFFF", bold: true, size: 20 });

await fs.writeFile(outputPath, `<?xml version="1.0" encoding="UTF-8"?>\n<map version="1.0.1">${root}</map>\n`, "utf8");
process.stdout.write(JSON.stringify({ outputPath, nodes: idCounter }, null, 2));
