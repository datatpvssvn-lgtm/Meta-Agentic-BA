import fs from "node:fs/promises";

const targetPath = "D:/BA_library/Ad_Cost_GMV_all_platform v3.mm";
let xml = await fs.readFile(targetPath, "utf8");

// Chỉ sửa hai phép đảo ROAS đang sai/thiếu rõ nghĩa trong nhánh cũ.
xml = xml
  .replace('TEXT="~ ROAS = 5"', 'TEXT="~ Business ROAS = 20 lần"')
  .replace('TEXT="~  ROAS = 10"', 'TEXT="~ Business ROAS = 10 lần"');

if (!xml.includes('TEXT="TỔNG QUAN BỔ SUNG"')) {
  let idCounter = 0;
  const escapeXml = (value) => String(value)
    .replaceAll("&", "&amp;")
    .replaceAll('"', "&quot;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;");

  const node = (text, children = [], options = {}) => {
    const id = `OVERVIEW_ADD_${String(++idCounter).padStart(4, "0")}`;
    const attrs = [
      `ID="${id}"`,
      `TEXT="${escapeXml(text)}"`,
      options.style ? `STYLE="${options.style}"` : "",
      options.position ? `POSITION="${options.position}"` : "",
      options.folded ? `FOLDED="true"` : "",
      options.color ? `COLOR="${options.color}"` : "",
      options.background ? `BACKGROUND_COLOR="${options.background}"` : "",
    ].filter(Boolean).join(" ");
    const font = options.bold ? '<font BOLD="true"/>' : "";
    return `<node ${attrs}>${font}${children.join("")}</node>`;
  };

  const overview = node("TỔNG QUAN BỔ SUNG", [
    node("Công thức gốc", [
      node("Ads Cost / GMV = Tổng Ads Cost cùng kỳ / GMV toàn nền tảng cùng kỳ × 100%"),
      node("Business ROAS = GMV toàn nền tảng cùng kỳ / Tổng Ads Cost cùng kỳ"),
      node("Ads Cost / GMV = 1 / Business ROAS"),
    ], { folded: true }),
    node("Tử số — Tổng Ads Cost", [
      node("Chi tiết metrics vẫn nằm nguyên trong nhánh Ads Cost cũ"),
      node("Breakdown một chiều: Nền tảng; Sản phẩm; Phễu; Campaign objective"),
      node("Breakdown cặp 2: 6 tổ hợp"),
      node("Breakdown cặp 3: 4 tổ hợp"),
      node("File công thức tổng quan: D:\\BA_library\\Ad_Cost_cap_2_va_3_tong_quan.mm"),
      node("Một chiều, cặp 2 và cặp 3 là nhiều cách đọc cùng Tổng Ads Cost; không cộng các cách đọc với nhau"),
    ], { folded: true }),
    node("Mẫu số — GMV toàn nền tảng", [
      node("GMV = Shopee + TikTok + Facebook/Messenger + cửa hàng + B2B + kênh khác"),
      node("Các nguồn GMV business hiện To be updated"),
      node("Purchases conversion value của Meta không thay GMV business"),
    ], { folded: true }),
    node("Kịch bản 5–10%", [
      node("5% → Business ROAS = 20 lần"),
      node("10% → Business ROAS = 10 lần"),
      node("5%: Ads Cost tối đa = GMV × 5%; GMV cần đạt = Ads Cost / 5%"),
      node("10%: Ads Cost tối đa = GMV × 10%; GMV cần đạt = Ads Cost / 10%"),
    ], { folded: true }),
    node("Ranh giới", [
      node("5–10% là thông tin/chuẩn của case; raw hiện chưa tái tính"),
      node("Business ROAS không phải Purchase ROAS do Meta báo cáo"),
      node("Cây tổng quan chưa tự kết luận KPI 1"),
    ], { folded: true }),
  ], {
    style: "bubble",
    position: "left",
    background: "#4472C4",
    color: "#FFFFFF",
    bold: true,
  });

  const rootCloseIndex = xml.lastIndexOf("</node>");
  if (rootCloseIndex < 0) throw new Error("Không tìm thấy node gốc để thêm nhánh tổng quan");
  xml = `${xml.slice(0, rootCloseIndex)}  ${overview}\n${xml.slice(rootCloseIndex)}`;
}

await fs.writeFile(targetPath, xml, "utf8");
process.stdout.write(JSON.stringify({ targetPath }, null, 2));
