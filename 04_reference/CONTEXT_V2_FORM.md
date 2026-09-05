# Form chốt Context v2 — Meta Agentic BA

> Lưu ý: đây là snapshot lịch sử trước khi workspace được chuẩn hóa theo `AGENTS.md`, `.agents\skills` và `context\`. Các path cũ bên dưới chỉ có giá trị tham khảo lịch sử.

> Điền ngắn gọn bằng lời thường. Chỗ nào chưa biết ghi `chưa rõ`.  
> Nội dung ghi **[Đã biết]** là thông tin Duy đã cung cấp; chỉ sửa nếu sai.  
> Có thể trả lời ngay trong chat theo mã `A1`, `B1`... không cần sửa trực tiếp file.

## A. Chốt cấu trúc file

### A1. Cấu trúc này có đúng ý Duy không?

```text
D:\Meta Agentic BA
├── WORKSPACE_CONTEXT.md
├── intent.md
├── agent.md                         # Làm sau
├── [META_ADS_SKILL_INTAKE.md đã được hợp nhất vào context và gỡ]
├── 01_inputs\
│   ├── joycat\
│   │   ├── output_objective_context.md
│   │   ├── current_operating_context.md
│   │   ├── gap_analysis.md          # Chỉ tạo khi đủ context
│   │   └── raw\
│   └── truther\                     # Tạo khi có data
└── skills\
```

→ Trả lời: `đúng` hoặc ghi cấu trúc muốn sửa.

### A2. Xử lý `context.md` đang ở root

Mình đề xuất tách nội dung cần thiết sang hai file Joycat rồi **xóa `context.md` ở root** để không còn hai source of truth.

→ Duy đồng ý không? => ok b nhé 

### A3. Context Truther

Mình đề xuất chưa tạo context Truther cho tới khi Duy cung cấp path dữ liệu hoặc bắt đầu case Truther.

→ `đồng ý` / `tạo khung Truther ngay => ok b nhé`

## B. Mục tiêu chung của workspace

### B1. Loại đối tượng

Mình đang hiểu đây là **project xây agentic analytical pipeline, chưa có deadline cố định**, không phải một bộ phận vận hành định kỳ.

→ Đúng không? Nếu sai, sửa lại.

### B2. Thành công của workspace

**[Đã biết]** Workspace cần giúp Duy:

- Hiểu đúng yêu cầu ở nhiều domain.
- Đọc context và raw trước khi hỏi.
- Phân tích Meta Ads/marketing trước, sau đó mở rộng.
- Tạo KPI Tree, Metric Tree, Logic Tree, report và decision artefact.
- Tiến tới Power BI khi tool/data sẵn sàng.

→ Còn kết quả quan trọng nào phải có để Duy nói “workspace này dùng được rồi”? => update sau nhé 

### B3. Mục tiêu 30 ngày

**[Đã biết]** Duy chưa chốt mục tiêu 30 ngày.

→ Giữ là `chưa rõ`, hay bây giờ Duy muốn chốt một mục tiêu?

### B4. Thứ tự ưu tiên khi phải trade-off

Xếp thứ tự hoặc sửa các mục sau:

- Đúng logic và truy xuất được bằng chứng.
- Dễ hiểu để Duy học.
- Ra output nhanh.
- Dễ đưa vào Power BI.
- Tự động hóa nhiều.

→ Thứ tự của Duy: ok rồi nehs mình k cần sửa 

### B5. Hard constraints

**[Đã biết]** Không xóa file nếu chưa hỏi; không làm phi pháp/trái policy; không tự sửa Ads hoặc hệ thống ngoài; không biến inference thành fact.

→ Còn điều gì tuyệt đối không được làm?

## C. Output Objective Context — Joycat

### C1. Joycat được dùng để làm gì?

**[Đã biết]** Joycat là case benchmark để Duy học mechanism, campaign/ad structure, funnel, LAL, metric và logic; Duy không làm tại Joycat.

→ Có cần sửa hoặc thêm mục tiêu nào không? ko

### C2. Definition of Done của KPI 1

Chọn một:

- **A — Giải thích tính khả thi:** dùng raw Meta + xác nhận của cậu Sinh để giải thích structure/logic phù hợp với phát biểu 5–10%; không tái tính GMV.
- **B — Tái tính chính xác:** phải có GMV/order all-platform cùng kỳ và rule mapping rồi mới kết luận.
- **C — Làm A trước, B khi có data.**

→ Duy chọn: a

### C3. Output cụ thể Duy muốn nhận từ Joycat

Đánh dấu hoặc thêm:

- [ ] Data/source inventory và quality report.
- [ ] Campaign/ad structure map.
- [ ] Funnel/LAL map.
- [ ] KPI Tree.
- [ ] Metric Tree.
- [ ] Logic Tree.
- [ ] Power BI data model/dashboard.
- [ ] Decision brief và bài học chuyển sang Truther.
- [ ] Khác: ...


### C4. Kỳ phân tích ưu tiên

Raw hiện có tháng 03–05/2026; một số workbook chỉ có tháng 03–04.

→ Phân tích cả T3–T5, hay bắt đầu từ tháng nào? 3-4-5 luôn nhé 

### C5. Người xác nhận objective

Mình đang hiểu:

- Duy xác nhận mục tiêu học và output cần nhận.
- Cậu Sinh xác nhận logic domain và phát biểu Ads Cost / GMV 5–10%.

→ Đúng không? Có thêm owner/reviewer nào không? => mình làm, và trao đổi với cậu Sinh để khi nào xong thì làm tiếp 

### C6. Nguyên tắc chuyển sang Truther

**[Đã biết]** Chỉ chuyển framework và hypothesis; không copy campaign structure, KPI target hoặc conclusion. Không dùng cách phi pháp; mỗi platform phải được hiểu và xác minh riêng.

→ Có cần thêm nguyên tắc nào không? cái này tính sau làm xong joycat đã 

## D. Current Operating Context — Joycat và cách Duy đang làm

### D1. Workflow hiện tại của Duy

Mình đang hiểu workflow thực tế hiện nay là:

1. Mỗi ngày Duy kiểm tra Ads và doanh thu.
2. Duy hỏi “anh Duy” Ads nào ra đơn nhiều.
3. Duy dùng raw Joycat để học structure/logic.
4. Hiện đang setup trên Codex; Power BI Pro chưa sẵn sàng.

→ Sửa lại workflow này cho đúng. Mỗi bước nếu biết, ghi thêm `ai làm | tool | output`.

### D2. Làm rõ người liên quan

Trong hội thoại có **Duy là bạn** và có câu “hỏi anh Duy Ads nào ra đơn nhiều”.

→ “Anh Duy” là người khác hay chính Duy? Vai trò của người đó là gì? => Anh Duy là Sếp của Truther Piece á là chủ

### D3. Nguồn Joycat dùng làm analytical source

Raw có các nhánh:

- `meta_ads/preferred_candidate`
- `meta_ads/variants/dataset_xlsx`
- `meta_ads/variants/legacy_dataset`
- `business_workbooks`

→ Nhánh nào là source gốc/canonical? Nếu chưa rõ ghi `chưa rõ — cần audit provenance`. chưa rõ nữa 

### D4. Derived columns

Các cột `Phễu`, `AD format`, ID mapping xuất hiện trong variant.

→ Ai tạo chúng? Rule nằm ở đâu? Nếu không biết ghi `chưa rõ`. => cậu Sinh á 

### D5. Data flow hiện tại

Điền những gì đang thực sự xảy ra:

```text
Meta Ads export → [Duy] → [drive] → [Duy]
→ [pbi cá nhân sau này chuyển lên pro bản công ty ] → [pbi frive]
```

### D6. Bottleneck lớn nhất hiện tại

Chọn hoặc bổ sung:

- [ ] Chưa biết source nào canonical.
- [ ] Thiếu GMV/order all-platform.
- [ ] Chưa hiểu metric và campaign naming.
- [ ] Chưa có data model/Power BI.
- [ ] Chưa có workflow phân tích chuẩn.
- [ ] Khác: ...

### D7. Khi cần số doanh thu hoặc đơn thực tế

**[Đã biết]** Duy sẽ hỏi sếp/owner và báo lại; không có quyền lấy file đơn Joycat.

→ Người Duy sẽ hỏi là ai và thường nhận câu trả lời ở dạng nào: số tổng, ảnh, chat hay file? => chat

## E. Phê duyệt thực hiện sau khi điền form

### E1. Sau khi Duy trả lời, mình được phép thực hiện các việc sau không?

- Tạo `01_inputs\joycat\output_objective_context.md`.
- Tạo `01_inputs\joycat\current_operating_context.md`.
- Chỉ tạo `gap_analysis.md` nếu hai context đã đủ dữ liệu; nếu chưa đủ thì ghi backlog câu hỏi.
- Cập nhật `WORKSPACE_CONTEXT.md` và pipeline diagram.
- Cập nhật `intent.md` để trỏ đúng context theo case.
- Cập nhật và đồng bộ `context-skill` để tìm context trong folder case.
- Xóa `context.md` ở root sau khi đã kiểm tra nội dung được chuyển đầy đủ.

→ Trả lời: `duyệt toàn bộ` hoặc ghi mục không được làm. trước khi làm báo mình là được 

### E2. Sau Context v2, bước tiếp theo

Mình đề xuất dừng ở context để Duy review, sau đó mới cùng thiết kế `agent.md`.

→ `đồng ý` / ghi bước tiếp theo khác. đồng ý
