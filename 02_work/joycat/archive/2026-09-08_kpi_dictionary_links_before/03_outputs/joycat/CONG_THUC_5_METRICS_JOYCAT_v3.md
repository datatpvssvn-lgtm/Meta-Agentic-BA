# JOYCAT — Công thức 5 nhóm Metrics và Phương pháp đọc chỉ số

> Phiên bản: 4.0  
> Cập nhật: 2026-09-05  
> Người chịu trách nhiệm nội dung: Duy  
> Người đánh giá: cậu Sinh  
> Mục đích: Mô tả công thức toán học giữa các metrics và Business ROAS, đồng thời cung cấp phương pháp tư duy, bối cảnh đọc chỉ số và quy tắc chọn nhóm so sánh trước khi đưa ra kết luận.

---

## 1. Vai trò trong công việc hiện tại

Tài liệu này là **một nửa của bộ logic phân tích marketing Joycat** (đóng vai trò phương pháp tư duy, bối cảnh đọc và công thức toán học).

Tài liệu này **phải được đọc song hành cùng [`DATA_MAPPING_COVERAGE_JOYCAT.md`](DATA_MAPPING_COVERAGE_JOYCAT.md)** (tài liệu quy định bốn chiều, sáu cặp, mapping và khả năng đáp ứng của dữ liệu thực tế).
- Tài liệu này cho biết: *“Khi có câu hỏi, cần dùng công thức nào, đọc cùng chỉ số nào và tư duy phản biện theo những góc nhìn nào?”*
- Tài liệu Data Mapping & Coverage cho biết: *“Để trả lời câu hỏi đó, dataset hiện có những trường nào, mapping ra sao, phần nào làm được ngay và phần nào còn thiếu?”*

---

## 2. Quy ước chung

| Ký hiệu | Ý nghĩa |
|---|---|
| CTR, Rate | Dùng dạng thập phân: 2% = 0,02 |
| `r` | Một `Result indicator` cụ thể, ví dụ Messaging Conversation hoặc Purchase |
| Ads Cost | `Amount Spent` cùng phạm vi và cùng kỳ |
| GMV | GMV business cùng phạm vi và cùng kỳ với Ads Cost |
| AOV | Giá trị đơn hàng trung bình = `GMV / Purchases` |
| Quan hệ thuận/nghịch | Quan hệ toán học logic khi các biến còn lại trong công thức được giữ nguyên |
| Mỗi dòng công thức | Một cách biểu diễn tương đương; không cộng các dòng lại |

```text
Business ROAS = GMV / Ads Cost
Business ROAS = GMV / Amount Spent
```

> **Lưu ý cốt lõi:** GMV trong tài liệu này là **GMV business** do doanh nghiệp ghi nhận. Tuyệt đối không lấy giá trị chuyển đổi do Meta attribution ghi nhận (`Purchases conversion value`) để thay thế cho GMV business.

---

## 3. Từ công thức toán học đến câu hỏi phân tích

Để không rơi vào cái bẫy nhìn một con số rồi kết luận vội vã, người phân tích phải phân biệt rõ **4 tầng nhận thức**:

```text
Tầng 1: Quan hệ toán học và điều kiện sử dụng (Logic đại số)
   ↓
Tầng 2: Khác biệt quan sát được trong dữ liệu (Hiện tượng)
   ↓
Tầng 3: Giả thuyết giải thích sự khác biệt (Cơ chế có thể xảy ra)
   ↓
Tầng 4: Bằng chứng cần kiểm tra trước khi kết luận (Dữ liệu xác nhận/bác bỏ)
```

1. **Quan hệ toán học và điều kiện sử dụng:**
   - Các công thức thuận/nghịch là đẳng thức toán học chính xác với điều kiện giả định *ceteris paribus* (các yếu tố khác giữ nguyên).
   - Không xóa bỏ các quan hệ toán học này vì chúng là nền tảng phân rã; nhưng không được nhầm lẫn quan hệ toán học có điều kiện với kết luận nguyên nhân trong thực tế.
2. **Biến bị triệt tiêu đại số không đồng nghĩa với việc không có vai trò:**
   - Khi rút gọn công thức ROAS, biến `Impressions` có thể bị triệt tiêu ở cả tử và mẫu. Điều này chỉ có nghĩa là tỷ số ROAS không phụ thuộc trực tiếp vào độ lớn tuyệt đối của Impression nếu các tỷ lệ chuyển đổi giữ nguyên.
   - Nhưng tuyệt đối **không coi đây là bằng chứng rằng Impression không có vai trò nhân quả**. Không có Impression thì không thể có Reach, Clicks hay Purchases.
3. **Tỷ số tổng hợp không tự đồng nghĩa với hành trình người dùng (Cohort Conversion):**
   - Khi lấy `Tổng Purchases / Tổng Link Clicks` trong một tháng, con số này là một **tỷ số tổng hợp cùng phạm vi thời gian**.
   - Chưa được gọi đây là "tỷ lệ chuyển đổi của cùng một đoàn hệ người dùng" nếu hệ thống chưa có tracking ID định danh người dùng xuyên suốt từ click đến mua hàng.
4. **Phân biệt rạch ròi Meta Purchases và Business Orders:**
   - `Purchases` trong báo cáo Meta là số lượng sự kiện chuyển đổi được Meta phân bổ (attribution) theo cửa sổ thiết lập (ví dụ 7-day click, 1-day view).
   - `Orders` của doanh nghiệp là đơn hàng thực tế phát sinh trên hệ thống bán hàng (Shopee, TikTok, Website, POS), có tính đến việc hủy đơn, hoàn hàng, trùng đơn. Không bao giờ đồng nhất hai đại lượng này.

---

## 4. Cách chọn góc nhìn và nhóm so sánh tương đồng

Không đọc CPM, CTR, CPC, Mess, Purchase hoặc ROAS đứng một mình. Phân tích chỉ có giá trị khi đặt vào một case cụ thể và so sánh với nhóm đối chứng phù hợp.

### 4.1. Một case phân tích cụ thể gồm những gì?

```text
Một case phân tích
= một kỳ dữ liệu (tháng/tuần)
+ một sản phẩm hoặc nhóm sản phẩm
+ một Campaign objective / Optimization goal
+ một tầng phễu (TOFU/MOFU/BOFU/Shared)
+ một nền tảng hiển thị (Publisher platform)
+ một cấp quảng cáo (Campaign / Ad set / Ad)
+ một nhóm đối tượng (Audience / LAL / Retargeting)
+ một định dạng nội dung (Creative format / Placement)
+ một thiết lập quy gán (Attribution setting)
```

### 4.2. Nguyên tắc so sánh đối chứng

1. **Chiều muốn so sánh thì phải khác nhau, các chiều còn lại phải kiểm soát:**
   - Khi muốn so sánh hiệu quả giữa 2 sản phẩm (ví dụ Cát Sắn NA vs Cát Khoáng MNX), chiều Sản phẩm đương nhiên khác nhau.
   - Nhưng để phép so sánh có ý nghĩa, ta phải kiểm soát để các chiều còn lại tương đồng nhất có thể: cùng nền tảng Facebook, cùng mục tiêu Messaging, cùng kỳ tháng 04, cùng loại định dạng.
   - Nếu hai chiến dịch khác nhau ở cả Sản phẩm, cả Objective, cả Format và chạy ở hai tháng khác nhau, ta không thể quy chênh lệch hiệu quả cho riêng yếu tố sản phẩm.
2. **Không máy móc nhân mọi metric với mọi chiều:**
   - Không ép mọi nhánh quảng cáo phân phối nhận biết phải lập tức giải trình Business ROAS. Mỗi nhánh đảm nhiệm một vai trò trong phễu.
   - Các chiến dịch TOFU tập trung vào độ phủ chất lượng (Reach, CPM, Video View).
   - Các chiến dịch MOFU tập trung vào tương tác sâu và hội thoại (CTR, Messaging, Cost per Mess).
   - Các chiến dịch BOFU mới trực tiếp tối ưu cho hành động mua hàng (Cost per Purchase, ROAS).
3. **Không ép mọi khách hàng đi qua cùng một chuỗi hành trình tuần tự:**
   - Chuỗi `Impression → Click → Mess → Purchase` là một khung tư duy phân tích, không phải là con đường duy nhất của mọi khách hàng.
   - Có khách hàng thấy quảng cáo nhận biết trên Facebook (Impression), không bấm vào quảng cáo nhưng sau đó tự mở app Shopee tìm kiếm thương hiệu Joycat để mua hàng trực tiếp.
4. **Kết luận được phép khi thiếu thông tin:**
   - Khi chưa có Publisher platform: Chỉ được kết luận về tổng hiệu quả trên toàn bộ vị trí Meta, không suy diễn cho riêng Instagram hay Facebook.
   - Khi chưa có GMV business: Chỉ được kết luận về hiệu quả kỹ thuật quảng cáo (CPM rẻ hay đắt, CPR tối ưu hay không), tuyệt đối không kết luận chiến dịch đó "tạo ra lợi nhuận cao hay thấp".

---

## 5. Hai minh họa phương pháp tư duy (Không dùng số liệu)

> **Lưu ý:** Hai trường hợp dưới đây là **ví dụ minh họa về phương pháp tư duy phân tích**, không phải là kết luận hay số liệu thực tế của Joycat.

### Minh họa 1: Đọc CPM trong bối cảnh nhiệm vụ quảng cáo

Khi quan sát thấy Campaign A có CPM cao gấp đôi Campaign B, người phân tích chưa được phép vội kết luận "Campaign A chạy kém và lãng phí tiền".
- **Câu hỏi đúng cần đặt ra:** Campaign A và B đang phục vụ nhiệm vụ gì và nhắm vào ai?
- **Phân tích bối cảnh:** Nếu Campaign A đang nhắm vào tệp Lookalike 1% của những người mua hàng thường xuyên (tệp đối tượng hẹp, giá thầu đấu giá cao vì nhiều nhà quảng cáo cùng tranh chấp, nhưng tệp khách có túi tiền tốt và tỷ lệ chuyển đổi cao), việc CPM cao là cơ chế phân phối hoàn toàn hợp lý.
- **Bằng chứng cần kiểm tra:** Kiểm tra xem tỷ lệ chuyển đổi ra đơn và giá trị đơn hàng (AOV) của Campaign A có đủ cao để bù đắp chi phí CPM cao đó hay không. Nếu Cost per Purchase cuối cùng của Campaign A vẫn thấp hơn và ROAS tốt hơn, thì Campaign A là một chiến dịch hiệu quả dù CPM rất cao.
- **Ngược lại:** Nếu một chiến dịch Awareness với mục tiêu tiếp cận rộng (Broad) mà CPM lại tăng vọt bất thường, đó mới là hiện tượng cảnh báo (creative bị nhàm chán, cạnh tranh phiên đấu giá tăng đột biến hoặc tần suất phân phối bị lặp quá nhiều).

### Minh họa 2: Đánh giá chất lượng Messaging và ý nghĩa của CTR

Khi thấy một mẫu quảng cáo có CTR (tỷ lệ nhấp) rất cao và Cost per Messaging Conversation (chi phí trên mỗi tin nhắn) cực kỳ rẻ, người phân tích không được vội mừng rằng quảng cáo "thành công rực rỡ".
- **Câu hỏi đúng cần đặt ra:** Những người bấm vào nhắn tin đó có phải là khách hàng tiềm năng thực sự hay chỉ là tò mò / bấm nhầm?
- **Phân tích bối cảnh:** Một creative giật tít, gây sốc hoặc hứa hẹn ưu đãi không có thật có thể thu hút lượng click khổng lồ và kéo theo hàng trăm tin nhắn với chi phí rất rẻ. Nhưng khi đội ngũ bán hàng tiếp nhận, khách hàng có thể chỉ hỏi bâng quơ hoặc lập tức rời đi vì thất vọng.
- **Bằng chứng cần kiểm tra:** Đọc chỉ số chi phí tin nhắn cùng với các chỉ số tiếp theo: Tỷ lệ khách phản hồi lại (Messaging Replied), Tỷ lệ nhắn tin chuyển thành đơn (Mess → Order), và Doanh thu thực tế tạo ra từ kênh chat.
- **Nguyên tắc:** Một chỉ số trung gian (CTR, Clicks, Tin nhắn) có rẻ đến đâu cũng không có giá trị nếu chất lượng đầu ra cuối cùng của hành trình không được bảo đảm.

---

## 6. Các góc độ phân tích chi tiết

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

## 7. Năm nhóm Metrics chi tiết

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
