# Format đầu ra và điều kiện duyệt bộ trọng số AHP

## 1. Đầu ra cuối phải trả lời được gì?

Người đọc phải trả lời được tám câu:

1. Trọng số này phục vụ quyết định nào?
2. Các phương án nào đang được so sánh?
3. Các tiêu chí nào được dùng và vì sao?
4. Ai cho điểm, dựa vào nguồn nào?
5. Từ điểm ban đầu tính ra trọng số bằng công thức nào?
6. Bộ điểm có nhất quán và ổn định không?
7. Trọng số được dùng để tham khảo hay chia ngân sách?
8. Khi nào phải review lại?

---

## 2. Bộ đầu ra đề xuất

Sau khi cậu Sinh trả lời form, nên tạo một bộ gồm sáu bảng.

### Bảng 1 — Decision Contract

| Trường | Nội dung bắt buộc |
|---|---|
| Mục tiêu | Một câu rõ ràng |
| Quyết định được hỗ trợ | Chọn nền tảng/phân bổ ngân sách/khác |
| Phạm vi | Sản phẩm, khách, Campaign, khu vực |
| Thời gian áp dụng | Từ ngày nào đến ngày nào |
| Phương án | Danh sách cùng cấp |
| Người chấm | Tên và vai trò |
| Người duyệt | Người chịu trách nhiệm cuối |
| Phiên bản | Mã phiên bản và ngày |

### Bảng 2 — Criteria Contract

| Tiêu chí | Định nghĩa | Yếu tố được tính | Yếu tố không tính | Trọng số tiêu chí | Owner |
|---|---|---|---|---:|---|
| Audience Fit |  |  |  |  |  |
| Product Fit |  |  |  |  |  |
| Content Fit |  |  |  |  |  |
| Action Fit |  |  |  |  |  |
| Operational Fit |  |  |  |  |  |

Kiểm tra:

```text
Tổng trọng số tiêu chí = 100%
```

### Bảng 3 — Score and Evidence Register

| Phương án | Tiêu chí | Điểm 1–9 | Lý do | Nguồn | Trạng thái | Người chấm | Ngày |
|---|---|---:|---|---|---|---|---|
| Facebook | Audience Fit |  |  |  |  |  |  |

Trạng thái chỉ dùng:

```text
Đã xác minh từ dữ liệu
Owner judgment
To be updated
```

### Bảng 4 — Local Weight theo từng tiêu chí

| Tiêu chí | Facebook | Instagram | WhatsApp | Tổng | Consistency |
|---|---:|---:|---:|---:|---|
| Audience Fit |  |  |  | 100% |  |
| Product Fit |  |  |  | 100% |  |
| Content Fit |  |  |  | 100% |  |
| Action Fit |  |  |  | 100% |  |
| Operational Fit |  |  |  | 100% |  |

### Bảng 5 — Global Weight cuối cùng

| Nền tảng | Công thức | Trọng số cuối | Thứ hạng |
|---|---|---:|---:|
| Facebook | Tổng của `trọng số tiêu chí × local weight Facebook` | `a` |  |
| Instagram | Tổng của `trọng số tiêu chí × local weight Instagram` | `b` |  |
| WhatsApp | Tổng của `trọng số tiêu chí × local weight WhatsApp` | `c` |  |

Kiểm tra:

```text
a + b + c = 100%
```

### Bảng 6 — Decision and Limitation Log

| Nội dung | Kết luận |
|---|---|
| Trọng số dùng để làm gì? |  |
| Có dùng trực tiếp chia ngân sách không? |  |
| Constraint nào đã áp dụng? |  |
| Điểm nào còn là owner judgment? |  |
| Dữ liệu nào còn thiếu? |  |
| Sensitivity có làm đổi thứ hạng không? |  |
| Khi nào review lại? |  |
| Ai duyệt? |  |

---

## 3. Công thức bắt buộc phải xuất hiện

### Chuyển điểm MAHP thành so sánh

Nếu `s_i > s_j`:

```text
a_ij = s_i - s_j + 1
```

Nếu `s_i = s_j`:

```text
a_ij = 1
```

Nếu `s_i < s_j`:

```text
a_ij = 1 / (s_j - s_i + 1)
```

### Geometric Mean

```text
Geometric Mean hàng i
= (Phần tử 1 × Phần tử 2 × ... × Phần tử n)^(1/n)
```

### Local weight

```text
Local weight phương án i
= Geometric Mean hàng i
  / Tổng Geometric Mean của các hàng
```

### Global weight

```text
Global weight nền tảng
= Trọng số tiêu chí 1 × Local weight nền tảng trong tiêu chí 1
+ Trọng số tiêu chí 2 × Local weight nền tảng trong tiêu chí 2
+ ...
+ Trọng số tiêu chí n × Local weight nền tảng trong tiêu chí n
```

### Tổng trọng số

```text
a + b + c = 100%
```

### Phân bổ ngân sách trước constraint

```text
Ads Cost Facebook = a × Tổng ngân sách
Ads Cost Instagram = b × Tổng ngân sách
Ads Cost WhatsApp = c × Tổng ngân sách
```

Nếu có constraint thì phải ghi riêng phần điều chỉnh; không được nói trọng số AHP và tỷ lệ ngân sách sau điều chỉnh là một.

---

## 4. Format kết luận ngắn

Kết luận cuối không chỉ ghi ba con số. Dùng format:

```text
Mục tiêu:
[Mục tiêu đã khóa]

Phạm vi:
[Sản phẩm/khách/thời gian]

Phương án:
[Danh sách phương án cùng cấp]

Kết quả:
Facebook = a%
Instagram = b%
WhatsApp = c%

Cách hiểu:
Đây là preference weight được tính từ judgment theo các tiêu chí đã khai báo.

Cách dùng:
[Tham khảo / phân bổ trước constraint / cách khác]

Giới hạn:
[Điểm còn là judgment, dữ liệu thiếu, sensitivity]

Người duyệt và phiên bản:
[Tên — ngày — phiên bản]
```

---

## 5. Điều kiện đạt trước khi trình cậu Sinh duyệt

- [ ] Mục tiêu chỉ có một cách hiểu.
- [ ] Các phương án cùng cấp.
- [ ] Bộ tiêu chí đã được cậu Sinh xác nhận.
- [ ] Mỗi tiêu chí có định nghĩa và ranh giới.
- [ ] Trọng số tiêu chí cộng lại bằng `100%`.
- [ ] Mỗi điểm có lý do và trạng thái bằng chứng.
- [ ] Không tự dùng điểm `5` để thay dữ liệu thiếu.
- [ ] Công thức MAHP/AHP được dùng nhất quán.
- [ ] Local weight trong từng tiêu chí cộng lại bằng `100%`.
- [ ] Global weight `a + b + c = 100%`.
- [ ] Consistency nằm trong mức được chấp nhận hoặc đã có giải trình.
- [ ] Sensitivity test đã được thực hiện.
- [ ] Preference weight không bị gọi là performance metric.
- [ ] Nếu dùng chia ngân sách, constraint đã được ghi rõ.
- [ ] Có owner, người duyệt, ngày và phiên bản.

---

## 6. Những trường hợp chưa được phép chốt trọng số

Không chốt nếu còn một trong các trường hợp:

- Chưa biết bộ trọng số phục vụ quyết định gì.
- Đang trộn publisher platform với destination hoặc sales platform.
- Tiêu chí chưa được owner xác nhận.
- Hai tiêu chí trùng nhau nhưng vẫn tính hai lần.
- Điểm không có lý do hoặc không rõ ai chấm.
- Thiếu thông tin nhưng analyst tự gán điểm trung lập.
- Thay đổi một điểm nhỏ làm thứ hạng đảo mạnh mà chưa review.
- Dùng một bộ trọng số cho nhiều sản phẩm hoặc mục tiêu khác nhau mà chưa xác minh.
- Coi trọng số AHP là bằng chứng nền tảng có ROAS tốt hơn.
- Dùng trọng số trực tiếp chia ngân sách nhưng chưa xét constraint vận hành.

---

## 7. Bàn giao tối thiểu cho Duy

Duy chỉ cần bảo vệ được năm ý:

1. Tại sao chọn bộ tiêu chí này.
2. Mỗi điểm đến từ đâu.
3. Công thức chuyển điểm thành trọng số.
4. Bộ trọng số ổn định hay nhạy với assumption.
5. Trọng số được phép dùng đến mức nào.

Nếu chưa bảo vệ được một ý, giữ trạng thái:

```text
To be updated
```

và không biến phần đó thành kết luận đã xác minh.
