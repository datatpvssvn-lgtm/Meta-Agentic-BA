import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const path = "D:/Meta ad BA agentic/02_process/legacy_derived/joycat/dataset_csv/Ads/Ads tháng 3.xlsx";
const workbook = await SpreadsheetFile.importXlsx(await FileBlob.load(path));
const summary = await workbook.inspect({
  kind: "workbook,sheet,table",
  maxChars: 12000,
  tableMaxRows: 8,
  tableMaxCols: 24,
  tableMaxCellChars: 120,
});
console.log(summary.ndjson);

const sheets = await workbook.inspect({ kind: "sheet", include: "id,name", maxChars: 4000 });
console.log(sheets.ndjson);

for (const sheet of workbook.worksheets.items) {
  const used = sheet.getUsedRange(true);
  if (!used) continue;
  const rows = Math.min(10, used.rowCount);
  const cols = Math.min(24, used.columnCount);
  console.log(`SHEET=${sheet.name}`);
  console.log(JSON.stringify(sheet.getRangeByIndexes(0, 0, rows, cols).values));
}
