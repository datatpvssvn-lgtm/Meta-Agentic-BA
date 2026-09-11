# Ý định hiện tại — Hoàn thiện Context và bộ logic phân tích Joycat trước ETL

> Phiên bản: 17.0  
> Cập nhật: 2026-09-05  
> Người chịu trách nhiệm nội dung: Duy  
> Người đánh giá và quyết định chuyển bước: cậu Sinh  
> Trạng thái: Đã cập nhật làm rõ thiết kế tư duy và cầu nối dữ liệu; đang chờ Duy/cậu Sinh review; chưa chuyển sang chạy pipeline ETL hay báo cáo phân tích hiệu quả Joycat.

---

## 1. Duy đang làm gì?

Duy đang **hoàn thiện cách tư duy và thiết kế phân tích dữ liệu marketing Joycat trước ETL**, đồng thời chuẩn hóa cách AI tiếp nhận công việc khi nhận workspace.

Cụ thể, Duy cần hiểu rõ và định hình trong tài liệu:
- Đang phân tích điều gì và vì sao cần phân tích.
- Ads Cost được phân rã theo những đầu mục/lát cắt nào (Nền tảng, Sản phẩm, Phễu, Objective).
- Những nhóm chỉ số liên hệ với nhau như thế nào về mặt toán học và quy trình.
- Mỗi chỉ số cần được đọc trong bối cảnh nào, nhiệm vụ nào của quảng cáo.
- Khi xuất hiện một câu hỏi, phải chọn góc nhìn nào, so với nhóm nào và cần bằng chứng gì.
- Cần dữ liệu gì để thực hiện được cách phân tích đó.
- Khi thiếu dữ liệu: phần nào vẫn thiết kế/phân tích thăm dò được, phần nào bị chặn và chưa được phép kết luận.

> **Ranh giới:** Kết quả hiện tại là **thiết kế phân tích đủ rõ để chuẩn bị cho ETL**; chưa phải là kết quả phân tích hay kết luận hiệu quả kinh doanh của Joycat.

---

## 2. Vì sao cần làm bước này?

1. **Từ suy diễn đơn giản sang quan hệ toán học có điều kiện:**
   Trước đây, Duy từng diễn giải đơn giản rằng “CPM cao thì ROAS giảm”. Sau đó, Duy đã bổ sung điều kiện toán học: quan hệ thuận/nghịch chỉ đúng khi các biến khác trong công thức được giữ nguyên. Đây là bước tiến về logic toán học, nhưng chưa đủ để phân tích một case thực tế vì trong thực tế nhiều biến cùng biến động.
2. **Từ công thức toán sang thiết kế kiểm tra theo bối cảnh:**
   Duy đã liệt kê được nhiều góc nhìn (4 chiều, 6 cặp, 5 nhóm metric). Việc cần tiếp tục ngay lúc này là làm rõ:
   - Câu hỏi nào cần góc nhìn nào.
   - Vì sao phải chọn góc đó mà không nhìn tổng thể.
   - So với nhóm nào (nhóm so sánh tương đồng).
   - Đọc những chỉ số nào cùng nhau (không đọc đơn lẻ một metric).
   - Kiểm tra giả thuyết bằng nguồn/bằng chứng nào.
   - Khi nào chỉ dừng ở mức mô tả hiện tượng, khi nào mới đủ cơ sở để đưa ra kết luận.

> **Lưu ý chuẩn mực:** Đây là bối cảnh và ý định do Duy xác nhận. Không biến phần này thành bằng chứng về hiệu quả Ads Joycat hay tuyên bố cậu Sinh đã phê duyệt.

---

## 3. Kết quả lần này phải bàn giao là gì?

1. **Context thống nhất:** [`AGENTS.md`](../AGENTS.md), [`context\WORKSPACE_CONTEXT.md`](WORKSPACE_CONTEXT.md), [`context\CURRENT_INTENT.md`](CURRENT_INTENT.md) và [`01_inputs\joycat\context.md`](../01_inputs/joycat/context.md) khớp nhau về mục tiêu, vai trò và phạm vi; một người hoặc AI mới nhận folder (không có lịch sử chat) đọc vào hiểu ngay Duy đang làm gì và cần tiếp tục phần nào.
2. **Hướng dẫn phối hợp hai file logic đủ rõ:**
   - [`03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md`](../03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md): Giữ công thức toán, điều kiện sử dụng, bối cảnh đọc metric và cách tư duy trước khi kết luận.
   - [`03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.md`](../03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md): Giữ 4 chiều, 6 cặp, nguồn, mapping, quan hệ nối và khả năng đáp ứng của dataset.
3. **Không tạo file `LOGIC_TREE.md/.mm` riêng:** Không đồng nhất “hoàn thiện logic” với việc bắt buộc phải tạo file Logic Tree. Việc tạm hoãn Logic Tree không làm hoãn phần tư duy phân tích.

---

## 4. AI phải làm gì ngay?

AI tiếp nhận công việc cần:
1. Đọc đúng Context hiện hành, không tự suy diễn hoặc lấy yêu cầu từ các file archive cũ.
2. Nắm rõ các phần **đã được bổ sung hoàn thiện** trong đợt cập nhật này:
   - Cầu nối từ **câu hỏi phân tích → góc nhìn → bằng chứng → dữ liệu cần có** đã được bổ sung tại bảng mục 1.5 của [`03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.md`](../03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md).
   - Phương pháp bối cảnh đọc chỉ số, 4 tầng nhận thức, nguyên tắc nhóm so sánh và 2 minh họa phương pháp đã có trong [`03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md`](../03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md).
3. **Không tự động viết lại từ đầu bộ logic**; tập trung review tính nhất quán, rà soát cách diễn đạt và sửa các điểm mâu thuẫn còn sót lại giữa các tài liệu.
4. Nắm rõ ranh giới: Chưa triển khai code ETL, chưa chạy pipeline và chưa kết luận hiệu quả Campaign Joycat.

---

## 5. Phân công vai trò từng tài liệu trong workspace

| Đường dẫn tài liệu | Vai trò chính | Câu hỏi tài liệu trả lời | Phần cần hoàn thiện trong đợt này | Liên kết với tài liệu khác |
|---|---|---|---|---|
| [`AGENTS.md`](../AGENTS.md) | Chỉ dẫn vận hành ổn định | AI phải hành xử, đọc nguồn và tương tác với Duy theo quy tắc nào? | Làm rõ thứ tự đọc khi cold-start, chốt CURRENT_INTENT là nơi khóa nhiệm vụ, không hardcode phase | Dẫn tới Workspace Context và Current Intent |
| [`context\WORKSPACE_CONTEXT.md`](WORKSPACE_CONTEXT.md) | Cửa vào, mục tiêu dài hạn, hợp đồng cộng tác | Dự án này là gì, dài hạn hướng tới đâu, ranh giới quyền hạn ra sao? | Thêm phần đọc nhanh cho người mới; phân biệt lộ trình dài hạn với nhiệm vụ hiện tại | Dẫn tới CURRENT_INTENT và Case Context |
| [`context\CURRENT_INTENT.md`](CURRENT_INTENT.md) | Khóa nhiệm vụ active, phạm vi và tiêu chí xong | Ngay bây giờ Duy đang làm gì, vì sao làm, khi nào xong và được chuyển bước? | Làm rõ 8 câu hỏi cốt lõi, chuỗi làm việc, phân loại gap và tự kiểm định | Cửa ngõ điều phối toàn bộ tài liệu Joycat |
| [`01_inputs\joycat\context.md`](../01_inputs/joycat/context.md) | Bối cảnh nghiệp vụ, nguồn dữ liệu và quyết định Joycat | Joycat có đặc thù gì, dữ liệu gốc có gì, các phát biểu nghiệp vụ nào đã xác nhận? | Bổ sung lý do hoàn thiện logic trước ETL; phân biệt mục tiêu dài hạn với kết quả phase hiện tại | Gắn với raw data và các output Joycat |
| [`03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm`](../03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md) | Bộ logic: Công thức, điều kiện, bối cảnh đọc metric và cách tư duy | Chỉ số này tính ra sao, có quan hệ toán học nào, đọc cùng chỉ số nào và kiểm chứng giả thuyết bằng cách nào? | Làm rõ vai trò bộ logic, từ công thức đến câu hỏi, cách chọn góc nhìn/nhóm so sánh và 2 minh họa phương pháp | Đọc song hành với Data Mapping & Coverage |
| [`03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.md/.mm`](../03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md) | Bộ logic: Bốn chiều, sáu cặp, mapping và khả năng đáp ứng của dữ liệu | Cần tách Ads Cost theo đầu mục nào, trường nào trong raw hỗ trợ, dataset đáp ứng tới đâu và thiếu gì? | Mở đầu liên kết với bộ 5 metrics; bổ sung bảng “Từ câu hỏi phân tích đến yêu cầu dữ liệu” cho 4 chiều và 6 cặp | Đọc song hành với Bộ 5 Metrics; chuẩn bị cho ETL |
| [`03_outputs\joycat\KPI_TREE.md/.mm`](../03_outputs/joycat/KPI_TREE.md) | Cấu trúc chỉ số cần lượng hóa | Cần lượng hóa những chỉ số cấp cao nào cho Joycat? | Giữ nguyên chuyên môn; chỉ rà soát câu dẫn đường để không dẫn người đọc sai | Dẫn sang Metric Tree |
| [`03_outputs\joycat\METRIC_TREE.md/.mm`](../03_outputs/joycat/METRIC_TREE.md) | Công thức rẽ tới trường dữ liệu gốc | Mỗi KPI rẽ thành tử số/mẫu số nào và dừng ở trường raw nào? | Giữ nguyên chuyên môn; xóa câu tham chiếu sang file Logic Tree cũ | Dẫn sang Data Mapping & Coverage |

---

## 6. Trạng thái bàn giao cụ thể và việc tiếp theo

| Nội dung | Trạng thái kiểm tra thực tế | Việc tiếp theo |
|---|---|---|
| Mục tiêu phase và định nghĩa hai file logic | Đã bổ sung vào tài liệu | Review tính nhất quán giữa các tài liệu. |
| Phương pháp chọn góc nhìn/nhóm so sánh | Đã có bản cập nhật tại Bộ 5 Metrics §1.2–§1.5 | Kiểm tra nội dung, không viết lại mặc định. |
| Bảng câu hỏi → yêu cầu dữ liệu | Đã có tại Mapping/Coverage §1.5 | Review từng dòng và cách diễn đạt giới hạn. |
| Các chỉ dẫn lộ trình cũ | Đã làm sạch và chuyển thành lộ trình tham khảo | Review các vị trí liên kết để tránh hiểu nhầm. |
| Phép thử AI tiếp nhận độc lập | Chưa thực hiện | Thực hiện sau khi thống nhất toàn bộ tài liệu. |

> **Chốt việc tiếp theo:** Bước tiếp theo là review bản cập nhật và sửa những điểm còn mâu thuẫn; không tự viết lại toàn bộ bộ logic và không chuyển sang ETL.

---

## 7. Phạm vi công việc

### Trong phạm vi hiện tại:
- Chỉnh sửa tài liệu để làm rõ Context, mục tiêu, ranh giới và cách tiếp cận.
- Hoàn thiện phương pháp đọc chỉ số và chọn nhóm so sánh trong [`CONG_THUC_5_METRICS_JOYCAT_v3.md`](../03_outputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md).
- Bổ sung bảng nối từ câu hỏi phân tích sang yêu cầu dữ liệu trong [`DATA_MAPPING_COVERAGE_JOYCAT.md`](../03_outputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md).
- Đồng bộ nội dung sửa đổi sang các file `.mm` tương ứng.
- Đối chiếu cấu trúc nguồn và kiểm định tính nhất quán giữa các tài liệu.

### Ngoài phạm vi hiện tại:
- Không chạy script ETL hoặc tạo data pipeline.
- Không tính toán lại toàn bộ coverage audit hay ma trận số liệu chi tiết.
- Không phân tích Campaign để đưa ra kết luận hiệu quả kinh doanh Joycat.
- Không xây dựng dashboard, báo cáo Power BI production.
- Không sửa file raw, file Excel hay can thiệp tài khoản quảng cáo.

---

## 8. Chuỗi làm việc phân tích

Chuỗi phân tích được thiết kế để đối chiếu hai chiều giữa câu hỏi nghiệp vụ và khả năng đáp ứng của dữ liệu:

```text
1. Mục tiêu kinh doanh / Câu hỏi phân tích
   ↓
2. Chỉ số và công thức liên quan (Bộ 5 Metrics)
   ↓
3. Góc nhìn và đầu mục cần tách (4 chiều: Nền tảng, Sản phẩm, Phễu, Objective)
   ↓
4. Nhóm so sánh tương đồng (kiểm soát các biến khác)
   ↓
5. Giả thuyết và bằng chứng cần kiểm tra (dữ liệu hỗ trợ vs dữ liệu phản bác)
   ↓
6. Dữ liệu và mapping cần có (Data Mapping & Coverage)
   ↓
7. Giới hạn khả năng thực hiện (xác định phần dữ liệu hiện thiếu)
   ↓
8. Thiết kế ETL và phân tích thực tế (ở giai đoạn sau khi data gate mở)
   ↓
9. Recommendation hành động (chỉ đưa ra sau khi đánh giá đầy đủ bằng chứng)
```

---

## 9. Phân loại khoảng trống dữ liệu (Gap Classification)

Mọi điểm còn thiếu trong dữ liệu được phân vào đúng 3 nhóm để xử lý phù hợp:

### Loại 1: Thiếu làm chưa xác định được hướng thiết kế
- *Ví dụ:* Chưa rõ mục tiêu của case (cần tối ưu đơn hay tối ưu nhận biết).
- *Hiện trạng Joycat:* **Không bị vướng**. Mục tiêu tối ưu Ads Cost và tìm hiểu cơ chế 5–10% đã được định hình rõ ràng.

### Loại 2: Thiếu chỉ chặn thực hiện một phép phân tích cụ thể bằng dữ liệu (Không chặn thiết kế tư duy)
- **Thiếu Publisher platform:**
  * *Thiếu gì:* Trường phân tách Facebook, Instagram, Messenger, Audience Network trong export raw.
  * *Người/nguồn xác nhận:* Data owner / người export tài khoản Meta.
  * *Ảnh hưởng:* Chặn tính toán số liệu cho 3 cặp có chiều Nền tảng (`Nền tảng × Sản phẩm`, `Nền tảng × Phễu`, `Nền tảng × Objective`).
  * *Phần vẫn tiếp tục được:* Thiết kế đầy đủ công thức phân rã nền tảng, câu hỏi cần hỏi và điều kiện join; khi có dữ liệu là áp dụng được ngay.
- **Thiếu mapping Ads → Listing/SKU:**
  * *Thiếu gì:* Bảng khóa liên kết giữa Ad ID và Shopee Item ID (SP01–SP25).
  * *Người/nguồn xác nhận:* Người vận hành Campaign / Product owner.
  * *Ảnh hưởng:* Chặn phân bổ chi phí chi tiết xuống từng listing; hiện chỉ phân tích được ở cấp nhóm sản phẩm suy luận từ tên Campaign.
  * *Phần vẫn tiếp tục được:* Thiết kế bảng bridge, quy tắc xử lý quảng cáo nhiều sản phẩm (multi-product) và câu hỏi phân tích theo sản phẩm.
- **Thiếu quy tắc khóa mapping Phễu:**
  * *Thiếu gì:* Tài liệu quy định grain gắn phễu, điều kiện loại trừ, version và người duyệt nhãn TOFU/MOFU/BOFU.
  * *Người/nguồn xác nhận:* Người tạo bảng mapping / cậu Sinh.
  * *Ảnh hưởng:* Chỉ được gọi phân tích theo phễu là “thăm dò theo nhãn human-curated”, chưa được gọi là phân tích phễu đã xác minh.
  * *Phần vẫn tiếp tục được:* Thiết kế hành trình customer journey, các câu hỏi theo tầng phễu và bộ chỉ số tương ứng.

### Loại 3: Thiếu chỉ chặn kết luận business hoặc recommendation
- **Thiếu GMV và đơn hàng đa nền tảng:**
  * *Thiếu gì:* Báo cáo doanh thu thực tế, số đơn hoàn/hủy, giá trị trợ giá/voucher của Joycat trên các sàn và shop trực tiếp.
  * *Người/nguồn xác nhận:* Doanh nghiệp Joycat / cậu Sinh.
  * *Ảnh hưởng:* Chặn hoàn toàn việc tính toán Business ROAS thực tế và chứng minh con số 5–10%.
  * *Phần vẫn tiếp tục được:* Phân tích toàn bộ các tỷ lệ hiệu quả kỹ thuật của Ads (CPM, CTR, CPC, Cost per Result); giải thích cơ chế khả thi về mặt lý thuyết của tỷ lệ 5–10%.

---

## 10. Tiêu chí hoàn thành và điều kiện chuyển bước

Ba mức trạng thái phải được tách biệt rõ ràng, không gộp chung:

1. **Mức 1 — Hoàn thiện thiết kế tư duy (Mục tiêu của lần làm này):**
   - Tài liệu Context và bộ logic phân tích nhất quán, không còn mâu thuẫn về vai trò.
   - Nối liền từ câu hỏi phân tích sang yêu cầu dữ liệu và giới hạn thực hiện.
   - Đạt: Khi Duy và cậu Sinh đọc, đồng ý với cách tiếp cận và các ranh giới đề ra.
2. **Mức 2 — Sẵn sàng thực hiện bằng dữ liệu (Data Readiness for ETL):**
   - **Nguyên tắc cốt lõi:** Điều kiện dữ liệu được xét theo từng câu hỏi hoặc cặp phân tích, không áp dụng một checklist chung cho toàn bộ dự án.
   - *Chiều Nền tảng:* Publisher platform chỉ là điều kiện bắt buộc của các phân tích cần chiều publisher (3 cặp có Nền tảng); không chặn các phân tích thuộc 3 cặp còn lại.
   - *Chiều Sản phẩm:* Mapping sản phẩm chi tiết là điều kiện của các phân tích tới cấp sản phẩm tương ứng (SP01–SP25); phân tích ở cấp nhóm sản phẩm suy luận vẫn được thực hiện theo nhãn human-curated.
   - *Chiều Objective:* Objective suy luận đã được Duy chấp nhận vẫn được sử dụng theo quy tắc và trạng thái review; Objective Meta gốc bổ sung sau dùng để đối soát, không tự chặn bước ETL đang dùng human mapping.
   - *Lineage:* Làm rõ lineage chênh lệch 9.252 VND tháng 04 giữa demo và preferred khi xây dựng fact spend chính thức.
   - Đạt: Khi data gate của từng nhánh phân tích cụ thể được cậu Sinh duyệt mở.
3. **Mức 3 — Có kết quả phân tích và khuyến nghị (Analysis & Recommendation):**
   - Đã nạp dữ liệu vào mô hình, đối soát spend khớp 100% theo grain được duyệt.
   - Có dữ liệu GMV business và đơn hàng đa nền tảng: Đây là điều kiện bắt buộc riêng cho **phần kết quả business** (tính Business ROAS và đánh giá tỷ lệ 5–10%), không phải điều kiện bắt buộc để mọi phân tích về phân phối, CTR, engagement hoặc messaging có giá trị.
   - Đủ bằng chứng xác nhận và phản bác cho các giả thuyết phân tích.
   - Đạt: Khi có báo cáo phân tích hoàn chỉnh được đánh giá theo từng phạm vi.

---

## 11. Tự kiểm định nội dung trước bàn giao (Self-Audit)

Phần này ghi lại kết quả tự kiểm tra theo góc nhìn của một AI mới nhận folder:

| Câu hỏi kiểm định | Câu trả lời ngắn | Vị trí hỗ trợ trong tài liệu |
|---|---|---|
| 1. Dự án dài hạn hướng tới điều gì? | Hỗ trợ Duy xây hệ thống agentic phân tích dữ liệu marketing, học phương pháp trên Meta Ads rồi mở rộng sang các kênh khác | [`context\WORKSPACE_CONTEXT.md`](WORKSPACE_CONTEXT.md) §1, §2 |
| 2. Duy đang cần hoàn thành việc gì ngay hiện tại? | Hoàn thiện thiết kế tư duy phân tích và nối với yêu cầu dữ liệu trước ETL; chưa phân tích Campaign hay chạy pipeline | Mục 1 tài liệu này |
| 3. Vì sao phải làm bước này? | Chuyển từ suy diễn một metric sang quan hệ có điều kiện và thiết kế cách kiểm tra đa chiều theo bối cảnh | Mục 2 tài liệu này |
| 4. Bộ logic hiện tại gồm file nào, vai trò gì? | Gồm 2 file: `CONG_THUC_5_METRICS_JOYCAT_v3` (phương pháp đọc & bối cảnh) và `DATA_MAPPING_COVERAGE_JOYCAT` (chiều, mapping & dữ liệu) | Mục 3, Mục 5 tài liệu này |
| 5. AI phải tiếp tục cụ thể phần nào? | Bổ sung cầu nối từ câu hỏi sang góc nhìn, bằng chứng và dữ liệu cần có; làm rõ ranh giới kết luận khi thiếu dữ liệu | Mục 4 tài liệu này |
| 6. Việc nào chưa được làm? | Chưa chạy ETL, chưa tính lại toàn bộ coverage, chưa kết luận Campaign tốt/xấu, chưa xây dashboard | Mục 7 tài liệu này |
| 7. Thiếu dữ liệu nào chỉ chặn tính toán/kết luận, không chặn thiết kế? | Thiếu Publisher platform, mapping Ads→listing và GMV business chỉ chặn tính toán/kết luận, không chặn thiết kế logic | Mục 9 tài liệu này |
| 8. Điều kiện xong lần này khác điều kiện chuyển sang ETL thế nào? | Xong lần này là xong thiết kế tư duy; chuyển sang ETL cần dữ liệu sạch, ID text và mapping rule được duyệt | Mục 10 tài liệu này |

> **Ghi chú kiểm thử:** Đây là kết quả tự kiểm tra tính nhất quán nội bộ của tài liệu; phép thử tiếp nhận độc lập bằng một mô hình khác: **Chưa thực hiện**.
