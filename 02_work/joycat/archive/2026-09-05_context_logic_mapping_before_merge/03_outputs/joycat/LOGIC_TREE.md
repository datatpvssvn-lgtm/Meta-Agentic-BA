# JOYCAT — Logic Tree phân tích Ads Cost và ROAS

> Phiên bản: Draft 1.0  
> Ngày: 2026-09-05  
> Trạng thái: Bản nháp để Duy và cậu Sinh review; chưa phải kết luận hiệu quả Joycat  
> Nền đối chiếu: `D:\BA_library\Logic tree metrics ads JC.mm`

## 1. Câu hỏi gốc

> Cần đi qua những bước nào để đọc Ads Cost và các metrics đúng theo sản phẩm, Campaign objective, phễu và nền tảng, sau đó mới phân tích ROAS của từng case?

Logic Tree này là **đường đi phân tích**. Nó không thay KPI Tree, không lặp toàn bộ Metric Tree và không kết luận nguyên nhân trước dữ liệu.

## 2. Data gate — case có so sánh được không?

Trước mỗi phép so sánh, kiểm tra:

1. Cùng kỳ và timezone.
2. Cùng currency.
3. Cùng grain: Campaign, Ad set hoặc Ad; không cộng chéo ba cấp.
4. Cùng attribution khi dùng Results/Purchases do Meta ghi nhận.
5. Cùng định nghĩa metric; `Results` phải cùng `Result indicator`.
6. Các chiều đã có source hoặc mapping hợp lệ.
7. GMV là GMV business cùng phạm vi với Ads Cost.
8. Mẫu số khác 0/null; rate/cost tổng được tính lại từ tổng tử số và mẫu số.

Nếu một điều kiện không đạt, case được ghi `Chưa so sánh được` hoặc `Chỉ thăm dò`, không ép thành kết luận.

## 3. Kiểm soát tổng trước khi đi sâu

```text
Tổng Ads Cost tháng
= tổng Amount spent của Campaign trong tháng
```

Đường kiểm tra độc lập:

```text
Tổng Campaign ≈ tổng Ad set ≈ tổng Ad
```

Không cộng ba tổng với nhau. Sai lệch phải được giữ lại và giải thích từ nguồn. Hiện tháng 04/2026 lệch 40 VND giữa Campaign và Ad set/Ad.

## 4. Chọn lát cắt cần phân tích

### 4.1. Bốn chiều chính

| Chiều | Câu hỏi | Trạng thái hiện tại |
|---|---|---|
| Nền tảng | Ads hiển thị ở publisher platform nào? Destination ở đâu? GMV ghi ở sales channel nào? | Thiếu publisher platform; chưa tính được |
| Sản phẩm | Chi phí và kết quả thuộc nhóm sản phẩm/listing/SKU nào? | Catalog có; Ads → sản phẩm mới là mapping suy luận cấp nhóm |
| Phễu | Case thuộc TOFU, MOFU, BOFU hay Mixed/Unmapped theo rule nào? | Có mapping một phần; cần owner khóa rule/hiệu lực |
| Campaign objective | Objective mapping, Optimization goal và Result indicator của case là gì? | Có `Objective suy luận` do Duy map để dùng trong ETL; không phải field Meta gốc |

### 4.2. Sáu cặp cần kiểm tra

1. Nền tảng × Sản phẩm — đang bị chặn.
2. Nền tảng × Phễu — đang bị chặn.
3. Nền tảng × Campaign objective — đang bị chặn.
4. Phễu × Sản phẩm — chỉ thăm dò bằng mapping.
5. Sản phẩm × Campaign objective — chỉ thăm dò bằng mapping.
6. Phễu × Campaign objective — chỉ thăm dò bằng mapping.

Biết hai tổng riêng không suy ra được phần giao. Chỉ mở cặp khi hai chiều cùng nằm trên một dòng/grain hoặc nối được bằng khóa nguyên vẹn mà không nhân bản spend.

## 5. Đi theo phễu — giữ logic cũ, làm rõ câu hỏi

### 5.1. TOFU — phân phối và tạo tín hiệu ban đầu

Phần giữ từ Logic cũ:

- Mục tiêu làm việc: tiếp cận đúng nhóm và tạo tín hiệu xem/tương tác để hình thành tệp.
- Hướng nội dung: nhiều ảnh, một ảnh, video.
- Tệp cần xem: người xem video 25/50/75%, người từng nhắn tin/comment, Lookalike và Remarketing khi có source.

Đường phân tích:

1. Case đang bán sản phẩm nào, chạy objective/optimization nào và trên publisher nào?
2. Đọc Amount Spent, Impressions, Reach, Frequency, CPM, video/engagement result phù hợp.
3. So với case cùng sản phẩm, objective, publisher, kỳ và attribution.
4. Kiểm tra CPM cùng CTR/CPC/Cost per Result; không đọc CPM một mình.
5. Giả thuyết có thể kiểm tra: khác biệt đến từ audience, creative, placement, thời gian hay cấu hình tối ưu?
6. Bằng chứng phản bác: nếu đổi đồng thời nhiều chiều, chưa quy chênh lệch cho một nguyên nhân.

Không mặc định CPM TOFU cao hoặc thấp hơn MOFU/BOFU.

### 5.2. MOFU — quan tâm và hành động trung gian

Phần giữ từ Logic cũ:

- Mục tiêu làm việc: tạo cuộc hội thoại từ seed/Lookalike và remarketing người đã tương tác.
- Hướng test: audience, nội dung và định dạng; đọc ở Ad set/Ad khi ID cho phép.

Đường phân tích:

1. Xác định objective/optimization/result thật của Campaign.
2. Đọc Amount Spent, Reach, Frequency, Clicks/Link Clicks, CTR, CPC, Messaging Conversations Started, New Messaging Contacts và CPR tương ứng.
3. So các case cùng sản phẩm và cùng mục tiêu; không so post engagement với messaging như cùng một result.
4. Kiểm tra tỷ lệ hành trình chỉ khi tập sự kiện có cùng scope: Link Click → Mess, New Contact/Mess.
5. Giả thuyết có thể kiểm tra: traffic không đúng intent, nội dung chưa tạo lý do nhắn, audience bão hòa, placement khác biệt.
6. Bằng chứng phản bác: mess rẻ chưa chứng minh có Purchase/GMV tốt.

### 5.3. BOFU — Purchase, đơn và GMV

Phần giữ từ Logic cũ:

- Mục tiêu làm việc: remarketing nhóm có intent cao, người đã nhắn nhưng chưa mua và Lookalike người mua khi source hợp lệ.

Đường phân tích:

1. Đọc Meta Purchases, Cost per Purchase, Orders Created/Dispatched như event Meta theo attribution.
2. Đối chiếu đơn business, trạng thái hoàn/hủy và GMV đúng kỳ/sales channel.
3. Chỉ tính Business ROAS khi GMV và Ads Cost cùng phạm vi.
4. Nếu có journey đủ khóa, kiểm tra Mess → Purchase và AOV; nếu không, ghi đây là tỷ lệ tổng hợp, không phải cohort đã theo dõi xuyên suốt.
5. Giả thuyết có thể kiểm tra: chất lượng lead, khả năng chốt, giá/ưu đãi, tồn kho, vận hành đơn hoặc tracking.
6. Bằng chứng phản bác: Meta Purchase/value không tự thay thế đơn và GMV business.

## 6. Đọc quan hệ metrics theo điều kiện

Các đẳng thức dùng để biết cần kiểm tra biến nào:

```text
Ads Cost = Impressions × CPM / 1.000
Ads Cost = Reach × Frequency × CPM / 1.000
Ads Cost = Clicks × CPC
Ads Cost = Results cùng loại × Cost per Result cùng loại
Business ROAS = GMV / Ads Cost
```

Quy trình đọc một quan hệ:

1. Viết công thức hai metric.
2. Rẽ đến biến chung.
3. Thế công thức vào nhau.
4. Ghi `thuận`, `nghịch`, `không trực tiếp` hoặc `phụ thuộc điều kiện`, đồng thời ghi biến giữ nguyên.
5. Sau đó mới kiểm tra dữ liệu của case.

Ví dụ CPM:

- Trong `Ads Cost = Impressions × CPM / 1.000`, CPM thuận với Ads Cost khi Impressions giữ nguyên.
- Trong `ROAS = GMV × 1.000 / (Impressions × CPM)`, CPM nghịch với ROAS khi GMV và Impressions giữ nguyên.
- Đây là quan hệ toán học có điều kiện, không phải kết luận “CPM cao thì Campaign xấu”.

## 7. Drill-down sau khi phát hiện chênh lệch

Đi theo thứ tự nhỏ dần, nhưng chỉ khi có ID nguyên vẹn:

```text
Campaign
→ Ad set: audience, optimization, budget/bid, placement
→ Ad: creative, format, message, product được quảng cáo
```

Các góc bổ trợ:

- Audience: Broad, Interest, Lookalike, Retargeting.
- Creative/format: video, ảnh, nhiều ảnh, nội dung/offer.
- Placement và device.
- Thời gian: ngày, tuần, tháng, sale period, learning.
- Attribution và tracking.
- Giá, voucher, tồn kho, khả năng chốt và vận hành đơn nếu có nguồn business.

Không dừng ở node “tối ưu content/target”. Mỗi giả thuyết phải chỉ ra dữ liệu xác nhận và dữ liệu có thể bác bỏ.

## 8. Mẫu phân tích một case

```text
Case = Sản phẩm + Objective + Phễu + Nền tảng + Kỳ + Grain
→ Data gate
→ Đối soát Ads Cost
→ Tính lại metric từ tử số/mẫu số
→ So với case tương đồng hoặc cùng case ở kỳ khác
→ Xác định biến toán học liên quan
→ Kiểm tra Campaign → Ad set → Ad
→ Lập giả thuyết
→ Tìm bằng chứng xác nhận/phản bác
→ Kết luận theo nhãn bằng chứng
```

Nhãn kết luận:

- `Đã xác minh từ nguồn`.
- `Owner đã xác nhận`.
- `Suy luận cần kiểm tra`.
- `To be updated`.

## 9. Điều kiện để chuyển sang ETL/report

1. `Objective suy luận` có rule, mapping version, người map/review và khóa Campaign theo kỳ; Objective Meta gốc chỉ là nguồn đối soát nếu bổ sung sau.
2. ID Campaign–Ad set–Ad nguyên vẹn dạng text.
3. Mapping Phễu có rule, version, owner và hiệu lực.
4. Mapping Ads → sản phẩm có grain và xử lý multi-product/shared.
5. Muốn phân tích platform phải có publisher breakdown; destination và sales channel tách riêng.
6. Mỗi join pass kiểm tra số dòng, orphan, duplicate và tổng spend trước/sau.
7. GMV business có định nghĩa và khóa nối phù hợp nếu report Business ROAS.

Chi tiết nguồn, mapping và coverage nằm tại `DIMENSION_MAPPING_VA_DO_PHU_DATASET.md`.

## 10. Changelog so với Logic cũ

### Giữ lại

- Ba nhánh TOFU/MOFU/BOFU.
- Mục tiêu làm việc, audience, format và nhóm metrics chính của từng tầng.
- Hướng drill-down Campaign/Ad set/Ad và test content/audience.

### Làm rõ

- Objective, Optimization goal và Result indicator là ba lớp khác nhau.
- Funnel là mapping phân tích; journey không tự chứng minh một cohort người dùng đi xuyên các bước.
- Meta Purchase/value tách khỏi đơn và GMV business.

### Bổ sung mới để review

- Data gate và kiểm soát tổng.
- Bốn chiều, sáu cặp và coverage dataset.
- Quan hệ metrics có điều kiện.
- Bằng chứng xác nhận/phản bác và điều kiện chuyển sang ETL/report.
