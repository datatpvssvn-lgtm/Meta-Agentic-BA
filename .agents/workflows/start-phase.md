# Bắt đầu một phase

## Mục đích

Dùng file này khi Duy mở một phase mới: audit nguồn, phân tích một case, dựng KPI Tree, tạo Power BI model, hoặc bắt đầu case Truther.

## Cách bắt đầu

1. Đọc yêu cầu mới nhất của Duy.
2. Đọc `AGENTS.md`, `context\WORKSPACE_CONTEXT.md`, `context\CURRENT_INTENT.md` và `01_inputs\<case>\context.md`.
3. Xác định case đang active, outcome, decision, deliverable, phạm vi và quyền hạn.
4. Kiểm tra source/readiness trước khi chọn workflow chuyên môn.
5. Chỉ hỏi Duy khi câu trả lời có thể đổi route, mức kết luận, source cần dùng hoặc quyền hành động.
6. Nêu ngắn: đang hiểu gì, sẽ làm bước nào, nguồn nào được dùng và giới hạn nào còn tồn tại.

## Gate trước khi làm

| Nếu cần | Thì làm |
|---|---|
| Outcome hoặc deliverable chưa rõ | Dùng `intent-skill` |
| Source, metric, owner hoặc vận hành chưa rõ | Dùng `context-skill` |
| Đủ source/context | Chọn workflow chuyên môn và tạo artefact |
| Cần xóa, publish, deploy, sửa Ads hoặc hệ thống ngoài | Xin xác nhận ngay trước hành động |

## Điểm dừng

Dừng hoặc quay lại context khi thiếu định nghĩa/source làm thay đổi kết luận. Không dừng chỉ vì còn những chi tiết chưa ảnh hưởng phase hiện tại.
