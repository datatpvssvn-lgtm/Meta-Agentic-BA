---
name: kpi-tree-skill
description: "Dựng hoặc kiểm định KPI Tree bốn tầng khi cần nối mục tiêu chiến lược, kết quả cần đạt và KPI có trạng thái dữ liệu. Không dùng để phân rã công thức, tìm nguyên nhân gốc hoặc kết luận hiệu quả thực tế."
---

# Kỹ năng Cây KPI

## Mục đích

Skill này giúp người dùng cùng Codex trả lời ba câu hỏi: muốn đạt kết quả kinh doanh nào, cần những kết quả trung gian nào, và KPI nào cho biết mỗi kết quả đang tốt hay xấu.

Skill dùng chung cho nhiều trường hợp. Không gắn cứng tên doanh nghiệp, target, nền tảng hay nguồn dữ liệu cụ thể.

## Khi nào dùng và không dùng

Dùng khi cần tạo mới, sửa cấu trúc hoặc kiểm định một KPI Tree bốn tầng.

Không dùng khi người dùng cần:

- phân rã công thức và thành phần chỉ số: dùng Metric Tree;
- tìm nguyên nhân hoặc kiểm định giả thuyết: dùng Logic Tree;
- phân tích hiệu quả, đưa recommendation hoặc kết luận business: chỉ làm sau khi nguồn và phase cho phép;
- một sơ đồ tổ chức, phễu vận hành hoặc Campaign → Ad set → Ad: đó là bảng ánh xạ cấu trúc vận hành, không thay KPI Tree.

## Hợp đồng đầu vào và đầu ra

Đầu vào tối thiểu:

- Context chung, Intent hiện tại và Context của case;
- outcome/decision cần hỗ trợ và owner đánh giá;
- source inventory hoặc schema đủ để ghi trạng thái dữ liệu.

Nếu thiếu một input có thể làm đổi nút gốc, phạm vi hoặc mức kết luận, ghi `To be updated`, nêu ảnh hưởng và hỏi người dùng một câu ngắn. Không tự suy đoán business fact.

Đầu ra chuẩn là `KPI_TREE.md`, gồm sơ đồ Mermaid, bảng định nghĩa KPI, ánh xạ nguồn/cấu trúc vận hành, kiểm định và phần `To be updated`.

Khi người dùng cần thảo luận trực quan hoặc import vào công cụ mind map, tạo thêm `KPI_TREE.mm`. File `.mm` chỉ là bản xem/chỉnh cấu trúc; bản `.md` mới là nguồn chính thức của định nghĩa, bằng chứng và kiểm định.

## Nguồn phải đọc

1. Đọc chỉ dẫn workspace, Context chung, ý định hiện tại và Context của trường hợp đang xử lý.
2. Đọc source inventory hoặc schema liên quan đủ để gắn trạng thái dữ liệu; không cần phân tích toàn bộ raw chỉ để dựng Tree v1.
3. Khi tạo mới, sửa tầng/quan hệ hoặc audit Tree, đọc [phương pháp và hợp đồng đầu ra](references/kpi-tree-method.md).

Không ép người dùng biết thuật ngữ. Phản chiếu lời thường trước, chỉ ra điểm đang lẫn tầng hoặc lẫn phạm vi, rồi mới ánh xạ sang bốn tầng Tree.

## Quy trình

1. **Cùng làm rõ trước khi vẽ.** Tóm tắt điều đã hiểu; tách `đã xác minh`, `owner xác nhận`, `suy luận` và `To be updated`. Khi thấy prompt chưa phục vụ outcome hoặc có nguy cơ trộn tầng, nói rõ lý do và đề xuất cách sửa. Hỏi từng câu có khả năng đổi cấu trúc Tree.
2. Viết **mục đích sử dụng Tree** ở ngoài sơ đồ. Không biến câu hỏi phân tích, tên dự án hoặc output file thành mục tiêu chiến lược.
3. Khóa bốn tầng `Chiến lược → Chủ đề → Chiến thuật → KPI`:
   - **Chiến lược:** kết quả kinh doanh dài hạn hoặc định hướng cần đạt;
   - **Chủ đề:** các nhóm kết quả cấp cao cùng hiện thực hóa Chiến lược;
   - **Chiến thuật:** kết quả cụ thể cần đạt, không phải tên phòng ban, dự án hoặc công cụ;
   - **KPI:** thước đo cho kết quả Chiến thuật.
4. Kiểm tra từng nhánh: Chủ đề có phải kết quả cấp cao không; Chiến thuật có phải kết quả cụ thể không; KPI có đo trực tiếp Chiến thuật không. Bỏ hoặc chuyển node sai tầng trước khi thêm KPI.
5. Longlist KPI sau khi ba tầng trên đã rõ. Chỉ giữ KPI phục vụ một quyết định hoặc đánh giá kết quả cụ thể; metric hỗ trợ có thể ghi riêng nhưng không tự nâng thành KPI.
6. Với mỗi KPI, ghi tối thiểu: mục đích, công thức sơ bộ, đơn vị, kỳ/cấp dữ liệu, nguồn, trạng thái `Sẵn có`/`Sẵn có một phần`/`Chưa sẵn có`, giới hạn và owner cần xác nhận.
7. Nếu có cấu trúc vận hành như Campaign → Ad set → Ad, ánh xạ riêng cấu trúc đó tới KPI được hỗ trợ. Không dùng cấu trúc vận hành thay bốn tầng Tree và không cộng chéo cấp dữ liệu.
8. Tạo `KPI_TREE.md`. Nếu cần bản trực quan, tạo `KPI_TREE.mm` có cùng node gốc và bốn tầng; không tự thêm quan hệ nhân quả hoặc KPI chỉ vì cần làm sơ đồ đẹp.
9. Chạy hard gate và coverage. Dừng sau KPI Tree; không tự chuyển sang Metric Tree, Logic Tree, recommendation hoặc phân tích hiệu quả.

## Trạng thái bằng chứng

- Tên file, tên Campaign, tên trường hoặc nhãn do người dùng tạo chỉ chứng minh rằng tên đó tồn tại.
- Phân biệt `Đã xác minh từ nguồn`, `Owner đã xác nhận`, `Suy luận` và `To be updated`.
- KPI thiếu dữ liệu vẫn giữ trên Tree và ghi `Chưa sẵn có`.
- Không dùng giá trị chuyển đổi do nền tảng quảng cáo ghi nhận thay doanh thu/GMV thật nếu Context chưa cho phép.
- Kết quả Meta ghi nhận theo event hoặc attribution không phải là đơn hàng/GMV toàn nền tảng, trừ khi Context có bằng chứng xác nhận.
- Không trộn số liệu khác kỳ, đơn vị, population hoặc grain.

## Hard gate

Tree không đạt nếu có một trong các lỗi:

- thiếu một trong bốn tầng hoặc KPI không nối tới kết quả Chiến thuật;
- dùng target số, phòng ban, project, dashboard hoặc cấu trúc hệ thống làm nút chiến lược;
- đưa công thức phân rã thành Metric Tree hoặc giả thuyết nguyên nhân thành Logic Tree;
- biến owner statement hoặc suy luận thành thông tin đã được dữ liệu xác minh;
- xóa KPI quan trọng chỉ vì dữ liệu chưa có;
- có Mermaid nhưng thiếu bảng KPI, trạng thái dữ liệu hoặc phần kiểm định trong `KPI_TREE.md`;
- cần sửa lại nút gốc, tầng hoặc quan hệ cốt lõi sau khi sinh output.

## Bàn giao cho learner-builder

Kèm một phần ngắn giúp người dùng trình bày:

- Tree phục vụ câu hỏi gì;
- nút Chiến lược là gì;
- các Chủ đề chính và lý do chúng cần thiết;
- một KPI `Sẵn có`, một KPI `Chưa sẵn có`;
- giới hạn lớn nhất và bước tiếp theo.

Chỉ đánh dấu đạt learner gate khi người dùng có thể giải thích và sửa Tree cùng AI; không suy ra họ đã tự làm như người có nhiều kinh nghiệm.
