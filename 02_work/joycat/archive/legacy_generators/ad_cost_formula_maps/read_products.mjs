import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const source = "D:/Meta Agentic BA/03_outputs/joycat/JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx";
const workbook = await SpreadsheetFile.importXlsx(await FileBlob.load(source));

const overview = await workbook.inspect({
  kind: "workbook,sheet,table",
  include: "id,name,values,formulas",
  maxChars: 18000,
  tableMaxRows: 35,
  tableMaxCols: 12,
  tableMaxCellChars: 250,
});

process.stdout.write(overview.ndjson);
