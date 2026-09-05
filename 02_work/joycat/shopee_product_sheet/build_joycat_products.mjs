import fs from "node:fs/promises";
import { SpreadsheetFile, Workbook } from "@oai/artifact-tool";

const products = [
  ["54652253159", "Combo Vi Sinh Khử Mùi JOYCAT (Xịt & Bột) - Công Thức Dual E.M Bio-Technology™, Khử Mùi & Diệt Khuẩn, Hiệu Quả Kéo Dài", 149000, 0.25, false, 4.9, "604", "Đang hiển thị", "https://shopee.vn/Combo-Vi-Sinh-Kh%E1%BB%AD-M%C3%B9i-JOYCAT-(X%E1%BB%8Bt-B%E1%BB%99t)-C%C3%B4ng-Th%E1%BB%A9c-Dual-E.M-Bio-Technology%E2%84%A2-Kh%E1%BB%AD-M%C3%B9i-Di%E1%BB%87t-Khu%E1%BA%A9n-Hi%E1%BB%87u-Qu%E1%BA%A3-K%C3%A9o-D%C3%A0i-i.853699347.54652253159", "Shopee All Products sau đăng nhập"],
  ["44502278009", "Bột Vi Sinh Khử Mùi JOYCAT (Túi 75g) - Công Thức E.M Control Formula™, Khử Mùi & Diệt Khuẩn, Hiệu Quả Kéo Dài", 39000, 0.20, false, 5.0, "1k+", "Đang hiển thị", "https://shopee.vn/B%E1%BB%99t-Vi-Sinh-Kh%E1%BB%AD-M%C3%B9i-JOYCAT-(T%C3%BAi-75g)-C%C3%B4ng-Th%E1%BB%A9c-E.M-Control-Formula%E2%84%A2-Kh%E1%BB%AD-M%C3%B9i-Di%E1%BB%87t-Khu%E1%BA%A9n-Hi%E1%BB%87u-Qu%E1%BA%A3-K%C3%A9o-D%C3%A0i-i.853699347.44502278009", "Shopee All Products sau đăng nhập"],
  ["53301517532", "Combo 3 Túi Cát Sắn Natural Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 431200, 0.20, true, 5.0, "823", "Đang hiển thị", "https://shopee.vn/Combo-3-T%C3%BAi-C%C3%A1t-S%E1%BA%AFn-Natural-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.53301517532", "Shopee All Products sau đăng nhập"],
  ["41659422198", "Cát Sắn Natural Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Vệ Sinh Cho Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 148720, 0.17, true, 4.9, "5k+", "Đang hiển thị", "https://shopee.vn/C%C3%A1t-S%E1%BA%AFn-Natural-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-V%E1%BB%87-Sinh-Cho-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.41659422198", "Shopee All Products sau đăng nhập"],
  ["47303410867", "Combo 3 Túi Cát Mix PerformX Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 325600, 0.28, true, 4.9, "697", "Đang hiển thị", "https://shopee.vn/Combo-3-T%C3%BAi-C%C3%A1t-Mix-PerformX-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.47303410867", "Shopee All Products sau đăng nhập"],
  ["43727202767", "Cát Mix PerformX Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Vệ Sinh Cho Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 129000, 0.14, true, 4.8, "1k+", "Đang hiển thị", "https://shopee.vn/C%C3%A1t-Mix-PerformX-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-V%E1%BB%87-Sinh-Cho-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.43727202767", "Shopee All Products sau đăng nhập"],
  ["43026477525", "Combo 2 Túi Cát Sắn Natural Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 290400, 0.19, true, 4.9, "1k+", "Đang hiển thị", "https://shopee.vn/Combo-2-T%C3%BAi-C%C3%A1t-S%E1%BA%AFn-Natural-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.43026477525", "Shopee All Products sau đăng nhập"],
  ["48902263316", "Xịt Vi Sinh Khử Mùi JOYCAT (Chai 450ml) - Công Thức E.M Elimination Formula™, Khử Mùi & Diệt Khuẩn, Hiệu Quả Kéo Dài", 132000, 0.12, false, 5.0, "297", "Đang hiển thị", "https://shopee.vn/X%E1%BB%8Bt-Vi-Sinh-Kh%E1%BB%AD-M%C3%B9i-JOYCAT-(Chai-450ml)-C%C3%B4ng-Th%E1%BB%A9c-E.M-Elimination-Formula%E2%84%A2-Kh%E1%BB%AD-M%C3%B9i-Di%E1%BB%87t-Khu%E1%BA%A9n-Hi%E1%BB%87u-Qu%E1%BA%A3-K%C3%A9o-D%C3%A0i-i.853699347.48902263316", "Shopee All Products sau đăng nhập"],
  ["44908677009", "Cát Khoáng MineralX Advanced JOYCAT (Túi 3.5kg / 8L) - Cát Vệ Sinh Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 110000, 0.08, true, 4.9, "313", "Đang hiển thị", "https://shopee.vn/C%C3%A1t-Kho%C3%A1ng-MineralX-Advanced-JOYCAT-(T%C3%BAi-3.5kg-8L)-C%C3%A1t-V%E1%BB%87-Sinh-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.44908677009", "Shopee All Products sau đăng nhập"],
  ["53758652941", "Combo 2 Túi Cát Khoáng MineralX Advanced JOYCAT (Túi 3.5kg / 8L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health", 189200, 0.21, true, 4.6, "88", "Đang hiển thị", "https://shopee.vn/Combo-2-T%C3%BAi-C%C3%A1t-Kho%C3%A1ng-MineralX-Advanced-JOYCAT-(T%C3%BAi-3.5kg-8L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-i.853699347.53758652941", "Shopee All Products sau đăng nhập"],
  ["54401512661", "1 Thùng Cát Sắn Natural Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 853600, 0.21, true, 4.9, "471", "Đang hiển thị", "https://shopee.vn/1-Th%C3%B9ng-C%C3%A1t-S%E1%BA%AFn-Natural-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.54401512661", "Shopee All Products sau đăng nhập"],
  ["54153386367", "Combo 2 Túi Cát Mix PerformX Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 220000, 0.27, true, 4.9, "253", "Đang hiển thị", "https://shopee.vn/Combo-2-T%C3%BAi-C%C3%A1t-Mix-PerformX-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.54153386367", "Shopee All Products sau đăng nhập"],
  ["40981732711", "Cát Đậu Nành Mix Khoáng PowerX Bio JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 110000, 0.08, true, 5.0, "31", "Đang hiển thị", "https://shopee.vn/C%C3%A1t-%C4%90%E1%BA%ADu-N%C3%A0nh-Mix-Kho%C3%A1ng-PowerX-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.40981732711", "Shopee All Products sau đăng nhập"],
  ["54812261805", "[Xả Được Bồn Cầu] Cát Sắn Mix Đậu Nành Tofuu.X Bio JOYCAT (Túi 2.5kg / 6L) - Cát Theo Dõi Sức Khỏe Cho Mèo", 136400, 0.20, true, 4.9, "112", "Đang hiển thị", "https://shopee.vn/-X%E1%BA%A3-%C4%90%C6%B0%E1%BB%A3c-B%E1%BB%93n-C%E1%BA%A7u-C%C3%A1t-S%E1%BA%AFn-Mix-%C4%90%E1%BA%ADu-N%C3%A0nh-Tofuu.X-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Cho-M%C3%A8o-i.853699347.54812261805", "Shopee All Products sau đăng nhập"],
  ["52008652913", "Combo 4 Túi Cát Khoáng MineralX Advanced JOYCAT (Túi 3.5kg / 8L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health", 360800, 0.25, true, 4.7, "116", "Đang hiển thị", "https://shopee.vn/Combo-4-T%C3%BAi-C%C3%A1t-Kho%C3%A1ng-MineralX-Advanced-JOYCAT-(T%C3%BAi-3.5kg-8L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-i.853699347.52008652913", "Shopee All Products sau đăng nhập"],
  ["43227384196", "1 Thùng Cát Mix PerformX Advanced JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health IQ", 638000, 0.29, true, 5.0, "423", "Đang hiển thị", "https://shopee.vn/1-Th%C3%B9ng-C%C3%A1t-Mix-PerformX-Advanced-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.43227384196", "Shopee All Products sau đăng nhập"],
  ["55712258330", "[Xả Được Bồn Cầu] Combo 3 Túi Cát Sắn Mix Đậu Nành Tofuu.X Bio JOYCAT (Túi 2.5kg / 6L) - Cát Theo Dõi Sức Khỏe Cho Mèo", 396000, 0.22, true, 4.9, "59", "Đang hiển thị", "https://shopee.vn/-X%E1%BA%A3-%C4%90%C6%B0%E1%BB%A3c-B%E1%BB%93n-C%E1%BA%A7u-Combo-3-T%C3%BAi-C%C3%A1t-S%E1%BA%AFn-Mix-%C4%90%E1%BA%ADu-N%C3%A0nh-Tofuu.X-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Cho-M%C3%A8o-i.853699347.55712258330", "Shopee All Products sau đăng nhập"],
  ["48458681913", "Combo 3 Túi Cát Khoáng MineralX Advanced JOYCAT (Túi 3.5kg / 8L) - Cát Mèo Thế Hệ Mới, Theo Dõi Sức Khỏe Ultimate Health", 272800, 0.24, true, 5.0, "65", "Đang hiển thị", "https://shopee.vn/Combo-3-T%C3%BAi-C%C3%A1t-Kho%C3%A1ng-MineralX-Advanced-JOYCAT-(T%C3%BAi-3.5kg-8L)-C%C3%A1t-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-i.853699347.48458681913", "Shopee All Products sau đăng nhập"],
  ["48762287172", "Combo 2 Túi Cát Đậu Nành Mix Khoáng PowerX Bio JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Theo Dõi Sức Khỏe Ultimate Health IQ", 189200, 0.21, true, null, null, "Đang hiển thị", "https://shopee.vn/Combo-2-T%C3%BAi-C%C3%A1t-%C4%90%E1%BA%ADu-N%C3%A0nh-Mix-Kho%C3%A1ng-PowerX-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.48762287172", "Shopee All Products sau đăng nhập"],
  ["52462262098", "Combo 3 Túi Cát Đậu Nành Mix Khoáng PowerX Bio JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Theo Dõi Sức Khỏe Ultimate Health IQ", 277200, 0.23, true, null, null, "Đang hiển thị", "https://shopee.vn/Combo-3-T%C3%BAi-C%C3%A1t-%C4%90%E1%BA%ADu-N%C3%A0nh-Mix-Kho%C3%A1ng-PowerX-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.52462262098", "Shopee All Products sau đăng nhập"],
  ["52712266855", "[Xả Được Bồn Cầu] Combo 2 Túi Cát Sắn Mix Đậu Nành Tofuu.X Bio JOYCAT (Túi 2.5kg / 6L) - Cát Theo Dõi Sức Khỏe Cho Mèo", 268400, 0.21, true, 5.0, "11", "Đang hiển thị", "https://shopee.vn/-X%E1%BA%A3-%C4%90%C6%B0%E1%BB%A3c-B%E1%BB%93n-C%E1%BA%A7u-Combo-2-T%C3%BAi-C%C3%A1t-S%E1%BA%AFn-Mix-%C4%90%E1%BA%ADu-N%C3%A0nh-Tofuu.X-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Cho-M%C3%A8o-i.853699347.52712266855", "Shopee All Products sau đăng nhập"],
  ["46362295656", "Combo 6 Túi Cát Đậu Nành Mix Khoáng PowerX Bio JOYCAT (Túi 2.5kg / 6L) - Cát Mèo Theo Dõi Sức Khỏe Ultimate Health IQ", 545600, 0.24, true, 5.0, "9", "Đang hiển thị", "https://shopee.vn/Combo-6-T%C3%BAi-C%C3%A1t-%C4%90%E1%BA%ADu-N%C3%A0nh-Mix-Kho%C3%A1ng-PowerX-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-M%C3%A8o-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Ultimate-Health-IQ-i.853699347.46362295656", "Shopee All Products sau đăng nhập"],
  ["40481736189", "[Xả Được Bồn Cầu] Combo 6 Túi Cát Sắn Mix Đậu Nành Tofuu.X Bio JOYCAT (Túi 2.5kg / 6L) - Cát Theo Dõi Sức Khỏe Cho Mèo", 765600, 0.25, true, 5.0, "25", "Đang hiển thị", "https://shopee.vn/-X%E1%BA%A3-%C4%90%C6%B0%E1%BB%A3c-B%E1%BB%93n-C%E1%BA%A7u-Combo-6-T%C3%BAi-C%C3%A1t-S%E1%BA%AFn-Mix-%C4%90%E1%BA%ADu-N%C3%A0nh-Tofuu.X-Bio-JOYCAT-(T%C3%BAi-2.5kg-6L)-C%C3%A1t-Theo-D%C3%B5i-S%E1%BB%A9c-Kh%E1%BB%8Fe-Cho-M%C3%A8o-i.853699347.40481736189", "Shopee All Products sau đăng nhập"],
  ["27144047088", "[Túi Tiết Kiệm] Cát Mix PerformX JOYCAT (Túi 4.5kg) - Cát Vệ Sinh Cho Mèo Hiệu Quả, Không Bụi, Thấm Hút Tốt, Đo pH", 220000, null, false, null, null, "Đã bán hết", "https://shopee.vn/-T%C3%BAi-Ti%E1%BA%BFt-Ki%E1%BB%87m-C%C3%A1t-Mix-PerformX-JOYCAT-%28T%C3%BAi-4.5kg%29-C%C3%A1t-V%E1%BB%87-Sinh-Cho-M%C3%A8o-Hi%E1%BB%87u-Qu%E1%BA%A3-Kh%C3%B4ng-B%E1%BB%A5i-Th%E1%BA%A5m-H%C3%BAt-T%E1%BB%91t-%C4%90o-pH-i.853699347.27144047088", "Trang sản phẩm Shopee được lập chỉ mục"],
  ["54104795820", "[Túi Tiết Kiệm] Cát Sắn Natural Advanced JOYCAT (Túi 4.5kg) - Cát Vệ Sinh Cho Mèo Thế Hệ Mới, Không Bụi, Vón Cứng, Đo pH", 290000, null, false, null, null, "Đã bán hết", "https://shopee.vn/-T%C3%BAi-Ti%E1%BA%BFt-Ki%E1%BB%87m-C%C3%A1t-S%E1%BA%AFn-Natural-Advanced-JOYCAT-%28T%C3%BAi-4.5kg%29-C%C3%A1t-V%E1%BB%87-Sinh-Cho-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Kh%C3%B4ng-B%E1%BB%A5i-V%C3%B3n-C%E1%BB%A9ng-%C4%90o-pH-i.853699347.54104795820", "Trang sản phẩm Shopee được lập chỉ mục"],
];

function productGroup(name) {
  if (name.includes("Vi Sinh Khử Mùi")) return "Vi sinh khử mùi";
  if (name.includes("Natural")) return "Cát Sắn Natural";
  if (name.includes("PerformX")) return "Cát Mix PerformX";
  if (name.includes("MineralX")) return "Cát Khoáng MineralX";
  if (name.includes("PowerX")) return "Cát Đậu Nành Mix Khoáng PowerX";
  if (name.includes("Tofuu.X")) return "Cát Sắn Mix Đậu Nành Tofuu.X";
  return "Khác";
}

function packageType(name) {
  const combo = name.match(/Combo\s+(\d+)\s+Túi/i);
  if (combo) return `Combo ${combo[1]} túi`;
  if (name.startsWith("1 Thùng")) return "1 thùng";
  if (name.includes("Xịt & Bột")) return "Combo xịt và bột";
  if (name.includes("Chai 450ml")) return "1 chai 450ml";
  if (name.includes("Túi 75g")) return "1 túi 75g";
  if (name.includes("Túi 4.5kg")) return "1 túi 4,5kg";
  if (name.includes("Túi 3.5kg / 8L")) return "1 túi 3,5kg / 8L";
  if (name.includes("Túi 2.5kg / 6L")) return "1 túi 2,5kg / 6L";
  return "Theo tên sản phẩm";
}

const collectedDate = new Date("2026-08-25T00:00:00+07:00");
const rows = products.map((p, i) => {
  const [itemId, name, price, discount, gift, rating, sold, status, url, source] = p;
  return [i + 1, status, productGroup(name), packageType(name), name, price, discount, gift ? "Có" : "Không", rating, sold, itemId, url, source, collectedDate];
});

const workbook = Workbook.create();
const sheet = workbook.worksheets.add("Danh sách sản phẩm");
const notes = workbook.worksheets.add("Ghi chú nguồn");

sheet.showGridLines = false;
sheet.mergeCells("A1:N1");
sheet.getRange("A1").values = [["DANH SÁCH SẢN PHẨM SHOPEE — CÁT MÈO JOYCAT"]];
sheet.getRange("A1:N1").format = {
  fill: "#EE4D2D",
  font: { bold: true, color: "#FFFFFF", size: 16 },
  horizontalAlignment: "center",
  verticalAlignment: "center",
};
sheet.getRange("A1:N1").format.rowHeight = 32;

sheet.mergeCells("A2:N2");
sheet.getRange("A2").values = [["Nguồn: https://shopee.vn/joycat_shop | Thu thập ngày 2026-08-25 | Giá và số đã bán có thể thay đổi theo thời điểm/người dùng"]];
sheet.getRange("A2:N2").format = {
  fill: "#FFF3EF",
  font: { color: "#8A2E1C", italic: true },
  horizontalAlignment: "left",
  verticalAlignment: "center",
};
sheet.getRange("A2:N2").format.rowHeight = 24;

sheet.getRange("A4:N4").format = { fill: "#FFF8F5", font: { bold: true, color: "#5C2A1E" }, verticalAlignment: "center" };
sheet.getRange("A4:N4").format.borders = { preset: "outside", style: "thin", color: "#F1B7A7" };
sheet.getRange("A4:N4").values = [["Tổng SP", null, null, "Đang hiển thị", null, null, "Đã bán hết", null, null, "Giá thấp nhất", null, null, "Giá cao nhất", null]];
sheet.getRange("B4").formulas = [["=COUNTA($E$8:$E$32)"]];
sheet.getRange("E4").formulas = [["=COUNTIF($B$8:$B$32,\"Đang hiển thị\")"]];
sheet.getRange("H4").formulas = [["=COUNTIF($B$8:$B$32,\"Đã bán hết\")"]];
sheet.getRange("K4").formulas = [["=MIN($F$8:$F$32)"]];
sheet.getRange("N4").formulas = [["=MAX($F$8:$F$32)"]];
sheet.getRange("B4,E4,H4,K4,N4").format = { font: { bold: true, color: "#EE4D2D" } };
sheet.getRange("K4,N4").format.numberFormat = "#,##0";

sheet.mergeCells("A6:N6");
sheet.getRange("A6").values = [["23 sản phẩm đang hiển thị trong All Products + 2 sản phẩm đã bán hết nhưng vẫn thuộc catalog 25 sản phẩm của shop."]];
sheet.getRange("A6:N6").format = { fill: "#FFFBEA", font: { color: "#6B5A19" }, wrapText: true };

const headers = [["STT", "Trạng thái", "Nhóm sản phẩm", "Quy cách bán", "Tên sản phẩm", "Giá hiện tại (VND)", "Giảm giá", "Quà tặng", "Điểm đánh giá", "Đã bán (hiển thị)", "Item ID", "Link sản phẩm", "Nguồn thu thập", "Ngày thu thập"]];
sheet.getRange("A7:N7").values = headers;
sheet.getRange("A8:N32").values = rows;

const table = sheet.tables.add("A7:N32", true, "JoycatProducts");
table.style = "TableStyleMedium2";
table.showBandedRows = true;
table.showFilterButton = true;

sheet.getRange("A7:N7").format = { fill: "#C73B20", font: { bold: true, color: "#FFFFFF" }, horizontalAlignment: "center", verticalAlignment: "center", wrapText: true };
sheet.getRange("A8:N32").format.verticalAlignment = "top";
sheet.getRange("A8:N32").format.rowHeight = 44;
sheet.getRange("B8:E32").format.wrapText = true;
sheet.getRange("L8:N32").format.wrapText = true;
sheet.getRange("A8:A32").format.horizontalAlignment = "center";
sheet.getRange("B8:B32").format.horizontalAlignment = "center";
sheet.getRange("F8:F32").format.numberFormat = "#,##0";
sheet.getRange("G8:G32").format.numberFormat = "0%";
sheet.getRange("H8:J32").format.horizontalAlignment = "center";
sheet.getRange("I8:I32").format.numberFormat = "0.0";
sheet.getRange("K8:K32").format.numberFormat = "@";
sheet.getRange("N8:N32").format.numberFormat = "yyyy-mm-dd";

sheet.getRange("B8:B32").conditionalFormats.add("containsText", { text: "Đang hiển thị", format: { fill: "#E7F6EC", font: { color: "#177245", bold: true } } });
sheet.getRange("B8:B32").conditionalFormats.add("containsText", { text: "Đã bán hết", format: { fill: "#FDECEC", font: { color: "#B42318", bold: true } } });
sheet.getRange("G8:G32").conditionalFormats.add("dataBar", { color: "#EE4D2D", gradient: true });

const widths = [6, 15, 29, 22, 62, 18, 11, 11, 14, 18, 16, 52, 32, 15];
widths.forEach((w, idx) => { sheet.getRangeByIndexes(0, idx, 32, 1).format.columnWidth = w; });
sheet.freezePanes.freezeRows(7);
sheet.freezePanes.freezeColumns(2);

notes.showGridLines = false;
notes.mergeCells("A1:F1");
notes.getRange("A1").values = [["GHI CHÚ NGUỒN VÀ GIỚI HẠN DỮ LIỆU"]];
notes.getRange("A1:F1").format = { fill: "#EE4D2D", font: { bold: true, color: "#FFFFFF", size: 15 }, horizontalAlignment: "center" };
notes.getRange("A3:B10").values = [
  ["Tên shop", "Cát Mèo JOYCAT"],
  ["URL shop", "https://shopee.vn/joycat_shop"],
  ["Shop ID", "853699347"],
  ["Số sản phẩm shop công bố", 25],
  ["Đang hiển thị trong All Products", 23],
  ["Đã bán hết nhưng còn trang sản phẩm", 2],
  ["Ngày thu thập", collectedDate],
  ["Tài khoản dùng để đọc", "Phiên Shopee đã đăng nhập của Duy; không lưu thông tin đăng nhập"]
];
notes.getRange("A3:A10").format = { fill: "#FFF3EF", font: { bold: true, color: "#8A2E1C" } };
notes.getRange("A3:B10").format.borders = { preset: "outside", style: "thin", color: "#E7A795" };
notes.getRange("B9").format.numberFormat = "yyyy-mm-dd";

notes.mergeCells("A12:F12");
notes.getRange("A12").values = [["Cách đọc file"]];
notes.getRange("A12:F12").format = { fill: "#4B5563", font: { bold: true, color: "#FFFFFF" } };
notes.getRange("A13:F17").values = [
  ["1", "Giá hiện tại", "Là giá Shopee hiển thị tại thời điểm thu thập; có thể là giá cá nhân hóa hoặc giá khuyến mãi.", null, null, null],
  ["2", "Đã bán", "Giữ nguyên dạng Shopee hiển thị như 1k+ hoặc 5k+; không biến thành số chính xác.", null, null, null],
  ["3", "Điểm đánh giá", "Hai sản phẩm PowerX combo mới chỉ hiển thị Shop Rating nên để trống điểm sản phẩm.", null, null, null],
  ["4", "Sản phẩm bán hết", "Hai túi tiết kiệm 4,5 kg không xuất hiện trong All Products nhưng có trang sản phẩm và trạng thái Đã bán hết.", null, null, null],
  ["5", "Phạm vi", "Danh sách ở cấp sản phẩm; chưa tách từng phân loại/biến thể trong một sản phẩm.", null, null, null]
];
notes.getRange("A13:F17").format = { wrapText: true, verticalAlignment: "top" };
notes.getRange("A13:F17").format.borders = { preset: "inside", style: "thin", color: "#E5E7EB" };
notes.getRange("A13:A17").format.horizontalAlignment = "center";

notes.mergeCells("A19:F19");
notes.getRange("A19").values = [["Nguồn xác minh"]];
notes.getRange("A19:F19").format = { fill: "#4B5563", font: { bold: true, color: "#FFFFFF" } };
notes.getRange("A20:F22").values = [
  ["Catalog đang hiển thị", "https://shopee.vn/joycat_shop?is_from_login=true", "23 sản phẩm", null, null, null],
  ["Túi tiết kiệm PerformX 4,5kg", "https://shopee.vn/-T%C3%BAi-Ti%E1%BA%BFt-Ki%E1%BB%87m-C%C3%A1t-Mix-PerformX-JOYCAT-%28T%C3%BAi-4.5kg%29-C%C3%A1t-V%E1%BB%87-Sinh-Cho-M%C3%A8o-Hi%E1%BB%87u-Qu%E1%BA%A3-Kh%C3%B4ng-B%E1%BB%A5i-Th%E1%BA%A5m-H%C3%BAt-T%E1%BB%91t-%C4%90o-pH-i.853699347.27144047088", "Đã bán hết", null, null, null],
  ["Túi tiết kiệm Natural 4,5kg", "https://shopee.vn/-T%C3%BAi-Ti%E1%BA%BFt-Ki%E1%BB%87m-C%C3%A1t-S%E1%BA%AFn-Natural-Advanced-JOYCAT-%28T%C3%BAi-4.5kg%29-C%C3%A1t-V%E1%BB%87-Sinh-Cho-M%C3%A8o-Th%E1%BA%BF-H%E1%BB%87-M%E1%BB%9Bi-Kh%C3%B4ng-B%E1%BB%A5i-V%C3%B3n-C%E1%BB%A9ng-%C4%90o-pH-i.853699347.54104795820", "Đã bán hết", null, null, null]
];
notes.getRange("A20:F22").format = { wrapText: true, verticalAlignment: "top" };
notes.getRange("A20:F22").format.borders = { preset: "inside", style: "thin", color: "#E5E7EB" };

notes.getRange("A:F").format.columnWidth = 18;
notes.getRange("A:A").format.columnWidth = 29;
notes.getRange("B:B").format.columnWidth = 72;
notes.getRange("C:C").format.columnWidth = 46;
notes.getRange("D:F").format.columnWidth = 10;
notes.getRange("1:22").format.autofitRows();
notes.freezePanes.freezeRows(1);

const inspect = await workbook.inspect({ kind: "table", range: "'Danh sách sản phẩm'!A1:N32", include: "values,formulas", tableMaxRows: 32, tableMaxCols: 14, maxChars: 12000 });
console.log(inspect.ndjson);
const errors = await workbook.inspect({ kind: "match", searchTerm: "#REF!|#DIV/0!|#VALUE!|#NAME\\?|#N/A", options: { useRegex: true, maxResults: 100 }, summary: "final formula error scan" });
console.log(errors.ndjson);

const outputDir = "D:/Meta Agentic BA/03_outputs/joycat";
const workDir = "D:/Meta Agentic BA/02_work/joycat/shopee_product_sheet";
await fs.mkdir(outputDir, { recursive: true });
await fs.mkdir(workDir, { recursive: true });
const preview1 = await workbook.render({ sheetName: "Danh sách sản phẩm", range: "A1:N18", scale: 1, format: "png" });
await fs.writeFile(`${workDir}/joycat-products-preview.png`, new Uint8Array(await preview1.arrayBuffer()));
const preview2 = await workbook.render({ sheetName: "Ghi chú nguồn", range: "A1:F22", scale: 1, format: "png" });
await fs.writeFile(`${workDir}/joycat-products-notes-preview.png`, new Uint8Array(await preview2.arrayBuffer()));

const output = await SpreadsheetFile.exportXlsx(workbook);
await output.save(`${outputDir}/JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`);
console.log(`EXPORTED=${outputDir}/JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`);
