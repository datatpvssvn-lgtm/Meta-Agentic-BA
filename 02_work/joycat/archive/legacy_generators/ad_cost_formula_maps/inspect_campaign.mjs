import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const source = "D:/Meta Agentic BA/01_inputs/joycat/raw/meta_ads/preferred_candidate/CPAS-SHOPEE-Campaigns-1-Apr-2026-30-Apr-2026.xlsx";
const workbook = await SpreadsheetFile.importXlsx(await FileBlob.load(source));
const result = await workbook.inspect({
  kind: "sheet,table",
  include: "id,name,values,formulas",
  maxChars: 12000,
  tableMaxRows: 8,
  tableMaxCols: 50,
  tableMaxCellChars: 180,
});
process.stdout.write(result.ndjson);
