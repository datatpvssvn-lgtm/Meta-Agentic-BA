# Ý định hiện tại — Hoàn thiện Context, Logic Tree và mapping Joycat

> Phiên bản: 12.0  
> Cập nhật: 2026-09-05  
> Trạng thái: Đang thực hiện bộ yêu cầu ngày 05/09/2026; Logic Tree mới là bản nháp chờ Duy/cậu Sinh review

## 1. Outcome của phase

Đưa bộ Joycat về trạng thái một AI không có lịch sử chat vẫn hiểu và sâu chuỗi được:

```text
KPI cần xem
→ công thức Metric Tree
→ định nghĩa bốn chiều và mapping
→ kiểm tra dataset và sáu cặp
→ Logic Tree: đường đi phân tích
→ ETL/report sau khi nguồn và mapping được duyệt
```

Phase này hoàn thiện **nền chuẩn bị phân tích**, không kết luận quảng cáo tốt/xấu và không triển khai ETL/report production.

## 2. Quy ước mới nhất thay thế nội dung cũ

- KPI Tree: lượng hóa các chỉ số cụ thể cần xem; không ép vào bốn tầng ROKS.
- Metric Tree: công thức của KPI, rẽ tới field gốc hoặc điểm không thể rẽ tiếp.
- Logic Tree: đường đi cần phân tích gì, theo góc nào, so gì và cần bằng chứng nào.
- Bốn chiều chính: Nền tảng, Sản phẩm, Phễu, Campaign objective.
- Sáu cặp: Nền tảng × Sản phẩm; Nền tảng × Phễu; Nền tảng × Objective; Phễu × Sản phẩm; Sản phẩm × Objective; Phễu × Objective.
- Công thức business dùng `Business ROAS = GMV / Ads Cost`.
- Không đổi `Purchases conversion value` của Meta thành GMV business.
- Quan hệ metric chỉ ghi thuận/nghịch khi nêu biến giữ nguyên; case thực tế phải kiểm tra dữ liệu.
- Không mặc định CPM TOFU cao/thấp hơn BOFU hoặc một metric riêng tự quyết định ROAS.

Những quy ước trên thay thế các đoạn Context cũ yêu cầu KPI Tree bắt buộc bốn tầng và đoạn cũ ghi chưa được phép tạo Logic Tree.

## 3. Nguồn chính thức của phase

| Cần hiểu | File chính |
|---|---|
| Hợp đồng toàn workspace | `context\WORKSPACE_CONTEXT.md` |
| Ý định và quyền của phase | `context\CURRENT_INTENT.md` |
| Facts, source và gaps Joycat | `01_inputs\joycat\context.md` |
| Yêu cầu thực hiện chi tiết | `03_outputs\joycat\YEU_CAU_HOAN_THIEN_CONTEXT_LOGIC_VA_MAPPING_JOYCAT.md` |
| Định nghĩa bốn chiều, sáu cặp, coverage và yêu cầu modeling | `03_outputs\joycat\DIMENSION_MAPPING_VA_DO_PHU_DATASET.md` |
| Schema và yêu cầu export | `03_outputs\joycat\DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` |
| Logic Tree mới | `03_outputs\joycat\LOGIC_TREE.md` và `LOGIC_TREE.mm` — Draft |
| KPI/Metric hiện hành | `03_outputs\joycat\KPI_TREE.md/.mm`, `METRIC_TREE.md/.mm` |
| Công thức metrics | `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` |
| Cặp Ads Cost hiện hành | `03_outputs\joycat\Ad_Cost_cap_2_v3.mm` — giữ nguyên công thức v2, bổ sung định nghĩa và coverage |
| Bản cặp 2 trước sửa | `03_outputs\joycat\Ad_Cost_cap_2_v2.mm` — lịch sử đối chiếu, không phải nguồn trạng thái dataset mới nhất |

Nguồn ngoài workspace `D:\BA_library\Logic tree metrics ads JC.mm` chỉ dùng đối chiếu Logic cũ. Không ghi đè file này và không để bộ bàn giao phụ thuộc âm thầm vào nó.

## 4. Trạng thái dữ liệu đã xác minh

- Raw có 32 workbook `.xlsx`; bộ `preferred_candidate` có chín file Campaign/Ad set/Ad cho tháng 03–05/2026.
- Raw không có Campaign objective, Optimization/Performance goal, Publisher platform, Destination hoặc Product/SKU.
- File demo có 84 Campaign có spend và cột `Objective suy luận`. Duy xác nhận đây là mapping do Duy/con người bổ sung để dùng làm chiều Objective trong ETL khi Meta export thiếu field gốc.
- Tổng Campaign: tháng 03 là 50.195.692 VND; tháng 04 là 64.825.305 VND; tháng 05 là 63.518.031 VND.
- Tháng 04 lệch 40 VND so với tổng Ad set/Ad; chưa tự sửa.
- Có bốn Campaign có spend nhưng Results/Result indicator trống; vẫn giữ trong tổng Ads Cost.
- Catalog có 25 Item ID dạng text; chưa có khóa Ads → listing/SKU.
- ID Ads trong một số nguồn đã ở dạng số/scientific notation và có nguy cơ mất chính xác; không tự khôi phục bằng cách gắn đuôi.

## 5. Coverage hiện tại

| Cặp | Trạng thái |
|---|---|
| Nền tảng × Sản phẩm | Chưa tính được |
| Nền tảng × Phễu | Chưa tính được |
| Nền tảng × Campaign objective | Chưa tính được |
| Phễu × Sản phẩm | Mapping suy luận/một phần |
| Sản phẩm × Campaign objective | Mapping suy luận/một phần |
| Phễu × Campaign objective | Mapping suy luận/một phần |

Ba cặp đầu bị chặn bởi thiếu Publisher platform. Ba cặp còn lại có thể dùng `Objective suy luận` như **human-curated mapping** trong ETL, nhưng output phải giữ nhãn nguồn suy luận và không gọi đó là Campaign objective được Meta export trực tiếp. Mapping sản phẩm/phễu vẫn cần rule và version.

## 6. Trong phạm vi

- Audit nguồn/schema, ID, tổng spend và coverage.
- Hoàn thiện định nghĩa/mapping/modeling contract.
- Đồng bộ Context.
- Tạo Logic Tree MD/MM bản nháp bám Logic cũ.
- Sửa các xung đột trực tiếp trong file công thức và cặp, giữ phiên bản trước.
- Gom câu hỏi owner và yêu cầu export.
- Chạy kiểm định file, XML, đường dẫn và nội dung.

## 7. Ngoài phạm vi

- Sửa raw hoặc đoán ID.
- Chốt mapping nghiệp vụ, Objective, funnel hoặc sản phẩm thay owner.
- Dùng Meta Purchase/value thay đơn và GMV business.
- Phân bổ spend dùng chung xuống SKU khi chưa có rule.
- Kết luận nguyên nhân/hiệu quả hoặc gán chiều ROAS vô điều kiện.
- Triển khai ETL/report/dashboard production, thay Ads hoặc chốt trọng số AHP.

## 8. Câu hỏi đang chờ

1. Cần khóa version/rule của `Objective suy luận`: field nào dùng để suy, trường hợp override theo Campaign name, người map và ngày hiệu lực.
2. Rule Phễu do ai xác nhận, gắn ở grain nào và có hiệu lực cho kỳ nào?
3. Có bảng Campaign/Ad → Item ID hoặc nhóm sản phẩm được owner duyệt không?
4. Có thể export Publisher platform, Placement và Destination ở file riêng nhưng cùng ID/kỳ/attribution không?
5. Nếu bước sau tính Business ROAS, định nghĩa GMV, kỳ ghi nhận, hoàn/hủy, voucher và sales channel là gì?

## 9. Điều kiện kết thúc phase

- Context không còn phase/định nghĩa Tree xung đột.
- Mapping có đủ bốn chiều, sáu cặp, source/grain/rule/ngoại lệ/trạng thái; `Objective suy luận` được ghi đúng là human-curated ETL input.
- Logic Tree MD/MM đồng nhất và ghi Draft.
- Dataset audit ghi đúng source Objective hiện có, ID risk và yêu cầu export.
- File công thức/cặp không khẳng định ROAS tăng/giảm vô điều kiện.
- Báo cáo bàn giao liệt kê việc đạt, chưa đạt, validation và câu hỏi owner.

Sau đó Duy và cậu Sinh review. Chỉ chuyển ETL/report khi các data gate liên quan được duyệt và ghi lại tại file này.
