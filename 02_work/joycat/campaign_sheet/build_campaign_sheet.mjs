import fs from "node:fs/promises";
import path from "node:path";
import { FileBlob, SpreadsheetFile, Workbook } from "@oai/artifact-tool";

const sources = [
  {
    month: "2026-03",
    file: "D:\\Meta Agentic BA\\01_inputs\\joycat\\raw\\meta_ads\\variants\\dataset_xlsx\\Campaign\\CPAS-SHOPEE-Campaigns-1-Mar-2026-31-Mar-2026.xlsx",
  },
  {
    month: "2026-04",
    file: "D:\\Meta Agentic BA\\01_inputs\\joycat\\raw\\meta_ads\\variants\\dataset_xlsx\\Campaign\\CPAS-SHOPEE-Campaigns-1-Apr-2026-30-Apr-2026.xlsx",
  },
  {
    month: "2026-05",
    file: "D:\\Meta Agentic BA\\01_inputs\\joycat\\raw\\meta_ads\\variants\\dataset_xlsx\\Campaign\\CPAS-SHOPEE-Campaigns-1-May-2026-31-May-2026.xlsx",
  },
];

const outputDir = "D:\\Meta Agentic BA\\03_outputs\\joycat";
const outputPath = path.join(outputDir, "JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx");
const previewPath = "D:\\Meta Agentic BA\\02_work\\joycat\\campaign_sheet\\campaign_objective_demo_preview.png";

const wanted = [
  "Campaign name",
  "Result indicator",
  "Cost per results",
  "Amount spent (VND)",
  "Phễu",
];

function numericAmount(value) {
  if (typeof value === "number" && Number.isFinite(value)) return value;
  if (typeof value !== "string" || value.trim() === "") return null;
  const parsed = Number(value.replaceAll(",", "").trim());
  return Number.isFinite(parsed) ? parsed : null;
}

function inferObjective(resultIndicator, campaignName) {
  const indicator = String(resultIndicator ?? "").trim();
  const name = String(campaignName ?? "").trim().toLowerCase();

  if (indicator === "actions:onsite_conversion.messaging_conversation_started_7d") {
    return "Engagement - Messaging";
  }
  if (indicator === "actions:post_engagement") {
    return "Engagement - Post engagement";
  }
  if (indicator === "actions:onsite_conversion.purchase") {
    return "Sales - Purchase";
  }
  if (indicator === "estimated_ad_recallers") {
    return "Awareness - Ad recall";
  }
  if (!indicator && name.includes("doanh số")) {
    return "Sales - Purchase [Suy luận từ tên Campaign]";
  }
  return "Chưa xác định";
}

const combined = [];
const sourceSummary = [];

for (const source of sources) {
  const blob = await FileBlob.load(source.file);
  const sourceBook = await SpreadsheetFile.importXlsx(blob);
  const sourceSheet = sourceBook.worksheets.getItemAt(0);
  const sourceRange = sourceSheet.getUsedRange(true);
  const matrix = sourceRange.values;

  if (!matrix || matrix.length < 2) {
    throw new Error(`Nguồn không có dữ liệu: ${source.file}`);
  }

  const headers = matrix[0].map((value) => String(value ?? "").trim());
  const indexes = Object.fromEntries(wanted.map((name) => [name, headers.indexOf(name)]));
  const missing = wanted.filter((name) => indexes[name] < 0);
  if (missing.length) {
    throw new Error(`Thiếu cột ${missing.join(", ")} trong ${source.file}`);
  }

  let kept = 0;
  let monthSpend = 0;
  for (const row of matrix.slice(1)) {
    const amount = numericAmount(row[indexes["Amount spent (VND)"]]);
    if (amount === null || amount <= 0) continue;

    const campaignName = String(row[indexes["Campaign name"]] ?? "").trim();
    if (!campaignName) continue;

    const resultIndicator = row[indexes["Result indicator"]] ?? null;
    combined.push([
      source.month,
      campaignName,
      resultIndicator,
      row[indexes["Cost per results"]] ?? null,
      amount,
      row[indexes["Phễu"]] ?? null,
      inferObjective(resultIndicator, campaignName),
    ]);
    kept += 1;
    monthSpend += amount;
  }

  sourceSummary.push({ month: source.month, kept, monthSpend, file: path.basename(source.file) });
}

combined.sort((a, b) => String(a[0]).localeCompare(String(b[0])) || String(a[1]).localeCompare(String(b[1])));

const workbook = Workbook.create();
const sheet = workbook.worksheets.add("Campaign_3_tháng");
sheet.showGridLines = false;

sheet.getRange("A1:G1").merge();
sheet.getRange("A1").values = [["JOYCAT — CAMPAIGN CÓ AMOUNT SPENT | THÁNG 03–05/2026"]];
sheet.getRange("A2:G2").merge();
sheet.getRange("A2").values = [["Chỉ giữ Campaign có Amount spent (VND) > 0. Objective là suy luận để Duy review, không phải trường Meta đã xác minh."]];
sheet.getRange("A3:G3").merge();
sheet.getRange("A3").values = [[`Nguồn: ${sources.map((s) => path.basename(s.file)).join(" | ")}`]];

const headers = [["Tháng", "Campaign name", "Result indicator", "Cost per results", "Amount spent (VND)", "Phễu", "Objective suy luận"]];
sheet.getRange("A5:G5").values = headers;
if (combined.length) {
  sheet.getRangeByIndexes(5, 0, combined.length, 7).values = combined;
}

const lastRow = 5 + combined.length;
const table = sheet.tables.add(`A5:G${lastRow}`, true, "JoycatCampaign3ThangTable");
table.style = "TableStyleMedium2";
table.showFilterButton = true;
table.showBandedRows = true;

sheet.getRange("A1:G1").format = {
  fill: "#17365D",
  font: { bold: true, color: "#FFFFFF", size: 15 },
  horizontalAlignment: "center",
  verticalAlignment: "center",
};
sheet.getRange("A2:G2").format = {
  fill: "#D9EAF7",
  font: { color: "#17365D", italic: true },
  wrapText: true,
  verticalAlignment: "center",
};
sheet.getRange("A3:G3").format = {
  fill: "#F2F2F2",
  font: { color: "#666666", size: 9 },
  wrapText: true,
  verticalAlignment: "center",
};
sheet.getRange("A5:G5").format = {
  fill: "#2F75B5",
  font: { bold: true, color: "#FFFFFF" },
  verticalAlignment: "center",
};

sheet.getRange(`A6:A${lastRow}`).format.horizontalAlignment = "center";
sheet.getRange(`D6:E${lastRow}`).format.numberFormat = "#,##0";
sheet.getRange(`D6:E${lastRow}`).format.horizontalAlignment = "right";
sheet.getRange(`F6:F${lastRow}`).format.horizontalAlignment = "center";
sheet.getRange(`A5:G${lastRow}`).format.verticalAlignment = "center";
sheet.getRange(`B6:C${lastRow}`).format.wrapText = true;
sheet.getRange(`G6:G${lastRow}`).format.wrapText = true;

sheet.getRange("A1:F1").format.rowHeight = 30;
sheet.getRange("A2:F2").format.rowHeight = 34;
sheet.getRange("A3:F3").format.rowHeight = 30;
sheet.getRange("A5:F5").format.rowHeight = 24;
sheet.getRange("A:A").format.columnWidth = 12;
sheet.getRange("B:B").format.columnWidth = 42;
sheet.getRange("C:C").format.columnWidth = 48;
sheet.getRange("D:D").format.columnWidth = 18;
sheet.getRange("E:E").format.columnWidth = 20;
sheet.getRange("F:F").format.columnWidth = 12;
sheet.getRange("G:G").format.columnWidth = 38;
sheet.freezePanes.freezeRows(5);

const audit = workbook.worksheets.add("Kiểm_tra_nguồn");
audit.showGridLines = false;
audit.getRange("A1:D1").values = [["Tháng", "Số dòng giữ lại", "Tổng Amount spent (VND)", "File nguồn"]];
audit.getRange("A2:D4").values = sourceSummary.map((x) => [x.month, x.kept, x.monthSpend, x.file]);
audit.getRange("A7:C7").values = [["Result indicator", "Objective suy luận", "Ghi chú"]];
audit.getRange("A8:C12").values = [
  ["actions:onsite_conversion.messaging_conversation_started_7d", "Engagement - Messaging", "Suy luận từ loại kết quả"],
  ["actions:post_engagement", "Engagement - Post engagement", "Có thể đóng vai trò TOFU nhưng không gọi là Awareness objective"],
  ["actions:onsite_conversion.purchase", "Sales - Purchase", "Suy luận từ loại kết quả"],
  ["estimated_ad_recallers", "Awareness - Ad recall", "Suy luận từ loại kết quả"],
  ["Result indicator trống + tên có Doanh số", "Sales - Purchase", "Suy luận bổ sung từ tên Campaign; cần xác minh"],
];
audit.getRange("A1:D1").format = {
  fill: "#17365D",
  font: { bold: true, color: "#FFFFFF" },
};
audit.getRange("A7:C7").format = {
  fill: "#2F75B5",
  font: { bold: true, color: "#FFFFFF" },
};
audit.getRange("A8:C12").format.wrapText = true;
audit.getRange("B2:C4").format.numberFormat = "#,##0";
audit.getRange("A:D").format.autofitColumns();
audit.getRange("D:D").format.columnWidth = 62;
audit.getRange("A:A").format.columnWidth = 64;
audit.getRange("B:B").format.columnWidth = 34;
audit.getRange("C:C").format.columnWidth = 58;
audit.freezePanes.freezeRows(1);

const inspected = await workbook.inspect({
  kind: "table",
  range: `Campaign_3_tháng!A1:G${Math.min(lastRow, 20)}`,
  include: "values,formulas",
  tableMaxRows: 20,
  tableMaxCols: 7,
});

const errors = await workbook.inspect({
  kind: "match",
  searchTerm: "#REF!|#DIV/0!|#VALUE!|#NAME\\?|#N/A",
  options: { useRegex: true, maxResults: 100 },
  summary: "final formula error scan",
});

const preview = await workbook.render({
  sheetName: "Campaign_3_tháng",
  range: `A1:G${Math.min(lastRow, 30)}`,
  scale: 1.5,
  format: "png",
});
await fs.writeFile(previewPath, new Uint8Array(await preview.arrayBuffer()));

await fs.mkdir(outputDir, { recursive: true });
const output = await SpreadsheetFile.exportXlsx(workbook);
await output.save(outputPath);

console.log(JSON.stringify({
  outputPath,
  previewPath,
  rowCount: combined.length,
  sourceSummary,
  inspect: inspected.ndjson,
  errors: errors.ndjson,
}, null, 2));
