# Hướng dẫn cho AI khi dùng kho K60

## 1. Đọc theo thứ tự

Khi một task cần dùng kiến thức K60, AI phải đọc theo thứ tự:

1. `context.md` trong folder này.
2. `SOURCE_INVENTORY.md` để biết tài liệu nào thật sự có và giới hạn của từng nguồn.
3. Chọn đúng source trong bộ đầy đủ tại `D:\AI_Agentic_Analytics_K60_20260909_FULL\AI Agentic Analytics K60` theo routing bên dưới.
4. Có thể dùng `pdf/00_K60_READING_GUIDE.pdf` để đọc nhanh phần snapshot cũ, nhưng không coi sáu PDF hiện có là toàn bộ K60.
5. Chỉ đọc source/PDF chuyên đề liên quan đến câu hỏi hiện tại; không nạp toàn bộ kho nếu không cần.
6. Nếu cần xác minh chi tiết, quay về source gốc được ghi trong `SOURCE_INVENTORY.md`.

## 2. Vai trò của kho K60

- Đây là nguồn học về analytical thinking, logic tree, KPI/metric, data quality, data model, Power BI và visualization.
- Có thể tái sử dụng framework, phương pháp, checklist và cách đặt câu hỏi.
- Không được dùng nội dung K60 để khẳng định fact, cấu trúc quảng cáo, KPI target hoặc kết quả kinh doanh của Joycat hay thương hiệu khác.
- Khi áp dụng sang Joycat, mọi fact phải quay về dữ liệu Joycat hoặc owner xác nhận.

## 3. Quy tắc bằng chứng

Mọi phát biểu phải thuộc một trong bốn trạng thái:

- `Đã xác minh từ nguồn`: nêu file và trang/slide nếu có.
- `Owner đã xác nhận`: nêu người hoặc vai trò xác nhận.
- `Suy luận`: nêu cơ sở và cách kiểm tra.
- `To be updated`: nêu phần thiếu, nguồn/owner cần hỏi và ảnh hưởng.

PDF trong `pdf/` là bản đọc dẫn xuất. Khi có thể, citation cuối cùng phải trỏ về source gốc ghi trong `SOURCE_INVENTORY.md`.

## 4. Routing theo nhu cầu

| Nhu cầu | File đọc trước |
|---|---|
| Chưa biết nên đọc gì | `pdf/00_K60_READING_GUIDE.pdf` |
| Analytical thinking, problem solving, logic tree | `pdf/01_K60_ANALYTICAL_THINKING_AND_LOGIC_TREE.pdf` |
| Hiểu các data sample và bài tập data model | `pdf/02_K60_DATA_SAMPLE_CATALOG.pdf` |
| AI Fluency / Agentic AI session | `pdf/03_K60_AI_FLUENCY_SESSION_STATUS.pdf` |
| Power BI và Python scatter plot sample | `pdf/04_K60_POWER_BI_SAMPLE_CATALOG.pdf` |
| Visualization, chart choice, màu sắc, dashboard và storytelling | `pdf/05_K60_VISUALIZATION_SESSION_16_18.pdf` |
| EDA Descriptive và cách phân loại cặp biến | Source gốc `EDA_Descriptive_Checklist.xlsx`; sheet liên quan |
| EDA Diagnostic và lựa chọn phép kiểm tra | Source gốc `EDA_Diagnostics_Methods.xlsx`; sheet `MUST HAVE` và `RULES` |
| 148 slide EDA Descriptive | Source gốc `Session 12-13 EDA Descriptive\slide-1.webp` đến `slide-148.webp` |
| 113 slide EDA Diagnostic | Source gốc `Sesion 14-15 EDA Diagnostic\slide-1.webp` đến `slide-113.webp` |
| EDA Framework | Source gốc `Session 16-18 EDA Framework` |
| Visualization đầy đủ | Source gốc `session 16-18 visualization` có 159 ảnh |

## 4.1. Quy tắc tối thiểu khi hỗ trợ association/correlation

- Xác định kiểu cặp trước: `Categorical × Numerical`, `Numerical × Numerical` hoặc `Categorical × Categorical`.
- `Categorical × Numerical`: bắt đầu bằng count, sum và mean/median theo nhóm; nêu Gap% nếu hữu ích. Không gọi đây là Pearson correlation.
- `Numerical × Numerical`: chỉ làm khi có nhiều quan sát cùng grain; xem scatter trước, sau đó mới cân nhắc Pearson hoặc Spearman theo điều kiện dữ liệu.
- Correlation không chứng minh causation. Metric cùng nằm trong một công thức có thể tương quan cơ học.
- Với Joycat, luôn khóa kỳ, Campaign/Ad set/Ad, sản phẩm, objective, phễu, publisher, attribution và trạng thái mapping trước khi so sánh.
- Nếu dataset thiếu field hoặc join key, đầu ra đúng là readiness/gap và owner cần bổ sung; không tự bịa dữ liệu để hoàn tất phép tính.
- Nhãn `MUST` trong workbook là checklist đào tạo. Khi áp dụng vào workspace khác, chỉ chọn bước phù hợp với Current Intent; không tự chạy toàn bộ statistical tests.

## 5. Rào chắn

- Không chạy file `.exe`.
- Không xem file `.drivedownload` là video thật; đây chỉ là placeholder chưa tải xong.
- Không sửa `.pbix`, `.accdb`, Excel, CSV hoặc source K60 gốc.
- Không tự suy nội dung của PBIX khi chưa mở bằng Power BI.
- Không đổ toàn bộ dataset vào PDF. PDF catalogue chỉ giúp hiểu source, schema sơ bộ và cách sử dụng.
- Không biến ví dụ Contoso/QlikView thành business rule của Joycat.
- Không kết luận KPI hay recommendation chỉ từ slide học tập.

## 6. Cách dùng trong Meta Agentic BA

Chuỗi đúng là:

```text
Yêu cầu mới nhất của Duy
-> Workspace Context và Current Intent
-> Context Joycat hoặc case đang xét
-> K60 để lấy phương pháp phù hợp
-> dữ liệu/evidence của case để kiểm nghiệm
-> kết luận có giới hạn và khả năng truy nguồn
```

K60 hỗ trợ cách suy nghĩ; Context và dữ liệu của case quyết định điều gì được phép kết luận.
