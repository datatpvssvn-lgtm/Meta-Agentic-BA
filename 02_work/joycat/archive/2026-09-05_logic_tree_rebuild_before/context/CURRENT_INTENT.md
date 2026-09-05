# Ý định hiện tại — Review khung phân tích, công thức và mapping Joycat

> Phiên bản: 15.0  
> Cập nhật: 2026-09-05  
> Trạng thái: Đã deep-audit tài liệu nền về công thức, mapping và coverage; đang chờ review trước khi dựng Logic Tree đúng nghĩa, chưa chuyển sang ETL/report production

## 1. Outcome của phase

Đưa bộ Joycat về trạng thái một người hoặc AI không có lịch sử chat vẫn sâu chuỗi được:

```text
KPI cần xem
→ công thức Metric Tree
→ bốn chiều và sáu cặp
→ coverage dữ liệu
→ khung câu hỏi, phép so sánh và bằng chứng
→ thiết kế ETL sau khi data gate liên quan được duyệt
```

Tài liệu phân tán về công thức, mapping, coverage, schema và cặp Ads Cost đã được nhập vào một reference model chính. Tài liệu này có công thức đầy đủ, đường phân tích nhiều nhóm metric, Campaign → Ad set → Ad, ví dụ truy được dòng thật và hợp đồng chuẩn bị ETL/report. Nó chưa phải Logic Tree thuần; Logic Tree sẽ được rút gọn thành cây câu hỏi → giả thuyết → bằng chứng → quyết định sau khi Duy/cậu Sinh review phạm vi.

## 2. Bộ đọc chính

Đọc theo thứ tự:

1. `context\WORKSPACE_CONTEXT.md` — cửa vào, mục tiêu và quy tắc vận hành.
2. `03_outputs\joycat\KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT.md` — reference model hợp nhất: định nghĩa, công thức cặp, coverage, funnel/journey, ETL contract và gaps.
3. `03_outputs\joycat\KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT.mm` — mindmap cùng cấu trúc chính để review trực quan.

File vận hành bổ trợ:

- `context\CURRENT_INTENT.md` — phase, quyền và điều kiện chuyển bước.
- `01_inputs\joycat\context.md` — facts, source, owner statements và giới hạn của case.

File chuyên môn giữ vai trò riêng:

- `03_outputs\joycat\KPI_TREE.md/.mm` — các chỉ số cần lượng hóa.
- `03_outputs\joycat\METRIC_TREE.md/.mm` — công thức đến raw field/điểm dừng.
- `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` — tham chiếu công thức metrics chi tiết.

Các bản bị thay thế được lưu tại `02_work\joycat\archive\2026-09-05_context_logic_mapping_before_merge`. Snapshot ngay trước deep-audit nằm tại `02_work\joycat\archive\2026-09-05_144451_logic_tree_deep_audit`. Working paper coverage và đối chiếu nội dung nằm tại `02_work\joycat\coverage_audit`; đây không phải bộ bàn giao rời.

## 3. Quy ước đã khóa

- KPI Tree: lượng hóa các chỉ số cụ thể cần xem.
- Metric Tree: công thức của KPI, rẽ tới field gốc hoặc điểm không thể rẽ tiếp.
- Logic Tree: đường đi cần phân tích gì, theo góc nào, so gì và cần bằng chứng nào.
- Bốn chiều: Nền tảng, Sản phẩm, Phễu, Campaign objective.
- Sáu cặp: Nền tảng × Sản phẩm; Nền tảng × Phễu; Nền tảng × Objective; Phễu × Sản phẩm; Sản phẩm × Objective; Phễu × Objective.
- `Business ROAS = GMV business / Ads Cost`; không đổi `Purchases conversion value` thành GMV business.
- `Objective suy luận` là human-curated mapping do Duy xác nhận dùng cho ETL vì raw thiếu Objective.
- Field Campaign objective của Meta, nếu có sau, lưu riêng để đối soát; không ghi đè mapping lịch sử.
- Phễu và sản phẩm chưa được tự động coi là mapping đã duyệt.
- Không cộng Campaign + Ad set + Ad; không cộng các breakdown độc lập.
- Dòng chưa map hoặc có spend nhưng không result vẫn giữ trong Ads Cost.
- Quan hệ thuận/nghịch phải ghi biến giữ nguyên; kết luận ROAS tăng/giảm chỉ đưa ra theo từng case có dữ liệu.

## 4. Trạng thái dữ liệu đã xác minh

- Raw có 32 workbook `.xlsx`; bộ `preferred_candidate` có chín file Campaign/Ad set/Ad cho tháng 03–05/2026.
- Raw không có Campaign objective, Optimization/Performance goal, Publisher platform, Destination hoặc Product/SKU.
- File demo có 84 Campaign có spend và `Objective suy luận`.
- Tổng Campaign: tháng 03 là 50.195.692 VND; tháng 04 là 64.825.305 VND; tháng 05 là 63.518.031 VND.
- File Objective demo tháng 04 có 64.834.557 VND, cao hơn preferred Campaign 9.252 VND. Demo được dùng để kiểm tra human mapping, chưa được coi là fact spend chính của tháng 04 cho tới khi làm rõ lineage/version.
- Tháng 04 lệch 40 VND so với tổng Ad set/Ad; chưa tự sửa.
- Bốn Campaign có spend nhưng Results/Result indicator trống; vẫn giữ trong tổng Ads Cost.
- Catalog có 25 Item ID dạng text; chưa có khóa Ads → listing/SKU.
- Một số ID Ads đã ở dạng scientific notation/làm tròn; không thể sửa bằng thay hậu tố.

## 5. Coverage hiện tại

| Cặp | Mức hiện tại |
|---|---|
| Nền tảng × Sản phẩm | Chưa tính được |
| Nền tảng × Phễu | Chưa tính được |
| Nền tảng × Campaign objective | Chưa tính được |
| Phễu × Sản phẩm | Thăm dò ở cấp nhóm/ngành hàng: quan sát 9 ô tháng 03, 13 ô tháng 04, 13 ô tháng 05; chưa xuống listing SP01–SP25 |
| Sản phẩm × Campaign objective | Human mapping ở cấp nhóm/ngành hàng: quan sát 7 ô tháng 03, 12 ô tháng 04, 16 ô tháng 05 |
| Phễu × Campaign objective | Human mapping: quan sát 3 ô tháng 03, 4 ô tháng 04, 6 ô tháng 05; Phễu còn thiếu hợp đồng đầy đủ |

Ba cặp đầu bị chặn bởi thiếu Publisher platform. Ba cặp còn lại chỉ là coverage theo human mapping trong file demo; “giữ đủ spend của demo” không có nghĩa demo đã khớp preferred raw, đặc biệt tháng 04 còn lệch 9.252 VND. `Objective suy luận` không phải gap chặn ETL; giới hạn là phải quản trị rule/version/basis và ghi rõ nguồn human-curated.

## 6. Trong và ngoài phạm vi

Trong phạm vi hiện tại:

- Duy/cậu Sinh review Logic Tree hợp nhất.
- Xác nhận hoặc sửa định nghĩa, mapping rule, coverage và owner questions.
- Upload `KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT.mm` lên Lark/MindManager để kiểm tra hiển thị.
- Bổ sung source/mapping khi được cung cấp rồi cập nhật coverage.

Ngoài phạm vi:

- Sửa raw, đoán ID hoặc phân bổ spend dùng chung.
- Dùng Meta Purchase/value thay đơn và GMV business.
- Kết luận nguyên nhân/hiệu quả từ mapping hoặc công thức.
- Triển khai ETL/report/dashboard production trước khi data gate liên quan được duyệt.
- Gộp AHP, catalog Excel hoặc toàn bộ thư viện metrics vào Logic Tree.

## 7. Câu hỏi đang chờ

1. `Objective suy luận`: version đầu tiên là gì, ai review các dòng override theo Campaign name?
2. Phễu: gắn ở grain nào, rule/version/hiệu lực và người xác nhận là ai?
3. Sản phẩm: NA/PFX/MNX/VI SINH/CÁT map chính thức thế nào; Campaign nhiều sản phẩm xử lý ra sao?
4. Dữ liệu: có thể export Publisher platform và ID nguyên vẹn dạng text không?
5. Business ROAS: định nghĩa GMV, kỳ, sales channel, hoàn/hủy, voucher và shipping thế nào?

## 8. Điều kiện kết thúc phase

- Duy/cậu Sinh xác nhận reference model dễ hiểu và không mất logic quan trọng.
- Lark/MindManager mở `KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT.mm` đúng cấu trúc.
- Các chỉnh sửa từ review được ghi vào chính cặp file `KHUNG_PHAN_TICH_CONG_THUC_VA_MAPPING_JOYCAT.md/.mm`, không tạo thêm bản v2/v3.
- Câu hỏi owner/data còn thiếu được gắn owner và mức ảnh hưởng.
- Chỉ những cặp qua data gate mới được mở trong ETL/report.

Sau khi đạt các điều kiện trên, bước gần nhất là dựng Logic Tree đúng nghĩa cho một câu hỏi phân tích đã khóa. Chỉ sau khi Logic Tree và data gate liên quan được duyệt mới chuyển sang ETL/modeling hoặc phân tích case thực tế.
