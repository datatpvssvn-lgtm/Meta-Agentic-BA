## AHP và MAHP — Phương pháp phân tích thứ bậc để tính trọng số ưu tiên

## 1\. Tài liệu này giúp mình làm gì?

Tài liệu này giải thích cách dùng:

*   `AHP — Analytic Hierarchy Process — Phương pháp phân tích thứ bậc`.
*   `MAHP — Modified Analytic Hierarchy Process — Phương pháp phân tích thứ bậc cải tiến`.

Hai phương pháp giúp biến nhận định định tính như:

\> Facebook quan trọng hơn Instagram, còn Instagram quan trọng hơn WhatsApp.

thành các trọng số định lượng:

```plaintext
a = Trọng số Facebook
b = Trọng số Instagram
c = Trọng số WhatsApp
```

Trong đó:

```plaintext
a + b + c = 1
```

Hoặc:

```plaintext
a + b + c = 100%
```

Nguồn chính của tài liệu:

*   [Pascoe và cộng sự (2024) — A Modified Analytic Hierarchy Process Suitable for Online Survey Preference Elicitation](https://www.mdpi.com/1999-4893/17/6/245)
*   DOI: [10.3390/a17060245](https://doi.org/10.3390/a17060245)

Phần phương pháp AHP và MAHP bám theo bài nghiên cứu. Phần Facebook–Instagram–WhatsApp là ví dụ minh họa cho bài toán Ads Cost, không phải kết luận của bài nghiên cứu.

## 2\. Hiểu AHP bằng lời thường

Giả sử mình phải chia ngân sách cho ba nền tảng:

*   Facebook.
*   Instagram.
*   WhatsApp.

Nếu hỏi trực tiếp:

\> Facebook nên nhận chính xác bao nhiêu phần trăm ngân sách?

thì người trả lời có thể khó đưa ra con số.

AHP đổi câu hỏi lớn đó thành những câu hỏi nhỏ hơn:

1.  Facebook quan trọng hơn Instagram bao nhiêu?
2.  Facebook quan trọng hơn WhatsApp bao nhiêu?
3.  Instagram quan trọng hơn WhatsApp bao nhiêu?

Sau đó AHP dùng toán học để chuyển ba câu trả lời thành ba trọng số.

Nói ngắn gọn:

```plaintext
Nhận định của người ra quyết định
→ So sánh từng cặp
→ Ma trận so sánh
→ Tính điểm
→ Chuẩn hóa
→ Trọng số ưu tiên
```

Điểm quan trọng: AHP đo **mức ưu tiên của người ra quyết định**. Nó không tự chứng minh nền tảng nào tạo ra ROAS cao hơn trong thực tế.

## 3\. Cấu trúc phân cấp của AHP

AHP thường có ba lớp:

```plaintext
MỤC TIÊU
→ TIÊU CHÍ
→ PHƯƠNG ÁN
```

Áp dụng cho Ads Cost:

```plaintext
MỤC TIÊU
Phân bổ Ads Cost phù hợp

→ TIÊU CHÍ
Mức phù hợp với khách hàng
Mức phù hợp với sản phẩm
Mức phù hợp với content
Khả năng hỗ trợ hành động mua

→ PHƯƠNG ÁN
Facebook
Instagram
WhatsApp
```

Nếu bài toán còn đơn giản, mình có thể bỏ lớp tiêu chí và so sánh trực tiếp ba nền tảng dưới cùng một mục tiêu.

## 4\. Thang điểm so sánh của AHP

AHP truyền thống dùng thang từ `1` đến `9`:

| Điểm | Cách hiểu đơn giản |
| --- | --- |
| 1 | Hai phương án quan trọng ngang nhau |
| 3 | Phương án này quan trọng hơn vừa phải |
| 5 | Quan trọng hơn rõ rệt |
| 7 | Quan trọng hơn rất nhiều |
| 9 | Gần như ưu tiên tuyệt đối |
| 2, 4, 6, 8 | Mức trung gian giữa hai mức liền kề |

Ví dụ:

```plaintext
Facebook so với Instagram = 3
```

Có nghĩa là:

\> Trong mục tiêu đang xét, Facebook được đánh giá quan trọng hơn Instagram ở mức vừa phải.

Chiều ngược lại phải là nghịch đảo:

```plaintext
Instagram so với Facebook = 1/3
```

Nếu:

```plaintext
Facebook so với WhatsApp = 5
```

thì:

```plaintext
WhatsApp so với Facebook = 1/5
```

Quy tắc nghịch đảo này giữ cho ma trận so sánh có cùng một logic ở cả hai chiều.

## 5\. Số câu hỏi cần trả lời

Với `n` phương án, số cặp cần so sánh là:

```plaintext
Số cặp so sánh
= n × (n - 1) / 2
```

Ví dụ:

```plaintext
3 nền tảng → 3 cặp
4 nền tảng → 6 cặp
5 nền tảng → 10 cặp
```

Nếu so sánh `25` sản phẩm trực tiếp với nhau:

```plaintext
25 × 24 / 2 = 300 cặp
```

Đây là lý do AHP truyền thống trở nên dài và dễ tạo câu trả lời mâu thuẫn khi số phương án tăng. Bài nghiên cứu của Pascoe và cộng sự đề xuất MAHP để giảm gánh nặng này trong khảo sát online.

## 6\. Ví dụ AHP cho Facebook, Instagram và WhatsApp

### 6.1. Khóa mục tiêu trước

Mục tiêu ví dụ:

```plaintext
Xác định mức ưu tiên phân bổ Ads Cost
cho Facebook, Instagram và WhatsApp
```

Nếu đổi mục tiêu, trọng số cũng có thể đổi.

Ví dụ:

*   Mục tiêu mở rộng nhận biết có thể ưu tiên một nền tảng.
*   Mục tiêu tạo cuộc hội thoại có thể ưu tiên nền tảng khác.
*   Mục tiêu chăm sóc khách đã quan tâm có thể cho WhatsApp vai trò lớn hơn.

Không sử dụng một bộ trọng số cho mọi mục tiêu nếu vai trò của nền tảng thay đổi.

### 6.2. Trả lời ba câu hỏi

Giả sử owner đánh giá:

```plaintext
Facebook quan trọng gấp 3 lần Instagram
Facebook quan trọng gấp 5 lần WhatsApp
Instagram quan trọng gấp 2 lần WhatsApp
```

Đặt:

```plaintext
x = 3
y = 5
z = 2
```

Trong đó:

```plaintext
x = Facebook / Instagram
y = Facebook / WhatsApp
z = Instagram / WhatsApp
```

### 6.3. Lập ma trận so sánh

| So sánh | Facebook | Instagram | WhatsApp |
| --- | --- | --- | --- |
| Facebook | 1 | 3 | 5 |
| Instagram | 1/3 | 1 | 2 |
| WhatsApp | 1/5 | 1/2 | 1 |

Đường chéo luôn bằng `1`, vì một nền tảng được so với chính nó.

Phần dưới đường chéo là nghịch đảo của phần trên:

```plaintext
Facebook / Instagram = 3
→ Instagram / Facebook = 1/3
```

## 7\. Tính trọng số bằng Geometric Mean Method

Bài nghiên cứu sử dụng `Geometric Mean Method — GMM` để suy ra trọng số từ ma trận so sánh.

Với ba nền tảng, điểm của mỗi nền tảng bằng căn bậc ba của tích các số trên cùng một hàng.

### Hiểu công thức mũ `1/3`

`Geometric Mean` có tên tiếng Việt là **trung bình nhân**.

Công thức tổng quát của trung bình nhân:

```plaintext
Geometric Mean
= (Số 1 × Số 2 × ... × Số n)^(1/n)
```

Trong đó:

```plaintext
n = Số phần tử trong hàng
```

Ở ví dụ này mình có ba nền tảng:

```plaintext
Facebook
Instagram
WhatsApp
```

Vì vậy mỗi hàng trong ma trận có ba phần tử:

```plaintext
n = 3
```

Thế vào công thức:

```plaintext
Geometric Mean
= (Số 1 × Số 2 × Số 3)^(1/3)
```

Mũ `1/3` chính là căn bậc ba:

```plaintext
x^(1/3) = ∛x
```

Ví dụ hàng Facebook là:

```plaintext
[1, 3, 5]
```

Nên:

```plaintext
Geometric Mean Facebook
= (1 × 3 × 5)^(1/3)
= 15^(1/3)
= ∛15
≈ 2,466
```

Số mũ thay đổi theo số phương án đang so sánh:

```plaintext
3 phương án → mũ 1/3 → căn bậc ba
4 phương án → mũ 1/4 → căn bậc bốn
5 phương án → mũ 1/5 → căn bậc năm
```

Công thức này không xuất phát từ phép nhân ma trận. Nó là công thức trung bình nhân được áp dụng cho từng hàng của ma trận AHP.

Các phần tử AHP biểu diễn quan hệ tỷ lệ như `gấp 3 lần`, `gấp 5 lần` hoặc `bằng 1/3`. Vì đây là quan hệ nhân và chia nên GMM sử dụng trung bình nhân thay vì trung bình cộng.

Trong Excel, nếu ba phần tử của hàng nằm từ `B2` đến `D2`:

```plaintext
=GEOMEAN(B2:D2)
```

### 7.1. Điểm Facebook

```plaintext
Điểm Facebook
= (1 × 3 × 5)^(1/3)
≈ 2,4662
```

### 7.2. Điểm Instagram

```plaintext
Điểm Instagram
= ((1/3) × 1 × 2)^(1/3)
≈ 0,8736
```

### 7.3. Điểm WhatsApp

```plaintext
Điểm WhatsApp
= ((1/5) × (1/2) × 1)^(1/3)
≈ 0,4642
```

### 7.4. Tổng điểm

```plaintext
Tổng điểm
= 2,4662 + 0,8736 + 0,4642
≈ 3,8040
```

### 7.5. Chuẩn hóa thành trọng số

```plaintext
a
= Điểm Facebook / Tổng điểm
= 2,4662 / 3,8040
≈ 64,8%
```

```plaintext
b
= Điểm Instagram / Tổng điểm
= 0,8736 / 3,8040
≈ 23,0%
```

```plaintext
c
= Điểm WhatsApp / Tổng điểm
= 0,4642 / 3,8040
≈ 12,2%
```

Kiểm tra:

```plaintext
a + b + c
= 64,8% + 23,0% + 12,2%
= 100%
```

Kết quả này có nghĩa là:

\> Với mục tiêu và đánh giá đang dùng, Facebook nhận mức ưu tiên khoảng 64,8%, Instagram khoảng 23,0% và WhatsApp khoảng 12,2%.

Đây là **trọng số ưu tiên**, chưa phải kết quả hiệu quả quảng cáo đã được dữ liệu chứng minh.

## 8\. Công thức tổng quát của AHP

Với một hàng `i` có `n` phần tử:

```plaintext
Geometric Mean của hàng i
= (Phần tử 1 × Phần tử 2 × ... × Phần tử n)^(1/n)
```

Trọng số của phương án `i`:

```plaintext
Trọng số i
= Geometric Mean của hàng i
  / Tổng Geometric Mean của tất cả các hàng
```

Kết quả:

```plaintext
Tổng trọng số của tất cả phương án = 1
```

## 9\. Framework và rule để tự đánh trọng số mà không chấm tùy ý

AHP không loại bỏ judgment của con người. AHP chỉ biến judgment thành một quy trình có cấu trúc, có thể giải thích và kiểm tra lại.

Vì vậy, không nên bắt đầu bằng:

```plaintext
Facebook = 60%
Instagram = 30%
WhatsApp = 10%
```

hoặc:

```plaintext
Facebook quan trọng gấp 3 lần Instagram
```

nếu chưa nói rõ **quan trọng hơn theo tiêu chí nào, cho mục tiêu nào và dựa trên bằng chứng gì**.

Quy trình đúng nên là:

```plaintext
Mục tiêu
→ Tiêu chí đánh giá
→ Rubric chấm điểm
→ Điểm 1–9 của từng nền tảng
→ Chuyển điểm thành ma trận so sánh
→ Trọng số cục bộ theo từng tiêu chí
→ Trọng số của các tiêu chí
→ Trọng số tổng hợp a, b, c
→ Kiểm tra consistency và sensitivity
```

### 9.1. Bước 1 — Khóa đúng mục tiêu cần ưu tiên

Cùng một sản phẩm nhưng trọng số nền tảng có thể thay đổi khi mục tiêu thay đổi.

Ví dụ:

```plaintext
Mục tiêu A
= Phân bổ ngân sách để tạo cuộc hội thoại tư vấn mua cát mèo
```

khác với:

```plaintext
Mục tiêu B
= Phân bổ ngân sách để mở rộng nhận biết sản phẩm cát mèo
```

và cũng khác với:

```plaintext
Mục tiêu C
= Phân bổ ngân sách để tạo đơn hàng và GMV đã được business xác minh
```

Nếu chưa khóa mục tiêu, một nền tảng có thể được chấm cao vì mạnh về video nhưng lại bị hiểu nhầm là mạnh về tạo đơn hàng.

Rule:

*   Một bộ trọng số chỉ phục vụ một mục tiêu đã viết rõ.
*   Đổi mục tiêu thì phải chấm lại; không mang nguyên trọng số cũ sang.
*   Không trộn `publisher platform`, `destination` và `sales platform` trong cùng một bộ phương án.

### 9.2. Bước 2 — Chọn các tiêu chí làm căn cứ chấm điểm

Với bài toán ưu tiên Facebook, Instagram và WhatsApp, có thể bắt đầu bằng năm tiêu chí sau.

| Tiêu chí | Câu hỏi cần trả lời | Ví dụ bằng chứng có thể dùng |
| --- | --- | --- |
| Audience Fit | Nhóm khách mình cần có hiện diện và phản hồi trên nền tảng này không? | Quy mô audience, customer research, dữ liệu khách cũ, dữ liệu nền tảng |
| Product Fit | Đặc điểm sản phẩm có hợp cách người dùng khám phá và cân nhắc trên nền tảng không? | Mức cần tư vấn, tính trực quan, giá, chu kỳ mua, độ phức tạp của sản phẩm |
| Content Fit | Format nội dung hiện có có phù hợp với hành vi xem nội dung trên nền tảng không? | Video, image, UGC, livestream, catalogue, creative performance |
| Action Fit | Nền tảng có thuận lợi cho hành động mà mục tiêu đang cần không? | Xem video, click, nhắn tin, để lại lead, mua hàng |
| Operational Fit | Đội ngũ hiện tại có đủ khả năng vận hành và xử lý kết quả từ nền tảng không? | Năng lực sản xuất content, tốc độ trả lời, tracking, nhân sự, quy trình bán hàng |

Năm tiêu chí này là khung khởi đầu, không phải bộ tiêu chí đúng cho mọi ngành.

Ví dụ:

*   Thời trang có thể cần tăng trọng số của `Content Fit` và khả năng trình bày hình ảnh.
*   Sản phẩm cần tư vấn nhiều có thể cần tăng trọng số của `Action Fit` và `Operational Fit`.
*   Sản phẩm mua nhanh, giá thấp có thể cần nhấn mạnh độ phủ, creative và độ thuận tiện khi mua.

Rule chọn tiêu chí:

*   Mỗi tiêu chí phải đo một ý khác nhau.
*   Không đặt hai tiêu chí gần như trùng nghĩa rồi tính hai lần.
*   Tiêu chí phải có khả năng làm thay đổi quyết định phân bổ.
*   Nếu bỏ một tiêu chí mà quyết định không thay đổi và không mất thông tin quan trọng, tiêu chí đó có thể chưa cần thiết.

### 9.3. Bước 3 — Dùng rubric cố định để chấm điểm 1–9

Không chấm `7` chỉ vì “cảm giác khá hợp”. Mỗi mức điểm phải có ý nghĩa.

| Điểm | Ý nghĩa chung |
| --- | --- |
| 1 | Rất không phù hợp hoặc gần như không hỗ trợ mục tiêu |
| 3 | Phù hợp thấp; có thể dùng nhưng có hạn chế lớn |
| 5 | Phù hợp trung bình; đáp ứng được một phần mục tiêu |
| 7 | Phù hợp cao; có lợi thế rõ và có bằng chứng hỗ trợ |
| 9 | Phù hợp rất cao; là lựa chọn nổi trội cho mục tiêu đang xét |
| 2, 4, 6, 8 | Mức trung gian khi đánh giá nằm giữa hai mốc liền kề |

Rubric chi tiết cho từng tiêu chí:

| Tiêu chí | Điểm thấp `1–3` | Điểm giữa `4–6` | Điểm cao `7–9` |
| --- | --- | --- | --- |
| Audience Fit | Khách mục tiêu ít hiện diện hoặc chưa có bằng chứng | Có hiện diện nhưng độ phù hợp hoặc quy mô chưa rõ | Khách mục tiêu hiện diện rõ, đúng đặc điểm và có bằng chứng tốt |
| Product Fit | Hành vi trên nền tảng không hợp cách khách chọn sản phẩm | Có thể giới thiệu sản phẩm nhưng còn nhiều điểm cản trở | Nền tảng hỗ trợ tốt cách khách khám phá, so sánh hoặc hỏi về sản phẩm |
| Content Fit | Đội ngũ thiếu format phù hợp hoặc content hiện tại không hợp | Có một phần content dùng được nhưng chưa ổn định | Format chủ lực của nền tảng khớp mạnh với năng lực content hiện có |
| Action Fit | Hành động mục tiêu khó thực hiện hoặc bị đứt đoạn | Có thể tạo hành động nhưng còn ma sát | Nền tảng hỗ trợ trực tiếp và thuận lợi hành động mục tiêu |
| Operational Fit | Thiếu người, tracking hoặc quy trình xử lý | Có thể vận hành nhưng còn điểm nghẽn | Đội ngũ, tracking và quy trình xử lý đã sẵn sàng |

Mỗi điểm phải được ghi cùng tối thiểu:

```plaintext
Điểm
+ Lý do
+ Nguồn hoặc bằng chứng
+ Trạng thái bằng chứng
+ Người chấm
+ Ngày chấm
```

Trạng thái bằng chứng dùng một trong ba nhãn:

```plaintext
Đã xác minh từ dữ liệu
Owner judgment
To be updated
```

### 9.4. Bước 4 — Chấm từng nền tảng trên từng tiêu chí

Ví dụ minh họa dưới đây chỉ để thấy cấu trúc, **không phải điểm đã xác minh của Joycat**:

| Tiêu chí | Facebook | Instagram | WhatsApp |
| --- | --- | --- | --- |
| Audience Fit | 7 | 8 | 4 |
| Product Fit | 7 | 9 | 3 |
| Content Fit | 6 | 9 | 3 |
| Action Fit | 7 | 6 | 7 |
| Operational Fit | 8 | 7 | 5 |

Ví dụ cách ghi một điểm:

```plaintext
Nền tảng: Instagram
Tiêu chí: Content Fit
Điểm: 9
Lý do: Sản phẩm thời trang cần thể hiện hình ảnh và video; đội ngũ có sẵn creative phù hợp.
Nguồn: Content inventory và judgment của owner
Trạng thái: Owner judgment
Người chấm: [Tên]
Ngày chấm: [DD/MM/YYYY]
```

Không được lấy bảng ví dụ này làm trọng số thật nếu chưa có owner xác nhận.

### 9.5. Bước 5 — Dùng MAHP chuyển điểm thành so sánh từng cặp

Với hai nền tảng `i` và `j`, có điểm lần lượt là `s_i` và `s_j`:

Nếu `s_i &gt; s_j`:

```plaintext
a_ij
= s_i - s_j + 1
```

Nếu `s_i = s_j`:

```plaintext
a_ij = 1
```

Nếu `s_i &lt; s_j`:

```plaintext
a_ij
= 1 / (s_j - s_i + 1)
```

Ví dụ tại tiêu chí `Content Fit`:

```plaintext
Điểm Instagram = 9
Điểm Facebook = 6
```

Nên:

```plaintext
Instagram / Facebook
= 9 - 6 + 1
= 4
```

Chiều ngược lại:

```plaintext
Facebook / Instagram
= 1/4
```

Điểm cần nhớ:

\> Tỷ lệ `4` không được owner chấm trực tiếp. Nó được rule MAHP tạo ra từ chênh lệch giữa hai điểm đã có rubric.

### 9.6. Bước 6 — Tính trọng số cục bộ trong từng tiêu chí

Với mỗi tiêu chí, tạo một ma trận riêng cho Facebook, Instagram và WhatsApp. Sau đó dùng Geometric Mean Method ở phần 7 để tính:

```plaintext
Local weight Facebook
+ Local weight Instagram
+ Local weight WhatsApp
= 100%
```

Ví dụ kết quả của riêng tiêu chí `Content Fit` có thể là:

```plaintext
Local weight Facebook theo Content Fit
Local weight Instagram theo Content Fit
Local weight WhatsApp theo Content Fit
```

Đây mới chỉ là mức ưu tiên của ba nền tảng **trong một tiêu chí**, chưa phải trọng số cuối cùng.

### 9.7. Bước 7 — Đặt trọng số cho các tiêu chí

Có hai cách.

Cách đơn giản khi mới bắt đầu:

```plaintext
Audience Fit = 20%
Product Fit = 20%
Content Fit = 20%
Action Fit = 20%
Operational Fit = 20%
```

Cách đầy đủ hơn:

```plaintext
So sánh từng cặp năm tiêu chí bằng AHP
→ Tính trọng số w1, w2, w3, w4, w5
```

Điều kiện:

```plaintext
w1 + w2 + w3 + w4 + w5 = 100%
```

Không nên tự động coi năm tiêu chí quan trọng bằng nhau nếu mục tiêu đã cho thấy một số tiêu chí quan trọng hơn rõ rệt.

### 9.8. Bước 8 — Tổng hợp thành trọng số cuối cùng `a`, `b`, `c`

Gọi:

```plaintext
w1 = Trọng số Audience Fit
w2 = Trọng số Product Fit
w3 = Trọng số Content Fit
w4 = Trọng số Action Fit
w5 = Trọng số Operational Fit
```

Trọng số cuối cùng của Facebook:

```plaintext
a
= w1 × Local weight Facebook theo Audience Fit
+ w2 × Local weight Facebook theo Product Fit
+ w3 × Local weight Facebook theo Content Fit
+ w4 × Local weight Facebook theo Action Fit
+ w5 × Local weight Facebook theo Operational Fit
```

Trọng số cuối cùng của Instagram:

```plaintext
b
= w1 × Local weight Instagram theo Audience Fit
+ w2 × Local weight Instagram theo Product Fit
+ w3 × Local weight Instagram theo Content Fit
+ w4 × Local weight Instagram theo Action Fit
+ w5 × Local weight Instagram theo Operational Fit
```

Trọng số cuối cùng của WhatsApp:

```plaintext
c
= w1 × Local weight WhatsApp theo Audience Fit
+ w2 × Local weight WhatsApp theo Product Fit
+ w3 × Local weight WhatsApp theo Content Fit
+ w4 × Local weight WhatsApp theo Action Fit
+ w5 × Local weight WhatsApp theo Operational Fit
```

Kiểm tra:

```plaintext
a + b + c = 100%
```

Sau đó mới dùng:

```plaintext
Ads Cost Facebook = a × Tổng ngân sách
Ads Cost Instagram = b × Tổng ngân sách
Ads Cost WhatsApp = c × Tổng ngân sách
```

### 9.9. Bước 9 — Verify bộ điểm và trọng số

Một bộ điểm được xem là có cơ sở khi vượt qua đủ các lớp kiểm tra sau.

#### Kiểm tra 1 — Traceability

Mỗi điểm phải truy được về:

```plaintext
Mục tiêu
→ Tiêu chí
→ Rubric
→ Lý do
→ Nguồn hoặc người xác nhận
→ Ngày và phiên bản
```

#### Kiểm tra 2 — Không trộn tiêu chí

Khi chấm `Content Fit`, chỉ đánh giá độ phù hợp nội dung. Không cộng thêm lợi thế về audience hoặc khả năng chốt sale vào cùng điểm.

#### Kiểm tra 3 — Không đếm lợi thế hai lần

Ví dụ `khách trẻ dùng Instagram nhiều` không nên đồng thời được tính đầy đủ ở cả `Audience Fit` và `Content Fit` nếu hai điểm đều dựa trên đúng một bằng chứng đó.

#### Kiểm tra 4 — Consistency

Ma trận phải qua kiểm tra consistency ở phần 10. Consistency tốt chỉ chứng minh các đánh giá không mâu thuẫn lớn với nhau; nó không chứng minh đánh giá đúng với thị trường.

#### Kiểm tra 5 — Sensitivity

Tăng hoặc giảm từng điểm quan trọng `1` mức rồi tính lại.

```plaintext
Nếu thứ hạng nền tảng gần như không đổi
→ Trọng số tương đối ổn định
```

```plaintext
Nếu chỉ đổi 1 điểm mà thứ hạng đảo mạnh
→ Kết quả nhạy và chưa nên dùng như một quyết định chắc chắn
```

#### Kiểm tra 6 — Đối chiếu nhiều người

Nếu có nhiều owner hoặc chuyên gia:

*   Mỗi người chấm độc lập trước.
*   So sánh các điểm chênh lệch lớn.
*   Yêu cầu giải thích bằng tiêu chí và evidence.
*   Chỉ tổng hợp sau khi đã lưu được ý kiến gốc của từng người.

Không ép mọi người đồng ý bằng cách sửa điểm mà không lưu lịch sử.

#### Kiểm tra 7 — Đối chiếu dữ liệu sau vận hành

Khi đã có dữ liệu thực tế, so sánh:

```plaintext
Trọng số ưu tiên ban đầu
↔ Tỷ trọng ngân sách thực tế
↔ Kết quả Meta
↔ Kết quả business nếu có
```

Dữ liệu thực tế là đầu vào để review judgment ở vòng tiếp theo. Không tự động thay toàn bộ AHP weight bằng ROAS của một kỳ ngắn.

### 9.10. Mẫu bảng bắt buộc khi chấm điểm

| Mục tiêu | Nền tảng | Tiêu chí | Điểm | Lý do | Nguồn/bằng chứng | Trạng thái | Owner | Ngày |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| \[Mục tiêu\] | Facebook | Audience Fit | \[1–9\] | \[Giải thích\] | \[Nguồn\] | \[Đã xác minh/Owner judgment/To be updated\] | \[Tên\] | \[Ngày\] |

### 9.11. Rule ngắn gọn để nhớ

```plaintext
Không đánh trực tiếp a, b, c.
Không đánh tỷ lệ gấp 3, gấp 5 nếu chưa có tiêu chí.

Phải đi theo đường:
Mục tiêu
→ Tiêu chí
→ Rubric 1–9
→ Điểm có lý do và nguồn
→ MAHP/AHP
→ Local weight
→ Trọng số tiêu chí
→ a, b, c
→ Consistency
→ Sensitivity
→ Owner duyệt
```

Kết luận:

\> Framework không làm judgment trở thành sự thật khách quan. Nó làm judgment minh bạch, nhất quán, có thể tranh luận và có thể cập nhật khi xuất hiện bằng chứng mới.

## 10\. Kiểm tra tính nhất quán

### 10.1. Hiểu bằng lời thường

Giả sử mình nói:

```plaintext
Facebook quan trọng gấp 3 lần Instagram
Instagram quan trọng gấp 2 lần WhatsApp
```

Theo logic bắc cầu, Facebook nên quan trọng hơn WhatsApp khoảng:

```plaintext
3 × 2 = 6 lần
```

Nếu sau đó mình lại nói:

```plaintext
Facebook chỉ quan trọng ngang WhatsApp
```

thì ba nhận định đang mâu thuẫn nhau.

AHP không yêu cầu con người phải nhất quán tuyệt đối, nhưng cần kiểm tra xem mức mâu thuẫn có quá lớn hay không.

### 10.2. Ngưỡng kỹ thuật

Bài nghiên cứu sử dụng `Geometric Consistency Index — GCI`, sau đó so sánh với giá trị ngẫu nhiên để tạo `Consistency Ratio — CR`.

Quy tắc thường dùng trong bài:

```plaintext
CR ≤ 0,1
→ Mức nhất quán có thể chấp nhận
```

Với GCI, bài nghiên cứu nêu ngưỡng tương ứng `CR = 0,1`:

```plaintext
n = 3 → GCI = 0,315
n = 4 → GCI = 0,353
n &gt; 4 → GCI = 0,370
```

Ví dụ Facebook–Instagram–WhatsApp ở trên có:

```plaintext
GCI ≈ 0,0111
```

Vì:

```plaintext
0,0111 &lt; 0,315
```

nên bộ so sánh ví dụ có mức nhất quán tốt.

### 10.3. Công thức GCI dành cho phần triển khai

```plaintext
GCI
= 2 / ((n - 1) × (n - 2))
  × Tổng của [ln(a_ij × w_j / w_i)]²
```

Trong đó:

*   `n`: số phương án.
*   `a_ij`: mức so sánh phương án `i` với phương án `j`.
*   `w_i`, `w_j`: trọng số của hai phương án.

User mới học không cần tự tính GCI bằng tay. Khi triển khai Excel hoặc code, nên để công thức tự kiểm tra và chỉ yêu cầu owner xem lại khi mức không nhất quán vượt ngưỡng.

## 11\. MAHP khác AHP như thế nào?

### AHP truyền thống

User trả lời từng cặp:

```plaintext
Facebook so với Instagram?
Facebook so với WhatsApp?
Instagram so với WhatsApp?
```

Ưu điểm:

*   Dễ tập trung vào hai phương án tại một thời điểm.
*   Phù hợp khi số phương án nhỏ.
*   Có thể kiểm tra mức nhất quán giữa các câu trả lời.

Hạn chế:

*   Số câu hỏi tăng nhanh khi có nhiều phương án.
*   User có thể quên những gì mình đã trả lời ở cặp trước.
*   Dễ xuất hiện mâu thuẫn khi khảo sát dài.

### MAHP trong bài nghiên cứu

Thay vì trả lời từng cặp, user cho điểm tất cả phương án trên cùng một thang `1–9`.

Ví dụ:

```plaintext
Facebook  = 9
Instagram = 7
WhatsApp  = 5
```

Sau đó hệ thống chuyển chênh lệch điểm thành các phần tử của ma trận AHP.

Nếu điểm `i` lớn hơn điểm `j`:

```plaintext
a_ij
= Điểm i - Điểm j + 1
```

Nếu hai điểm bằng nhau:

```plaintext
a_ij = 1
```

Nếu điểm `i` nhỏ hơn điểm `j`:

```plaintext
a_ij
= 1 / (Điểm j - Điểm i + 1)
```

Ví dụ Facebook `9`, Instagram `7`:

```plaintext
Facebook / Instagram
= 9 - 7 + 1
= 3
```

Chiều ngược lại:

```plaintext
Instagram / Facebook
= 1/3
```

Ví dụ Facebook `9`, WhatsApp `5`:

```plaintext
Facebook / WhatsApp
= 9 - 5 + 1
= 5
```

Sau khi tạo ma trận, MAHP vẫn dùng Geometric Mean Method để tính trọng số giống phần AHP ở trên.

## 12\. Khi nào dùng AHP, khi nào dùng MAHP?

### Dùng AHP truyền thống khi

*   Chỉ có ít phương án.
*   Owner có thể ngồi cùng analyst để rà lại câu trả lời.
*   Cần làm rõ từng cặp và kiểm tra inconsistency.

Với ba nền tảng Facebook–Instagram–WhatsApp, AHP chỉ cần ba câu hỏi nên vẫn khá gọn.

### Dùng MAHP khi

*   Có nhiều phương án hoặc tiêu chí.
*   Khảo sát nhiều người qua form online.
*   Khó quay lại hỏi từng người khi câu trả lời mâu thuẫn.
*   Muốn giảm số lượng câu hỏi và cognitive load.

Nghiên cứu của Pascoe và cộng sự cho thấy MAHP tạo kết quả tương tự AHP ở bài toán đơn giản có hai hoặc ba phương án, đồng thời gặp ít vấn đề inconsistency hơn khi số phương án tăng trong thử nghiệm của họ. Đây là kết quả của nghiên cứu cụ thể, không có nghĩa MAHP luôn thay thế được AHP trong mọi tình huống.

## 13\. Công thức Excel cơ bản

Giả sử ma trận nằm ở vùng `B2:D4`:

|   | Facebook | Instagram | WhatsApp |
| --- | --- | --- | --- |
| Facebook | 1 | 3 | 5 |
| Instagram | 1/3 | 1 | 2 |
| WhatsApp | 1/5 | 1/2 | 1 |

### Geometric Mean từng hàng

Tại `E2`:

```plaintext
=GEOMEAN(B2:D2)
```

Kéo công thức xuống `E4`.

### Chuẩn hóa thành trọng số

Tại `F2`:

```plaintext
=E2/SUM($E$2:$E$4)
```

Kéo công thức xuống `F4` và định dạng cột `F` thành phần trăm.

### Chuyển điểm MAHP thành giá trị so sánh

Nếu điểm phương án `i` nằm ở `B2` và điểm phương án `j` nằm ở `B3`:

```plaintext
=IF(B2&gt;B3,B2-B3+1,1/(B3-B2+1))
```

Nếu hai điểm bằng nhau, công thức tự trả về `1`.

## 14\. Đưa trọng số AHP vào phân bổ Ads Cost

Giả sử kết quả AHP là:

```plaintext
a = 64,8%
b = 23,0%
c = 12,2%
```

Và tổng ngân sách:

```plaintext
B = 100.000.000 VND
```

Phân bổ:

```plaintext
Ads Cost Facebook
= a × B
= 64,8% × 100.000.000
= 64.800.000 VND
```

```plaintext
Ads Cost Instagram
= b × B
= 23,0% × 100.000.000
= 23.000.000 VND
```

```plaintext
Ads Cost WhatsApp
= c × B
= 12,2% × 100.000.000
= 12.200.000 VND
```

Kiểm tra:

```plaintext
Ads Cost Facebook
+ Ads Cost Instagram
+ Ads Cost WhatsApp
= 100.000.000 VND
```

Đây là **phân bổ ngân sách theo preference weight**.

Không dùng công thức sau làm Tổng Ads Cost thực tế:

```plaintext
a × Ads Cost Facebook
+ b × Ads Cost Instagram
+ c × Ads Cost WhatsApp
```

Vì số Ads Cost từng nền tảng đã là kết quả sau khi phân bổ. Nhân trọng số thêm lần nữa sẽ tạo một chỉ số ưu tiên, không phải số tiền thực tế.

## 15\. AHP không trả lời được điều gì?

AHP không tự trả lời:

*   Facebook có ROAS thực tế cao hơn Instagram hay không.
*   Tăng ngân sách Facebook có làm GMV tăng hay không.
*   Campaign nào đang hoạt động tốt.
*   Attribution của Meta có đúng với đơn hàng business hay không.
*   Trọng số ban đầu có còn phù hợp sau khi thị trường thay đổi hay không.

AHP trả lời:

\> Dựa trên mục tiêu và judgment đã khai báo, mức ưu tiên tương đối của từng phương án là bao nhiêu?

Vì vậy cần phân biệt:

```plaintext
AHP weight
= Mức ưu tiên do người ra quyết định cung cấp
```

```plaintext
Performance metric
= Kết quả quan sát từ dữ liệu quảng cáo và dữ liệu business
```

Hai phần có thể được đối chiếu sau này, nhưng không được coi là một.

## 16\. Quy trình đề xuất cho case Joycat

### Bước 1 — Khóa mục tiêu

Ví dụ:

```plaintext
Phân bổ ngân sách Meta Ads để hỗ trợ bán sản phẩm cát mèo
```

### Bước 2 — Khóa phạm vi nền tảng

```plaintext
Facebook
Instagram
WhatsApp
```

Cần định nghĩa rõ đây là nền tảng quảng cáo, destination hay kênh bán để không trộn ba khái niệm.

### Bước 3 — Chọn cách đánh giá

```plaintext
Ba nền tảng, một owner
→ AHP truyền thống đủ gọn
```

```plaintext
Nhiều tiêu chí hoặc nhiều người trả lời online
→ Có thể dùng MAHP
```

### Bước 4 — Thu thập judgment

Không để AI tự đặt `3`, `5`, `7` thay owner. AI có thể giải thích thang điểm, kiểm tra công thức và chỉ ra inconsistency.

### Bước 5 — Tính trọng số và kiểm tra

```plaintext
Ma trận so sánh
→ Geometric Mean
→ Trọng số
→ Kiểm tra tổng = 100%
→ Kiểm tra consistency
```

### Bước 6 — Phân bổ ngân sách

```plaintext
Ads Cost nền tảng
= Trọng số nền tảng × Tổng ngân sách
```

### Bước 7 — Đối chiếu dữ liệu thực tế

Sau khi chạy quảng cáo:

```plaintext
Trọng số ưu tiên ban đầu
→ Ngân sách thực tế
→ Kết quả Meta
→ GMV business nếu có
→ Review lại trọng số
```

Review trọng số là một quyết định mới. Không tự động sửa AHP weight chỉ vì một kỳ dữ liệu ngắn có kết quả tốt hoặc xấu.

## 17\. Checklist trước khi chốt trọng số

*   Mục tiêu so sánh đã được viết thành một câu rõ ràng.
*   Các phương án cùng cấp và không bị trùng nghĩa.
*   Người cho điểm hiểu thang `1–9`.
*   Mỗi cặp chỉ được đánh giá theo một mục tiêu hoặc tiêu chí tại một thời điểm.
*   Ma trận có đường chéo bằng `1`.
*   Hai chiều so sánh là nghịch đảo nhau.
*   Trọng số sau chuẩn hóa cộng lại bằng `100%`.
*   Mức consistency nằm trong giới hạn chấp nhận.
*   AHP weight được ghi là judgment, không phải performance fact.
*   Ads Cost thực tế không bị nhân trọng số lần thứ hai.
*   Người quyết định hoặc owner đã xác nhận bộ trọng số.

## 18\. Tóm tắt một dòng

```plaintext
AHP
= So sánh từng cặp
→ Tạo ma trận
→ Tính Geometric Mean từng hàng
→ Chuẩn hóa thành trọng số
→ Kiểm tra consistency
→ Dùng trọng số để hỗ trợ quyết định
```

```plaintext
MAHP
= Chấm tất cả phương án trên cùng thang 1–9
→ Chuyển chênh lệch điểm thành ma trận AHP
→ Tính trọng số giống AHP
```

## 19\. Áp dụng cho Joycat — Đánh trọng số mẫu số Ads Cost - To be Update

\> Mục đích: Duy tự điền trọng số ưu tiên cho từng kênh bán hàng của Joycat. Trọng số này dùng để ước tính mức đóng góp GMV của từng kênh vào mẫu số tỷ lệ `Ads Cost / GMV`. Cậu Sinh sẽ review và chốt trọng số cuối.

### Bối cảnh bài toán

```plaintext
Tỷ lệ cần ước tính: Ads Cost / GMV toàn nền tảng ≈ 5–10%

Tử số: Ads Cost = chi phí Meta Ads (đã có trong export)

Mẫu số: GMV toàn nền tảng = GMV Shopee + GMV sàn khác + GMV shop trực tiếp
         (Chưa có dữ liệu đầy đủ trong workspace)
```

Vì chưa có GMV thực tế từng kênh, Duy dùng AHP để tạo **trọng số ưu tiên** phản ánh đánh giá hiện tại về mức đóng góp của từng kênh. Trọng số này là **judgment của Duy**, không phải dữ liệu đã xác minh.

### Bước 1 — Xác định phương án (các kênh bán hàng)

\> Joycat bán đa sàn + shop trực tiếp. Điền tên kênh thực tế của Joycat vào đây:

| STT | Kênh bán hàng | Ghi chú |
| --- | --- | --- |
| 1 | Shopee | Sàn chính đã xác nhận |
| 2 | \[Kênh 2\] | To be updated — Duy điền |
| 3 | \[Kênh 3\] | To be updated — Duy điền |
| 4 | Shop trực tiếp | Đã xác nhận có |

### Bước 2 — Chọn tiêu chí đánh giá mức đóng góp GMV

Gợi ý 3 tiêu chí phù hợp với bài toán phân bổ GMV:

| Tiêu chí | Câu hỏi cần trả lời | Rubric điểm 1–9 |
| --- | --- | --- |
| **Lượng đơn hàng** | Kênh này hiện đang tạo ra bao nhiêu đơn so với các kênh còn lại? | 1 = rất ít; 5 = tương đương; 9 = chiếm đa số |
| **Giá trị đơn trung bình (AOV)** | Đơn từ kênh này có giá trị cao hay thấp hơn kênh khác? | 1 = thấp hơn nhiều; 5 = tương đương; 9 = cao hơn nhiều |
| **Mức độ chắc chắn dữ liệu** | Mình có thể tin vào số liệu từ kênh này không? | 1 = rất khó đo; 5 = đo được một phần; 9 = đo được rõ ràng |

### Bước 3 — Bảng chấm điểm (Duy tự điền)

\> Điền điểm 1–9 theo từng tiêu chí. Phải ghi lý do và trạng thái bằng chứng.

| Kênh | Lượng đơn hàng | AOV | Mức chắc chắn dữ liệu |
| --- | --- | --- | --- |
| Shopee | \[\_\] | \[\_\] | \[\_\] |
| \[Kênh 2\] | \[\_\] | \[\_\] | \[\_\] |
| \[Kênh 3\] | \[\_\] | \[\_\] | \[\_\] |
| Shop trực tiếp | \[\_\] | \[\_\] | \[\_\] |

**Ghi chú lý do (bắt buộc):**

```plaintext
Shopee — Lượng đơn: [Điểm] — Lý do: [...]  — Trạng thái: [Owner judgment / To be updated]
Shopee — AOV: [Điểm] — Lý do: [...]  — Trạng thái: [...]
...
```

### Bước 4 — Chuyển điểm thành ma trận MAHP (từng tiêu chí)

Với mỗi tiêu chí, dùng công thức MAHP:

```plaintext
Nếu điểm i &gt; điểm j:  a_ij = điểm i - điểm j + 1
Nếu điểm i = điểm j:  a_ij = 1
Nếu điểm i &lt; điểm j:  a_ij = 1 / (điểm j - điểm i + 1)
```

Trong Excel, tại ô so sánh kênh i với kênh j:

```plaintext
=IF(diem_i&gt;diem_j, diem_i-diem_j+1, 1/(diem_j-diem_i+1))
```

### Bước 5 — Tính trọng số cục bộ (từng tiêu chí)

```plaintext
Geometric Mean mỗi hàng = GEOMEAN(các ô trong hàng)
Trọng số cục bộ = Geometric Mean hàng / SUM(tất cả Geometric Mean)
```

### Bước 6 — Trọng số tiêu chí (Duy tự đánh giá)

\> Trong 3 tiêu chí trên, tiêu chí nào quan trọng hơn để ước tính GMV? Điền trọng số (tổng = 100%):

| Tiêu chí | Trọng số (Duy đề xuất) | Lý do |
| --- | --- | --- |
| Lượng đơn hàng | \[\_\]% |   |
| AOV | \[\_\]% |   |
| Mức chắc chắn dữ liệu | \[\_\]% |   |
| **Tổng** | **100%** |   |

### Bước 7 — Tổng hợp trọng số cuối (a, b, c, d)

```plaintext
Trọng số kênh X
= Trọng số "Lượng đơn" × Local weight kênh X theo Lượng đơn
+ Trọng số "AOV" × Local weight kênh X theo AOV
+ Trọng số "Chắc chắn" × Local weight kênh X theo Chắc chắn
```

| Kênh | Trọng số cuối (a, b, c...) |
| --- | --- |
| Shopee | \[\_\]% |
| \[Kênh 2\] | \[\_\]% |
| \[Kênh 3\] | \[\_\]% |
| Shop trực tiếp | \[\_\]% |
| **Tổng** | **100%** |

### Bước 8 — Ước tính GMV và tỷ lệ Ads Cost / GMV

Sau khi có trọng số và một số ước lượng GMV:

```plaintext
GMV ước tính toàn nền tảng
= GMV Shopee / Trọng số Shopee

Tỷ lệ Ads Cost / GMV ước tính
= Ads Cost Meta / GMV ước tính toàn nền tảng
```

\> ⚠ Đây là ước tính từ judgment, không phải GMV business đã xác minh. Chỉ dùng để minh họa cơ chế; không dùng thay cho dữ liệu thực tế.

### Checklist trước khi gửi cậu Sinh

*   Đã điền tên đầy đủ các kênh bán hàng của Joycat.
*   Mỗi điểm có lý do và trạng thái bằng chứng.
*   Trọng số tiêu chí tổng = 100%.
*   Trọng số kênh cuối tổng = 100%.
*   Ghi rõ đây là judgment của Duy — cậu Sinh review và chốt.
*   Không dùng trọng số này thay cho dữ liệu GMV thực tế.