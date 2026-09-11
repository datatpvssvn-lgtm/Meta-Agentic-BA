# Context - Kho kiến thức AI Agentic Analytics K60

> Phiên bản: 2.0  
> Cập nhật: 2026-09-11  
> Owner sử dụng: Duy  
> Reviewer phương pháp: cậu Sinh  
> Trạng thái: Đã đăng ký bộ K60 đầy đủ và giữ sáu PDF reader của snapshot cũ để tham khảo; source vẫn được giữ ở vị trí gốc

## Phạm vi của PDF reader hiện có

- Có 6 PDF, tổng 154 trang, được tạo từ snapshot cũ một phần.
- Tất cả PDF mở được bằng parser, không mã hóa và đã render thành ảnh để kiểm tra bố cục.
- Reader Analytical Thinking giữ nguyên 30 slide PowerPoint và 68 trang `problem_solving_101.pdf`, có thêm trang hướng dẫn/phân cách.
- Trang trắng quan sát trong phần Problem Solving là trang có sẵn từ source được ghép nguyên trạng, không phải lỗi mất nội dung khi tạo reader.
- Chi tiết page count và hash nằm tại `PDF_MANIFEST.md`.
- Sáu PDF này **không bao phủ toàn bộ kho K60 đầy đủ** và chưa gồm nguyên bộ 148 slide EDA Descriptive, 113 slide EDA Diagnostic hoặc 159 ảnh Visualization hiện có.

## 1. Objective Context

Kho K60 giúp Duy học và tra cứu phương pháp Data Analytics/Business Analytics để:

- đặt đúng câu hỏi trước khi phân tích;
- phân rã bài toán bằng analytical thinking và logic tree;
- định nghĩa KPI, metric, data quality và data maturity;
- hiểu data model và cách tổ chức source;
- trình bày bằng Power BI, chart và storytelling;
- dùng AI như cộng sự nhưng vẫn kiểm chứng bằng nguồn.

Kho này không phải dữ liệu của Joycat và không tự chứng minh bất kỳ kết luận business nào.

## 2. Mong muốn thực tế của phase hiện tại

Duy cần một bộ PDF dễ đọc và một chỉ dẫn để AI mới nhận workspace biết:

1. Nguồn K60 có những nhóm tài liệu nào.
2. Câu hỏi nào nên đọc tài liệu nào.
3. Nội dung nào đã chuyển được thành PDF đầy đủ.
4. Nội dung nào chỉ có catalogue vì source là dataset, PBIX, installer hoặc placeholder.
5. Khi áp dụng sang Joycat phải kiểm tra lại điều gì.

## 3. Current Operating Context

Source gốc đầy đủ hiện ở:

```text
D:\AI_Agentic_Analytics_K60_20260909_FULL\AI Agentic Analytics K60
```

Knowledge pack trong workspace:

```text
D:\Meta Agentic BA\04_reference\AI_Agentic_Analytics_K60
```

Snapshot nội dung gốc ngày 11/09/2026 có 1.277 file, 5.873.080.087 byte. Sau khi thêm hai sidecar định tuyến AI, folder có 1.279 file. Các nhóm cấp cao gồm:

- `Session 12-13 EDA Descriptive`: 148 ảnh `.webp`;
- `Sesion 14-15 EDA Diagnostic`: 113 ảnh `.webp`;
- `session 16-18 visualization`: 159 ảnh `.jpg`;
- `1. Giáo trình + Minh họa (Chỉ xem trực tuyến)`: 26 file;
- `2. Tài liệu đi kèm buổi học`: 564 file;
- `3. Session E-learning_AGENTIC AI by Anthropic (Xem trực tuyến)`: 26 file;
- `4. Tài liệu cập nhật liên tục (AI, FABRIC, BUSINESS ...)`: 190 file;
- các workbook điều hướng ở root, gồm `EDA_Descriptive_Checklist.xlsx`, `EDA_Diagnostics_Methods.xlsx` và `TEMPLATE_Data_Dictionary.xlsx`.

Không sao chép mù toàn bộ 5,87 GB vào knowledge pack. Chỉ dẫn và inventory lưu trong workspace; source nặng tiếp tục được truy theo đường dẫn gốc. Việc Duy nói “tải folder K60” đã hoàn thành; không tải lại trong phase hiện tại.

## 4. Source map và cách đọc

| Nhóm | Nội dung quan sát được | Reader | Cách dùng |
|---|---|---|---|
| Tài liệu đi kèm buổi học | Analytical thinking, problem solving, data quality/maturity, data samples | `pdf/01...` và `pdf/02...` | Học phương pháp và hiểu cấu trúc sample |
| Session E-learning Agentic AI | Chỉ có `.mp4.drivedownload` | `pdf/03...` | Ghi nhận gap; chưa được coi là đã có nội dung video |
| Tài liệu cập nhật liên tục | Một PBIX scatter plot Python | `pdf/04...` | Catalogue kỹ thuật; cần Power BI để xem report thật |
| Session 12-13 EDA Descriptive | 148 ảnh slide + workbook checklist | Chưa có reader đầy đủ trong pack | Học mô tả biến, Cat×Num và Num×Num |
| Session 14-15 EDA Diagnostic | 113 ảnh slide + workbook methods | Chưa có reader đầy đủ trong pack | Học lựa chọn kiểm tra theo loại cặp biến |
| Session 16-18 visualization | 159 ảnh slide trong full source | `pdf/05...` chỉ là bản cũ 41 ảnh | Học visualization và storytelling; khi cần đầy đủ phải đọc source |
| Tổng quan | Bản đồ đọc và quy tắc áp dụng | `pdf/00...` | Điểm vào đầu tiên |

## 5. Sổ bằng chứng

| Phát biểu | Trạng thái | Nguồn | Giới hạn |
|---|---|---|---|
| Kho có 1.277 tài liệu gốc và 2 sidecar định tuyến | Đã xác minh từ filesystem | Inventory ngày 11/09/2026 | Tổng hiện hành 1.279 file |
| PowerPoint có 30 slide | Đã xác minh từ nguồn | `da_operational_data_quality_data_management_maturity_metrics.pptx` | Nội dung thuộc nguồn học, không phải fact Joycat |
| PDF problem solving có 68 trang | Đã xác minh từ nguồn | `problem_solving_101.pdf` | Giữ nguyên nội dung nguồn trong reader tổng hợp |
| Session 12-13 có 148 ảnh | Đã xác minh từ filesystem | Folder `Session 12-13 EDA Descriptive` | Slide 1–148, tên file duy nhất |
| Session 14-15 có 113 ảnh | Đã xác minh từ filesystem | Folder `Sesion 14-15 EDA Diagnostic` | Slide 1–113 |
| Full source Visualization có 159 ảnh | Đã xác minh từ filesystem | Folder `session 16-18 visualization` | PDF reader hiện có chỉ phản ánh snapshot cũ 41 ảnh |
| File AI Fluency là video có thể xem | To be updated | Hiện chỉ có `.drivedownload` | Cần tải MP4 hoặc transcript thật |
| PBIX thể hiện chính xác report/chart nào | To be updated | Chưa mở và export bằng Power BI | Không được suy từ filename |

## 6. Quy tắc chuyển giao sang Joycat hoặc case khác

Có thể tái sử dụng:

- cách phân rã câu hỏi;
- data-quality checklist;
- cách định nghĩa metric/KPI;
- framework data model;
- nguyên tắc visualization và storytelling;
- cách lưu evidence.

Phải xác minh lại:

- KPI target;
- business definition;
- Campaign objective, funnel và customer journey;
- field mapping, grain, join key và attribution;
- benchmark;
- kết luận hiệu quả;
- recommendation.

## 7. Downstream gate

AI được phép đọc và dùng K60 để sửa phương pháp/tài liệu trong workspace. AI chưa được phép vì K60 mà tự:

- đổi business fact Joycat;
- kết luận Campaign tốt/xấu;
- chạy ETL production;
- biến sample data thành schema chuẩn của Joycat;
- xác nhận Gate 2 đã pass.

Muốn đi tiếp phải đối chiếu K60 với Context hiện hành, source Joycat và review của cậu Sinh.
