# Hợp Đồng Thiết Kế Skill

## Mục tiêu

Thiết kế cho một Codex khác có thể xử lý workflow lặp lại, không chỉ hoàn thành một ví dụ duy nhất. Giữ `SKILL.md` là quy trình cốt lõi; đưa chi tiết chỉ dùng trong một số tình huống vào `references/`.

## Trigger boundary

Mô tả phải trả lời cả hai câu:

- Việc gì skill giải quyết và dấu hiệu nào cho thấy nên dùng skill?
- Việc gần giống nào không thuộc skill?

Dùng prompt thực tế, có ngữ cảnh và chi tiết. Tránh trigger chỉ bằng từ khóa. Một description tốt nhận ra mục tiêu của người dùng, không chỉ tên file hay tool.

## Hợp đồng input và output

Ghi rõ input cần thiết, trạng thái thiếu input, output mà người dùng có thể kiểm tra, và nguồn/giới hạn phải được nêu. Không tự suy ra dữ liệu, quyền truy cập, hay business definition còn thiếu.

## Progressive disclosure

- Metadata: tên và trigger, luôn hiện diện.
- `SKILL.md`: quyết định và workflow cốt lõi, chỉ tải khi skill trigger.
- `references/`: rule, schema, ví dụ hoặc biến thể chỉ đọc khi cần.
- `scripts/`: thao tác lặp lại cần tính xác định; không chứa secret.
- `assets/`: vật liệu sẽ được đưa vào output, không phải ghi chú hướng dẫn.

Tránh lặp cùng một rule ở nhiều file. Mỗi reference phải được liên kết trực tiếp từ `SKILL.md` cùng điều kiện đọc rõ ràng.

Frontmatter bắt buộc có `name` và `description`. Giữ supported optional metadata khi nó còn đúng; không xóa chỉ để ép mọi skill về cùng một mẫu tối thiểu.

`agents/openai.yaml` là optional UI/invocation metadata. Khi cập nhật, giữ field `policy` hoặc `dependencies` không thuộc phạm vi sửa. `allow_implicit_invocation: false` chỉ dùng khi skill được chủ ý thiết kế explicit-only.

## Chọn độ tự do

- Dùng hướng dẫn linh hoạt khi judgment phụ thuộc context.
- Dùng checklist hoặc pseudocode khi có pattern ưu tiên.
- Dùng script với ít tham số khi thao tác dễ sai, cần lặp lại nhất quán, hoặc cần kiểm chứng máy.

## Quyền ghi và an toàn

Phân biệt draft/plan với quyền tạo hoặc sửa file. Mọi skill phải nói rõ destructive action, external action, credential, và dữ liệu thiếu cần được xử lý ra sao.
