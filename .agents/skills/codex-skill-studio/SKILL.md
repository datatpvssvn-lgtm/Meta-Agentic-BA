---
name: codex-skill-studio
description: "Tạo, sửa hoặc đánh giá reusable Codex skill. Dùng cho skill package, trigger, resources hoặc evaluation; không dùng cho tác vụ một lần hay hướng dẫn project chỉ cần AGENTS.md."
---

# Codex Skill Studio

## Hợp đồng vận hành

Coi skill là quy trình vận hành tái sử dụng cho một Codex instance khác. Skill chỉ nên chứa kiến thức workflow không hiển nhiên, thứ tự dùng tool đáng tin cậy và rule thực sự làm thay đổi quyết định. Không biến hướng dẫn tác vụ thông thường thành skill.

Trước một thay đổi lớn hoặc yêu cầu còn mơ hồ, trình bày draft specification để khóa trigger, input/output, resources và validation. Nếu người dùng đã duyệt rõ scope và yêu cầu thực hiện trực tiếp, không hỏi duyệt lại. Yêu cầu chỉ để khám phá, tư vấn, review hoặc lập plan không đồng nghĩa được phép tạo hay sửa file.

Sau create/edit đã duyệt, bắt buộc chạy structural validation. Behavioral walkthrough có thể dùng khi nằm trong scope đã duyệt; benchmark, baseline comparison, scorecard và subagent evaluation chỉ làm khi người dùng yêu cầu hoặc cho phép rõ.

## Workflow

### 1. Khám phá ý định có thể tái sử dụng

Đọc chat history và workspace liên quan trước khi hỏi. Trích xuất input, output, tool, correction, constraint và example hiện có.

Xác định sáu yếu tố trước khi viết draft:

1. Mục tiêu và đối tượng người dùng.
2. Positive trigger: prompt thực tế nên gọi skill.
3. Negative boundary: prompt gần giống nhưng không nên gọi skill.
4. Input/output contract.
5. Tiêu chí thành công và failure mode.
6. Resource có thể tái dùng, đủ giá trị để tạo reference, script hoặc asset.

Đọc [hợp đồng thiết kế skill](references/skill_design_contract.md) khi xác định boundary, lựa chọn resource hoặc progressive disclosure.

### 2. Tạo draft specification

Trình bày bản nháp ngắn trước khi viết file. Bao gồm: tên skill, vị trí, trigger description, workflow, resources, output dự kiến, validation plan và hành vi ngoài phạm vi.

Chỉ hỏi khi câu trả lời có thể thay đổi workflow, trigger boundary, quyền ghi, installation scope hoặc phương pháp evaluation. Dùng câu trả lời của người dùng để thay giả định trong draft.

### 3. Tạo hoặc chỉnh sửa sau khi được duyệt

Với personal skill mới, khởi tạo folder bằng `init_skill.py` đã cài trong Codex tại personal skills directory. Dùng lowercase hyphen-case; tên folder phải trùng `name` trong frontmatter.

Frontmatter bắt buộc có `name` và `description`; giữ supported optional metadata đang có nếu còn phù hợp. Description phải front-load use case, đủ chính xác để route đúng request, không keyword stuffing và không mở rộng sang việc không liên quan.

Tạo mới hoặc cập nhật có mục tiêu `agents/openai.yaml` theo skill hoàn chỉnh. Giữ display name, short description, default prompt, invocation policy và dependency khớp workflow thật; không ghi đè field không thuộc phạm vi sửa.

Chỉ thêm resource khi giảm việc lặp lại hoặc cung cấp domain knowledge cần thiết:

- Đặt thao tác lặp lại, deterministic vào `scripts/` và test từng script mới.
- Đặt rule chi tiết, chỉ cần trong điều kiện nhất định vào `references/`.
- Đặt material cần đưa vào output vào `assets/`.

Giữ progressive disclosure:

- `name` và `description` dùng để chọn skill;
- `SKILL.md` giữ workflow, routing và rào chắn cốt lõi;
- `references/` chỉ chứa chi tiết cần đọc theo điều kiện;
- `scripts/` dành cho thao tác lặp lại cần tính xác định;
- `assets/` là vật liệu đưa vào output.

Không tạo README, changelog, installation guide, speculative template, scorecard mặc định hay tài liệu trùng lặp.

### 4. Validate skill hoàn chỉnh

Chạy `quick_validate.py` đã cài trong Codex sau mọi create/edit được duyệt. Kiểm tra folder cuối cùng để chắc chắn reference link tồn tại, `agents/openai.yaml` khớp invocation policy, không còn scaffold chưa hoàn thiện hoặc resource directory không dùng.

Báo cáo installed path, trigger boundary, file đã tạo/sửa, validation result và known limitation.

### 5. Chỉ evaluation khi được yêu cầu

Khi người dùng yêu cầu evaluation, benchmark, tối ưu trigger hoặc so sánh version, đọc [quy trình đánh giá](references/evaluation_protocol.md) trước khi làm.

Quy trình này quy định test prompt, baseline, rubric, human review, chống overfitting và điều kiện dừng.

Chỉ tạo evaluation artefact hoặc scorecard khi người dùng yêu cầu. Nếu có, để artefact tách khỏi installed skill. Không sửa production skill từ một evaluation result cho tới khi người dùng duyệt revision đề xuất.

Chỉ dùng subagent khi người dùng cho phép evaluation hưởng lợi từ thực thi độc lập. Cung cấp evaluator task-local artefact và prompt, không đưa intended answer hay prior diagnosis.

## Quy tắc quyết định

- Ưu tiên prompt thường hoặc `AGENTS.md` cho hướng dẫn một lần hay chỉ thuộc một repository, không cần workflow tái sử dụng.
- Ưu tiên skill khi có recognizable intent, các bước lặp lại và output expectation ổn định.
- Ưu tiên MCP server hoặc connector cho authenticated data/action; skill hướng dẫn cách dùng chứ không cấp quyền.
- Ưu tiên hook cho lifecycle enforcement mang tính cơ học và automation cho việc lặp theo lịch; không dùng skill để thay thế hai cơ chế này.

## Điều kiện hoàn thành

Create/revision chỉ hoàn thành khi skill đã duyệt có trigger description rõ, body gọn, progressive disclosure hợp lý, resource cần thiết, UI metadata/invocation khớp và structural validation pass. Evaluation chỉ hoàn thành khi finding phân biệt được trigger, workflow, output, resource và human-judgment issue.
