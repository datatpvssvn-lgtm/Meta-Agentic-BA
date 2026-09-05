# JOYCAT — Công thức 5 nhóm Metrics Meta

> Phiên bản: 2.1
> Cập nhật: 2026-08-28
> Mục đích: Duy tự hiểu logic toán học của từng metric và tương quan với ROAS — không dùng làm bằng chứng kết quả kinh doanh
> Nguồn gốc công thức: định nghĩa Meta Ads; tương quan ROAS là suy luận toán học từ công thức gốc

---

## Quy ước chung

| Ký hiệu | Ý nghĩa |
|---|---|
| CTR, Rate | Dạng thập phân: 2% = 0,02 |
| `r` | Một Result indicator cụ thể (ví dụ: Purchase, Messaging Conversation) |
| AOV | Average Order Value = Purchases Conversion Value / Purchases |
| Mỗi dòng | Một công thức riêng — không cộng các dòng lại |

> ⚠ **ROAS Meta ≠ ROAS Business:** ROAS Meta tính trên `Purchases Conversion Value` do Meta ghi nhận theo attribution setting. Không đồng nghĩa doanh thu thực tế của doanh nghiệp. Công thức ROAS Business của Joycat chưa được khai báo — To be updated.

---

## Bảng tổng hợp: Mỗi metric tương quan với ROAS thế nào?

> Đọc nhanh trước khi vào chi tiết từng nhóm. Công thức gốc: `ROAS = Purchases Conversion Value / Amount Spent`

| Metric | Chiều tác động | Vì sao |
|---|---|---|
| **CPM** ↑ | ROAS ↓ | CPM tăng → tốn tiền hơn để đạt cùng lượng impression → Cost per Purchase tăng → ROAS giảm |
| **CTR (link)** ↑ | ROAS ↑ | CTR cao → CPC giảm → Cost per Purchase giảm → ROAS tăng |
| **CPC (link)** ↑ | ROAS ↓ | CPC tăng → cần nhiều tiền hơn cho mỗi link click → Cost per Purchase tăng → ROAS giảm |
| **Tỷ lệ Link Click → Mess** ↑ | ROAS ↑ | Nhiều click chuyển thành hội thoại hơn → Cost per Mess giảm → Cost per Purchase giảm → ROAS tăng |
| **Tỷ lệ Mess → Purchase** ↑ | ROAS ↑ | Closing rate cao → Cost per Purchase giảm → ROAS tăng |
| **AOV** ↑ | ROAS ↑ | Mỗi đơn giá trị cao hơn → Purchases Conversion Value tăng → ROAS tăng |
| **Impressions / Reach** | Gián tiếp | Không trực tiếp tác động ROAS; ảnh hưởng qua CPM và Purchase Rate |
| **Frequency** ↑ (quá cao) | ROAS ↓ rủi ro | Tần suất quá cao → audience mệt mỏi → CTR giảm → Cost per Purchase tăng → ROAS giảm |

**Công thức toàn phễu:**
```
ROAS = (CTR (link) / CPM × 1.000) × (Tỷ lệ Click→Mess) × (Tỷ lệ Mess→Purchase) × AOV
```
Mỗi bước trong phễu đều nhân vào ROAS. Bước nào yếu sẽ kéo toàn bộ phễu xuống.

---

## 1. Impressions

Impressions là tổng số lần quảng cáo được hiển thị.

| Công thức | Giải thích |
|---|---|
| `Impressions = Reach × Frequency` | Tổng lần hiển thị = Số người tiếp cận × Tần suất trung bình |
| `Impressions = Amount Spent × 1.000 / CPM` | Tiền bỏ ra mua được bao nhiêu nghìn lần hiển thị |
| `Impressions = Clicks (all) / CTR (all)` | Từ click và tỷ lệ click tổng suy ra lần hiển thị |
| `Impressions = Link Clicks / CTR (link)` | Từ link click và tỷ lệ link click suy ra lần hiển thị |
| `Impressions = Messaging Conversations Started / Messaging Conversation Rate` | |
| `Impressions = New Messaging Contacts / New Messaging Contact Rate trên Impression` | |
| `Impressions = Purchases / Purchase Rate trên Impression` | |
| `Impressions = Results (r) / Result Rate (r)` | Tổng quát cho bất kỳ Result indicator nào |

**Điểm cốt lõi:** Impressions là mẫu số chung. Mọi Rate "trên Impression" = tử số / Impressions. Khi Impressions tăng mà tử số không tăng tương ứng, Rate sẽ giảm.

**↔ Liên hệ ROAS:** `ROAS = Purchase Rate (Imp) × AOV × 1.000 / CPM` — Impressions là cầu nối giữa ngân sách và đơn hàng. Tăng Impressions mà không cải thiện Purchase Rate hoặc AOV thì ROAS không tăng.

---

## 2. Reach

Reach là số người duy nhất đã thấy quảng cáo ít nhất một lần.

| Công thức | Giải thích |
|---|---|
| `Reach = Impressions / Frequency` | Số người = Tổng lần hiển thị / Tần suất trung bình |
| `Reach = Amount Spent × 1.000 / (CPM × Frequency)` | Chi phí điều chỉnh theo tần suất |
| `Reach = Clicks (all) / (CTR (all) × Frequency)` | Từ click suy ngược ra người tiếp cận |
| `Reach = Link Clicks / (CTR (link) × Frequency)` | |
| `Reach = Messaging Conversations Started / (Messaging Conversation Rate × Frequency)` | |
| `Reach = New Messaging Contacts / (New Messaging Contact Rate trên Impression × Frequency)` | |
| `Reach = Purchases / (Purchase Rate trên Impression × Frequency)` | |
| `Reach = Results (r) / (Result Rate (r) × Frequency)` | |
| `Reach = Amount Spent × 1.000 / Cost per 1.000 People Reached` | Dùng khi có chỉ số CPR |

**Điểm cốt lõi:** Reach ≤ Impressions luôn luôn. Frequency = Impressions / Reach. Tăng Reach mà giữ nguyên budget → Frequency giảm.

**↔ Liên hệ ROAS:** Reach và Frequency không trực tiếp xuất hiện trong công thức ROAS. Tuy nhiên Frequency quá cao → audience mệt mỏi → CTR giảm → Cost per Purchase tăng → ROAS giảm. Frequency quá thấp → chưa đủ lần tiếp xúc để tạo hành động.

---

## 3. Click

### 3a. Clicks (all) — toàn bộ click

Gồm link click, click vào ảnh, tên page, xem thêm, v.v.

| Công thức | Giải thích |
|---|---|
| `Clicks (all) = Impressions × CTR (all)` | |
| `Clicks (all) = Amount Spent / CPC (all)` | |
| `CTR (all) = Clicks (all) / Impressions` | |
| `CPC (all) = Amount Spent / Clicks (all)` | |
| `CPM = CTR (all) × CPC (all) × 1.000` | CPM suy từ CTR và CPC |

### 3b. Link Clicks — click vào link dẫn ra ngoài hoặc Messenger

| Công thức | Giải thích |
|---|---|
| `Link Clicks = Impressions × CTR (link)` | |
| `Link Clicks = Amount Spent / CPC (link)` | |
| `Link Clicks = Clicks (all) × Tỷ trọng Link Click` | Phần link click trong tổng click |
| `Link Clicks = Messaging Conversations Started / Tỷ lệ Link Click → Mess` | Suy ngược từ số hội thoại |
| `Link Clicks = Purchases / Purchases per Link Click` | Suy ngược từ số đơn |
| `CTR (link) = Link Clicks / Impressions` | |
| `CPC (link) = Amount Spent / Link Clicks` | |
| `CPM = CTR (link) × CPC (link) × 1.000` | |

### 3c. Tỷ lệ phụ

| Công thức | Giải thích |
|---|---|
| `Tỷ trọng Link Click = Link Clicks / Clicks (all)` | Phần click có hành động dẫn đến đích |
| `Purchases per Link Click = Purchases / Link Clicks` | Tỷ lệ chuyển đổi từ click sang đơn |

**Điểm cốt lõi:** Link Clicks ≤ Clicks (all) luôn luôn. Tỷ trọng thấp → nhiều click vô ích. CPC (link) thường cao hơn CPC (all).

**↔ Liên hệ ROAS:** `ROAS = Purchases per Link Click × AOV / CPC (link)` — CPC (link) là chi phí bước đầu vào phễu chuyển đổi. CPC thấp + Purchases per Link Click cao = ROAS tốt từ góc nhìn click. Tỷ trọng Link Click thấp khiến ngân sách bị lãng phí vào những click không dẫn đến hành động.

---

## 4. Mess (Messaging)

Joycat dùng Messenger làm kênh chuyển đổi chính. Phễu: Impression → Link Click → Messaging Conversation → New Contact → Purchase.

### 4a. Messaging Conversations Started

| Công thức | Giải thích |
|---|---|
| `Messaging Conversations Started = Amount Spent / Cost per Messaging Conversation` | |
| `Messaging Conversations Started = Impressions × Messaging Conversation Rate` | |
| `Messaging Conversations Started = Link Clicks × Tỷ lệ Link Click → Mess` | |
| `Messaging Conversations Started = New Messaging Contacts / New Contact Rate trên Mess` | |
| `Messaging Conversations Started = Purchases / Tỷ lệ Mess → Purchase` | |

### 4b. Các tỷ lệ Mess

| Công thức | Giải thích |
|---|---|
| `Messaging Conversation Rate = Messaging Conversations Started / Impressions` | |
| `Tỷ lệ Link Click → Mess = Messaging Conversations Started / Link Clicks` | |
| `Cost per Messaging Conversation = Amount Spent / Messaging Conversations Started` | |
| `Cost per Messaging Conversation = CPM / (Messaging Conversation Rate × 1.000)` | |
| `Cost per Messaging Conversation = CPC (link) / Tỷ lệ Link Click → Mess` | |

### 4c. New Messaging Contacts

| Công thức | Giải thích |
|---|---|
| `New Messaging Contacts = Amount Spent / Cost per New Messaging Contact` | |
| `New Messaging Contacts = Messaging Conversations Started × New Contact Rate trên Mess` | |
| `New Contact Rate trên Mess = New Messaging Contacts / Messaging Conversations Started` | Phần hội thoại là người mới |
| `Cost per New Messaging Contact = Amount Spent / New Messaging Contacts` | |
| `Cost per New Messaging Contact = Cost per Messaging Conversation / New Contact Rate trên Mess` | |

**Điểm cốt lõi:** New Contact Rate thấp → đang nhắn lại với người cũ nhiều, không mở rộng tệp mới.

**↔ Liên hệ ROAS:** `ROAS = Tỷ lệ Mess→Purchase × AOV / Cost per Mess` — Mess là bước quan trọng nhất trong phễu Joycat vì đây là nơi sale xử lý và chốt đơn. Closing rate (Tỷ lệ Mess→Purchase) thấp sẽ kéo ROAS xuống ngay cả khi CPM và CTR tốt. Cost per Mess cao thường do CTR link thấp hoặc Tỷ lệ Link Click→Mess thấp.

---

## 5. Purchase

Trong Joycat: **Purchase = Order** (cậu Sinh xác nhận 2026-08-26/27). Ngoại lệ chưa xác nhận.

> ⚠ Purchases và Purchases Conversion Value trong Meta ghi nhận theo attribution setting — không đồng nghĩa đơn hàng thực tế trong hệ thống doanh nghiệp.

### 5a. Purchases

| Công thức | Giải thích |
|---|---|
| `Purchases = Amount Spent / Cost per Purchase` | |
| `Purchases = Impressions × Purchase Rate trên Impression` | |
| `Purchases = Link Clicks × Purchases per Link Click` | |
| `Purchases = Messaging Conversations Started × Tỷ lệ Mess → Purchase` | |
| `Purchases = Purchases Conversion Value / AOV` | |

### 5b. Các tỷ lệ Purchase

| Công thức | Giải thích |
|---|---|
| `Purchase Rate trên Impression = Purchases / Impressions` | |
| `Purchases per Link Click = Purchases / Link Clicks` | |
| `Tỷ lệ Mess → Purchase = Purchases / Messaging Conversations Started` | Closing rate |
| `Cost per Purchase = Amount Spent / Purchases` | |
| `Cost per Purchase = CPM / (Purchase Rate trên Impression × 1.000)` | |
| `Cost per Purchase = CPC (link) / Purchases per Link Click` | |
| `Cost per Purchase = Cost per Messaging Conversation / Tỷ lệ Mess → Purchase` | |

### 5c. Purchase Conversion Value và ROAS Meta

| Công thức | Giải thích |
|---|---|
| `Purchases Conversion Value = Purchases × AOV` | |
| `AOV = Purchases Conversion Value / Purchases` | |
| `Purchase ROAS Meta = Purchases Conversion Value / Amount Spent` | ROAS theo cách Meta tính |

---

## 6. CPM — CPC — CTR

Ba chỉ số tạo thành tam giác — biết hai cái tính được cái thứ ba.

### Theo Clicks (all)

| Công thức |
|---|
| `CPM = CTR (all) × CPC (all) × 1.000` |
| `CPC (all) = CPM / (CTR (all) × 1.000)` |
| `CTR (all) = CPM / (CPC (all) × 1.000)` |

### Theo Link Clicks

| Công thức |
|---|
| `CPM = CTR (link) × CPC (link) × 1.000` |
| `CPC (link) = CPM / (CTR (link) × 1.000)` |
| `CTR (link) = CPM / (CPC (link) × 1.000)` |

**Điểm cốt lõi:** CPM = chi phí tiếp cận thị trường (đấu giá, audience, thời điểm). CTR = chất lượng quảng cáo (creative, message). CPC = kết quả của cả hai.

**↔ Liên hệ ROAS:** CPM là điểm xuất phát của toàn bộ phễu. `ROAS = Purchase Rate (Imp) × AOV × 1.000 / CPM` — CPM tăng mà Purchase Rate và AOV không đổi thì ROAS giảm thẳng. CTR cao giúp bù CPM bằng cách hạ CPC. Tối ưu CPM mà làm hỏng audience chất lượng sẽ làm Purchase Rate giảm nhiều hơn mức CPM tiết kiệm được.

---

## 7. Tương quan → ROAS Meta

> Mục đích: nhìn thấy ROAS phụ thuộc vào metric nào và khi thay đổi metric đó thì ROAS thay đổi theo chiều nào.

**Gốc:** `Purchase ROAS Meta = Purchases Conversion Value / Amount Spent`

> ⚠ ROAS Meta ≠ ROAS Business (cậu Sinh xác nhận 2026-08-26/27). Công thức ROAS Business chưa khai báo — To be updated.

---

### 7a. Góc nhìn Impression

```
ROAS = Purchase Rate (Imp) × AOV × 1.000 / CPM
```

| Biến | Tăng → ROAS | Giảm → ROAS |
|---|---|---|
| Purchase Rate (Imp) | ↑ Tăng | ↓ Giảm |
| AOV | ↑ Tăng | ↓ Giảm |
| CPM | ↓ Giảm | ↑ Tăng |

**Biến đổi ngược:**
- `Purchase Rate cần thiết = ROAS mục tiêu × CPM / (AOV × 1.000)`
- `CPM tối đa cho phép = Purchase Rate × AOV × 1.000 / ROAS mục tiêu`

---

### 7b. Góc nhìn Click

```
ROAS = Purchases per Link Click × AOV / CPC (link)
```

| Biến | Tăng → ROAS | Giảm → ROAS |
|---|---|---|
| Purchases per Link Click | ↑ Tăng | ↓ Giảm |
| AOV | ↑ Tăng | ↓ Giảm |
| CPC (link) | ↓ Giảm | ↑ Tăng |

**Biến đổi ngược:**
- `Purchases per Link Click cần thiết = ROAS mục tiêu × CPC (link) / AOV`
- `CPC (link) tối đa cho phép = Purchases per Link Click × AOV / ROAS mục tiêu`

---

### 7c. Góc nhìn Mess

```
ROAS = Tỷ lệ Mess → Purchase × AOV / Cost per Messaging Conversation
```

| Biến | Tăng → ROAS | Giảm → ROAS |
|---|---|---|
| Tỷ lệ Mess → Purchase (closing rate) | ↑ Tăng | ↓ Giảm |
| AOV | ↑ Tăng | ↓ Giảm |
| Cost per Messaging Conversation | ↓ Giảm | ↑ Tăng |

**Biến đổi ngược:**
- `Closing rate cần thiết = ROAS mục tiêu × Cost per Mess / AOV`
- `Cost per Mess tối đa = Closing rate × AOV / ROAS mục tiêu`

---

### 7d. Góc nhìn Chi phí — đơn giản nhất

```
ROAS = AOV / Cost per Purchase
```

| Biến | Tăng → ROAS | Giảm → ROAS |
|---|---|---|
| AOV | ↑ Tăng | ↓ Giảm |
| Cost per Purchase | ↓ Giảm | ↑ Tăng |

**Biến đổi ngược:**
- `Cost per Purchase tối đa = AOV / ROAS mục tiêu`
- `AOV tối thiểu cần = ROAS mục tiêu × Cost per Purchase`

**Ví dụ số:**

| ROAS mục tiêu | AOV | Cost per Purchase tối đa |
|---|---|---|
| 2 | 150.000đ | 75.000đ |
| 3 | 150.000đ | 50.000đ |
| 4 | 150.000đ | 37.500đ |
| 3 | 200.000đ | 66.667đ |

---

### 7e. Tóm tắt 3 đòn bẩy ROAS

```
ROAS = f(Tỷ lệ chuyển đổi qua phễu × AOV / Chi phí mỗi bước)
```

| Đòn bẩy | Metric tác động |
|---|---|
| **(1) Tỷ lệ chuyển đổi qua phễu** | CTR (link), Tỷ lệ Click→Mess, Closing rate (Mess→Purchase) |
| **(2) AOV — Giá trị đơn hàng** | AOV, Purchases Conversion Value |
| **(3) Chi phí mỗi bước** | CPM, CPC (link), Cost per Mess, Cost per Purchase |

> **Nguyên tắc:** ROAS chỉ cải thiện bền vững khi cả 3 đòn bẩy được cân bằng. Tối ưu một bước mà làm hại bước khác có thể không cải thiện ROAS tổng — ví dụ: hạ CPM bằng cách hạ chất lượng audience có thể làm Purchase Rate giảm mạnh hơn mức tiết kiệm được.

---

## Sơ đồ phễu tổng quát

```
Amount Spent
    ↓ ÷ CPM × 1.000
Impressions
    ↓ × CTR (link)
Link Clicks
    ↓ × Tỷ lệ Link Click → Mess
Messaging Conversations Started
    ↓ × Tỷ lệ Mess → Purchase
Purchases
    ↓ × AOV
Purchases Conversion Value
    ↓ ÷ Amount Spent
ROAS Meta
```

---

## Giới hạn cần ghi nhớ

| Điểm | Nội dung |
|---|---|
| ROAS Meta ≠ doanh thu | Purchases Conversion Value do Meta ghi nhận theo attribution, không phải GMV business |
| Purchase ≠ đơn xác nhận | Meta ghi nhận theo cửa sổ attribution; cần đối chiếu hệ thống đơn hàng |
| AOV trong file này | Giá trị Meta ghi nhận, chưa chắc bằng AOV thực tế hệ thống Joycat |
| Công thức ROAS Business | Chưa được cậu Sinh khai báo — To be updated |
| File này | Phục vụ Duy tự hiểu; không dùng làm bằng chứng kết quả kinh doanh |
