---
name: context-skill
description: "Xây context như knowledge repository và operating contract khi cần source, evidence, readiness, ontology hoặc vận hành hiện tại. Không dùng chỉ để làm rõ outcome/deliverable hay cho tác vụ một bước đã đủ nguồn."
---

# Kỹ năng Bối cảnh

Tạo context đáng tin cậy để workflow downstream không phải đoán lại project. Context vừa giữ tri thức có cấu trúc, vừa là operating contract cho AI biết phải kiểm tra gì, suy nghĩ theo rule nào và được đi bước nào tiếp theo. Skill dùng chung cho business, marketing, data, coding, pipeline, tài liệu và domain khác; facts riêng phải nằm trong output context, không hard-code vào skill.

## Quy trình

1. Định vị working document trước: ưu tiên đường dẫn được `AGENTS.md` hoặc `WORKSPACE_CONTEXT.md` chỉ rõ; nếu workspace có layout chuẩn Codex, đọc `AGENTS.md`, `context\WORKSPACE_CONTEXT.md`, `context\CURRENT_INTENT.md` rồi tìm context theo case tại `01_inputs\<case>\context.md`; nếu không, tìm theo bản đồ workspace. Sau đó xác định phạm vi context cần xây: toàn workspace, một project, một case hay một task. Tôn trọng vai trò và thứ tự ưu tiên được các file này quy định.
2. Chọn độ sâu: `nhanh cho task`, `đủ dùng cho case/project`, hoặc `khám phá vận hành đầy đủ`. Không mặc định làm một cuộc khảo sát toàn diện khi task chỉ cần vài fact.
3. Kiểm kê workspace và đọc các nguồn liên quan trước khi hỏi người dùng. Không hỏi lại điều file, schema, code, tài liệu hoặc hội thoại đã thể hiện.
4. Tách ba lớp: **Objective Context**, **mong muốn thực tế của phase** và **Current Operating Context**. Không trộn đích dài hạn, ưu tiên khả thi hiện tại và điều thực tế đang diễn ra.
5. Thu thập TOSCAR ở mức cần thiết cho phạm vi hiện tại theo [hợp đồng bằng chứng và bối cảnh](references/evidence-and-context-contract.md).
6. Kiểm kê nguồn theo loại, vị trí, owner, phạm vi, thời gian hoặc version, độ chi tiết và giới hạn sử dụng. Gắn mức sẵn sàng: `Sẵn có`, `Một phần`, `Chưa sẵn có` hoặc `To be updated`.
7. Lập knowledge/ontology seed ở độ sâu phù hợp: entity hoặc metric, definition, relationship, grain/key, business rule, source binding và owner/status. Không tạo ontology giả khi chưa có nguồn.
8. Lập sổ bằng chứng. Tách điều nguồn trực tiếp chứng minh, điều owner xác nhận, suy luận và phần `To be updated`; luôn nêu nguồn cùng giới hạn của nguồn.
9. Nếu còn khoảng trống, áp dụng phần **Hướng dẫn phỏng vấn bối cảnh** ngay trong skill này. Hỏi đúng người sở hữu câu trả lời; với learner-builder, giải thích từng khía cạnh bằng ví dụ và hỏi từ tình huống thật gần nhất.
10. Chỉ rõ downstream gate: bước nào được làm tiếp, điều kiện nào chưa đạt và phần nào phải dừng. Tạo hoặc cập nhật context; không tự chuyển sang phân tích, recommendation hay thay đổi file nguồn.

## Hướng dẫn phỏng vấn bối cảnh

Giúp xây context đủ dùng từ cả nguồn có sẵn và trao đổi với con người. Không mặc định người dùng biết thuật ngữ, biết toàn bộ quy trình hoặc là owner của mọi câu trả lời. Hội thoại là một phần của việc dựng context, không chỉ là bước xin dữ liệu để điền tài liệu.

### 1. Bốn thành phần cần phân biệt

#### A. Objective Context

- thành công trông như thế nào;
- đo bằng dấu hiệu hoặc metric nào;
- phạm vi, deadline và Definition of Done;
- nguyên tắc, ưu tiên và hard constraints;
- ai có quyền chốt hoặc thay đổi mục tiêu.

#### B. Mong muốn thực tế

- kết quả khả thi người dùng cần trong phase hiện tại;
- deliverable và Definition of Done gần nhất;
- điều được ưu tiên và điều để sau;
- giới hạn về thời gian, năng lực, quyền và source;
- reviewer nào sẽ đánh giá output phase.

Objective có thể chưa hoàn thiện nhưng mong muốn thực tế vẫn đủ rõ để làm một phase an toàn. Khi đó ghi Objective là `To be updated`, không ép người dùng phải biết toàn bộ chiến lược.

#### C. Current Operating Context

- ai làm gì, khi nào và bằng tool nào;
- input đi vào, output đi ra và nơi lưu;
- workflow, handoff, bước thủ công và điểm chờ;
- điều thực tế khác SOP hoặc tài liệu ở đâu;
- lỗi, ngoại lệ, workaround và quy tắc ngầm;
- phần phụ thuộc một cá nhân hoặc một hệ thống.

#### D. Bằng chứng và mức sẵn sàng

- nguồn nào chứng minh phát biểu nào;
- owner, kỳ thời gian, version, grain và population;
- dữ liệu có đủ cột, đủ lịch sử và có thể nối hay không;
- hạn chế quyền truy cập, chất lượng hoặc attribution;
- phần nào chỉ là lời xác nhận hoặc suy luận.

Không dùng Objective để mô tả thực tế. Không dùng Current Operating Context để kết luận quy trình đó là đúng. Không biến mong muốn phase thành mục tiêu dài hạn đã được owner phê duyệt.

### 2. Chọn độ sâu phỏng vấn

| Chế độ | Khi dùng | Cách trao đổi |
|---|---|---|
| Nhanh cho task | Chỉ cần context để trả lời hoặc làm một bước rõ ràng | Đọc nguồn, hỏi tối đa 1–3 điểm có thể đổi kết quả |
| Case/project | Cần tái sử dụng context qua nhiều task | Đi qua Objective, mong muốn thực tế, vận hành hiện tại và nguồn chính |
| Khám phá vận hành đầy đủ | Người dùng yêu cầu onboard, audit, SOP, pipeline hoặc gap analysis | Chia nhiều lượt hoặc form; phỏng vấn đúng stakeholder; xác minh bằng artefact |

Độ sâu do quyết định cần hỗ trợ quyết định, không do số trường trong template quyết định.

### 3. Ai nên trả lời điều gì

- **Decision owner:** mục tiêu, ưu tiên, target, giới hạn và tiêu chí duyệt.
- **Operator:** các bước thực tế, tool, handoff, ngoại lệ, workaround và pain point.
- **Data/system owner:** schema, lineage, quyền truy cập, lịch cập nhật và quality rule.
- **File, code, data, log:** cấu trúc và hành vi có thể quan sát trực tiếp.
- **AI:** tổng hợp, chỉ ra mâu thuẫn, đặt giả thuyết và nêu khoảng trống; không tự xác nhận fact nghiệp vụ.

Nếu người dùng không sở hữu câu trả lời, tạo một câu hỏi họ có thể chuyển đúng người thay vì ép họ đoán.

### 4. Thang câu hỏi từ dễ tới sâu

Với mỗi khía cạnh quan trọng, dùng tối đa các nấc cần thiết:

1. **Câu mở:** “Hiện việc này diễn ra thế nào?”
2. **Ví dụ thật:** “Lần gần nhất, từ lúc bắt đầu tới lúc xong đã xảy ra những bước nào?”
3. **Định lượng:** “Việc này xảy ra bao lâu một lần, mất bao lâu, hoặc ngưỡng nào được coi là ổn?”
4. **Nguồn:** “Điều đó được ghi ở file, hệ thống hay người nào?”
5. **Ngoại lệ:** “Trường hợp nào không đi theo luồng này?”

Không nhảy ngay tới câu hỏi trừu tượng như “pipeline của bạn là gì?” với newbie. Hãy bắt đầu bằng một ca thật, rồi ánh xạ thành pipeline.

### 5. Bản đồ khía cạnh để chọn câu hỏi

Chỉ chọn khía cạnh liên quan đến bước tiếp theo:

- **Purpose và outcome:** vì sao công việc tồn tại, output phục vụ ai.
- **Mong muốn phase:** kết quả khả thi, deliverable, Definition of Done và điều để sau.
- **People và quyền quyết định:** owner, operator, reviewer, stakeholder.
- **Process:** trigger, các bước, handoff, Definition of Done, exception.
- **Tool stack:** tool nào làm gì, nguồn chính thức nằm đâu, tích hợp nào đang có.
- **Data:** nguồn, schema, grain, key nối, lịch sử, refresh, chất lượng, quyền truy cập.
- **Business rules:** định nghĩa, công thức, threshold, approval và quy tắc ngầm.
- **Constraints:** thời gian, ngân sách, pháp lý, bảo mật, kỹ năng và hành động bị cấm.
- **Pain và risk:** điểm nghẽn, lỗi thường gặp, single point of failure, tác động.
- **Change history:** điều gì vừa đổi, version nào còn hiệu lực, vì sao đổi.
- **Ontology/source binding:** entity, metric, relationship, grain/key, business rule và nguồn dữ liệu tương ứng.

### 6. Cách hỗ trợ newbie

Trước một khái niệm mới, giải thích bằng một câu và cho ví dụ gần với công việc:

> “Handoff là lúc công việc hoặc dữ liệu được chuyển từ người/tool này sang người/tool khác. Ví dụ: Ads tạo tin nhắn rồi sale nhận để chốt. Trong ca gần nhất của bạn, có những lần chuyển giao nào?”

Cho phép người dùng:

- kể chuyện bằng lời thường thay vì dùng đúng thuật ngữ;
- đưa ước lượng thay vì số chính xác, nhưng phải gắn nhãn là ước lượng;
- trả lời `chưa rõ`;
- sửa lại bản tóm tắt của AI.

AI có trách nhiệm chuyển lời kể thành cấu trúc; người dùng không phải tự thiết kế data model hay quy trình trước khi được hỗ trợ.

### 7. Quy tắc `To be updated`

Nếu chưa có thông tin nhưng phần còn lại vẫn có thể tiến hành an toàn, ghi:

```markdown
Trạng thái: To be updated
Thiếu: [Thông tin chưa có]
Owner/nguồn xác nhận: [Ai hoặc nguồn nào]
Ảnh hưởng: [Đang chặn hoặc giới hạn bước nào]
Câu hỏi tiếp theo: [Câu hỏi ngắn để trao đổi với người dùng]
```

Không dùng placeholder rỗng. Một mục `To be updated` phải cho workflow sau biết ai cần hỏi, tại sao cần hỏi và trong lúc chờ vẫn làm được gì.

### 8. Vòng lặp phỏng vấn

1. Đọc nguồn và điền trước điều đã biết.
2. Nêu phạm vi của lượt trao đổi và lý do cần nó.
3. Hỏi một cụm nhỏ; với newbie ưu tiên một câu chính.
4. Tóm tắt bằng ngôn ngữ của người dùng rồi ánh xạ sang thuật ngữ chuẩn nếu cần.
5. Gắn trạng thái: nguồn xác minh, owner xác nhận, suy luận hoặc `To be updated`.
6. Nêu mâu thuẫn và hỏi đúng điểm phân xử, không âm thầm chọn một phiên bản.
7. Cập nhật context, gap và downstream gate; tiếp tục phần không bị chặn.

### 9. Khi nào dừng

Dừng khi:

- các fact có thể làm thay đổi output downstream đã có nguồn hoặc được gắn rõ trạng thái;
- Objective, mong muốn thực tế và vận hành hiện tại không còn bị trộn;
- owner, ràng buộc và nguồn chính đủ rõ để làm bước kế tiếp;
- khoảng trống còn lại đã có owner hoặc nguồn cần hỏi, hoặc được đưa vào danh sách cần xác minh.

Context “đủ dùng” quan trọng hơn context “biết mọi thứ”.

### 10. Dùng form đúng lúc

Form phù hợp khi có nhiều stakeholder hoặc cần thu thập không đồng bộ. Form phải được điền sẵn từ workspace, chia theo vai trò và ba lớp context, có ví dụ, cho phép `chưa rõ`, đồng thời đánh dấu phần `cần ngay` và `để sau`. Sau khi nhận form, vẫn phải kiểm tra mâu thuẫn và bằng chứng; không coi mọi câu trả lời là fact đã xác minh.

## Template và validation

- Dùng [template bản ghi bối cảnh](assets/templates/context-record.md) khi cần tạo mới hoặc chuẩn hóa context bền vững.
- Khi user yêu cầu audit cấu trúc hoặc source path trong layout chuẩn này, chạy `scripts/validate_workspace_context.ps1` trước khi kết luận. Script chỉ kiểm tra file/path và stale reference, không đọc raw data hay sửa file.

## Output: Bản ghi bối cảnh

Chọn output theo quy mô:

- **Task:** một bản ghi context ngắn, chỉ đủ cho bước hiện tại.
- **Case/project bền vững:** giữ riêng Objective Context, mong muốn thực tế và Current Operating Context; có thể nằm trong một file hoặc nhiều file theo kiến trúc workspace.
- **Khám phá đầy đủ:** ngoài ba lớp trên, chỉ tạo gap analysis hoặc danh sách vấn đề khi người dùng yêu cầu; đây là kết quả suy luận, không phải source fact.

- **Phạm vi:** workspace, project, case hoặc task được bao phủ và phần bị loại trừ.
- **TOSCAR:** Vấn đề, Owner, Thành công, Ràng buộc, Bên liên quan và Tham chiếu.
- **Mục tiêu thực tế và mục tiêu project:** tách outcome domain khỏi deliverable của project.
- **Mong muốn thực tế của phase:** kết quả khả thi, acceptance criteria và phần để sau.
- **Bản đồ workspace:** khu vực, artefact hoặc hệ thống chính và vai trò của chúng.
- **Kiểm kê nguồn và mức sẵn sàng:** dữ liệu, code, tài liệu, hình ảnh, hệ thống và phát biểu của owner khi phù hợp.
- **Định nghĩa và quy ước:** thuật ngữ, metric, schema, đơn vị, kỳ thời gian, version hoặc rule cần dùng nhất quán.
- **Knowledge/Ontology seed:** entity/metric, definition, relationship, grain/key, business rule, source binding và owner/status ở mức đủ dùng.
- **Sổ bằng chứng:** phát biểu, trạng thái, nguồn và giới hạn.
- **Gap và To be updated:** thiếu gì, owner/nguồn, ảnh hưởng, câu hỏi tiếp theo và phần vẫn làm được.
- **Thông tin để sau:** phần chỉ cần khi bắt đầu case hoặc workflow chuyên môn cụ thể.
- **Quy tắc chuyển giao:** điều gì được tái sử dụng và điều gì phải xác minh lại khi đổi project, domain hoặc case.
- **Downstream gate:** bước tiếp theo đã được duyệt, điều kiện cần đạt và điểm phải dừng.

Điều chỉnh độ dài theo quy mô task. Với context toàn workspace, ưu tiên bản đồ và source inventory; với context một case, ưu tiên định nghĩa và bằng chứng liên quan trực tiếp.

## Rào chắn

- Không trình bày suy luận hoặc lời xác nhận của con người như bằng chứng dữ liệu trực tiếp.
- Tên file, folder, bảng, trường, hàm hoặc nhãn không tự chứng minh ý nghĩa nghiệp vụ; ghi nhận nghĩa đó là `To be updated` nếu chưa có nguồn hỗ trợ.
- Không trộn số liệu khác cấp độ, đơn vị, kỳ thời gian, version hoặc population nếu chưa có rule nối hợp lệ.
- Không chuyển benchmark, kiến trúc, KPI, schema hoặc kết luận giữa các project/domain như một fact. Chỉ chuyển framework hoặc giả thuyết và xác minh lại trong context đích.
- Không xóa, ghi đè hay thay đổi nguồn khi đang dựng context. Chỉ output context mới hoặc bản nháp cập nhật được người dùng yêu cầu.
- Không coi chi tiết chỉ cần cho một case downstream là điều kiện bắt buộc của context chung.

Đọc `references/evidence-and-context-contract.md` trước khi gắn trạng thái bằng chứng hoặc viết câu hỏi mở. Áp dụng phần **Hướng dẫn phỏng vấn bối cảnh** khi người dùng cần được dẫn dắt, chưa biết cần cung cấp gì, có nhiều stakeholder hoặc đang xây context bền vững cho project/vận hành.
