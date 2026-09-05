# Hợp đồng bằng chứng và bối cảnh

## Trạng thái bằng chứng

| Trạng thái | Ý nghĩa | Cách ghi bắt buộc |
|---|---|---|
| `Đã xác minh từ nguồn` | File, dữ liệu, code, schema, log hoặc tài liệu trực tiếp hỗ trợ phát biểu | Nêu nguồn, phạm vi và giới hạn quan sát. |
| `Owner đã xác nhận` | Người chịu trách nhiệm hoặc chuyên gia domain đã nêu phát biểu | Nêu người hoặc vai trò xác nhận; không đổi thành bằng chứng dữ liệu. |
| `Suy luận` | Diễn giải hợp lý từ context hoặc nhiều dấu hiệu gián tiếp | Nêu cơ sở suy luận và cách có thể kiểm chứng. |
| `To be updated` | Chưa có nguồn đủ mạnh hoặc các nguồn đang mâu thuẫn | Nêu điều thiếu, owner/nguồn, ảnh hưởng và câu hỏi nhỏ nhất cần giải đáp. |

Một phát biểu có thể vừa được owner xác nhận vừa chưa được dữ liệu xác minh. Khi khác biệt này ảnh hưởng đến quyết định, phải ghi cả hai trạng thái.

`To be updated` không phải placeholder rỗng. Phải ghi thêm phần vẫn có thể tiếp tục trong lúc chờ nếu điều này giúp workflow không bị chặn không cần thiết.

## Mức sẵn sàng của nguồn

| Mức | Dùng khi |
|---|---|
| `Sẵn có` | Nguồn truy cập được và đủ phạm vi tối thiểu cho bước kế tiếp. |
| `Một phần` | Nguồn tồn tại nhưng thiếu kỳ, trường, version, độ chi tiết, quyền hoặc khả năng nối cần thiết. |
| `Chưa sẵn có` | Nguồn được biết là tồn tại nhưng hiện chưa được cung cấp hoặc chưa thể truy cập. |
| `To be updated` | Chưa xác định nguồn có tồn tại, thuộc ai hoặc lấy bằng cách nào; phải ghi owner/nguồn cần hỏi. |

`Sẵn có` không có nghĩa là dữ liệu đúng hoặc đủ cho mọi câu hỏi; chỉ có nghĩa là đủ cho bước đang xét.

## TOSCAR

- **Vấn đề (Trouble):** vấn đề, cơ hội, câu hỏi hoặc quyết định nào đang tồn tại?
- **Owner:** ai sở hữu outcome, ai phê duyệt và ai có thể xác nhận domain?
- **Thành công (Success):** tiêu chí, metric, chất lượng, deadline hoặc trạng thái nào định nghĩa hoàn thành?
- **Ràng buộc (Constraints):** giới hạn về dữ liệu, quyền, công cụ, thời gian, chính sách, chi phí hoặc kỹ thuật?
- **Bên liên quan (Actors):** ai tạo input, dùng output, vận hành hoặc chịu ảnh hưởng?
- **Tham chiếu (References):** file, dữ liệu, code, hệ thống, tài liệu hay phát biểu nào hỗ trợ context?

Nếu một thành phần chưa liên quan đến phạm vi hiện tại, ghi `không áp dụng`; không tự tạo thông tin để lấp chỗ trống.

## Thứ tự đọc nguồn

1. `WORKSPACE_CONTEXT.md`, current intent, case context hiện có và chỉ dẫn cấp workspace.
2. Source inventory, cấu trúc folder và metadata.
3. Raw data, code, schema, tài liệu hoặc artefact liên quan trực tiếp.
4. Phát biểu của người dùng và owner, kèm người xác nhận.
5. Nguồn bên ngoài khi thật sự cần và được phép.

Thứ tự này hướng dẫn cách tìm context, không mặc định nguồn đứng trước luôn đáng tin hơn. Đánh giá theo độ trực tiếp, phạm vi, thời điểm và quyền sở hữu.

## Phân tầng câu hỏi

- **Hỏi ngay:** thiếu Objective, mong muốn thực tế, phạm vi, quyền hoặc nguồn cốt lõi khiến bước kế tiếp có thể đi sai hướng đáng kể.
- **Đọc từ workspace trước:** tên artefact, schema, kỳ/version, cấu trúc, field, metric, dependency và trạng thái hiện có.
- **Để hỏi khi làm case:** rule vận hành, nguyên nhân lịch sử, ngưỡng quyết định, giả thuyết hoặc chi tiết chỉ ảnh hưởng một case cụ thể.

## Quy tắc chuyển giao

- Có thể tái sử dụng: framework, thuật ngữ đã định nghĩa rõ, phương pháp kiểm tra, template và bài học có nêu điều kiện áp dụng.
- Phải xác minh lại: KPI target, benchmark, mapping dữ liệu, giả định người dùng, cấu trúc hệ thống, hành vi khách hàng và kết luận hiệu quả.
- Khi hai context xung đột, không tự hợp nhất. Ghi nguồn, thời điểm, phạm vi của từng phiên bản và nêu điều cần owner quyết định.
