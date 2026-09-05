# Audit dataset Joycat — các cột đang có và cần export lại

> Phiên bản: 2.0  
> Ngày kiểm tra gần nhất: 2026-09-05  
> Phạm vi: `01_inputs\joycat\raw`  
> Mục đích: giúp Duy biết bộ dữ liệu hiện có đo được gì và xin cậu Sinh export lại đúng cột để nối KPI Tree, Metric Tree và Logic Tree.

## 1. Kết luận ngắn

- Raw hiện có **32 file `.xlsx`**, **không có file `.csv` hoặc `.tsv` đã bung ra**.
- File `archives\dataset_xlsx.rar` chỉ chứa lại 10 file `.xlsx`; không có CSV trong danh sách archive.
- Bộ chính `meta_ads\preferred_candidate` có **9 file**: Campaign, Ad set và Ad cho tháng 03, 04, 05/2026.
- Schema trong cùng một cấp dữ liệu đồng nhất giữa ba tháng:
  - Campaign: 23 cột.
  - Ad set: 27 cột.
  - Ad: 30 cột.
- Bộ hiện tại đã đủ để đọc Spend, Impressions, Reach, Results, Messaging, Purchase và một số event Meta.
- Bộ hiện tại **chưa đủ** để tính và phân tích chắc chắn Click/CTR/CPC, nối ba cấp bằng ID, đọc Objective gốc/Optimization, tách publisher platform/placement, phân tích video và đối chiếu GMV business. Riêng chiều Objective có thể ETL bằng `Objective suy luận` do Duy map.
- File dẫn xuất `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx` có cột `Objective suy luận`, không phải Campaign objective được export trực tiếp từ Meta.
- **Duy xác nhận ngày 05/09/2026:** cột này do con người suy luận và sẽ được dùng làm mapping đầu vào cho ETL vì export thiếu Objective. Vì vậy nó không còn là gap chặn ETL; Campaign objective gốc từ Meta là nguồn đối soát/nâng cấp nếu lấy được sau.
- Ba cặp có chiều Nền tảng đang bị chặn vì thiếu `Publisher platform`. Ba cặp Phễu × Sản phẩm, Sản phẩm × Objective và Phễu × Objective mới chỉ dùng được ở mức mapping/suy luận, chưa phải số đã xác minh.

### Kiểm soát tổng chi phí ba tháng

| Tháng | Campaign có Amount spent > 0 | Tổng Campaign | Tổng Ad set/Ad | Kết quả |
|---|---:|---:|---:|---|
| 2026-03 | 18 | 50.195.692 VND | 50.195.692 VND | Khớp |
| 2026-04 | 41 | 64.825.305 VND | 64.825.345 VND | Lệch 40 VND; giữ nguyên sai lệch nguồn |
| 2026-05 | 25 | 63.518.031 VND | 63.518.031 VND | Khớp |

Grain kiểm soát tổng hiện dùng là Campaign theo tháng. Không cộng Campaign + Ad set + Ad. Trong 84 Campaign có spend, bốn dòng có `Results` và `Result indicator` trống; vẫn phải giữ toàn bộ spend của các dòng này.

## 2. Nhóm cột có ổn định trong cả 9 file `preferred_candidate`

Các cột sau xuất hiện ở cả Campaign, Ad set và Ad trong cả ba tháng:

1. `Reporting starts`
2. `Reporting ends`
3. `Results`
4. `Result indicator`
5. `Cost per results`
6. `Ad set budget`
7. `Ad set budget type`
8. `Amount spent (VND)`
9. `Impressions`
10. `Reach`
11. `Ends`
12. `Attribution setting`
13. `Purchases`
14. `Purchases conversion value`
15. `Purchase ROAS (return on ad spend)`
16. `New messaging contacts`
17. `Cost per new messaging contact (VND)`
18. `Messaging conversations started`
19. `Cost per messaging conversation started (VND)`
20. `Orders created`
21. `Orders dispatched`

### Cột riêng của cấp Campaign

22. `Campaign name`
23. `Campaign delivery`

### Cột riêng của cấp Ad set

22. `Ad set name`
23. `Ad set delivery`
24. `Starts`
25. `Bid`
26. `Bid type`
27. `Last significant edit`

### Cột riêng của cấp Ad

22. `Ad name`
23. `Ad delivery`
24. `Bid`
25. `Bid type`
26. `Last significant edit`
27. `Quality ranking`
28. `Engagement rate ranking`
29. `Conversion rate ranking`
30. `Ad set name`

## 3. Cột có trong workspace nhưng không nằm ổn định ở bộ chính

| Cột | Đang nằm ở đâu | Vấn đề |
|---|---|---|
| `Ad ID` | `Ads_Ads_level_csv.xlsx`, các file Ads trong `variants\dataset_xlsx` và file mapping overview | Không có trong 9 file chính; ID từng bị Excel biến thành số khoa học/làm tròn. |
| `Ad set ID` | File mapping overview | Không nằm trực tiếp trong export Ad set hoặc Ad của bộ chính. |
| `Campaign ID` | File mapping overview | Không nằm trực tiếp trong export Campaign/Ad set/Ad của bộ chính. |
| `Frequency` | `Joycat-CS 032026.xlsx`, `Joycat-CS 042026.xlsx` | Chỉ có tháng 03–04 và chỉ ở file phụ cấp Campaign. |
| `CTR (all)` | `Joycat-CS 032026.xlsx`, `Joycat-CS 042026.xlsx` | Chỉ có tháng 03–04; thiếu Clicks nên không đối soát được trong bộ chính. |
| `Cost per purchase` | Hai file `Joycat-CS` | Có thể tính lại từ Spend/Purchases nhưng không có ổn định trong bộ chính. |
| `Messaging conversations replied` | Hai file `Joycat-CS` | Chỉ có tháng 03–04; không đồng nhất với ba tháng. |
| `Phễu` | `variants\dataset_xlsx` và mapping overview | Là mapping do người làm dữ liệu thêm, không phải cột gốc Meta đã xác minh. |
| `AD format` | `variants\dataset_xlsx` và mapping overview | Là mapping thêm; file `AD format.xlsx` chỉ liệt kê `video` và `images`. |
| `Month/Tháng` | File tổng hợp và mapping | Được thêm từ tên kỳ/file, không phải dimension ngày gốc của export. |
| `Objective suy luận` | `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`, sheet `Campaign_3_tháng`, header dòng 5 | Human-curated mapping do Duy xác nhận dùng cho ETL; phải giữ nguồn/rule/version, không giả thành field Meta gốc. |

### Rủi ro ID đã xác minh lại

- Catalog 25 sản phẩm giữ `Item ID` dạng text và có thể dùng làm khóa listing trong chính catalog.
- Một số file Ads/mapping lưu `Ad ID`, `Ad set ID`, `Campaign ID` dưới dạng number hoặc scientific notation. ID dài 17–18 chữ số có nguy cơ đã bị Excel/Power Query làm tròn trước khi đổi sang text.
- Chỉ đổi kiểu `number → text` sau khi dữ liệu đã bị làm tròn không khôi phục được chữ số gốc.
- Không sửa ID bằng cách thay chung phần đuôi thành `412`, `0460` hoặc `0467`. Cần CSV gốc hoặc export mới giữ ID dạng text ngay từ nguồn.

## 4. Công thức nào tính được ngay từ cột hiện có?

| Metric | Có tính được không? | Công thức/giới hạn |
|---|---|---|
| Ads Cost | Có | `Amount spent (VND)` tại đúng một grain. |
| CPM | Có | `Amount Spent / Impressions × 1.000`. Cột CPM export sẵn chỉ cần để đối soát. |
| Frequency | Có điều kiện | `Impressions / Reach` trong cùng dòng, cùng grain và cùng kỳ. Không cộng Frequency giữa các dòng. |
| Cost per 1.000 people reached | Có | `Amount Spent / Reach × 1.000`. |
| Cost per Result | Có | `Amount Spent / Results`, nhưng chỉ khi cùng `Result indicator`. |
| Cost per Messaging Conversation | Có | `Amount Spent / Messaging conversations started`. |
| Cost per New Messaging Contact | Có | `Amount Spent / New messaging contacts`. |
| Cost per Purchase | Có | `Amount Spent / Purchases`; Purchase vẫn là event Meta. |
| Messaging Conversation Rate trên Impression | Có | `Messaging conversations started / Impressions`. |
| Purchase Rate trên Impression | Có | `Purchases / Impressions`. |
| CTR (all), CPC (all) | **Chưa** | Thiếu `Clicks (all)`. |
| CTR (link), CPC (link) | **Chưa** | Thiếu `Link clicks`. |
| Tỷ lệ Link Click → Mess | **Chưa** | Thiếu `Link clicks`. |
| Purchases per Link Click | **Chưa** | Thiếu `Link clicks`. |
| ROAS business | **Chưa** | Thiếu GMV business theo đúng kênh, kỳ và rule hoàn/hủy. |

## 5. Các cột cần xin export lại — ưu tiên P0

P0 là nhóm nên xin trước vì thiếu chúng sẽ làm join sai, mất công thức hoặc không đọc được cấu trúc Campaign.

### 5.1. Khóa và tên của ba cấp

- `Account ID`
- `Account name`
- `Campaign ID`
- `Campaign name`
- `Ad set ID`
- `Ad set name`
- `Ad ID`
- `Ad name`

Yêu cầu kỹ thuật:

- ID phải được giữ dưới dạng **text**, không phải number.
- Tốt nhất gửi **file CSV gốc chưa mở–save lại bằng Excel**, sau đó nén `.zip` để giữ nguyên ID 17–18 chữ số.
- Nếu bắt buộc dùng `.xlsx`, các cột ID phải được tạo sẵn với kiểu text. Chỉ đổi format sau khi Excel đã làm tròn thì không khôi phục được ID gốc.

### 5.2. Thời gian, grain và cấu hình

- `Date` hoặc breakdown `Day` nếu cần phân tích biến động theo ngày.
- `Reporting starts`
- `Reporting ends`
- `Campaign objective` / `Objective`
- `Buying type`
- `Performance goal` / `Optimization goal`
- `Conversion location`
- `Destination`
- `Bid strategy`
- `Bid amount` hoặc `Bid`
- `Attribution setting`
- `Campaign delivery`
- `Ad set delivery`
- `Ad delivery`
- `Campaign budget` và `Campaign budget type` nếu dùng Campaign budget.
- `Ad set budget` và `Ad set budget type`.

### 5.3. Raw delivery và click metrics

- `Amount spent (VND)`
- `Impressions`
- `Reach`
- `Clicks (all)`
- `Link clicks`
- `Outbound clicks` nếu quảng cáo dẫn sang Shopee/website ngoài Meta.
- `Landing page views` nếu có website/landing page.
- `Results`
- `Result indicator`

Các cột rate/cost sau có thể tự tính, nhưng nên export kèm để đối soát:

- `Frequency`
- `CPM`
- `CTR (all)`
- `CTR (link click-through rate)`
- `CPC (all)`
- `CPC (cost per link click)`
- `Cost per result`

### 5.4. Messaging và conversion

- `Messaging conversations started`
- `Cost per messaging conversation started`
- `New messaging contacts`
- `Cost per new messaging contact`
- `Messaging conversations replied` nếu tài khoản có metric này.
- `Purchases`
- `Cost per purchase`
- `Purchases conversion value`
- `Purchase ROAS`
- `Orders created`
- `Orders dispatched`
- `Content views` / `View content` nếu được tracking.
- `Adds to cart`
- `Initiate checkout` / `Checkouts initiated`

## 6. Các export riêng cần xin — ưu tiên P1

Không nên ép mọi breakdown vào một file vì mỗi breakdown làm thay đổi grain. Xin thành các file riêng nhưng dùng cùng kỳ, timezone, currency và attribution.

### 6.1. Platform và placement

- `Publisher platform`
- `Platform position`
- `Impression device`

Ba khái niệm phải tách nhau:

- Publisher platform: nơi quảng cáo hiển thị, ví dụ Facebook hoặc Instagram.
- Destination: nơi khách được dẫn tới, ví dụ Messenger, WhatsApp, Shopee hoặc website.
- Sales platform: nơi business ghi nhận đơn/GMV.

Không gọi spend là “WhatsApp spend” chỉ vì quảng cáo dẫn khách tới WhatsApp nếu file không có publisher/destination breakdown phù hợp.

### 6.2. Video và engagement

Vì Joycat có video và chạy tương tác, nên xin thêm:

- `Post engagements`
- `Post reactions`
- `Post comments`
- `Post shares`
- `Post saves`
- `3-second video plays`
- `ThruPlays`
- `Cost per ThruPlay`
- `Video plays at 25%`
- `Video plays at 50%`
- `Video plays at 75%`
- `Video plays at 95%`
- `Video plays at 100%`
- `Video average play time`

### 6.3. Audience breakdown — chỉ khi cần Logic Tree

- `Age`
- `Gender`
- `Region` hoặc `Country`

Đây là breakdown riêng. Không cộng Reach giữa các nhóm nếu có khả năng một người xuất hiện ở nhiều phạm vi báo cáo khác nhau.

## 7. Dữ liệu business phải xin riêng, không lấy từ Meta

Để tính `Ads Cost / GMV all platform` và Business ROAS, cần một nguồn đơn hàng/GMV riêng có ít nhất:

- `Order ID`
- `Order created date`
- `Paid date` hoặc kỳ ghi nhận GMV được owner chọn
- `Sales platform/channel`: Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B, kênh khác
- `SKU/Product ID`
- `Product name`
- `Quantity`
- `Gross item value`
- `Voucher/discount/subsidy`
- `Shipping fee` và rule có tính vào GMV hay không
- `Order status`
- `Cancelled/returned/refunded value`
- `GMV theo định nghĩa business`
- `Currency`

Nếu muốn nối Ads → đơn, cần thêm khóa tracking được owner xác nhận như `Click ID`, `Order ID`, event ID hoặc mapping CPAS/CAPI phù hợp. Không tự nối bằng tên Campaign.

## 8. Cách export đề xuất

### Bộ A — monthly control

- Campaign, Ad set và Ad cho từng tháng 03, 04, 05/2026.
- Cùng timezone, currency, attribution và danh sách cột.
- Dùng để đối soát tổng tháng và Reach theo từng grain.

### Bộ B — daily analysis

- Có `Day/Date`, tối thiểu ở cấp Campaign và Ad.
- Dùng để xem biến động, sale day, creative và mối quan hệ metric theo thời gian.
- Không dùng tổng Reach daily để thay monthly Reach vì người dùng có thể lặp giữa các ngày.

### Bộ C — breakdown riêng

- Publisher platform + placement + device.
- Video/engagement.
- Age/gender/region nếu thực sự cần.

## 9. Tin nhắn Duy có thể gửi cậu Sinh

> Cậu ơi, phần Campaign objective hiện con đã tự mapping thành cột `Objective suy luận` để ETL, vì file Meta đang thiếu Objective gốc. Cậu giúp con review rule mapping và các trường hợp con override theo tên Campaign nhé. Nếu có thể, cậu cho con thêm Objective gốc và Performance/Optimization goal để đối soát. Đồng thời, cậu giúp con export lại dữ liệu Meta Ads Joycat tháng 03–05/2026 ở ba cấp Campaign, Ad set và Ad, giữ đầy đủ Account/Campaign/Ad set/Ad ID dạng text; tốt nhất là CSV gốc nén zip. Bộ hiện tại còn thiếu Clicks (all), Link clicks, Conversion location, Destination và breakdown Publisher platform/Placement. Các file cần cùng timezone, currency và attribution. GMV/đơn hàng business xin tách riêng theo sales platform, order, product/Item ID hoặc SKU, trạng thái hoàn/hủy và rule tính GMV.

## 10. Ranh giới của audit

- `Đã xác minh từ nguồn`: tên file, sheet, số cột và header được đọc trực tiếp từ 32 file Excel trong raw.
- `Owner đã xác nhận`: các business rule ghi trong Joycat Context vẫn cần giữ đúng nhãn owner statement.
- `Suy luận`: danh sách cột P0/P1 được đề xuất từ KPI/Metric Tree và mục tiêu phân tích hiện tại; cậu Sinh/data owner cần xác nhận cột nào thực sự export được trong tài khoản.
- `Chưa sẵn có`: GMV business toàn nền tảng và khóa nối Ads → order.

## 11. Coverage sáu cặp đang cần cho ETL/report

| Cặp phân tích | Trạng thái từ dataset hiện tại | Thiếu chính |
|---|---|---|
| Nền tảng × Sản phẩm | Chưa tính được | Publisher platform và Ads → Item ID/SKU |
| Nền tảng × Phễu | Chưa tính được | Publisher platform; rule Phễu đã duyệt |
| Nền tảng × Campaign objective | Chưa tính được | Thiếu Publisher platform; Objective dùng human-curated mapping |
| Phễu × Sản phẩm | Mapping suy luận/một phần | Mapping Ads → sản phẩm chi tiết; rule Phễu |
| Sản phẩm × Campaign objective | Mapping suy luận/một phần | Objective mapping dùng được; còn thiếu mapping Ads → sản phẩm |
| Phễu × Campaign objective | Human-mapped/một phần | Hai chiều cùng có trong demo; cần version/rule Phễu và Objective mapping |

Viết được công thức không có nghĩa dataset tính được phần giao. Khi ETL, mỗi cặp chỉ được mở nếu hai chiều cùng grain hoặc nối được bằng khóa hợp lệ, tổng spend sau join không tăng, và phần `Shared/Mixed/Unmapped` không bị loại khỏi tổng kiểm soát.
