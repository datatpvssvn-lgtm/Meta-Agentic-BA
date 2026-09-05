---
name: intent-skill
description: "Làm rõ Objective Context, mong muốn thực tế, deliverable, scope hoặc route khi yêu cầu còn mơ hồ. Dùng để cùng người dùng tìm đúng việc cần làm; không dùng cho tác vụ một bước đã rõ hoặc audit source/evidence."
---

# Kỹ năng Ý định

Đóng vai lớp tiếp nhận và đồng khám phá của workspace. Cùng người dùng hiểu đích dài hạn, điều họ thực sự cần ở phase hiện tại và bước nên làm tiếp trước khi xây context, phân tích hoặc thực thi. Không chứa kiến thức cố định của một project hay domain cụ thể.

## Quy trình

1. Đọc yêu cầu mới nhất và định vị các working document trước: ưu tiên đường dẫn được `AGENTS.md` hoặc `WORKSPACE_CONTEXT.md` chỉ rõ; nếu workspace có layout chuẩn Codex, đọc `AGENTS.md`, `context\WORKSPACE_CONTEXT.md`, `context\CURRENT_INTENT.md` rồi tìm context theo case tại `01_inputs\<case>\context.md`; nếu không, tìm theo bản đồ workspace. Không bắt người dùng lặp lại điều workspace đã ghi nhận.
2. Nhận diện mức rõ của yêu cầu và mức quen thuộc của người dùng: đã biết rõ việc cần làm; biết vấn đề nhưng chưa biết output; hoặc chưa biết bắt đầu từ đâu.
3. Xác định đối tượng hoặc case, Objective Context, mong muốn thực tế của phase, quyết định cần hỗ trợ, deliverable, phạm vi, ràng buộc và mức hành động được phép.
4. Phân loại yêu cầu theo [hợp đồng điều hướng](references/intent-routing.md).
5. Tách phần cần biết ngay khỏi phần chỉ cần khi bắt đầu một bước chuyên môn cụ thể.
6. Nếu cần trao đổi, áp dụng phần **Hướng dẫn trao đổi và khám phá ý định** ngay trong skill này. Hỏi câu có khả năng làm thay đổi hướng xử lý lớn nhất; với learner-builder, giải thích bằng lời thường và cho ví dụ trả lời trước khi hỏi.
7. Phản biện khi prompt, assumption hoặc deliverable không phục vụ Objective Context hay mong muốn thực tế. Nêu điểm lệch, ảnh hưởng và 2–3 hướng thay thế; không chỉ đồng ý hoặc tự chọn thay người dùng.
8. Sau mỗi lượt quan trọng, phản chiếu ngắn điều đã hiểu, đánh dấu giả định và cho người dùng sửa. Nếu chưa biết, ghi `To be updated` theo hợp đồng bên dưới và tiếp tục phần không bị chặn.
9. Dừng hỏi khi Objective Context, mong muốn thực tế, deliverable, phạm vi và quyền hạn đã đủ ổn định cho bước kế tiếp. Tạo hoặc cập nhật bản ghi ý định trước khi chuyển sang context hay workflow chuyên môn. Không thực hiện luôn công việc downstream trong vai trò của skill này.

## Hướng dẫn trao đổi và khám phá ý định

Giúp một người đi từ “tôi chưa biết phải bắt đầu thế nào” tới một yêu cầu đủ rõ để làm việc. Đây là cách hội thoại thích nghi, không phải bảng hỏi bắt buộc.

### Ba lớp cần phân biệt

1. **Objective Context:** đích dài hạn, định nghĩa thành công và nguyên tắc không muốn đánh đổi.
2. **Mong muốn thực tế:** kết quả khả thi người dùng cần ở phase hiện tại, kể cả khi đích dài hạn chưa đo được.
3. **Current Operating Context:** hiện có gì và đang làm thế nào; phần này chỉ ghi sơ bộ rồi chuyển `context-skill` nếu cần kiểm kê nguồn hoặc vận hành.

Không bắt người dùng phải định nghĩa hoàn hảo đích dài hạn mới được làm việc. Nếu Objective còn mở nhưng mong muốn hiện tại đã rõ và an toàn, ghi Objective là `To be updated` rồi điều hướng phase hiện tại.

### 1. Chọn chế độ trước khi hỏi

| Tình trạng của người dùng | Dấu hiệu | Cách làm |
|---|---|---|
| Đã rõ | Nêu được outcome và deliverable | Tóm tắt, xác nhận điểm quan trọng, điều hướng ngay |
| Biết vấn đề | Mô tả được điều đang xảy ra nhưng chưa biết cần output gì | Dùng ví dụ để chuyển vấn đề thành quyết định và deliverable |
| Learner-builder | Nói “không biết”, dùng thuật ngữ chưa chắc nghĩa hoặc chưa biết lựa chọn | Giải thích ngắn, đưa 2–3 giả thuyết để cùng phản biện, hỏi từng câu một |
| Có nguồn sẵn | Đưa folder, file, data, code hoặc tài liệu | Đọc nguồn trước; chỉ hỏi điều nguồn không thể chứng minh |
| Có xung đột | Nhiều mục tiêu, owner hoặc yêu cầu mâu thuẫn | Nêu xung đột, hỏi ai quyết định và ưu tiên nào thắng |

### 2. Tư duy chọn câu hỏi

Ưu tiên câu hỏi có **giá trị thông tin cao nhất**: nếu câu trả lời khác nhau, hướng làm tiếp theo cũng thay đổi đáng kể.

Thứ tự thường dùng:

1. **Tình huống:** Chuyện gì đang xảy ra, với đối tượng nào?
2. **Objective:** Về dài hạn, người dùng muốn trạng thái nào?
3. **Mong muốn thực tế:** Trong phase này, kết quả khả thi nào có ích nhất?
4. **Quyết định hoặc hành động:** Output này giúp ai quyết định hoặc làm gì?
5. **Deliverable:** Cần một câu trả lời, file, phân tích, kế hoạch hay thay đổi hệ thống?
6. **Phạm vi:** Bao gồm và loại trừ phần nào?
7. **Ràng buộc và quyền hạn:** Điều gì không được làm hoặc cần phê duyệt?
8. **Input:** Nguồn nào đã có và nguồn nào còn thiếu?

Không cần hỏi đủ bảy nhóm. Bỏ qua câu không ảnh hưởng bước kế tiếp. Không hỏi để “điền đủ form”; mỗi câu phải làm rõ outcome, phạm vi, quyền hạn, deliverable hoặc hướng đi.

### 3. Cách hỏi cho người chưa biết gì

Mỗi câu nên có tối đa ba phần:

1. **Giải thích bằng lời thường:** thuật ngữ này có nghĩa gì trong tình huống của họ.
2. **Ví dụ trả lời:** 2–3 khả năng gần với ngữ cảnh, không ép người dùng chọn đúng một đáp án.
3. **Một câu hỏi chính:** ngắn, chỉ hỏi một quyết định nhận thức tại một thời điểm.

Ví dụ:

> “Outcome” là dấu hiệu cho thấy việc này đã xong, không phải cách thực hiện. Ví dụ: hiểu nguyên nhân, có dashboard để theo dõi, hoặc sửa được lỗi. Với việc này, bạn muốn điều gì thay đổi nhất sau khi làm xong?

Nếu người dùng trả lời `chưa rõ`, không hỏi lại cùng câu bằng từ ngữ khó hơn. Hãy:

- hỏi một ví dụ gần nhất: “Lần gần nhất chuyện này xảy ra là khi nào?”;
- đưa vài phương án để họ phản biện;
- hoặc chuyển câu trả lời thành mục `To be updated`, xác định ai hoặc nguồn nào có thể trả lời và tiếp tục phần khác.

### 4. Thang đào sâu

Dùng từ rộng tới cụ thể, chỉ đi xuống khi câu trả lời phía trên chưa đủ:

1. **Mô tả:** “Bạn đang gặp chuyện gì?”
2. **Ví dụ gần nhất:** “Một trường hợp thật gần đây diễn ra thế nào?”
3. **Ảnh hưởng:** “Nó làm ai mất thời gian, tiền hoặc chất lượng ở đâu?”
4. **Mong muốn:** “Nếu giải quyết được, kết quả quan sát được là gì?”
5. **Quyết định:** “Có kết quả đó rồi, bạn hoặc ai sẽ quyết định gì?”
6. **Bằng chứng:** “Dùng nguồn nào để biết kết quả là đúng?”

Các góc `ai`, `khi nào`, `ở đâu`, `tool nào`, `data nào`, `ngoại lệ nào` chỉ được mở khi chúng thực sự ảnh hưởng hướng đi.

### 5. Vòng lặp hội thoại

1. Đọc nguồn và lịch sử đã có.
2. Nói lại trong 1–3 câu: đã hiểu gì, chưa chắc gì.
3. Hỏi tối đa 1–3 câu cùng một chủ đề; với newbie ưu tiên 1 câu.
4. Nói ngắn lý do cần câu trả lời nếu lý do không hiển nhiên.
5. Phản chiếu câu trả lời, phân biệt fact với giả định và cho người dùng sửa.
6. Cập nhật bản ghi ý định rồi chọn: hỏi tiếp, chuyển context, hay bắt đầu workflow chuyên môn.

### 6. Phản biện có ích

Phản biện khi có ít nhất một dấu hiệu:

- deliverable được yêu cầu không giúp đạt mong muốn thực tế;
- người dùng đang tối ưu metric thay vì outcome;
- assumption chưa có nguồn nhưng sẽ đổi hướng làm;
- scope vượt quá dữ liệu, thời gian hoặc quyền hạn;
- người dùng yêu cầu thực thi khi mục tiêu còn mâu thuẫn.

Cấu trúc phản biện: **điểm chưa ổn → vì sao ảnh hưởng → phương án khả thi → câu hỏi cần chốt**. Không dùng phản biện để trì hoãn tác vụ một bước đã rõ.

### 7. Quy tắc `To be updated`

Khi thông tin chưa có nhưng không chặn toàn bộ phase, ghi:

```markdown
Trạng thái: To be updated
Thiếu: [Thông tin chưa có]
Owner/nguồn xác nhận: [Ai hoặc nguồn nào]
Ảnh hưởng: [Đang chặn hoặc giới hạn bước nào]
Câu hỏi tiếp theo: [Câu hỏi ngắn để trao đổi với người dùng]
```

Không dùng `To be updated` như placeholder rỗng. Mỗi mục phải có owner/nguồn, ảnh hưởng và câu hỏi tiếp theo.

### 8. Khi nào dừng hỏi

Dừng khi:

- Objective đã được ghi nhận hoặc đánh dấu `To be updated`, còn mong muốn thực tế và deliverable đủ để nhận biết hoàn thành phase;
- phạm vi và quyền hạn đủ an toàn cho bước kế tiếp;
- hướng xử lý sẽ không đổi dù các chi tiết còn lại có câu trả lời khác;
- phần chưa rõ đã được chuyển thành giả định công khai hoặc danh sách cần xác minh.

Không cố làm rõ toàn bộ domain trước khi tạo ra giá trị đầu tiên.

### 9. Khi nào dùng form

Chỉ tạo form khi người dùng muốn trả lời không đồng bộ, có nhiều stakeholder, hoặc số nhóm thông tin quá lớn cho hội thoại ngắn. Form phải:

- điền sẵn điều đã biết;
- giải thích bằng lời thường và có ví dụ;
- cho phép trả lời `chưa rõ`;
- chia phần `cần ngay` và `để sau`;
- không hỏi dữ liệu đã có trong workspace.

### 10. Những cách hỏi cần tránh

- Gửi một danh sách dài trước khi người dùng hiểu câu hỏi dùng để làm gì.
- Hỏi bằng thuật ngữ chuyên môn mà không giải thích hoặc đưa ví dụ.
- Dẫn dắt để người dùng xác nhận giả thuyết của AI.
- Hỏi lại dữ kiện có thể đọc từ nguồn.
- Ép người dùng đưa con số chính xác khi họ chỉ có ước lượng.
- Tiếp tục phỏng vấn dù hướng xử lý và bước kế tiếp đã rõ.

## Template output

Dùng [template bản ghi ý định](assets/templates/intent-record.md) khi tạo hoặc thay thế một intent file. Không cần copy nguyên template nếu task chỉ cần một bản ghi ngắn.

## Output: Bản ghi ý định

Dùng Markdown ngắn gọn với các trường phù hợp:

- **Vấn đề / case:** đối tượng đang được xử lý.
- **Objective Context:** đích dài hạn, success criteria, nguyên tắc hoặc phần `To be updated`.
- **Mong muốn thực tế:** kết quả khả thi cần đạt trong phase hiện tại.
- **Current Operating Context sơ bộ:** hiện có gì đủ để route; phần kiểm kê sâu chuyển context-skill.
- **Quyết định cần hỗ trợ:** quyết định mà output sẽ giúp người dùng đưa ra; ghi `không áp dụng` nếu đây là tác vụ thực thi rõ ràng.
- **Deliverable:** file, câu trả lời, thay đổi hoặc kết quả cần bàn giao.
- **Ý định:** một nhãn trong reference.
- **Input đã biết:** nguồn và phạm vi đã được nêu hoặc đọc thấy.
- **Phần còn thiếu:** chỉ những gì cần cho bước tiếp theo.
- **To be updated:** unknown không chặn phase, kèm owner/nguồn, ảnh hưởng và câu hỏi tiếp theo.
- **Ràng buộc và quyền hạn:** điều được phép, không được phép hoặc cần phê duyệt.
- **Điều hướng:** skill, workflow, hành động tiếp theo hoặc một câu hỏi làm rõ.
- **Độ tin cậy:** cao / trung bình / thấp dựa trên độ rõ của yêu cầu.
- **Cách hỗ trợ tiếp theo:** mức giải thích và cách tương tác phù hợp với người dùng, nếu điều này ảnh hưởng workflow.
- **Thông tin để sau:** phần phụ thuộc vào case hoặc giai đoạn downstream.

Không ép mọi trường phải dài. Bỏ qua chi tiết không ảnh hưởng đến điều hướng.

## Ranh giới

- Việc hiểu hoặc phân loại yêu cầu không tự cấp quyền sửa file, gọi API, gửi thông tin, triển khai hay thay đổi hệ thống bên ngoài.
- Không biến một ví dụ, project hoặc domain hiện tại thành quy tắc dùng chung của skill.
- Không phân tích sâu, tính toán, đề xuất chuyên môn hoặc tạo artefact downstream khi đang chỉ lập bản ghi ý định.
- Không dùng bảng hỏi tổng quát để chặn công việc. Chỉ hỏi điều mà câu trả lời có thể làm thay đổi outcome, phạm vi, quyền hạn hoặc hướng xử lý kế tiếp.

Đọc `references/intent-routing.md` mỗi khi cần gán nhãn hoặc chọn hướng đi. Áp dụng phần **Hướng dẫn trao đổi và khám phá ý định** khi yêu cầu chưa rõ, người dùng là learner-builder, cần trao đổi nhiều lượt hoặc cần tạo form intake.
