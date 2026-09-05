# Phương pháp và hợp đồng đầu ra KPI Tree

## 1. Phân biệt đúng loại Tree

| Câu hỏi | Nơi xử lý |
|---|---|
| Muốn đạt kết quả gì và đo bằng KPI nào? | KPI Tree |
| Chỉ số được tính và liên hệ với nhau thế nào? | Metric Tree |
| Vì sao kết quả xảy ra, giả thuyết nào cần kiểm tra? | Logic Tree |

Ngày lễ, thời tiết, đối thủ, thay đổi giá hoặc khuyến mãi là bối cảnh/giả thuyết. Chỉ đưa chúng vào KPI Tree nếu bản thân việc quản trị yếu tố đó là một kết quả chiến lược được owner xác nhận; nếu không, chuyển sang sổ giả thuyết hoặc Logic Tree.

## 2. Kiểm tra từng tầng

### Chiến lược

- Mô tả outcome kinh doanh, không mô tả artefact phân tích.
- Không đặt target số quá sớm.
- Có owner hoặc được gắn rõ là khung làm việc/suy luận cần xác nhận.

### Chủ đề

- Mỗi Chủ đề là một nhóm kết quả cấp cao.
- Các Chủ đề cùng nhau đủ để giải thích cách đạt Chiến lược ở phạm vi đã chọn.
- Không dùng TOFU/MOFU/BOFU, phòng ban hoặc kênh làm cấu trúc chính nếu chúng chỉ là cách vận hành.

### Chiến thuật

- Viết dưới dạng kết quả cần đạt, ví dụ “Tạo thêm cuộc hội thoại có ý định mua”, không viết “Chạy chiến dịch tin nhắn”.
- Có thể chịu ảnh hưởng bởi nhiều hoạt động nhưng phải đo được bằng ít nhất một KPI.

### KPI

- KPI phải trả lời trực tiếp kết quả Chiến thuật đang tốt hay xấu.
- Không đồng nhất tên metric với định nghĩa: cùng một tên phải có công thức, nguồn, kỳ và phạm vi.
- Longlist trước, sau đó chỉ giữ KPI có ích cho quyết định; KPI chưa có dữ liệu vẫn tồn tại với trạng thái phù hợp.

## 3. Hợp đồng KPI tối thiểu

| Trường | Nội dung |
|---|---|
| KPI | Tên rõ, không đa nghĩa |
| Kết quả được đo | Nút Chiến thuật cha |
| Mục đích | Câu hỏi hoặc quyết định KPI hỗ trợ |
| Công thức sơ bộ | Tử số, mẫu số và điều kiện chính; để `To be updated` nếu chưa đủ nguồn |
| Đơn vị | VND, số lượng, phần trăm hoặc đơn vị khác |
| Kỳ và grain | Ngày/tuần/tháng; Campaign/Ad set/Ad/order/customer... |
| Nguồn | File, hệ thống hoặc owner |
| Readiness | `Sẵn có` hoặc `Chưa sẵn có` |
| Evidence status | Nguồn xác minh, owner xác nhận, suy luận hoặc `To be updated` |
| Giới hạn | Attribution, coverage, freshness, mapping hoặc quality issue |

## 4. Cấu trúc đầu ra

1. Mục đích và giới hạn phase.
2. Một Mermaid chính với đúng bốn tầng.
3. Bảng định nghĩa KPI.
4. Bảng ánh xạ cấu trúc vận hành/nguồn tới KPI.
5. Kiểm định hard gate và coverage.
6. Các mục `To be updated` có owner, ảnh hưởng và câu hỏi tiếp theo.
7. Bản nói ngắn để learner-builder trình bày.

Nếu người dùng cần một mind map để cùng trao đổi hoặc import vào công cụ trực quan, tạo thêm file `.mm`. Bản `.mm` phải giữ cùng node gốc và bốn tầng với Mermaid, nhưng không thay thế nội dung kiểm định, định nghĩa KPI hay giới hạn trong file `.md`.

## 5. Coverage

KPI Tree đạt cấu trúc khi:

- 100% KPI lá có đúng một hoặc nhiều nút Chiến thuật cha được giải thích rõ;
- 100% KPI lá có readiness;
- 100% KPI quan trọng có nguồn hoặc owner cần hỏi;
- không có Campaign, Ad set, Ad, phòng ban hoặc project giả làm tầng ROKS;
- không có owner statement/suy luận được trình bày như data-verified fact.

Coverage cấu trúc không có nghĩa dữ liệu đã đủ hoặc outcome kinh doanh đã được chứng minh.
