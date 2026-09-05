# Context Truther Piece

> Phiên bản: 3.1  
> Cập nhật: 2026-08-20  
> Trạng thái: Context ban đầu từ owner statement; chưa có raw hoặc KPI contract đầy đủ trong workspace

## 1. AI dùng context này như thế nào

Đọc file này khi Truther là case active. Đây là context của KPI 2.

Không kéo fact, target, campaign structure hoặc conclusion của Joycat vào Truther. Chỉ chuyển framework, ba reusable Tree skill và phương pháp kiểm tra; mọi mapping phải được xác minh bằng Context/source Truther.

## 2. Objective Context — KPI 2

Đích business chính thức Duy đã chốt:

> Đưa `Ads Cost / Revenue` của Truther về **12–18%**.


KPI 2 chỉ hoàn thành khi dữ liệu vận hành thực tế xác nhận tỷ lệ này theo KPI contract được owner duyệt và cậu Sinh review tổng thể.

Mục tiêu phát triển của Duy trong case Truther là chuyển framework học từ Joycat sang một case thật, tự framing và bảo vệ logic với AI hỗ trợ, hướng tới mức năng lực `L3`.

## 3. Mong muốn thực tế của phase hiện tại

- Khóa target 12–18%, quyền tác động của Duy và evidence gate.
- Giữ Truther độc lập với Joycat.
- Ghi rõ source được owner nói là có nhưng chưa nằm trong workspace.
- Dừng tại Context; chưa import data, ánh xạ Tree, đề xuất test hoặc thay Ads.

Truther chỉ active sau khi KPI 1 Joycat được cậu Sinh review và source Truther được phép đưa vào workspace.

## 4. Current Operating Context

- Sản phẩm chính: áo, mức giá Duy nêu khoảng 550.000–900.000 đồng.
- Khách mục tiêu được mô tả là người có gu ăn mặc; chưa có customer evidence trong workspace.
- Meta (Facebook), Meta Ads và Messenger là các điểm chạm chính được Duy nhắc đến.
- Đơn hàng trước đây ghi trên Haravan; hiện chuyển sang Google Sheets nhưng dữ liệu mới chưa được import đầy đủ.
- Duy tập trung vào Ads, conversion signal và measurement; không sở hữu toàn bộ khâu sale/chốt đơn.
- Duy kiểm tra Ads và doanh thu hằng ngày, đồng thời hỏi owner Ads nào ra đơn nhiều.
- Chưa có raw Truther, semantic model, Power BI report hoặc automation trong workspace.

## 5. Quyền tác động và trách nhiệm

| Phạm vi | Vai trò của Duy | Owner/phối hợp cần có |
|---|---|---|
| Meta Ads delivery và structure | Phân tích, đề xuất và chỉ thay đổi khi được duyệt | Cậu Sinh/business owner duyệt hành động |
| Conversion signal/measurement | Thiết kế cách đo, kiểm tra mapping và limitation | Data/system owner xác nhận source/schema |
| Messenger và lead quality | Phân tích khi có dữ liệu | Sale/CS owner xác nhận quality rule |
| Order/Revenue/hoàn-hủy | Dùng làm business outcome khi contract đủ | Business/order owner xác nhận definition và số liệu |
| Sale/chốt đơn | Tách ảnh hưởng khỏi Ads khi có thể | Sale owner chịu trách nhiệm vận hành |

Không quy toàn bộ KPI 2 cho Ads. Sản phẩm, giá, creative, audience, sale, order recording và market condition có thể cùng ảnh hưởng kết quả.

## 6. Source inventory và readiness

| Nguồn | Trạng thái | Có thể dùng cho | Giới hạn hiện tại |
|---|---|---|---|
| Meta Ads data | Owner đã xác nhận là có | Ads delivery, structure và funnel signals | Chưa đưa vào workspace |
| Customer/order data | Owner đã xác nhận là có | Customer và purchase analysis | Có record thiếu tên/SĐT; chưa có file/schema |
| Google Sheets đơn hàng | Đang được team sử dụng | Current order tracking | Chưa import đầy đủ; coverage chưa xác minh |
| Haravan lịch sử | Từng được sử dụng | Historical orders | Chưa có source trong workspace |
| Messenger/chat | Có trong vận hành | Lead và conversation signals | Chưa có export/schema |

Readiness tổng thể: **Chưa sẵn có cho phân tích định lượng hoặc xác nhận KPI 2** vì thiếu raw, KPI contract, period và join rule.

## 7. KPI contract và sổ bằng chứng

| Phát biểu/metric | Trạng thái | Nguồn/giới hạn |
|---|---|---|
| Truther bán áo khoảng 550.000–900.000 đồng | Owner đã xác nhận qua Duy | Chưa đối chiếu catalog |
| Active target Ads Cost / Revenue là 12–18% | Duy đã chốt; cần cậu Sinh review | Chưa có period/formula/source contract hoàn chỉnh |
| GMV trên 90 triệu đồng | Duy đã cung cấp; cần cậu Sinh hoặc người phụ trách xác nhận | Chưa rõ kỳ áp dụng và chưa có nguồn dữ liệu trong workspace |
| Có Ads data và customer/order data | Owner đã xác nhận qua Duy | Chưa có file để kiểm kê |
| Haravan là hệ thống cũ, Google Sheets là cách ghi nhận hiện tại | Owner đã xác nhận qua Duy | Chưa xác minh workflow và coverage |
| Duy phụ trách Ads và measurement, không sở hữu toàn bộ sale | Owner đã xác nhận qua Duy | RACI chi tiết To be updated |

### Công thức khung

```text
Ads Cost / Revenue = Meta Ads Spend trong phạm vi đã chốt
                     / Business Revenue cùng kỳ và cùng phạm vi
```

Formula trên chỉ là khung. Definition của Revenue, kỳ, channel scope, VAT/shipping/discount, hoàn/hủy và attribution phải được owner xác nhận trước khi tính.

Mục tiêu GMV trên 90 triệu đồng đã được Duy nêu nhưng chưa được khóa về kỳ áp dụng và trạng thái chính thức. Không dùng mục tiêu này để kết luận khi chưa có xác nhận và dữ liệu thực tế.

## 8. Ba gate của KPI 2

### Gate 1 — Mapping ready

- KPI contract có owner.
- Source inventory, grain, period và key nối được kiểm kê.
- Ba Tree được ánh xạ bằng fact/source Truther, không copy conclusion Joycat.
- Limitation và phần không kiểm soát được ghi rõ.

### Gate 2 — Experiment ready

- Có hypothesis/test plan và metric đánh giá.
- Có baseline, owner, budget/guardrail và quyền triển khai.
- Có cách ghi Ads → signal → order/revenue cùng kỳ.
- Duy/cậu Sinh duyệt hành động có tác động.

### Gate 3 — Business verified

- Data vận hành thực tế đủ kỳ và đủ phạm vi.
- Ads Cost / Revenue được tính theo contract đã duyệt.
- Kết quả đạt 12–18%.
- Cậu Sinh review tổng thể và chấp nhận KPI 2.

Nếu chưa đạt 12–18%, project tiếp tục learning loop; không tuyên bố KPI 2 hoàn thành. Năng lực phân tích của Duy và business result được review riêng để không xóa bỏ learning chỉ vì một vòng test chưa đạt.

## 9. Definition of Done KPI 2

- [ ] KPI contract được owner xác nhận.
- [ ] Raw/source Truther được import hoặc truy cập trong phạm vi cho phép.
- [ ] Mapping Ads → conversion signal → order/revenue đủ dùng và có limitation.
- [ ] Ba Tree được tái tạo từ context/source Truther.
- [ ] Test/optimization được phê duyệt trước khi tác động Ads.
- [ ] Kết quả vận hành thực tế đạt 12–18% theo contract.
- [ ] Duy đạt `L3`: tự framing, hỏi đúng owner, bảo vệ logic và sửa theo evidence với AI hỗ trợ.
- [ ] Cậu Sinh review tổng thể và chấp nhận KPI 2.

## 10. To be updated

### KPI contract

Trạng thái: **To be updated**  
Thiếu: Period, Revenue definition, channel scope, VAT/shipping/discount, hoàn/hủy và attribution.  
Owner/nguồn xác nhận: Cậu Sinh hoặc business owner Truther.  
Ảnh hưởng: Chặn tính baseline và xác nhận target 12–18%.  
Câu hỏi tiếp theo: Business dùng công thức, kỳ và phạm vi chính thức nào cho Ads Cost / Revenue?

### Target GMV

Trạng thái: **To be updated**  
Thiếu: Kỳ áp dụng, trạng thái chính thức và người phê duyệt mục tiêu GMV trên 90 triệu đồng.  
Owner/nguồn xác nhận: Cậu Sinh hoặc business owner Truther.  
Ảnh hưởng: Không chặn việc khóa Ads Cost / Revenue; chặn đánh giá đầy đủ business outcome.  
Câu hỏi tiếp theo: Mục tiêu GMV trên 90 triệu đồng áp dụng theo tháng hay kỳ nào, và ai là người chốt chính thức?

### Source và join rule

Trạng thái: **To be updated**  
Thiếu: File Ads/customer/order, grain, key nối và coverage Ads → Messenger → order.  
Owner/nguồn xác nhận: Duy + team Truther.  
Ảnh hưởng: Chặn phân tích định lượng, Tree mapping và attribution.  
Câu hỏi tiếp theo: Khi Truther active, source nào được phép đưa vào workspace trước?

### RACI conversion

Trạng thái: **To be updated**  
Thiếu: Ai xác nhận lead quality, đơn, Revenue, hoàn/hủy và sale outcome.  
Owner/nguồn xác nhận: Team Truther.  
Ảnh hưởng: Giới hạn khả năng tách Ads performance khỏi sale/operation performance.  
Câu hỏi tiếp theo: Ai là owner của từng handoff từ message tới Revenue?

## 11. Rào chắn và bước tiếp theo

- Không kết luận performance khi chưa có raw và KPI contract.
- Không dùng target, structure hoặc conclusion Joycat như fact Truther.
- Không tự thay Ads, ngân sách, targeting hoặc workflow sale.
- Không đánh dấu KPI 2 hoàn thành chỉ vì có mapping hoặc test plan.
- Không hứa Ads một mình tạo ra target 12–18%.

Bước tiếp theo chỉ sau KPI 1 và gate Context: xin/import source Truther được phép dùng, khóa KPI contract và mapping. Hiện dừng tại Context.
