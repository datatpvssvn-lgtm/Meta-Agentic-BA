# Hợp đồng điều hướng ý định

## Nhãn điều hướng

| Ý định | Dùng khi người dùng muốn | Hướng xử lý thường gặp |
|---|---|---|
| `clarify_goal` | biến ý tưởng hoặc vấn đề rộng thành outcome và phạm vi rõ | hỏi tối thiểu hoặc chuyển `context-skill` |
| `build_or_update_context` | ghi nhận project, domain, nguồn, owner, mục tiêu hoặc ràng buộc | `context-skill` |
| `assess_readiness` | biết dữ liệu, code, tài liệu, quyền hoặc công cụ đã đủ chưa | `context-skill`, rồi workflow chuyên môn |
| `analyze_or_diagnose` | giải thích nguyên nhân, mẫu hình, số liệu hoặc lỗi | workflow phân tích phù hợp |
| `design_or_plan` | thiết kế giải pháp, mô hình, kiến trúc, KPI hoặc kế hoạch | workflow thiết kế phù hợp |
| `create_or_change` | tạo hoặc sửa file, code, dữ liệu, cấu hình hay artefact | kiểm tra quyền rồi thực thi bằng skill/tool phù hợp |
| `review_or_verify` | audit, kiểm tra chất lượng, đối chiếu hoặc xác minh | workflow review/validation phù hợp |
| `explain_or_learn` | học khái niệm, cơ chế hoặc cách làm | workflow giải thích phù hợp |
| `monitor_or_wait` | theo dõi trạng thái hoặc chờ một điều kiện | cơ chế monitoring/wait phù hợp |
| `external_or_high_impact_action` | gửi, publish, deploy, xóa hoặc thay đổi khó hoàn tác | xác minh phạm vi và quyền ngay trước hành động |

Một yêu cầu có thể có một nhãn chính và các nhãn phụ theo thứ tự thực hiện.

## Kiểm tra điều hướng

- Nếu thiếu outcome, deliverable hoặc đối tượng xử lý và không thể suy ra an toàn, hỏi một câu ngắn.
- Nếu người dùng muốn phân tích nhưng nguồn, định nghĩa, kỳ thời gian, schema hoặc bằng chứng chưa rõ, chuyển sang `context-skill` trước.
- Nếu yêu cầu đã rõ và chỉ có một bước an toàn, không tạo thêm thủ tục intake không cần thiết.
- Nếu yêu cầu gồm nhiều giai đoạn, ghi thứ tự điều hướng thay vì gộp tất cả thành một hành động.
- Chi tiết chuyên môn chỉ cần ở giai đoạn sau phải được đánh dấu `Thông tin để sau`, không dùng để chặn việc tạo intent hoặc context.
