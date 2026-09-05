# Quy Trình Đánh Giá Skill

Chỉ dùng tài liệu này khi người dùng yêu cầu test, benchmark, so sánh version hoặc tối ưu trigger của một skill.

## Chọn mức đánh giá

| Mục tiêu | Cách đánh giá |
|---|---|
| Kiểm tra cấu trúc | Chạy validator và kiểm scaffold chưa hoàn thiện hoặc resource thừa. |
| Kiểm trigger | Thiết kế test set nhỏ gồm positive, negative và near-miss. |
| Kiểm workflow | Chạy skill với artifact thật hoặc artifact tối thiểu đại diện. |
| So sánh phiên bản | Dùng cùng prompt và cùng artifact cho skill mới và baseline. |

## Thiết kế test set

| Loại | Mục đích | Số lượng gợi ý |
|---|---|---|
| Positive | Skill nên trigger và tạo giá trị rõ | 2–3 |
| Negative | Có dấu hiệu gần nhưng nên route sang workflow khác | 2–3 |
| Near-miss | Mơ hồ hoặc cạnh tranh với skill khác | 2–3 |

Prompt phải giống cách người thật hỏi: có mục tiêu, bối cảnh, file/path hoặc constraint ảnh hưởng workflow, cách nói tự nhiên và đủ độ phức tạp để skill có ích. Negative case không được hoàn toàn vô liên quan.

## Baseline và điều kiện so sánh

- **Skill mới:** baseline là cùng task nhưng không dùng skill.
- **Skill đang cải tiến:** baseline là snapshot version cũ trước khi sửa.
- Giữ cùng prompt, input artifact, tool access, model, quyền hạn và environment. Nếu không giữ được, ghi rõ đây chỉ là so sánh tham khảo, không phải benchmark kết luận.

## Chạy và review theo rubric 5 lớp

Với mỗi case, ghi tách năm loại finding:

1. **Trigger:** skill có được chọn đúng không.
2. **Workflow:** thứ tự đọc nguồn, tool use và safety gate có phù hợp không.
3. **Output:** artefact có đúng format, đủ scope và usable không.
4. **Resource:** reference, script hoặc asset nào thiếu, thừa hoặc không được dùng.
5. **Human judgment:** style, trade-off hoặc preference cần người dùng quyết định.

Chỉ dùng assertion cho điều kiện kiểm chứng khách quan. Đánh giá chất lượng phải có human review; không biến preference thành pass/fail giả.

## Từ feedback tới revision

Evaluation loop là: thiết kế prompt → chạy skill và baseline → human review → rút nguyên tắc → revision → chạy lại khi cần.

Mỗi revision phải trả lời:

- Failure mode lặp lại là gì?
- Nguyên tắc tổng quát nào giải quyết nó?
- Thay đổi nên đặt ở `description`, `SKILL.md`, `reference`, `script` hay `asset` — vì sao?
- Thay đổi này có thể làm trigger sai hoặc tăng overhead ở case khác không?

Không thêm rule chỉ để thắng một prompt. Nếu feedback là preference của user, giữ nó thành option hoặc output convention thay vì hard-code thành rule universal.

## Dừng evaluation và báo cáo giới hạn

Dừng khi user hài lòng, feedback không còn actionable, hoặc revision không tạo cải thiện có ý nghĩa. Báo rõ số case đã chạy và giới hạn coverage; không kết luận một skill tốt cho mọi tình huống từ test set nhỏ.
