import fs from "node:fs/promises";

const outputPath = "D:/BA_library/Ad_Cost_GMV_all_platform v3.mm";
let idCounter = 0;

const escapeXml = (value) => String(value)
  .replaceAll("&", "&amp;")
  .replaceAll('"', "&quot;")
  .replaceAll("<", "&lt;")
  .replaceAll(">", "&gt;");

const node = (text, children = [], options = {}) => {
  const id = `AC_GMV_OVERVIEW_${String(++idCounter).padStart(4, "0")}`;
  const attrs = [
    `ID="${id}"`,
    `TEXT="${escapeXml(text)}"`,
    options.style ? `STYLE="${options.style}"` : "",
    options.position ? `POSITION="${options.position}"` : "",
    options.folded ? `FOLDED="true"` : "",
    options.color ? `COLOR="${options.color}"` : "",
    options.background ? `BACKGROUND_COLOR="${options.background}"` : "",
  ].filter(Boolean).join(" ");
  const font = options.bold || options.size
    ? `<font${options.bold ? ' BOLD="true"' : ""}${options.size ? ` SIZE="${options.size}"` : ""}/>`
    : "";
  return `<node ${attrs}>${font}${children.join("")}</node>`;
};

const adsCost = node("TỬ SỐ — TỔNG ADS COST", [
  node("Công thức kiểm soát", [
    node("Tổng Ads Cost = Tổng Amount spent (VND) của các Campaign trong cùng kỳ"),
    node("Cấp cộng tổng chính: Campaign"),
    node("Không cộng Campaign + Ad set + Ad vì sẽ đếm trùng cùng một khoản tiền"),
    node("CPM, CPC, CPR và ROAS là cách đọc hiệu quả; không cộng chúng vào Amount spent"),
  ], { folded: true, color: "#006100" }),

  node("BREAKDOWN MỘT CHIỀU", [
    node("Theo nền tảng", [
      node("Tổng Ads Cost = AS Facebook + AS Instagram + AS WhatsApp + AS nền tảng khác/chưa xác định"),
    ], { folded: true }),
    node("Theo sản phẩm", [
      node("Tổng Ads Cost = AS SP1 + AS SP2 + ... + AS SPn + AS dùng chung/chưa ánh xạ"),
    ], { folded: true }),
    node("Theo phễu", [
      node("Tổng Ads Cost = AS TOFU + AS MOFU + AS BOFU + AS shared/chưa phân loại"),
    ], { folded: true }),
    node("Theo Campaign objective", [
      node("Tổng Ads Cost = AS Objective 1 + AS Objective 2 + ... + AS Objective n"),
      node("Tên objective thực tế: To be updated"),
    ], { folded: true }),
  ], { style: "bubble", background: "#D9EAF7", bold: true }),

  node("BREAKDOWN CẶP 2", [
    node("Nền tảng × Sản phẩm"),
    node("Nền tảng × Phễu"),
    node("Nền tảng × Campaign objective"),
    node("Phễu × Sản phẩm"),
    node("Sản phẩm × Campaign objective"),
    node("Phễu × Campaign objective"),
    node("Công thức tổng quan nằm tại: D:\\BA_library\\Ad_Cost_cap_2_va_3_tong_quan.mm"),
  ], { style: "bubble", background: "#FFD966", folded: true, bold: true }),

  node("BREAKDOWN CẶP 3", [
    node("Phễu × Nền tảng × Sản phẩm"),
    node("Nền tảng × Sản phẩm × Campaign objective"),
    node("Phễu × Nền tảng × Campaign objective"),
    node("Phễu × Sản phẩm × Campaign objective"),
    node("Công thức tổng quan nằm tại: D:\\BA_library\\Ad_Cost_cap_2_va_3_tong_quan.mm"),
  ], { style: "bubble", background: "#A9D18E", folded: true, bold: true }),

  node("NGUYÊN TẮC ĐỌC", [
    node("Một chiều, cặp 2 và cặp 3 là nhiều cách đọc lại cùng Tổng Ads Cost"),
    node("Không viết Tổng Ads Cost = Breakdown một chiều + Cặp 2 + Cặp 3"),
    node("Mỗi cách phân rã độc lập phải cộng ngược về đúng Tổng Ads Cost"),
  ], { folded: true, color: "#9C0006" }),
], { style: "bubble", position: "right", background: "#5B9BD5", color: "#FFFFFF", bold: true, size: 16 });

const gmv = node("MẪU SỐ — GMV TOÀN NỀN TẢNG", [
  node("Công thức tổng quan", [
    node("GMV toàn nền tảng = GMV Shopee + GMV TikTok + GMV Facebook/Messenger + GMV cửa hàng trực tiếp + GMV B2B + GMV kênh khác"),
  ], { color: "#006100" }),
  node("GMV Shopee [Chưa có dữ liệu business]"),
  node("GMV TikTok [Chưa có dữ liệu business]"),
  node("GMV Facebook/Messenger [Chưa có dữ liệu business]"),
  node("GMV cửa hàng trực tiếp [Chưa có dữ liệu business]"),
  node("GMV B2B [Chưa có dữ liệu business]"),
  node("GMV kênh khác [Chưa có dữ liệu business]"),
  node("Ranh giới", [
    node("Purchases conversion value của Meta không thay GMV business"),
    node("Các kênh GMV phải cùng kỳ và cùng đơn vị tiền"),
    node("Cách xử lý hoàn/hủy, voucher, trợ giá và vận chuyển: To be updated"),
  ], { folded: true, color: "#9C0006" }),
], { style: "bubble", position: "right", background: "#70AD47", color: "#FFFFFF", bold: true, size: 16 });

const scenarios = node("KỊCH BẢN 5–10%", [
  node("Kịch bản 5%", [
    node("Ads Cost / GMV = 5%"),
    node("Business ROAS = GMV / Ads Cost = 20 lần"),
    node("Ads Cost tối đa = GMV × 5%"),
    node("GMV cần đạt = Ads Cost / 5%"),
  ], { style: "bubble", background: "#A9D18E", bold: true }),
  node("Kịch bản 10%", [
    node("Ads Cost / GMV = 10%"),
    node("Business ROAS = GMV / Ads Cost = 10 lần"),
    node("Ads Cost tối đa = GMV × 10%"),
    node("GMV cần đạt = Ads Cost / 10%"),
  ], { style: "bubble", background: "#FFD966", bold: true }),
  node("Cách hiểu", [
    node("5%: 1 đồng Ads Cost đi cùng 20 đồng GMV toàn nền tảng"),
    node("10%: 1 đồng Ads Cost đi cùng 10 đồng GMV toàn nền tảng"),
    node("Nói 'đi cùng', chưa khẳng định toàn bộ GMV do Ads tạo ra"),
  ], { folded: true }),
], { style: "bubble", position: "left", background: "#ED7D31", color: "#FFFFFF", bold: true, size: 16 });

const root = node("ADS COST / GMV TOÀN NỀN TẢNG — TỔNG QUAN", [
  node("CÔNG THỨC GỐC", [
    node("Ads Cost / GMV = Tổng Ads Cost cùng kỳ / GMV toàn nền tảng cùng kỳ × 100%"),
    node("Business ROAS = GMV toàn nền tảng cùng kỳ / Tổng Ads Cost cùng kỳ"),
    node("Ads Cost / GMV = 1 / Business ROAS"),
  ], { style: "bubble", background: "#D9E1F2", bold: true }),
  adsCost,
  gmv,
  scenarios,
  node("TRẠNG THÁI BẰNG CHỨNG", [
    node("Tỷ lệ 5–10%: thông tin/chuẩn của case được xác nhận qua Duy; raw hiện chưa tái tính"),
    node("Tổng Ads Cost: có thể lấy từ Amount spent tại cấp Campaign"),
    node("GMV toàn nền tảng: chưa có nguồn business trong workspace"),
    node("Chưa kết luận KPI 1 chỉ từ cây tổng quan này"),
  ], { style: "bubble", position: "left", background: "#F4CCCC", color: "#9C0006", bold: true }),
], { style: "bubble", background: "#4472C4", color: "#FFFFFF", bold: true, size: 20 });

await fs.writeFile(outputPath, `<?xml version="1.0" encoding="UTF-8"?>\n<map version="1.0.1">${root}</map>\n`, "utf8");
process.stdout.write(JSON.stringify({ outputPath, nodes: idCounter }, null, 2));
