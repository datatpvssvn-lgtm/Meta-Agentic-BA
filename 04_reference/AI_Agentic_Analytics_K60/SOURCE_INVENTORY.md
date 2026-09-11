# Source Inventory - AI Agentic Analytics K60

> Snapshot hiện hành: 2026-09-11  
> Source root có thẩm quyền: `D:\AI_Agentic_Analytics_K60_20260909_FULL\AI Agentic Analytics K60`  
> Nội dung gốc: 1.277 file, 5.873.080.087 byte  
> Sau khi thêm `AGENTS.md` và `context.md` làm sidecar định tuyến: 1.279 file, 5.873.083.638 byte

## 0. Bản đồ full source hiện hành

| Nhóm cấp cao | Số file | Dung lượng (byte) | Cách dùng |
|---|---:|---:|---|
| `1. Giáo trình + Minh họa (Chỉ xem trực tuyến)` | 26 | 148.249.664 | Nguồn học/bài giảng |
| `2. Tài liệu đi kèm buổi học` | 564 | 2.797.572.424 | Tài liệu, bài tập và data sample |
| `3. Session E-learning_AGENTIC AI by Anthropic (Xem trực tuyến)` | 26 | 929.374.671 | Session AI; kiểm tra định dạng thật trước khi đọc |
| `4. Tài liệu cập nhật liên tục (AI, FABRIC, BUSINESS ...)` | 190 | 1.738.444.107 | Tài liệu kỹ thuật cập nhật |
| `dữ liệu theo ngày học` | 44 | 227.194.407 | Data sample theo buổi |
| `Session 12-13 EDA Descriptive` | 148 | 14.663.569 | Slide 1–148 |
| `Sesion 14-15 EDA Diagnostic` | 113 | 10.266.373 | Slide 1–113; giữ đúng chính tả tên folder nguồn |
| `Session 16-18 EDA Framework` | 1 | 43.995 | EDA framework |
| `session 16-18 visualization` | 159 | 7.154.734 | Visualization đầy đủ |
| 6 workbook ở root | 6 | 115.143 | Checklist, framework, Data Dictionary template |

Hai workbook ưu tiên cho yêu cầu hiện tại:

- `EDA_Descriptive_Checklist.xlsx`: quy trình mô tả biến; `Categorical × Numerical` dùng group statistics/Gap%/bar/trend/Pareto/box plot; `Numerical × Numerical` dùng scatter, trend/R², Pearson và heatmap theo điều kiện.
- `EDA_Diagnostics_Methods.xlsx`: bảng `MUST HAVE` và `RULES` giúp chọn kỹ thuật theo loại cặp; correlation không được diễn giải thành causation.

Các mục 1–4 bên dưới là inventory chi tiết của **snapshot cũ 57 file** đã dùng để tạo sáu PDF reader. Chúng được giữ để truy vết PDF cũ, không đại diện cho full source hiện hành.

## 1. Snapshot cũ — tài liệu đã chuyển thành PDF

| Source | Kiểu | Quan sát |
|---|---|---|
| `2. Tài liệu đi kèm buổi học\5. Logic Tree\Tài liệu đọc về Analyticial Thinking\da_operational_data_quality_data_management_maturity_metrics.pptx` | PowerPoint | 30 slide; operational metrics, business value, data quality, data literacy và data-management maturity |
| `2. Tài liệu đi kèm buổi học\5. Logic Tree\Tài liệu đọc về Analyticial Thinking\problem_solving_101.pdf` | PDF | 68 trang; tài liệu problem solving |
| `session 16-18 visualization\slide-*.jpg` | 41 ảnh | Slide số 001-129 không liên tục; giữ thứ tự số file khi ghép PDF |

## 2. Snapshot cũ — data sample chỉ làm catalogue

| Source | Kiểu | Schema/sheet quan sát được |
|---|---|---|
| `2008 Contoso Data.xlsx` | Excel | `FACT Sales` 260.517 dòng x 17 cột; `FACT Sales Quota` 191.813 dòng x 9 cột |
| `Sales Promotion.xlsx` | Excel | `Data`: Date, ProductCategoryName, DiscountAmount; 277.243 dòng |
| `Sales Target.xlsx` | Excel | `Data`: Date, StoreKey, StoreName, BrandName, Target; 117.317 dòng; có hai bản cùng kích thước ở hai folder |
| `Sales Hierarchy Override.xlsx` | Excel | `Director`: Salesperson, RD; `VP`: Director, VP Sales |
| `invoice detail.csv` | CSV | Invoice Number, Line Number, Product ID, Warehouse ID, quantity, price, cost, discount, line type |
| `On Hand History.CSV` | CSV | Date, Warehouse ID, Product ID, inventory quantity/UOM |
| `Colors.CSV` | CSV | Color ID, description, short name |
| `Reasons.CSV` | CSV | Reason Code, description, category |
| `Styles.CSV` | CSV | Style ID, description, brand, product group, season, UOM |
| `ContosoSales_Promotion.accdb` | Access | 317 MB; chưa audit table/schema trong phase PDF |

## 3. Snapshot cũ — source kỹ thuật hoặc chưa hoàn chỉnh

| Source | Trạng thái | Quy tắc |
|---|---|---|
| `XMind-2021-for-Windows-64bit-11.0.0-202105270001_Tipsoft.exe` | Installer | Không chạy; không phải tài liệu học |
| `1. AI Fluency Framework & Foundations.mp4.drivedownload` | Placeholder 776 MB | Không phải MP4 có thể đọc; cần tải lại video hoặc transcript |
| `Tạo một Scatter plot bằng Python trong Power BI.pbix` | PBIX 271 MB | Chưa export report pages; cần mở bằng Power BI để xác minh nội dung |

## 4. File PDF dẫn xuất

Các file trong `pdf/` là reader/copy dẫn xuất để đọc thuận tiện. Chúng không thay source gốc và không thay đổi trạng thái bằng chứng của nội dung.
