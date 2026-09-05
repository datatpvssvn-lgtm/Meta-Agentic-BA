# JOYCAT — Công thức 5 nhóm Metrics

> Phiên bản: 3.1  
> Cập nhật: 2026-09-04  
> Mục đích: mô tả công thức toán học giữa các metrics và Business ROAS, đồng thời quy định các góc độ phải phân tích trước khi kết luận từng case.

---

## Quy ước chung

| Ký hiệu | Ý nghĩa |
|---|---|
| CTR, Rate | Dùng dạng thập phân: 2% = 0,02 |
| `r` | Một `Result indicator` cụ thể, ví dụ Messaging Conversation hoặc Purchase |
| Ads Cost | `Amount Spent` cùng phạm vi và cùng kỳ |
| GMV | GMV business cùng phạm vi và cùng kỳ với Ads Cost |
| AOV | Giá trị đơn hàng trung bình = `GMV / Purchases` |
| Quan hệ thuận/nghịch | Quan hệ toán học khi các biến còn lại trong công thức được giữ nguyên |
| Mỗi dòng công thức | Một cách biểu diễn tương đương; không cộng các dòng lại |

```text
Business ROAS = GMV / Ads Cost
Business ROAS = GMV / Amount Spent
```

> GMV trong tài liệu này là GMV business. Không lấy giá trị chuyển đổi do Meta attribution ghi nhận làm GMV business.

---

## Cách dùng đúng công thức: phải nhìn theo từng case và nhiều chiều

Không đọc CPM, CTR, CPC, Mess, Purchase hoặc ROAS đứng một mình. Trước tiên phải xác định một case cụ thể:

```text
Một case phân tích
= một kỳ dữ liệu
+ một sản phẩm hoặc nhóm sản phẩm
+ một Campaign objective
+ một tầng phễu
+ một nền tảng
+ một cấp Campaign / Ad set / Ad
+ một nhóm audience
+ một creative / format / placement
+ một attribution setting
```

Không bắt buộc case nào cũng có đủ mọi chiều. Chiều nào chưa có dữ liệu thì phải ghi rõ, không tự gán.

### Các góc độ phải nhìn

| Góc độ | Cần tách cụ thể | Câu hỏi cần trả lời |
|---|---|---|
| Sản phẩm | Từng sản phẩm, nhóm sản phẩm, combo hoặc quảng cáo nhiều sản phẩm | Cùng loại Campaign, metric của sản phẩm nào khác biệt? |
| Campaign objective | Awareness, Engagement - Post Engagement, Engagement - Messaging, Sales - Purchase và Objective khác | Campaign đang yêu cầu Meta tìm loại kết quả nào? |
| Cấu hình tối ưu | Campaign objective, Performance goal/Optimization goal và Result indicator | Metric đang đọc có đúng với mục tiêu và loại result của Campaign không? |
| Phễu | TOFU, MOFU, BOFU và Shared/Mixed Funnel | Metric đang nằm ở tầng nào và có đang bị so sai tầng không? |
| Customer journey | Hiển thị → tiếp cận → click → nhắn tin → purchase → GMV | Điểm nào trong hành trình đang giữ hoặc làm mất kết quả? |
| Nền tảng và điểm đến | Facebook, Instagram, Messenger/WhatsApp, website, Shopee hoặc kênh khác | Quảng cáo hiển thị ở đâu, khách được dẫn tới đâu và GMV được ghi nhận ở đâu? |
| Cấp quảng cáo | Campaign, Ad set và Ad | Chênh lệch xuất hiện ở chiến dịch, audience hay creative? |
| Audience | Broad, Interest, Lookalike, Retargeting và nhóm khác | Giá phân phối và chất lượng hành động khác nhau thế nào giữa các tệp? |
| Creative và phân phối | Video, ảnh, nội dung, placement và định dạng | Khác biệt đến từ nội dung hay vị trí phân phối? |
| Thời gian | Ngày, tuần, tháng, mùa sale và giai đoạn learning | Kết quả có ổn định hay chỉ xuất hiện trong một thời điểm? |
| Nguồn dữ liệu | Meta delivery, Meta-attributed result và dữ liệu đơn hàng/GMV business | Các metrics có cùng kỳ, scope, grain và attribution không? |

### Funnel và journey dùng để đặt metric vào đúng vị trí

| Vị trí phân tích | Metrics thường cần đọc | Chưa được phép kết luận |
|---|---|---|
| TOFU — phân phối và nhận biết | Impressions, Reach, Frequency, CPM, video views, estimated ad recall | Không mặc định CPM TOFU phải thấp hoặc cao hơn tầng khác |
| MOFU — quan tâm và hành động trung gian | Clicks, Link Clicks, CTR, CPC, Post Engagements, Messaging Conversations Started, Cost per Messaging Conversation | Không mặc định click hoặc mess tốt sẽ tạo ra Purchase |
| BOFU — hành động gần doanh thu | Purchases, Cost per Purchase, Orders, AOV, GMV và Business ROAS | Không dùng Meta-attributed Purchase hoặc value thay cho đơn và GMV business |

Việc xếp metric vào TOFU, MOFU hoặc BOFU phục vụ cách đọc journey. Nó không tạo ra quy luật cố định rằng metric của tầng sau phải rẻ hơn tầng trước.

### Bảng vai trò toán học — chưa phải kết luận case

| Metric | Vai trò trong công thức ROAS | Cách đọc đúng |
|---|---|---|
| CPM | Nằm ở mẫu số của góc nhìn Impression | Quan hệ nghịch chỉ khi Purchase Rate trên Impression và AOV giữ nguyên |
| CTR (link) | Nằm ở tử số của công thức toàn journey | Quan hệ thuận chỉ khi CPM, các tỷ lệ phía sau và AOV giữ nguyên |
| CPC (link) | Nằm ở mẫu số của góc nhìn Click | Quan hệ nghịch chỉ khi Purchases per Link Click và AOV giữ nguyên |
| Tỷ lệ Link Click → Mess | Nằm ở tử số của nhánh Click → Mess | Quan hệ thuận chỉ khi các thành phần còn lại giữ nguyên |
| Tỷ lệ Mess → Purchase | Nằm ở tử số của góc nhìn Mess | Quan hệ thuận chỉ khi Cost per Messaging Conversation và AOV giữ nguyên |
| AOV | Nằm ở tử số của các công thức ROAS | Quan hệ thuận chỉ khi chi phí và tỷ lệ còn lại giữ nguyên |
| Impressions | Có trong GMV và Ads Cost trước khi rút gọn | Quan hệ gián tiếp/phụ thuộc điều kiện; bị triệt tiêu khi thế đầy đủ công thức |
| Reach | Nối với Impressions qua Frequency | Quan hệ gián tiếp/phụ thuộc điều kiện; phải đọc cùng Frequency và CPM |
| Frequency | Nối Reach với Impressions | Không có quan hệ thuận hoặc nghịch cố định nếu chưa biết các biến khác |

Ví dụ: dữ liệu có thể xuất hiện case `CPM TOFU cao hơn CPM BOFU`, cũng có thể ngược lại. Chỉ được so sau khi tách đúng sản phẩm, objective, nền tảng, audience, thời gian, placement và attribution. Sau đó mới kiểm tra CTR, CPC, Messaging, Purchase, GMV và ROAS của chính các case đó.

### Trình tự phân tích một case

1. Chọn đúng lát cắt cần so sánh.
2. Tính lại các metrics từ tổng tử số và tổng mẫu số trong lát cắt đó.
3. Đặt từng metric vào đúng vị trí của funnel/customer journey.
4. So sánh với một case tương đồng hoặc với chính case đó ở kỳ khác.
5. Xác định quan hệ toán học nào đang áp dụng và biến nào không được giữ nguyên.
6. Dùng dữ liệu để mô tả hiện tượng; chưa gọi đó là nguyên nhân nếu chưa có kiểm chứng.

### Công thức toàn phễu

```text
Business ROAS
= CTR (link)
× Tỷ lệ Link Click → Mess
× Tỷ lệ Mess → Purchase
× AOV
× 1.000
/ CPM
```

Quan hệ toán học:

- Thuận với `CTR (link)`, `Tỷ lệ Link Click → Mess`, `Tỷ lệ Mess → Purchase` và `AOV` khi các biến còn lại giữ nguyên.
- Nghịch với `CPM` khi các biến còn lại giữ nguyên.
- Chưa kết luận ROAS của một Campaign trước khi thay dữ liệu của Campaign đó vào công thức.

---

## 1. Impressions

```text
Impressions = Reach × Frequency
Impressions = Amount Spent × 1.000 / CPM
Impressions = Clicks (all) / CTR (all)
Impressions = Link Clicks / CTR (link)
Impressions = Messaging Conversations Started / Messaging Conversation Rate
Impressions = New Messaging Contacts / New Messaging Contact Rate trên Impression
Impressions = Purchases / Purchase Rate trên Impression
Impressions = Results (r) / Result Rate (r)
```

### Liên hệ với Business ROAS

```text
GMV = Impressions × Purchase Rate trên Impression × AOV
Ads Cost = Impressions × CPM / 1.000
```

Thế vào công thức ROAS:

```text
Business ROAS
= Purchase Rate trên Impression × AOV × 1.000 / CPM
```

`Impressions` bị triệt tiêu. Vì vậy, Impressions có quan hệ gián tiếp/phụ thuộc điều kiện với ROAS, không mang một chiều thuận hoặc nghịch cố định.

---

## 2. Reach

```text
Reach = Impressions / Frequency
Reach = Amount Spent × 1.000 / (CPM × Frequency)
Reach = Clicks (all) / (CTR (all) × Frequency)
Reach = Link Clicks / (CTR (link) × Frequency)
Reach = Messaging Conversations Started / (Messaging Conversation Rate × Frequency)
Reach = New Messaging Contacts / (New Messaging Contact Rate trên Impression × Frequency)
Reach = Purchases / (Purchase Rate trên Impression × Frequency)
Reach = Results (r) / (Result Rate (r) × Frequency)
Reach = Amount Spent × 1.000 / Cost per 1.000 People Reached
```

### Liên hệ với Business ROAS

```text
Impressions = Reach × Frequency

GMV
= Reach
× Frequency
× Purchase Rate trên Impression
× AOV

Ads Cost
= Reach
× Frequency
× CPM
/ 1.000
```

Thế vào công thức ROAS:

```text
Business ROAS
= Purchase Rate trên Impression × AOV × 1.000 / CPM
```

`Reach` và `Frequency` đều bị triệt tiêu. Hai metrics này có quan hệ gián tiếp/phụ thuộc điều kiện với ROAS.

---

## 3. Click

### 3.1. Clicks (all)

```text
Clicks (all) = Impressions × CTR (all)
Clicks (all) = Amount Spent / CPC (all)
CTR (all) = Clicks (all) / Impressions
CPC (all) = Amount Spent / Clicks (all)
CPM = CTR (all) × CPC (all) × 1.000
```

### 3.2. Link Clicks

```text
Link Clicks = Impressions × CTR (link)
Link Clicks = Amount Spent / CPC (link)
Link Clicks = Clicks (all) × Tỷ trọng Link Click
Link Clicks = Messaging Conversations Started / Tỷ lệ Link Click → Mess
Link Clicks = Purchases / Purchases per Link Click
CTR (link) = Link Clicks / Impressions
CPC (link) = Amount Spent / Link Clicks
CPM = CTR (link) × CPC (link) × 1.000
```

### 3.3. Các tỷ lệ Click

```text
Tỷ trọng Link Click = Link Clicks / Clicks (all)
Purchases per Link Click = Purchases / Link Clicks
```

### Liên hệ với Business ROAS

```text
GMV = Link Clicks × Purchases per Link Click × AOV
Ads Cost = Link Clicks × CPC (link)
```

Thế vào công thức ROAS:

```text
Business ROAS
= Purchases per Link Click × AOV / CPC (link)
```

Quan hệ toán học:

- Thuận với `Purchases per Link Click` và `AOV` khi biến còn lại giữ nguyên.
- Nghịch với `CPC (link)` khi các biến còn lại giữ nguyên.
- `Link Clicks` có quan hệ gián tiếp/phụ thuộc điều kiện vì bị triệt tiêu khỏi công thức sau khi thế.

---

## 4. Mess — Messaging

### 4.1. Messaging Conversations Started

```text
Messaging Conversations Started
= Amount Spent / Cost per Messaging Conversation

Messaging Conversations Started
= Impressions × Messaging Conversation Rate

Messaging Conversations Started
= Link Clicks × Tỷ lệ Link Click → Mess

Messaging Conversations Started
= New Messaging Contacts / New Contact Rate trên Mess

Messaging Conversations Started
= Purchases / Tỷ lệ Mess → Purchase
```

### 4.2. Các tỷ lệ và chi phí Messaging

```text
Messaging Conversation Rate
= Messaging Conversations Started / Impressions

Tỷ lệ Link Click → Mess
= Messaging Conversations Started / Link Clicks

Cost per Messaging Conversation
= Amount Spent / Messaging Conversations Started

Cost per Messaging Conversation
= CPM / (Messaging Conversation Rate × 1.000)

Cost per Messaging Conversation
= CPC (link) / Tỷ lệ Link Click → Mess
```

### 4.3. New Messaging Contacts

```text
New Messaging Contacts
= Amount Spent / Cost per New Messaging Contact

New Messaging Contacts
= Messaging Conversations Started × New Contact Rate trên Mess

New Contact Rate trên Mess
= New Messaging Contacts / Messaging Conversations Started

Cost per New Messaging Contact
= Amount Spent / New Messaging Contacts

Cost per New Messaging Contact
= Cost per Messaging Conversation / New Contact Rate trên Mess
```

### Liên hệ với Business ROAS

```text
GMV
= Messaging Conversations Started
× Tỷ lệ Mess → Purchase
× AOV

Ads Cost
= Messaging Conversations Started
× Cost per Messaging Conversation
```

Thế vào công thức ROAS:

```text
Business ROAS
= Tỷ lệ Mess → Purchase
× AOV
/ Cost per Messaging Conversation
```

Quan hệ toán học:

- Thuận với `Tỷ lệ Mess → Purchase` và `AOV` khi biến còn lại giữ nguyên.
- Nghịch với `Cost per Messaging Conversation` khi các biến còn lại giữ nguyên.
- `Messaging Conversations Started` có quan hệ gián tiếp/phụ thuộc điều kiện vì bị triệt tiêu sau khi thế.

---

## 5. Purchase

### 5.1. Purchases

```text
Purchases = Amount Spent / Cost per Purchase
Purchases = Impressions × Purchase Rate trên Impression
Purchases = Link Clicks × Purchases per Link Click
Purchases = Messaging Conversations Started × Tỷ lệ Mess → Purchase
Purchases = GMV / AOV
```

### 5.2. Các tỷ lệ và chi phí Purchase

```text
Purchase Rate trên Impression = Purchases / Impressions
Purchases per Link Click = Purchases / Link Clicks
Tỷ lệ Mess → Purchase = Purchases / Messaging Conversations Started
Cost per Purchase = Amount Spent / Purchases
Cost per Purchase = CPM / (Purchase Rate trên Impression × 1.000)
Cost per Purchase = CPC (link) / Purchases per Link Click
Cost per Purchase = Cost per Messaging Conversation / Tỷ lệ Mess → Purchase
```

### 5.3. GMV, AOV và Business ROAS

```text
GMV = Purchases × AOV
AOV = GMV / Purchases
Business ROAS = GMV / Amount Spent
```

Thế `GMV = Purchases × AOV` và `Amount Spent = Purchases × Cost per Purchase`:

```text
Business ROAS = AOV / Cost per Purchase
```

Quan hệ toán học:

- Thuận với `AOV` khi `Cost per Purchase` giữ nguyên.
- Nghịch với `Cost per Purchase` khi `AOV` giữ nguyên.
- `Purchases` có quan hệ gián tiếp/phụ thuộc điều kiện vì bị triệt tiêu sau khi thế.

> Điều kiện: Purchases, AOV và GMV phải thuộc cùng tập đơn business, cùng kỳ và cùng phạm vi.

---

## 6. CPM — CPC — CTR

### Theo Clicks (all)

```text
CPM = CPC (all) × CTR (all) × 1.000
CPC (all) = CPM / (CTR (all) × 1.000)
CTR (all) = CPM / (CPC (all) × 1.000)
```

### Theo Link Clicks

```text
CPM = CPC (link) × CTR (link) × 1.000
CPC (link) = CPM / (CTR (link) × 1.000)
CTR (link) = CPM / (CPC (link) × 1.000)
```

Các công thức trên là đẳng thức. Không kết luận một metric tạo ra metric khác nếu chưa xác định biến nào được giữ nguyên và biến nào thực tế thay đổi trong case.

---

## 7. Bốn góc nhìn toán học của Business ROAS

### Góc nhìn Impression

```text
Business ROAS
= Purchase Rate trên Impression × AOV × 1.000 / CPM
```

- Thuận với Purchase Rate trên Impression và AOV.
- Nghịch với CPM.
- Điều kiện: các biến còn lại giữ nguyên.

### Góc nhìn Click

```text
Business ROAS
= Purchases per Link Click × AOV / CPC (link)
```

- Thuận với Purchases per Link Click và AOV.
- Nghịch với CPC (link).
- Điều kiện: các biến còn lại giữ nguyên.

### Góc nhìn Mess

```text
Business ROAS
= Tỷ lệ Mess → Purchase × AOV / Cost per Messaging Conversation
```

- Thuận với Tỷ lệ Mess → Purchase và AOV.
- Nghịch với Cost per Messaging Conversation.
- Điều kiện: các biến còn lại giữ nguyên.

### Góc nhìn Purchase

```text
Business ROAS = AOV / Cost per Purchase
```

- Thuận với AOV.
- Nghịch với Cost per Purchase.
- Điều kiện: biến còn lại giữ nguyên.

---

## 8. Campaign objective — Ngữ cảnh để chọn đúng công thức

### Ba lớp không được trộn

```text
Campaign objective
→ Performance goal / Optimization goal
→ Result indicator trong báo cáo
→ Metric cần đọc
```

| Lớp | Ý nghĩa |
|---|---|
| Campaign objective | Mục tiêu kinh doanh được chọn ở cấp Campaign |
| Performance goal / Optimization goal | Hành động Meta được yêu cầu tối ưu ở cấp Ad set |
| Result indicator | Loại kết quả được hiển thị trong báo cáo |

Một `Result indicator` có thể gợi ý Campaign objective nhưng không đủ để xác nhận objective thật.

### Awareness

- Mục đích: làm nhiều người biết hoặc nhớ quảng cáo.
- Performance goal có thể gặp: Reach, Impressions, Ad Recall Lift.
- Metrics cần đọc: Reach, Impressions, Frequency, CPM, Estimated Ad Recallers và Cost per Estimated Ad Recall Result.
- Result indicator đã quan sát trong dữ liệu Joycat: `estimated_ad_recallers`.
- Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện.

### Traffic

- Mục đích: đưa người dùng tới một điểm đến.
- Performance goal có thể gặp: Link Clicks hoặc Landing Page Views.
- Metrics cần đọc: Link Clicks, CTR (link), CPC (link), Landing Page Views và Cost per Landing Page View.
- Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện.

### Engagement — Messaging

- Mục đích: tạo cuộc hội thoại và liên hệ nhắn tin.
- Performance goal có thể gặp: Conversations hoặc messaging-related conversion.
- Metrics cần đọc: Messaging Conversations Started, New Messaging Contacts, Cost per Messaging Conversation và Cost per New Messaging Contact.
- Result indicator đã quan sát trong dữ liệu Joycat: `actions:onsite_conversion.messaging_conversation_started_7d`.
- Quan hệ với Business ROAS: gián tiếp/phụ thuộc Tỷ lệ Mess → Purchase và AOV.

### Engagement — Post Engagement

- Mục đích: tạo tương tác với nội dung.
- Performance goal có thể gặp: Post Engagement.
- Metrics cần đọc: Post Engagements, Cost per Post Engagement và các interaction metrics nếu được export.
- Result indicator đã quan sát trong dữ liệu Joycat: `actions:post_engagement`.
- Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện.

### Engagement — Video Views

- Mục đích: tạo lượt xem video theo performance goal đã chọn.
- Performance goal có thể gặp: ThruPlay hoặc video views.
- Metrics cần đọc: Video Plays, 3-second Video Plays, ThruPlays, Cost per ThruPlay và tỷ lệ xem video.
- Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện.

### Leads

- Mục đích: thu thông tin của người quan tâm.
- Performance goal có thể gặp: Leads, Quality Leads hoặc conversion qua form, website hay messaging.
- Metrics cần đọc: Leads, Cost per Lead và Tỷ lệ Lead → Purchase nếu có nguồn business.
- Quan hệ với Business ROAS: gián tiếp/phụ thuộc tỷ lệ chốt và AOV.

### App Promotion

- Mục đích: tạo lượt cài đặt hoặc hành động trong ứng dụng.
- Performance goal có thể gặp: App Installs, App Events hoặc Value.
- Metrics cần đọc: App Installs, Cost per App Install và các in-app events/value.
- Quan hệ với Business ROAS: phụ thuộc doanh thu ứng dụng và phạm vi GMV.

### Sales

- Mục đích: tạo Purchase hoặc conversion gần doanh thu.
- Performance goal có thể gặp: Conversions, Value hoặc Messaging Purchase Conversion.
- Metrics cần đọc: Purchases, Cost per Purchase, Orders Created, Orders Dispatched, Add to Cart và Initiate Checkout.
- Result indicator đã quan sát trong dữ liệu Joycat: `actions:onsite_conversion.purchase`.
- Business ROAS vẫn dùng GMV business; Meta-attributed Purchase chỉ là dữ liệu đo lường quảng cáo.

### Cách AI đọc một Campaign

1. Đọc Campaign objective thật.
2. Đọc Performance goal hoặc Optimization goal thật.
3. Đọc Result indicator và metric thực tế.
4. Chọn đúng nhóm công thức trong tài liệu.
5. Kiểm tra cùng kỳ, cùng scope và cùng attribution.
6. Đặt dữ liệu của case vào công thức rồi mới phân tích.

Nếu thiếu Campaign objective thật, chỉ được ghi `Suy luận từ Result indicator`; không ghi `Đã xác minh`.

---

## 9. Sơ đồ công thức tổng quát

```text
Amount Spent
    tính Impressions: × 1.000 / CPM
Impressions
    tính Link Clicks: × CTR (link)
Link Clicks
    tính Messaging Conversations Started: × Tỷ lệ Link Click → Mess
Messaging Conversations Started
    tính Purchases: × Tỷ lệ Mess → Purchase
Purchases
    tính GMV: × AOV
GMV
    tính Business ROAS: / Amount Spent
Business ROAS
```

Sơ đồ trên là chuỗi đẳng thức dùng để biến đổi công thức. Nó chưa phải kết luận nguyên nhân và chưa nói ROAS của một case theo chiều nào.

---

## 10. Điều kiện trước khi phân tích từng case

- GMV và Amount Spent phải cùng kỳ và cùng phạm vi.
- Purchases, AOV và GMV phải thuộc cùng tập đơn business.
- Meta-attributed results phải giữ nguyên attribution khi so sánh.
- Không lấy trung bình CPM, CPC, Cost per Result hoặc ROAS theo từng dòng.
- Không trộn dữ liệu Campaign, Ad set và Ad khi cộng tổng.
- Chỉ kết luận sau khi xác định biến nào giữ nguyên, biến nào thay đổi và dữ liệu có đủ để kiểm tra hay không.
