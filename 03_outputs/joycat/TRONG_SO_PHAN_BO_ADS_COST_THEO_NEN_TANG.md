# Trọng số phân bổ Ads Cost theo nền tảng

## 1. Bài toán mình đang cần giải quyết

Joycat có một tổng ngân sách quảng cáo và có thể phân bổ ngân sách đó cho ba nền tảng:

- Facebook.
- Instagram.
- WhatsApp.

Tùy vào sản phẩm, khách hàng và vai trò của từng nền tảng, mình có thể ưu tiên nền tảng này hơn nền tảng kia.

Ví dụ:

> Nếu Facebook phù hợp với sản phẩm và nhóm khách hàng hơn Instagram và WhatsApp thì Facebook nhận trọng số cao hơn, từ đó nhận nhiều ngân sách hơn.

Trong bài toán này, `a`, `b`, `c` là **trọng số dùng để phân bổ ngân sách**, không phải một khoản chi phí mới.

---

## 2. Ký hiệu sử dụng

```text
B = Tổng ngân sách Ads Cost
```

```text
a = Trọng số ưu tiên Facebook
b = Trọng số ưu tiên Instagram
c = Trọng số ưu tiên WhatsApp
```

Ba trọng số phải thỏa mãn:

```text
a + b + c = 1
```

Hoặc biểu diễn theo phần trăm:

```text
a + b + c = 100%
```

Ví dụ:

```text
a = 60%
b = 25%
c = 15%
```

Có nghĩa là:

- Facebook nhận 60% tổng ngân sách.
- Instagram nhận 25% tổng ngân sách.
- WhatsApp nhận 15% tổng ngân sách.

---

## 3. Công thức phân bổ Ads Cost

### Facebook

```text
Ads Cost Facebook
= a × B
```

### Instagram

```text
Ads Cost Instagram
= b × B
```

### WhatsApp

```text
Ads Cost WhatsApp
= c × B
```

Tổng Ads Cost sau khi phân bổ:

```text
Tổng Ads Cost
= Ads Cost Facebook
+ Ads Cost Instagram
+ Ads Cost WhatsApp
```

Thế công thức từng nền tảng vào:

```text
Tổng Ads Cost
= a × B
+ b × B
+ c × B
```

Đặt `B` ra ngoài:

```text
Tổng Ads Cost
= B × (a + b + c)
```

Do:

```text
a + b + c = 1
```

Nên:

```text
Tổng Ads Cost = B
```

Điều này có nghĩa là trọng số chỉ quyết định **ngân sách được chia như thế nào**, không làm Tổng Ads Cost tăng hoặc giảm.

---

## 4. Nối công thức vào ROAS

Công thức ROAS toàn nền tảng:

```text
ROAS toàn nền tảng
= GMV all platform / Tổng Ads Cost
```

Trong đó:

```text
Tổng Ads Cost
= Ads Cost Facebook
+ Ads Cost Instagram
+ Ads Cost WhatsApp
```

Thế công thức phân bổ theo trọng số:

```text
ROAS toàn nền tảng
= GMV all platform
  /
  (
      a × B
    + b × B
    + c × B
  )
```

Rút gọn:

```text
ROAS toàn nền tảng
= GMV all platform
  /
  (B × (a + b + c))
```

Do:

```text
a + b + c = 1
```

Nên:

```text
ROAS toàn nền tảng
= GMV all platform / B
```

Trọng số không trực tiếp thay đổi công thức ROAS. Trọng số thay đổi **nơi ngân sách được phân bổ**, từ đó có thể làm GMV thực tế thay đổi.

Đường tác động cần hiểu là:

```text
Trọng số nền tảng
→ Ads Cost được phân bổ cho từng nền tảng
→ Kết quả quảng cáo của từng nền tảng
→ GMV tạo ra
→ ROAS toàn nền tảng
```

---

## 5. Ví dụ đầy đủ

Giả sử:

```text
Tổng ngân sách B = 100.000.000 VND
```

Do Facebook được đánh giá là quan trọng hơn nên mình đặt:

```text
a = 60%
b = 25%
c = 15%
```

### Ngân sách Facebook

```text
Ads Cost Facebook
= 60% × 100.000.000
= 60.000.000 VND
```

### Ngân sách Instagram

```text
Ads Cost Instagram
= 25% × 100.000.000
= 25.000.000 VND
```

### Ngân sách WhatsApp

```text
Ads Cost WhatsApp
= 15% × 100.000.000
= 15.000.000 VND
```

### Kiểm tra tổng

```text
Tổng Ads Cost
= 60.000.000
+ 25.000.000
+ 15.000.000
= 100.000.000 VND
```

Giả sử GMV all platform trong cùng kỳ là `800.000.000 VND`:

```text
ROAS toàn nền tảng
= 800.000.000 / 100.000.000
= 8 lần
```

---

## 6. Cách tính ra trọng số `a`, `b`, `c`

### Cách 1 — Dùng tỷ lệ ưu tiên có sẵn

Nếu người làm business đã xác định mức ưu tiên:

```text
Facebook : Instagram : WhatsApp
= 5 : 3 : 2
```

Tổng điểm:

```text
Tổng điểm = 5 + 3 + 2 = 10
```

Trọng số Facebook:

```text
a = 5 / 10 = 50%
```

Trọng số Instagram:

```text
b = 3 / 10 = 30%
```

Trọng số WhatsApp:

```text
c = 2 / 10 = 20%
```

Công thức tổng quát:

```text
Trọng số nền tảng
= Điểm ưu tiên nền tảng / Tổng điểm ưu tiên của ba nền tảng
```

Đây là cách đơn giản nhất nếu owner đã biết nền tảng nào cần được ưu tiên.

---

### Cách 2 — Chấm điểm theo các tiêu chí

Nếu chưa biết nên đặt tỷ lệ `5 : 3 : 2` hay tỷ lệ khác, chấm từng nền tảng theo bốn tiêu chí:

1. Mức phù hợp với khách hàng mục tiêu.
2. Mức phù hợp giữa sản phẩm và cách người dùng sử dụng nền tảng.
3. Mức phù hợp với content quảng cáo.
4. Khả năng hỗ trợ khách đi tới hành động mua.

Ví dụ tỷ trọng của các tiêu chí:

```text
Phù hợp với khách hàng       = 40%
Phù hợp với sản phẩm         = 25%
Phù hợp với content          = 20%
Khả năng hỗ trợ mua hàng     = 15%
```

Chấm mỗi tiêu chí từ `1` đến `5`.

Công thức điểm ưu tiên Facebook:

```text
Điểm Facebook
= Điểm khách hàng Facebook × 40%
+ Điểm sản phẩm Facebook × 25%
+ Điểm content Facebook × 20%
+ Điểm hỗ trợ mua Facebook × 15%
```

Công thức điểm ưu tiên Instagram:

```text
Điểm Instagram
= Điểm khách hàng Instagram × 40%
+ Điểm sản phẩm Instagram × 25%
+ Điểm content Instagram × 20%
+ Điểm hỗ trợ mua Instagram × 15%
```

Công thức điểm ưu tiên WhatsApp:

```text
Điểm WhatsApp
= Điểm khách hàng WhatsApp × 40%
+ Điểm sản phẩm WhatsApp × 25%
+ Điểm content WhatsApp × 20%
+ Điểm hỗ trợ mua WhatsApp × 15%
```

Sau đó chuẩn hóa thành trọng số:

```text
a
= Điểm Facebook
  / (Điểm Facebook + Điểm Instagram + Điểm WhatsApp)
```

```text
b
= Điểm Instagram
  / (Điểm Facebook + Điểm Instagram + Điểm WhatsApp)
```

```text
c
= Điểm WhatsApp
  / (Điểm Facebook + Điểm Instagram + Điểm WhatsApp)
```

---

### Cách 3 — So sánh từng cặp bằng AHP

Cách này phù hợp khi mình dễ trả lời câu hỏi kiểu:

- Facebook quan trọng hơn Instagram bao nhiêu lần?
- Facebook quan trọng hơn WhatsApp bao nhiêu lần?
- Instagram quan trọng hơn WhatsApp bao nhiêu lần?

Đặt:

```text
x = Mức quan trọng của Facebook so với Instagram
y = Mức quan trọng của Facebook so với WhatsApp
z = Mức quan trọng của Instagram so với WhatsApp
```

Thang so sánh thường dùng:

```text
1 = Quan trọng ngang nhau
3 = Quan trọng hơn vừa phải
5 = Quan trọng hơn rõ rệt
7 = Quan trọng hơn rất nhiều
9 = Gần như ưu tiên tuyệt đối
```

Điểm Facebook:

```text
Điểm Facebook
= (1 × x × y)^(1/3)
```

Điểm Instagram:

```text
Điểm Instagram
= ((1/x) × 1 × z)^(1/3)
```

Điểm WhatsApp:

```text
Điểm WhatsApp
= ((1/y) × (1/z) × 1)^(1/3)
```

Sau đó chuẩn hóa:

```text
a
= Điểm Facebook
  / (Điểm Facebook + Điểm Instagram + Điểm WhatsApp)
```

```text
b
= Điểm Instagram
  / (Điểm Facebook + Điểm Instagram + Điểm WhatsApp)
```

```text
c
= Điểm WhatsApp
  / (Điểm Facebook + Điểm Instagram + Điểm WhatsApp)
```

Ví dụ:

```text
Facebook quan trọng gấp 3 lần Instagram → x = 3
Facebook quan trọng gấp 5 lần WhatsApp  → y = 5
Instagram quan trọng gấp 2 lần WhatsApp → z = 2
```

Kết quả gần đúng:

```text
a = 64,8%
b = 23,0%
c = 12,2%
```

Tham khảo phương pháp:

- [AHP pairwise comparison và geometric mean](https://www.mdpi.com/2075-5309/13/12/2973/pdf)
- [Công thức chuẩn hóa geometric mean thành trọng số](https://www.mdpi.com/1999-4893/17/6/245)

---

## 7. Khi có nhiều nhóm sản phẩm

Không nhất thiết dùng chung một bộ trọng số cho mọi sản phẩm.

Ví dụ:

```text
Quần áo:
a_quần_áo = Trọng số Facebook cho quần áo
b_quần_áo = Trọng số Instagram cho quần áo
c_quần_áo = Trọng số WhatsApp cho quần áo
```

```text
Đồ ăn nhanh:
a_đồ_ăn = Trọng số Facebook cho đồ ăn nhanh
b_đồ_ăn = Trọng số Instagram cho đồ ăn nhanh
c_đồ_ăn = Trọng số WhatsApp cho đồ ăn nhanh
```

Ngân sách Facebook tổng có thể được hình thành từ:

```text
Ads Cost Facebook
= a_quần_áo × Ngân sách quần áo
+ a_đồ_ăn × Ngân sách đồ ăn
+ a_sản_phẩm_khác × Ngân sách sản phẩm khác
```

Instagram và WhatsApp được tính theo cùng cấu trúc.

---

## 8. Công thức không nên dùng cho ROAS thực tế

Không nên thay Tổng Ads Cost thực tế bằng:

```text
a × Ads Cost Facebook
+ b × Ads Cost Instagram
+ c × Ads Cost WhatsApp
```

Lý do: Ads Cost Facebook, Instagram và WhatsApp đã là số tiền sau khi phân bổ. Nhân trọng số thêm lần nữa sẽ tạo ra một chỉ số chi phí có trọng số, không còn là số tiền đã chi thật.

Nếu vẫn cần công thức này để so sánh mức độ ưu tiên, phải đổi tên thành:

```text
Ads Cost Priority Index
= a × Ads Cost Facebook
+ b × Ads Cost Instagram
+ c × Ads Cost WhatsApp
```

Không dùng `Ads Cost Priority Index` làm mẫu số của ROAS business.

---

## 9. Công thức cuối cùng nên sử dụng

### Tính trọng số

```text
a = Điểm ưu tiên Facebook / Tổng điểm ưu tiên
b = Điểm ưu tiên Instagram / Tổng điểm ưu tiên
c = Điểm ưu tiên WhatsApp / Tổng điểm ưu tiên
```

### Phân bổ ngân sách

```text
Ads Cost Facebook  = a × Tổng ngân sách
Ads Cost Instagram = b × Tổng ngân sách
Ads Cost WhatsApp  = c × Tổng ngân sách
```

### Kiểm tra tổng

```text
Tổng Ads Cost
= Ads Cost Facebook
+ Ads Cost Instagram
+ Ads Cost WhatsApp
```

### Tính ROAS business

```text
ROAS toàn nền tảng
= GMV all platform / Tổng Ads Cost
```

---

## 10. Cách sử dụng trong thực tế

### Khi chưa có dữ liệu lịch sử

Dùng đánh giá của owner hoặc AHP để tạo trọng số ban đầu.

### Khi đã có dữ liệu lịch sử

So sánh trọng số ban đầu với hiệu quả thực tế của từng nền tảng. Không tự động đổi trọng số chỉ vì một kỳ ROAS cao hoặc thấp; cần kiểm tra quy mô ngân sách, kỳ dữ liệu, attribution và khả năng tăng thêm ngân sách.

### Khi chuẩn bị phân bổ ngân sách kỳ sau

```text
Đặc điểm sản phẩm và khách hàng
→ Điểm ưu tiên nền tảng
→ Trọng số a, b, c
→ Ngân sách từng nền tảng
→ Kết quả thực tế
→ Kiểm tra và điều chỉnh trọng số
```

