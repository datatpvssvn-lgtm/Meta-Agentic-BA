# AI FIRST ROADMAP 2026 — HEBEKERY

> **AI đọc file này khi cần:** lập kế hoạch triển khai, review tiến độ, thiết kế module mới,
> đánh giá blocker, hoặc xác định thứ tự ưu tiên giữa các initiative.
> Bối cảnh công ty xem `company-context.md`. Chi tiết nhân sự xem `org-chart-detail.md`.
>
> Cập nhật lần cuối: 15/04/2026 — bổ sung Section 8 (Business Ontology) + cross-reference Ontology vào Section 1, 3, 6, 7

---

## 1. MỤC TIÊU VẬN HÀNH 2026 — AI FIRST PLATFORM

Năm 2026 là năm đặt nền móng: cả 2 chi nhánh phải vận hành theo mô hình AI First ở mức cơ bản. Không phải triển khai toàn bộ ngay, mà phải đạt được ngưỡng tối thiểu tại mỗi chi nhánh để CEO có thể điều hành bằng dữ liệu thật thay vì hỏi thủ công.

**Toàn công ty:**

| Tiêu chí              | Mục tiêu cuối 2026                                                                                                                                                                                                                |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| SOP coverage            | 100% quy trình cốt lõi 2 chi nhánh có văn bản trên Lark Wiki                                                                                                                                                                 |
| Báo cáo vận hành    | CEO có dashboard/báo cáo tự động cả 2 chi nhánh — không cần hỏi                                                                                                                                                          |
| Nhân sự AI-ready      | Tất cả nhân sự cốt lõi 2 chi nhánh dùng AI trong công việc hàng ngày                                                                                                                                                     |
| Single point of failure | Không còn bộ phận nào tê liệt nếu 1 người vắng 1 tuần                                                                                                                                                                    |
| AI Knowledge Hub        | Xây dựng được kho tri thức toàn tổ chức (nhân sự + vận hành + sản phẩm + pháp lý) trên Lark Wiki, và AI Agent có đủ tri thức để hỗ trợ vận hành tự động hóa hiệu quả (NotebookLM → Lark Chatbot) |
| Business Ontology       | Có document chuẩn định nghĩa entity, relationship, business rules, metric definitions toàn công ty — mọi AI agent và dashboard đều tham chiếu cùng nguồn ngữ nghĩa (xem Section 8) |

**Chi nhánh Phan Thiết (Nhà máy sản xuất):**

| Tiêu chí             | Mục tiêu cuối 2026                                                                                                                           |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Tồn kho               | NVL + thành phẩm real-time trên Lark Base, sai số < 5%                                                                                      |
| Kế hoạch sản xuất  | Có hệ thống trên Lark Base, sync với đơn hàng HCM                                                                                       |
| Xuất hàng            | Checklist chuẩn hóa, lỗi chứng từ giảm > 90%                                                                                              |
| Quy trình nội bộ PT | Approval, mua NVL, xuất hàng — có luồng chuẩn trên Lark Approval                                                                         |
| SOP listing Q2/2026    | Liệt kê đầy đủ toàn bộ SOP cần viết cho chi nhánh PT — hoàn thành trước 30/6/2026 (xem chi tiết tại Section 4.1)              |
| HC-NS bàn giao        | 100% mảng hành chính - nhân sự bàn giao từ Tường sang Phương Linh — hoàn thành trước 30/6/2026 (xem chi tiết tại Section 4.2) |

**Chi nhánh HCM (Thương mại điện tử):**

| Tiêu chí              | Mục tiêu cuối 2026                                                                  |
| ----------------------- | -------------------------------------------------------------------------------------- |
| Dữ liệu doanh thu     | Sapo → Power BI → dashboard tự động theo kênh, SKU, ngày                        |
| CSKH                    | Central inbox kết nối 8+ kênh, SLA < 30 phút, đo được volume/ngày             |
| Quy trình nội bộ HCM | Fulfillment, return, mua hàng, approval — có SOP + Lark Approval chuẩn hóa        |
| Retention               | Có ít nhất 1 quy trình nhắc tái mua tự động đang chạy                       |
| Lead funnel             | Hạ tầng sẵn sàng: lead vào → phân loại → response < 2h → tracking conversion |

---

## 2. ĐỊNH NGHĨA AI FIRST PLATFORM

**AI First Platform không phải là triển khai một phần mềm.** Đó là trạng thái vận hành mà ở đó mọi quy trình cốt lõi đều có AI tham gia — hoặc thực thi, hoặc hỗ trợ ra quyết định, hoặc tự động hóa báo cáo — và con người chỉ xử lý những gì thực sự cần phán đoán.

### AI First — Chi nhánh Phan Thiết (Nhà máy sản xuất)

> Nhà máy đạt AI First khi CEO biết chính xác tình trạng sản xuất, tồn kho, và xuất hàng tại bất kỳ thời điểm nào mà không cần hỏi bất kỳ ai — và khi Tường vắng 1 tuần, nhà máy vẫn vận hành đúng quy trình.

Điều kiện đủ:

- Toàn bộ quy trình SX, kho, QC, xuất hàng có SOP văn bản trên Lark Wiki — nhân sự mới tự đọc và làm được
- Tồn kho NVL + thành phẩm cập nhật real-time trên Lark Base — không cần hỏi thủ công
- Báo cáo sản xuất tuần tự động gửi CEO — không cần Tường tổng hợp
- Mỗi lô xuất hàng đi qua checklist chuẩn hóa — lỗi chứng từ = 0
- CEO có Factory Dashboard trên Power BI: sản lượng, công suất, tồn kho theo SKU

### AI First — Chi nhánh HCM (Thương mại điện tử)

> Chi nhánh HCM đạt AI First khi toàn bộ vòng đời từ content → quảng cáo → đơn hàng → CSKH → báo cáo doanh thu đều có AI tham gia thực thi hoặc hỗ trợ — và CEO có dữ liệu doanh thu thực tế real-time không phụ thuộc vào việc ai đó xuất báo cáo.

Điều kiện đủ:

- Sapo Order → Power BI → CEO dashboard tự động: doanh thu theo kênh, theo SKU, theo ngày — không cần ai xuất file
- CSKH đa kênh có AI hỗ trợ soạn phản hồi, phân loại khiếu nại, nhắc follow-up tồn đọng
- Quy trình nội bộ cốt lõi (mua hàng, approval, onboarding nhân sự HCM) có SOP + Lark Approval chuẩn hóa
- AI Sale & Marketing: content, caption, brief quảng cáo được tạo bằng AI — team người phê duyệt, không sản xuất từ đầu
- Kế toán MTee có quy trình đối soát doanh thu chuẩn — số liệu tin cậy để ra quyết định

---

## 3. AI KNOWLEDGE HUB — HẠ TẦNG TRI THỨC NỀN TẢNG

> **Phải hoàn thành trước khi bất kỳ bộ phận nào bắt tay viết SOP.**
> Không có Hub thì SOP viết ra không có chỗ chuẩn để chứa, không có cấu trúc để tra cứu, và không thể mở rộng sang chatbot sau này.

### Định nghĩa

AI Knowledge Hub là hệ thống lưu trữ và truy cập tri thức tập trung của toàn công ty — nơi mọi kiến thức vận hành, chính sách, sản phẩm, công cụ được tổ chức có cấu trúc, cập nhật được, và nhân sự có thể tự tra cứu hoặc hỏi AI mà không cần hỏi người.

Hub không phải nơi lưu file — Hub là nơi tri thức **sống và được dùng hàng ngày**.

> 🔗 **Liên kết với Ontology (Section 8):** Knowledge Hub chứa tri thức dạng tài liệu (SOP, chính sách, hướng dẫn) cho con người đọc. Business Ontology document chứa tri thức dạng cấu trúc (entity, relationship, business rules, metric definitions) cho AI đọc. Hai lớp này bổ trợ nhau: Hub là nguồn nội dung, Ontology là lớp ngữ nghĩa. Context document đang thu thập từ các bộ phận sẽ đồng thời feed vào cả Hub (dạng SOP/quy trình) và Ontology (dạng entity/rules/metrics).

### Thực trạng (04/2026)

| Hạng mục             | Trạng thái                                                                |
| ---------------------- | --------------------------------------------------------------------------- |
| Lark Wiki              | Đã tạo workspace — đang trống                                         |
| Tri thức vận hành   | Nằm trong đầu từng người + Lark Docs rải rác, không có cấu trúc |
| Onboarding Phan Thiết | Chưa có gì — người cũ chỉ miệng trực tiếp                        |
| Onboarding HCM         | Đã có checklist chi tiết                                                |
| Chatbot / AI Q&A       | Chưa có                                                                   |

### Nội dung cần đưa vào Hub (theo thứ tự ưu tiên)

**Lớp nền — phải hoàn thành trước 30/5/2026:**

| # | Nhóm nội dung                       | Mô tả cụ thể                                                                                                                                                                    | Owner điền                     |
| - | ------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| 1 | **Tài liệu onboarding**       | Xây mới cho PT: ngày 1–3, tuần 1, tháng 1 theo vị trí + migrate checklist HCM hiện có. Mỗi vị trí có checklist riêng                                                 | Phương Linh (PT) / Thư (HCM)  |
| 2 | **Kiến thức sản phẩm**      | Toàn bộ SKU: tên, thành phần, công thức dinh dưỡng, hạn dùng, cách bảo quản, điểm khác biệt so với đối thủ. Dùng cho cả CSKH lẫn sales                     | Phương Linh                    |
| 3 | **Chính sách nhân sự**      | Quy định nghỉ phép, tăng ca, lương, thưởng, KPI từng vị trí, quy trình nghỉ việc. Cả 2 chi nhánh                                                                   | Sinh / Phương Linh             |
| 4 | **Hướng dẫn công cụ**      | Lark (Approval, Base, Wiki, Docs), Amis cơ bản (cho kế toán PT mới), Sapo (cho team HCM), N8N (cho AI team). Dạng hướng dẫn từng bước có screenshot                    | Sinh                             |
| 5 | **Quy định pháp lý & ATTP** | Quy định an toàn thực phẩm áp dụng cho nhà máy, NĐ 70/2025 kế toán, quy định nhãn hàng. Tóm tắt dạng checklist thực thi — không phải copy nguyên văn luật | Tường + Sinh + tư vấn ngoài |

**Lớp mở rộng — điền song song khi viết SOP (từ tháng 6/2026):**

| Nhóm nội dung                       | Mô tả                                                                | Owner                    |
| ------------------------------------- | ---------------------------------------------------------------------- | ------------------------ |
| SOP vận hành từng bộ phận        | Output của quá trình viết SOP — upload vào đúng node trong Hub | Từng trưởng bộ phận |
| Kịch bản CSKH & xử lý khiếu nại | Câu trả lời mẫu theo từng loại phàn nàn, quy trình leo thang  | Quỳnh                   |

### Kiến trúc Lark Wiki — Cấu trúc đề xuất

```
Hebekery Knowledge Hub (Lark Wiki)
├── 01. Công ty & Văn hóa
│   ├── Giới thiệu công ty, sứ mệnh, giá trị
│   ├── Sơ đồ tổ chức + đầu mối liên hệ
│   └── Chính sách nhân sự (nghỉ phép, lương, KPI)
├── 02. Sản phẩm
│   ├── Hebekery — toàn bộ SKU (thành phần, dinh dưỡng, hạn dùng)
│   └── Demee — toàn bộ SKU
├── 03. Onboarding
│   ├── Phan Thiết — checklist theo vị trí
│   └── HCM — checklist theo vị trí
├── 04. Công cụ & Hệ thống
│   ├── Lark (Approval, Base, Wiki, Docs)
│   ├── Amis — hướng dẫn kế toán PT
│   ├── Sapo — hướng dẫn team HCM
│   └── N8N / Power BI — hướng dẫn AI team
├── 05. Pháp lý & An toàn thực phẩm
│   ├── Quy định ATTP nhà máy
│   ├── Quy định nhãn hàng
│   └── NĐ 70/2025 — tóm tắt áp dụng
└── 06. SOP Vận hành (điền dần từ T6/2026)
    ├── Phan Thiết — sản xuất, kho, QC, xuất hàng
    └── HCM — TMDT, CSKH, fulfillment, kế toán
```

### Stack công nghệ Hub & Cách nhân sự truy cập

**Giai đoạn 1 — Lark Wiki + Google NotebookLM (ngay từ đầu):**

Lark Wiki là nơi lưu trữ chính thức, có cấu trúc, version control. Ngay khi một nhóm nội dung hoàn thành, export sang Google NotebookLM để nhân sự hỏi đáp bằng ngôn ngữ tự nhiên.

| Công cụ                   | Vai trò                                                   | Ai dùng                                                   |
| --------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| **Lark Wiki**         | Nguồn chính thức — viết, chỉnh sửa, version control | Trưởng bộ phận maintain, toàn công ty đọc          |
| **Google NotebookLM** | Q&A tự nhiên trên tài liệu đã có                   | Toàn bộ nhân sự — đặc biệt nhân sự mới và CSKH |

**Giai đoạn 2 — Mở rộng sang Lark Chatbot (từ Q4/2026, khi Hub đủ nội dung):**

Khi Lớp nền + SOP cơ bản đã hoàn chỉnh, tích hợp Lark Chatbot kết nối trực tiếp vào Lark Wiki.

### Model vận hành Hub

- **Sinh:** Build toàn bộ cấu trúc Lark Wiki, thiết lập phân quyền, setup NotebookLM, đào tạo cách dùng
- **Từng trưởng bộ phận:** Chịu trách nhiệm hoàn toàn phần nội dung thuộc domain của mình — đúng hạn, đúng cấu trúc
- **Nguyên tắc cứng:** Mọi tri thức mới phát sinh → ghi vào Hub trước, rồi mới chia sẻ qua chat. Không được phép lưu quy trình chỉ trong group chat hay file cá nhân

### KPI Knowledge Hub

| Mốc                                             | Deadline   | Tiêu chí đạt                                                                        |
| ------------------------------------------------ | ---------- | --------------------------------------------------------------------------------------- |
| Cấu trúc Lark Wiki hoàn chỉnh + phân quyền | 15/4/2026  | Sinh done — toàn bộ node tạo xong, từng owner được assign                       |
| Lớp nền hoàn thành                           | 30/5/2026  | 5 nhóm nội dung ưu tiên đã có trên Wiki, NotebookLM đã setup và test được |
| Nhân sự mới PT tự onboard được            | 30/6/2026  | Người mới đọc Hub + hỏi NotebookLM — không cần người cũ chỉ miệng         |
| Hub coverage cuối năm                          | 31/12/2026 | 100% SOP cốt lõi nằm trong Hub, không còn tài liệu vận hành nằm ngoài Wiki   |

---

## 4. CHI NHÁNH PHAN THIẾT — AI FIRST ROADMAP 2026

### Thực trạng (04/2026)

- **Lark usage tại nhà máy:** Chat nội bộ + Lark Approval + Lark Base (đang dùng ở mức cơ bản)
- **Production planning:** Amis SKHSX + Lark Sheet — vận hành song song, không sync
- **SOP:** Chưa có SOP thành văn bản — toàn bộ kiến thức nằm trong đầu Tường và Phương Linh, vận hành theo thói quen
- **Báo cáo lên CEO:** Không có định kỳ — CEO phải hỏi mới có số
- **Quy mô:** ~15 người (công nhân + văn phòng, không tính Tường + Phương Linh). 1 ca hiện tại, mục tiêu 2 ca trong năm 2026. Turnover liên tục hàng tháng
- **Hành chính - Nhân sự:** Tường đang kiêm toàn bộ — chấm công (máy chấm công → Excel), tính lương (Excel, có công thức sẵn), quản lý nghỉ phép, hợp đồng lao động, bảo hiểm, kỷ luật, thông báo nội bộ trong Lark group. Phương Linh phụ trách R&D + tuyển dụng + đào tạo nhân sự mới (bằng miệng)
- **Rào cản bàn giao:** Phương Linh rất yếu công nghệ. Tường chưa biết cách giao việc và hướng dẫn người khác làm thay

### 5 Pain Points Xác Nhận

| #  | Pain Point                                                                                                                                 | Mức độ      |
| -- | ------------------------------------------------------------------------------------------------------------------------------------------ | -------------- |
| 01 | Không có SOP thành văn bản — kiến thức nằm trong đầu Tường và Phương Linh                                                  | 🔴 Blocker     |
| 02 | Không biết tồn kho NVL chính xác theo real-time                                                                                       | 🔴 Blocker     |
| 03 | Không có báo cáo định kỳ — CEO phải hỏi mới có số                                                                             | 🔴 Blocker     |
| 04 | Tường kiêm HC-NS (chấm công, lương, nghỉ phép, BHXH, kỷ luật, thông báo nội bộ) → không tập trung được cho sản xuất | 🔴 Blocker     |
| 05 | Kế hoạch sản xuất thay đổi nhiều, khó track — Amis SKHSX + Lark Sheet không sync                                                 | 🟡 Quan trọng |
| 06 | Xuất hàng NPP/MTee hay có lỗi giấy tờ chứng từ                                                                                     | 🟡 Quan trọng |
| 07 | Onboarding nhân sự mới hoàn toàn bằng miệng, turnover liên tục → Phương Linh lặp đi lặp lại cùng nội dung mỗi tháng    | 🟡 Quan trọng |

**Rủi ro chiến lược:** Tường đang kiêm Giám đốc sản xuất + kế toán Amis + HC-NS + người duy nhất nắm vận hành → single point of failure nghiêm trọng nhất công ty. Tường vắng = nhà máy tê liệt. Mục tiêu Q2–Q3/2026: bàn giao 100% mảng HC-NS cho Phương Linh để Tường tập trung cho sản xuất + kế toán.

### 4.1. DANH SÁCH SOP CẦN VIẾT — PHAN THIẾT (Q2/2026)

> Mục tiêu: liệt kê đầy đủ toàn bộ SOP chi nhánh PT phải viết, phân nhóm rõ, gán owner và deadline.
> Hoàn thành listing trước 30/4/2026. Viết xong toàn bộ SOP trước 30/6/2026.

**Nhóm A — Sản xuất (Owner nội dung: Tường)**

| #  | SOP                                                        | Mô tả                                                                                                                             | Ưu tiên     |
| -- | ---------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ------------- |
| A1 | Quy trình vận hành dây chuyền sản xuất              | Từng bước khởi động → vận hành → tắt máy. Theo từng dòng sản phẩm (granola, biscotti, cookies, thanh năng lượng) | 🔴 Tuần 1–2 |
| A2 | Kiểm soát NVL đầu vào                                 | Nhận NVL → kiểm tra chất lượng/số lượng → nhập kho → ghi nhận Lark Base                                                | 🔴 Tuần 1–2 |
| A3 | Quy trình nhập/xuất kho NVL + thành phẩm              | Ai nhập, ai duyệt, ghi nhận ở đâu, tần suất kiểm kê, xử lý chênh lệch                                                 | 🔴 Tuần 1–2 |
| A4 | Checklist QC thành phẩm                                  | Tiêu chí pass/fail từng dòng sản phẩm, ai kiểm, ghi nhận kết quả ở đâu, xử lý lô lỗi                               | 🔴 Tuần 3–4 |
| A5 | Quy trình đóng gói + dán nhãn                        | Theo từng SKU, quy cách đóng gói, thông tin nhãn bắt buộc theo ATTP                                                        | 🟡 Tuần 3–4 |
| A6 | Kế hoạch sản xuất — quy trình lập và điều chỉnh | Ai lập, dựa trên data nào, khi nào điều chỉnh, ai duyệt thay đổi                                                         | 🟡 Tuần 5–6 |
| A7 | Bảo trì thiết bị định kỳ                            | Lịch bảo trì, ai phụ trách, checklist kiểm tra, xử lý sự cố                                                               | 🟡 Tuần 5–6 |

**Nhóm B — Xuất hàng & Logistics (Owner nội dung: Tường)**

| #  | SOP                                         | Mô tả                                                                                                                                  | Ưu tiên     |
| -- | ------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ------------- |
| B1 | Quy trình xuất hàng NPP                  | Nhận PO → lên đơn → kiểm hàng → đóng gói → chứng từ (phiếu xuất kho, e-invoice, phiếu giao hàng) → giao vận chuyển | 🔴 Tuần 1–2 |
| B2 | Quy trình xuất hàng nội bộ (PT → HCM) | PO từ HCM → xác nhận → đóng hàng → chứng từ nội bộ → gửi HCM → HCM xác nhận nhận hàng                                | 🔴 Tuần 1–2 |
| B3 | Quy trình xuất hàng sân bay             | Đặc thù riêng nếu có — quy cách đóng gói, chứng từ, vận chuyển                                                            | 🟡 Tuần 3–4 |

**Nhóm C — Hành chính - Nhân sự (Owner nội dung: Tường bàn giao → Phương Linh)**

| #  | SOP                              | Mô tả                                                                                                                      | Ưu tiên     |
| -- | -------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ------------- |
| C1 | Quy trình chấm công           | Máy chấm công → export → nhập Excel → xử lý ngoại lệ (quên chấm, đi trễ, tăng ca) → xác nhận cuối tháng | 🔴 Tuần 1–2 |
| C2 | Quy trình tính lương         | Dữ liệu chấm công → công thức tính (lương cứng + tăng ca + phụ cấp + trừ) → CEO duyệt → chi lương        | 🔴 Tuần 1–2 |
| C3 | Quản lý nghỉ phép / đổi ca | Ai duyệt, báo trước bao lâu, giới hạn nghỉ đồng thời, ghi nhận ở đâu                                          | 🔴 Tuần 3–4 |
| C4 | Hợp đồng lao động           | Ký mới (hồ sơ cần gì, mẫu HĐ, ai ký), gia hạn, chấm dứt, thời hạn thông báo                                  | 🟡 Tuần 3–4 |
| C5 | Bảo hiểm xã hội              | Đăng ký BHXH/BHYT cho nhân sự mới, báo giảm khi nghỉ việc, quy trình hàng tháng                                 | 🟡 Tuần 5–6 |
| C6 | Kỷ luật lao động             | Các mức vi phạm, quy trình xử lý, biên bản, thẩm quyền quyết định                                               | 🟡 Tuần 5–6 |
| C7 | Thông báo nội bộ             | Ai đăng, kênh nào (Lark group), loại thông báo (ca làm, nội quy, sự kiện), tần suất                             | 🟡 Tuần 5–6 |

**Nhóm D — Đào tạo & Onboarding (Owner nội dung: Phương Linh)**

| #  | SOP                                                | Mô tả                                                                                                                                              | Ưu tiên     |
| -- | -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- |
| D1 | Quy trình tuyển dụng nhà máy                  | Đăng tin → sàng lọc → phỏng vấn → thử việc → đánh giá → ký HĐ chính thức                                                         | 🔴 Tuần 1–2 |
| D2 | Checklist onboarding công nhân mới              | Ngày 1–3: giới thiệu, an toàn lao động, ATTP cơ bản. Tuần 1: làm quen dây chuyền. Tháng 1: đánh giá thử việc. Theo từng vị trí | 🔴 Tuần 1–2 |
| D3 | Quy trình đào tạo an toàn thực phẩm         | Nội dung bắt buộc, ai đào tạo, tần suất, ghi nhận hoàn thành, tái đào tạo                                                             | 🔴 Tuần 3–4 |
| D4 | Quy trình đào tạo vận hành máy/dây chuyền | Theo từng vị trí, ai kèm, thời gian kèm, tiêu chí đánh giá đạt                                                                          | 🟡 Tuần 3–4 |

**Nhóm E — An toàn lao động & ATTP (Owner nội dung: Phương Linh)**

| #  | SOP                                      | Mô tả                                                                                                          | Ưu tiên     |
| -- | ---------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ------------- |
| E1 | Quy định an toàn lao động nhà máy | Trang bị bảo hộ, quy tắc vận hành máy, xử lý sự cố/tai nạn                                           | 🔴 Tuần 3–4 |
| E2 | Quy định vệ sinh ATTP                 | Vệ sinh cá nhân, vệ sinh khu vực sản xuất, kiểm soát côn trùng, truy xuất nguồn gốc lô sản xuất | 🔴 Tuần 3–4 |

**Tổng: ~20 SOP.** Viết bằng AI (hebekery-sop-writer), Tường + Phương Linh cung cấp nội dung thực tế, Sinh review và upload Lark Wiki.

> 📝 **Lưu ý:** Danh sách này cần Tường và Phương Linh review để bổ sung/bớt trước khi bắt đầu viết. Có thể phát sinh thêm SOP khi đi sâu vào từng nhóm. Sinh sẽ build giải pháp công nghệ phù hợp với năng lực Phương Linh (yếu tech) rồi update vào từng SOP cụ thể.

---

### 4.2. BÀN GIAO HÀNH CHÍNH - NHÂN SỰ: TƯỜNG → PHƯƠNG LINH

> Mục tiêu: trong 3 tháng (04–06/2026), Phương Linh tiếp nhận 100% mảng HC-NS từ Tường.
> Sau bàn giao, Tường chỉ còn: Giám đốc sản xuất + kế toán Amis.

#### Scope bàn giao

| # | Mảng                            | Hiện tại (Tường)                             | Sau bàn giao (Phương Linh)                                                       |
| - | -------------------------------- | ------------------------------------------------ | ----------------------------------------------------------------------------------- |
| 1 | Chấm công hàng ngày          | Tường export máy chấm công → nhập Excel   | Phương Linh thực hiện 100%                                                      |
| 2 | Tính lương cuối tháng       | Tường tính trên Excel (có công thức sẵn) | Phương Linh thực hiện, Tường kiểm tra 2 tháng đầu                         |
| 3 | Quản lý nghỉ phép / đổi ca | Tường duyệt trực tiếp                       | Phương Linh tiếp nhận + duyệt (Tường chỉ duyệt ngoại lệ)                 |
| 4 | Thông báo nội bộ Lark group  | Tường đăng                                   | Phương Linh đăng 100%                                                           |
| 5 | Xử lý vi phạm kỷ luật       | Tường xử lý                                  | Phương Linh lập biên bản + đề xuất, Tường/Sinh duyệt case nghiêm trọng |
| 6 | Hợp đồng lao động           | Tường xử lý                                  | Phương Linh chuẩn bị hồ sơ + HĐ, Sinh ký                                    |
| 7 | Bảo hiểm xã hội              | Tường xử lý                                  | Phương Linh thực hiện 100%                                                      |
| 8 | Tuyển dụng                     | Phương Linh đã làm                          | Giữ nguyên                                                                        |
| 9 | Onboarding nhân sự mới        | Phương Linh làm bằng miệng                  | Phương Linh làm theo checklist chuẩn trên Lark Wiki                            |

#### Rào cản và cách giải quyết

| Rào cản                                     | Cách giải quyết                                                                                                                                                                                                                                     |
| --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Phương Linh rất yếu công nghệ** | Sinh sẽ build giải pháp công nghệ đơn giản nhất có thể cho từng tác vụ (chi tiết update sau khi test). Mọi tool phải đạt tiêu chí: Phương Linh mở lên → nhìn → biết phải làm gì, không cần nhớ thao tác phức tạp |
| **Tường chưa biết cách bàn giao** | Sinh thiết kế quy trình bàn giao: (1) viết SOP từng mảng bằng AI trước, (2) Tường chỉ cần review và bổ sung thực tế, (3) Phương Linh học theo SOP + Tường kèm 2 tuần đầu mỗi mảng                                         |
| **Công nhân quen liên hệ Tường**  | Thông báo chính thức trên Lark group: từ ngày X, mọi vấn đề HC-NS liên hệ chị Linh. Tường không trả lời các câu hỏi HC-NS nữa — redirect về Linh                                                                              |
| **Phương Linh chưa tự tin**         | Giai đoạn shadow (tháng 1): Linh làm, Tường kiểm tra. Giai đoạn solo (tháng 2–3): Linh tự làm, Tường chỉ support khi được hỏi. Sinh review kết quả hàng tuần                                                                   |

#### Lộ trình bàn giao 3 tháng

**Tháng 1 (04/2026) — Viết SOP + Shadow**

| Tuần      | Hành động                                                                                                                                  | Output                                                                       |
| ---------- | --------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| Tuần 1–2 | Viết SOP C1 (chấm công) + C2 (tính lương) bằng AI. Tường review, bổ sung chi tiết thực tế. Sinh review final                     | SOP C1, C2 hoàn chỉnh trên Lark Wiki                                      |
| Tuần 2    | Sinh build/chọn giải pháp công nghệ cho chấm công + tính lương phù hợp năng lực Linh. Training Linh dùng                       | Tool sẵn sàng, Linh biết thao tác cơ bản                               |
| Tuần 3–4 | Linh bắt đầu shadow chấm công hàng ngày: Linh làm, Tường kiểm tra. Viết SOP C3 (nghỉ phép/đổi ca) + C7 (thông báo nội bộ) | Linh làm được chấm công dưới sự giám sát. SOP C3, C7 hoàn chỉnh |
| Tuần 4    | Thông báo chính thức trên Lark group: chị Linh phụ trách HC-NS từ tháng 5                                                           | Công nhân biết đầu mối mới                                            |

**Tháng 2 (05/2026) — Solo có support**

| Tuần      | Hành động                                                                                               | Output                                         |
| ---------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| Tuần 1–2 | Linh tự chấm công 100%. Tường chỉ kiểm tra kết quả cuối tuần. Viết SOP C4 (HĐLĐ) + C5 (BHXH) | Linh solo chấm công. SOP C4, C5 hoàn chỉnh |
| Tuần 3    | Linh tính lương tháng 4 dưới sự giám sát Tường (lần cuối Tường kiểm tra chi tiết)         | Bảng lương tháng 4 chính xác             |
| Tuần 3–4 | Linh tiếp nhận nghỉ phép/đổi ca + thông báo nội bộ 100%. Viết SOP C6 (kỷ luật)                | Tường không còn xử lý HC-NS routine      |

**Tháng 3 (06/2026) — Hoàn tất bàn giao**

| Tuần      | Hành động                                                                                                                       | Output                                     |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| Tuần 1–2 | Linh tự tính lương tháng 5 (Tường không kiểm tra trừ khi Linh hỏi). Linh xử lý HĐLĐ + BHXH cho nhân sự mới/nghỉ | Linh solo 100%                             |
| Tuần 3    | Sinh review toàn bộ: kiểm tra SOP đầy đủ trên Wiki, Linh thao tác tool đúng, kết quả chấm công/lương chính xác  | Báo cáo bàn giao: pass/fail từng mảng |
| Tuần 4    | Bàn giao chính thức: Tường ký xác nhận không còn phụ trách HC-NS. Linh là owner duy nhất                             | Tường free khỏi HC-NS                   |

#### KPI bàn giao

| KPI                    | Mốc      | Tiêu chí đạt                                                     |
| ---------------------- | --------- | -------------------------------------------------------------------- |
| SOP HC-NS hoàn chỉnh | 30/5/2026 | 7 SOP (C1–C7) có trên Lark Wiki, Linh đã đọc và hiểu        |
| Chấm công            | 30/4/2026 | Linh tự làm 100%, sai số = 0 so với Tường kiểm tra            |
| Tính lương          | 30/6/2026 | Linh tự tính 2 tháng liên tiếp chính xác, không cần Tường |
| Nghỉ phép / đổi ca | 31/5/2026 | Linh duyệt 100%, Tường không nhận request nào                  |
| Thông báo nội bộ   | 30/4/2026 | Linh đăng 100%, Tường không đăng nội dung HC-NS              |
| HĐLĐ + BHXH          | 30/6/2026 | Linh xử lý được ít nhất 1 case ký mới + 1 case báo giảm   |
| Tường free           | 30/6/2026 | Tường xác nhận: 0 giờ/tuần cho HC-NS routine                   |

> 📝 **Dependency:** Giải pháp công nghệ cho chấm công + tính lương cần Sinh build/chọn trước tuần 2 tháng 4. Nếu chậm → toàn bộ lộ trình bàn giao dịch tương ứng.

---

### 4.3. Lộ trình triển khai AI First — Phan Thiết

**Giai đoạn 1 — Lập nền (Tháng 4–6/2026)**

| Module                                        | Mô tả                                                                                                                                                                                                                                    | Tool                       | Owner                                        |
| --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------- | -------------------------------------------- |
| **SOP Hub nhà máy**                   | Viết toàn bộ SOP sản xuất, kho, QC, xuất hàng bằng AI (hebekery-sop-writer). Ưu tiên: quy trình vận hành dây chuyền, kiểm soát NVL đầu vào, checklist QC thành phẩm, quy trình xuất hàng NPP/MTee kèm chứng từ | Claude + Lark Wiki         | Tường + Phương Linh content, Sinh review |
| **Inventory Tracking Lark Base**        | Database tồn kho NVL + thành phẩm real-time. Nhập/xuất kho qua Lark Form, tự tính tồn còn lại. CEO xem được bất kỳ lúc nào không cần hỏi Tường                                                                       | Lark Base + Lark Form      | Sinh build, Tường vận hành               |
| **Weekly Production Report tự động** | Lark Base tổng hợp báo cáo tuần: sản lượng thực vs kế hoạch, tồn kho NVL, số lô xuất hàng, tình trạng chứng từ. Gửi tự động lên Lark chat CEO mỗi thứ Hai 8h sáng                                              | Lark Base + N8N + Lark Bot | Sinh build                                   |

**Giai đoạn 2 — Chuẩn hóa luồng (Tháng 7–9/2026)**

| Module | Mô tả | Tool | Owner |
|---|---|---|---|
| **Production Planning Workflow** | Lark Base làm SSoT cho kế hoạch sản xuất. Khi HCM tạo PO, Lark Approval tự tạo lệnh sản xuất tại PT. Tường xác nhận công suất. System tính tự động NVL cần dùng và cảnh báo nếu tồn kho không đủ | Lark Base + Lark Approval + N8N | Sinh build |
| **Outbound Shipment Checklist Agent** | Mỗi lần xuất hàng: Lark Form bắt buộc nhập đủ thông tin (lô hàng, số lượng, đối tác, ngày). Tự tạo phiếu xuất kho chuẩn, cảnh báo nếu thiếu e-invoice, đẩy sang Amis | Lark Form + Lark Base + N8N + Amis | Tường vận hành |
| **QC Tracking — lấp gap QA/QC** | Build quy trình QC trên Lark Base: mỗi lô sản xuất ghi nhận kết quả (pass/fail, lý do), lịch sử theo lô, cảnh báo tự động nếu tỷ lệ lỗi vượt ngưỡng. **Đẩy lên GĐ2 vì đây là yêu cầu pháp lý ATTP — không chờ được.** SOP A4 (Checklist QC) hoàn thành T5 → build Lark Base form T7. Phương Linh phụ trách R&D nên hiểu tiêu chí chất lượng, gán QC cho chị là đúng người | Lark Base + Lark Form | Phương Linh nhập, Sinh build form |

**Giai đoạn 3 — Tự động hóa sâu (Tháng 10–12/2026)**

| Module | Mô tả | Tool | Owner |
|---|---|---|---|
| **Factory Dashboard Power BI** | Dashboard CEO real-time: sản lượng theo SKU, công suất sử dụng (%), tồn kho NVL vs ngưỡng an toàn, lịch xuất hàng, tình trạng đơn NPP. Nguồn: Lark Base + Amis | Power BI + Lark Base connector | Sinh build |
| **AI Onboarding Agent công nhân mới** | Sau khi SOP Hub hoàn thành (T6), build Lark Chatbot / Wiki-based Q&A để công nhân mới tự tra quy trình, checklist ca sản xuất, quy định an toàn thực phẩm. Giảm gánh đào tạo lặp lại của Phương Linh khi turnover liên tục. **Điều kiện tiên quyết:** SOP Hub + Onboarding checklist (D2) phải hoàn thành. Test thử với 2–3 công nhân trước khi roll out. **Fallback nếu công nhân không dùng được chatbot:** Phương Linh dùng NotebookLM tra nhanh rồi hướng dẫn trực tiếp — vẫn nhanh hơn nhớ trong đầu | Lark Wiki + Lark Chatbot / Google NotebookLM | Phương Linh content, Sinh build |
| **Accounting Agent — hỗ trợ kế toán PT mới** ⚠️ *Conditional* | Khi tuyển được kế toán PT: build SOP kế toán + AI assistant giải đáp nghiệp vụ Amis, quy trình hạch toán theo NĐ 70/2025, checklist đối soát cuối tháng. Mục tiêu: kế toán mới lên tốc trong 4 tuần, không phụ thuộc Tường. **Chỉ triển khai khi có kế toán PT. SOP kế toán (nội dung) chuẩn bị trước từ Q3 để sẵn sàng.** Nếu cả năm 2026 không tuyển được → module này dời sang 2027 | Claude + Lark Wiki SOP | Sinh design, kế toán mới vận hành |

### KPI Cuối Năm 2026 — Phan Thiết

| KPI                         | Mục tiêu                                                         |
| --------------------------- | ------------------------------------------------------------------ |
| SOP coverage                | 100% quy trình có văn bản trên Lark Wiki                      |
| Báo cáo sản xuất        | Tự động 100% — 0 lần CEO phải hỏi thủ công                |
| Tồn kho NVL                | Real-time, sai số < 5%                                            |
| Lỗi chứng từ xuất hàng | Giảm > 90% so với 04/2026                                        |
| QC tracking                 | 100% lô sản xuất có ghi nhận kết quả QC                     |
| Single point of failure     | Tường vắng 1 tuần — nhà máy vẫn vận hành theo quy trình |

> ⚠️ **Điều kiện tiên quyết:** SOP Hub và Inventory Tracking phải hoàn thành trước 30/6/2026. Đây là 2 blocker ngăn mọi module còn lại. Chưa có SOP = không onboard được, không delegate được, không build tool gì hiệu quả.

---

## 5. CHI NHÁNH HCM (MTee) — AI FIRST ROADMAP 2026

### Thực trạng (04/2026)

- **Kênh bán hàng:** Shopee (2 gian hàng: Hebekery + Demee), TikTok Shop (2 gian hàng: Hebekery + Demee), Website hebekery.vn
- **CSKH:** Xử lý manual trên 8+ kênh riêng biệt — Shopee chat x2, TikTok Shop chat x2, Facebook Fanpage, Instagram, Zalo OA công ty, Zalo hotline cá nhân. Chưa có central inbox, chưa đo volume ticket/ngày, chưa có SLA phản hồi
- **Lead funnel:** Chưa tồn tại. Chưa chạy quảng cáo có hệ thống. CEO muốn build quy trình và hạ tầng trước khi scale marketing
- **Kế toán MTee:** Sapo Accounting — đang tái cơ cấu. SOP đối soát doanh thu đã viết (v6.0) nhưng đang trong giai đoạn áp dụng
- **Retention data:** Đã bóc tách trên Power BI từ Sapo. Mức độ chi tiết cần verify lại (cohort, tái mua theo kênh, hay chỉ danh sách khách mua 2+)
- **SOP:** Chưa có SOP thành văn bản cho quy trình TMDT, fulfillment, CSKH tại HCM
- **Onboarding HCM:** Đã có checklist chi tiết (lợi thế so với PT)
- **Quy mô:** ~10–15 nhân sự thương mại (không tính Sinh)

### 5 Pain Points Xác Nhận

| #  | Pain Point                                                                                                                                               | Mức độ      |
| -- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- |
| 01 | CSKH phân tán 8+ kênh, không có central inbox, không tracking volume/SLA — dễ bỏ sót khách, không đo được chất lượng phản hồi       | 🔴 Blocker     |
| 02 | Chưa có SOP thành văn bản cho quy trình TMDT (xử lý đơn, fulfillment, return, CSKH) — phụ thuộc kinh nghiệm cá nhân                      | 🔴 Blocker     |
| 03 | Lead funnel chưa tồn tại — không có hệ thống tiếp nhận, phân loại, nurture lead từ quảng cáo. Chưa thể scale marketing                  | 🟡 Quan trọng |
| 04 | Kế toán MTee đang tái cơ cấu — SOP đối soát đã có nhưng chưa chạy ổn định, số liệu chưa đủ tin cậy để ra quyết định nhanh  | 🟡 Quan trọng |
| 05 | Có data retention trên Power BI nhưng chưa biến thành action — chưa có quy trình nhắc tái mua, segment khách, trigger chăm sóc tự động | 🟡 Quan trọng |

**Rủi ro chiến lược bổ sung:** HCM là chi nhánh tạo doanh thu chính nhưng CSKH đang vận hành "tay không" trên 8+ kênh. Khi scale quảng cáo hoặc mở thêm kênh bán, khối lượng sẽ tăng gấp nhiều lần — nếu không có hệ thống, Quỳnh và team sẽ bị ngập và thất thoát doanh thu từ cả khách mới lẫn khách cũ.

### Lộ trình triển khai

**Giai đoạn 1 — Lập nền (Tháng 4–7/2026)**

| Module                                   | Mô tả                                                                                                                                                                                                                                                                                                                                                                                         | Tool                            | Owner                              |
| ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------- | ---------------------------------- |
| **SOP Hub HCM**                    | Viết toàn bộ SOP quy trình TMDT: xử lý đơn hàng Shopee/TikTok Shop, fulfillment, return/hoàn tiền, CSKH theo kênh, quy trình khiếu nại/escalation. Dùng hebekery-sop-writer. Upload vào Lark Wiki đúng cấu trúc Hub                                                                                                                                                        | Claude + Lark Wiki              | Thư + Quỳnh content, Sinh review |
| **CSKH Tool Evaluation**           | Đánh giá 2 tool central inbox:**(1) Sapo Omni AI** (dự kiến ra mắt T6/2026, tích hợp native với Sapo) và **(2) Smax.ai** (đã có sẵn, AI chatbot + multi-channel). Tiêu chí đánh giá: tích hợp Shopee/TikTok/Zalo/FB, AI auto-reply chất lượng tiếng Việt, giá, khả năng tracking ticket/SLA, tích hợp Sapo CRM. Chọn 1 tool triển khai từ T7/2026 | Sapo Omni AI / Smax.ai          | Sinh evaluate, Quỳnh test         |
| **CSKH Central Inbox Setup**       | Sau khi chọn tool: kết nối toàn bộ 8+ kênh vào 1 inbox. Thiết lập: phân loại tự động (pre-sale / post-sale / khiếu nại / B2B), template phản hồi chuẩn, SLA tracking (mục tiêu: phản hồi < 30 phút trong giờ hành chính), AI auto-suggest reply                                                                                                                      | Tool đã chọn + N8N nếu cần | Sinh setup, Quỳnh vận hành      |
| **Kế toán MTee ổn định hóa** | Chạy ổn SOP đối soát doanh thu v6.0 trên Sapo Accounting. Mục tiêu: 3 tháng liên tiếp số liệu đối soát khớp, CEO tin được số                                                                                                                                                                                                                                               | Sapo + Excel + Power BI         | Thư / Sinh                        |

**Giai đoạn 2 — Tăng năng lực (Tháng 7–9/2026)**

| Module                                        | Mô tả                                                                                                                                                                                                                                                                                                                                                                                           | Tool                                            | Owner                                          |
| --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- | ---------------------------------------------- |
| **Customer Retention Intelligence**     | Dựa trên data Power BI đã có từ Sapo, xây: (1) Dashboard retention: tỷ lệ tái mua theo tháng, cohort theo kênh mua lần 1, LTV trung bình theo segment. (2) Action layer: danh sách khách cần chăm sóc (mua 1 lần > 30 ngày chưa quay lại, khách VIP giảm tần suất, gói subscription sắp hết). (3) Trigger: N8N gửi Zalo/SMS nhắc tái mua tự động theo segment | Power BI + Sapo + N8N + Zalo ZNS                | Sinh build dashboard, Quỳnh vận hành action |
| **Lead Funnel & Response System**       | Xây hạ tầng lead trước khi scale quảng cáo: (1) Landing page / form thu lead tập trung. (2) Lead đổ về central inbox hoặc Lark Base — phân loại tự động (nguồn, sản phẩm quan tâm, mức độ nóng). (3) Quy trình response: auto-reply ngay + nhân sự follow-up trong 2h. (4) Tracking: tỷ lệ chuyển đổi lead → đơn hàng theo kênh                            | Lark Base / Sapo CRM + N8N + Central Inbox tool | Sinh design, team HCM vận hành               |
| **Content & Brand Consistency Copilot** | Xây bộ template + AI prompt chuẩn cho toàn bộ nội dung đa kênh: caption Shopee, TikTok, Facebook, email CSKH, tin nhắn Zalo. Đảm bảo giọng thương hiệu Hebekery và Demee nhất quán dù ai viết. Lưu vào Lark Wiki → nhân sự mới tự dùng được                                                                                                                       | Claude + Lark Wiki                              | Sinh + Thư                                    |

**Giai đoạn 3 — Tự động hóa sâu + Scale (Tháng 10–12/2026)**

| Module                                    | Mô tả                                                                                                                                                                                                                                                         | Tool                                     | Owner                         |
| ----------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------- | ----------------------------- |
| **HCM Commerce Dashboard Power BI** | Dashboard CEO real-time tổng hợp: doanh thu theo kênh (Shopee/TikTok/Web) × theo brand (Hebekery/Demee) × theo SKU × theo ngày. Tích hợp: Sapo Order + CSKH ticket volume + retention metrics. CEO mở Power BI = biết toàn bộ, không cần hỏi ai | Power BI + Sapo connector + N8N          | Sinh build                    |
| **AI Sale & Marketing Copilot**     | Khi lead funnel đã ổn: AI tạo content quảng cáo, caption sản phẩm, brief video TikTok, email marketing. Team người phê duyệt và đăng — không sản xuất từ đầu. Kết hợp với Brand Consistency Copilot để giữ chuẩn giọng            | Claude / Gemini + Lark Docs              | Thư + team marketing         |
| **CSKH Auto-Resolution Agent**      | Nâng cấp từ AI suggest-reply (GĐ1) lên AI auto-resolve cho các câu hỏi lặp lại: tra cứu đơn hàng, hỏi thành phần sản phẩm, hỏi chính sách đổi trả, hỏi hạn dùng. Quỳnh chỉ xử lý case phức tạp và escalation                 | Central Inbox tool + Knowledge Hub + N8N | Sinh build, Quỳnh giám sát |

### KPI Cuối Năm 2026 — HCM

| KPI                    | Mục tiêu                                                                                  |
| ---------------------- | ------------------------------------------------------------------------------------------- |
| SOP coverage HCM       | 100% quy trình TMDT + CSKH + kế toán MTee có văn bản trên Lark Wiki                  |
| CSKH central inbox     | 100% kênh kết nối — 0 kênh nào xử lý ngoài hệ thống                              |
| SLA phản hồi CSKH    | < 30 phút trong giờ hành chính, đo được trên dashboard                             |
| Ticket volume tracking | Đo được chính xác volume/ngày, phân loại theo kênh và loại vấn đề            |
| Retention action       | Có ít nhất 1 quy trình nhắc tái mua tự động đang chạy và đo được hiệu quả |
| Kế toán MTee         | 3 tháng liên tiếp đối soát doanh thu khớp — CEO tin được số                     |
| Lead funnel            | Hạ tầng sẵn sàng: lead vào → phân loại → response < 2h → tracking conversion      |
| Commerce Dashboard     | CEO có dashboard doanh thu real-time — không cần hỏi thủ công                        |

> ⚠️ **Điều kiện tiên quyết:** SOP Hub HCM và CSKH Central Inbox phải hoàn thành trước 31/7/2026. Không có SOP = team xử lý mỗi người một kiểu. Không có central inbox = không đo được gì, không cải thiện được gì.

> 📝 **Data cần verify:** Sinh cần review lại Power BI retention dashboard hiện tại và xác nhận mức độ chi tiết (cohort, tái mua theo kênh, hay chỉ danh sách cơ bản) để quyết định scope build Customer Retention Intelligence ở GĐ2.

---

## 6. CHAIN INSIGHT — DASHBOARD ĐIỀU HÀNH 2 CHI NHÁNH

> Adapt từ "Chain Performance Insight" trong case study AI First Platform cho chuỗi dịch vụ.
> Hebekery không phải chuỗi dịch vụ, nhưng có cùng bài toán cốt lõi: CEO điều hành 2 chi nhánh hoạt động độc lập, cần nhìn xuyên suốt mà không phụ thuộc vào báo cáo thủ công từ từng người.

### Vấn đề hiện tại

CEO Sinh hiện phải:

- Hỏi Tường để biết tình hình PT (sản xuất, tồn kho, xuất hàng)
- Hỏi Thư để biết tình hình HCM (doanh thu, đơn hàng, CSKH)
- Tự tổng hợp 2 nguồn để ra quyết định (mua NVL, phân bổ sản lượng, điều chỉnh marketing)

Khi cả 2 chi nhánh đều có dashboard riêng (Factory Dashboard PT + Commerce Dashboard HCM), bước tiếp theo là **1 dashboard tổng hợp duy nhất** để CEO nhìn toàn bộ Hebekery trên 1 màn hình.

### Chain Dashboard — Thiết kế đề xuất

**Nguồn dữ liệu:**

- PT: Lark Base (tồn kho, sản lượng, xuất hàng) + Amis (kế toán)
- HCM: Sapo (đơn hàng, doanh thu, khách hàng) + Central Inbox tool (CSKH ticket)

**Các view chính:**

| View                             | Nội dung                                                                                                          | Tần suất cập nhật |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------ | --------------------- |
| **Tổng quan doanh thu**   | Doanh thu B2B/NPP (từ PT) + Doanh thu D2C HCM (theo kênh, SKU) — so sánh vs target                             | Daily                 |
| **Sản xuất vs Nhu cầu** | Sản lượng PT vs đơn hàng HCM + đơn NPP — phát hiện thiếu hụt hoặc tồn kho dư                       | Daily                 |
| **Tồn kho xuyên suốt**  | NVL tại PT + Thành phẩm tại PT + Thành phẩm tại kho HCM — 1 view duy nhất                                 | Real-time (Lark Base) |
| **CSKH health**            | Ticket volume, SLA, top vấn đề, khiếu nại chưa giải quyết                                                  | Daily                 |
| **Retention snapshot**     | Tỷ lệ tái mua, khách VIP, khách có nguy cơ rời bỏ                                                         | Weekly                |
| **Chi nhánh so sánh**    | PT: công suất sử dụng, tỷ lệ lỗi QC. HCM: conversion rate, AOV, tỷ lệ return — phát hiện bất thường | Weekly                |

**Tool:** Power BI — kết nối Lark Base (via API/export), Sapo (via connector), Amis (via export định kỳ do không có API mở).

> 🔗 **Liên kết với Ontology (Section 8):** Chain Dashboard là nơi ontology phát huy giá trị lớn nhất. Khi Power BI semantic model được chuẩn hóa theo ontology (naming convention, measure definitions thống nhất giữa PT và HCM), CEO có thể hỏi Power BI Copilot bằng ngôn ngữ tự nhiên và nhận câu trả lời chính xác xuyên suốt 2 chi nhánh. Ontology document v1 (target: 31/7/2026) phải hoàn thành trước khi build Chain Dashboard (Q4/2026).

**Timeline:** Q4/2026 — sau khi Factory Dashboard (PT, GĐ3) và Commerce Dashboard (HCM, GĐ3) đã hoàn thành. Chain Dashboard là lớp tổng hợp phía trên.

**Owner:** Sinh build.

### KPI Chain Insight

| KPI                          | Mục tiêu                                                                                                 |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------- |
| CEO nhìn toàn bộ Hebekery | 1 dashboard duy nhất, mở Power BI = biết hết — 0 lần cần hỏi thủ công                            |
| Phát hiện bất thường    | Dashboard có cảnh báo tự động khi chỉ số vượt ngưỡng (tồn kho thấp, SLA vỡ, doanh thu sụt) |
| Thời gian ra quyết định  | Giảm từ "chờ tổng hợp 1–2 ngày" xuống "nhìn dashboard, quyết ngay trong buổi"                   |

---

## 7. REFERENCE — CASE STUDY AI FIRST PLATFORM TỪ CHUỖI DỊCH VỤ

> Section này ghi nhận các kiến thức và framework hữu ích từ case study "AI First Platform cho DN quản lý chuỗi dịch vụ phụ thuộc vào con người".
> Mặc dù Hebekery hoạt động trong lĩnh vực FMCG / Sản xuất & Bán lẻ, nhưng đặc thù quản lý 2 chi nhánh độc lập có sự tương đồng nhất định với bài toán chuỗi dịch vụ nhiều cơ sở (lãnh đạo cần nhìn xuyên suốt, các chi nhánh vận hành riêng biệt).
> Do đó, chúng ta sẽ **tham khảo mô hình và tư duy** từ case study này để áp dụng cho Hebekery.

### Ý tưởng cốt lõi được tham khảo

Hệ thống AI First Platform tại Hebekery học hỏi từ các nhóm chức năng cốt lõi của DN chuỗi dịch vụ, bao gồm:

1. **Lớp nền tảng tri thức (Knowledge Hub):** Xây dựng kho tri thức tập trung để không phụ thuộc vào con người, giúp nhân sự mới có thể tự onboarding (như áp dụng tại nhà máy PT).
2. **Lớp điều hành (Executive Dashboard & Chain Insight):** Module tổng hợp dữ liệu toàn bộ các chi nhánh/pháp nhân về chung một dashboard để quản lý xuyên suốt (áp dụng cho mục tiêu quản lý cả PT và HCM trên 1 màn hình của CEO).
3. **Lớp trợ lý chuyên môn & tự động hóa luồng:** Các agent/copilot hỗ trợ cho từng vị trí đặc thù (CSKH HCM, Kế toán Amis PT) và các checklist được hệ thống hóa để tránh sai sót.
4. **Lớp ngữ nghĩa (Business Ontology):** Tham khảo từ Microsoft Fabric IQ Ontology concept — xây lớp business context layer (entity, relationship, business rules, metric definitions) để AI hiểu đúng ngữ cảnh kinh doanh. Hebekery áp dụng tư duy này vào context document + Power BI semantic model + Lark Base schema, không dùng Fabric IQ platform (xem chi tiết Section 8).

---

## 8. HEBEKERY BUSINESS ONTOLOGY — LỚP NGỮ NGHĨA CHO AI

> **AI đọc section này khi:** thiết kế AI agent, build dashboard, viết prompt cho bất kỳ module nào, hoặc cần hiểu cách Hebekery định nghĩa các khái niệm kinh doanh.
>
> Cập nhật: 04/2026 — khởi tạo từ phân tích Microsoft Fabric IQ Ontology concept.

### Ontology là gì và tại sao Hebekery cần

Ontology = **cuốn từ điển doanh nghiệp mà cả người và AI đều đọc được.** Nó định nghĩa rõ:

- **Entity** (thực thể): Sản phẩm, Đơn hàng, Khách hàng, Nguyên liệu, Nhà cung cấp, Nhân viên, Kênh bán hàng...
- **Relationship** (quan hệ giữa các entity): Khách hàng → đặt → Đơn hàng → chứa → Sản phẩm → được sản xuất từ → Nguyên liệu → mua từ → Nhà cung cấp
- **Business rules** (quy tắc nghiệp vụ): "Đơn hàng hoàn thành" = đã giao + đã thanh toán; "Tồn kho an toàn" = tồn kho ≥ 14 ngày sản xuất
- **Metric definitions** (định nghĩa chỉ số): doanh thu, COGS, lợi nhuận gộp, tỷ lệ hoàn, CAC, LTV — mỗi metric có đúng 1 công thức, 1 nguồn dữ liệu

Khi AI agent có ontology, thay vì đoán "doanh thu nằm ở bảng nào, tính thế nào", ontology đã **map sẵn** ngữ nghĩa → AI hỏi đúng dữ liệu, trả lời đúng context kinh doanh.

### Mối quan hệ với Context Document đang thu thập

> ⚠️ **QUAN TRỌNG:** Business Ontology document chính là **context document** mà anh Sinh đang thu thập cho toàn công ty — cùng một initiative, cùng một output.

Hiện tại anh Sinh đang thu thập context từ các bộ phận qua 2 loại document:

| Document | Nội dung | Vai trò trong Ontology |
|---|---|---|
| `output_objective_context.md` (mỗi bộ phận) | Mục tiêu đầu ra, nguyên tắc vận hành lý tưởng, định nghĩa thành công | → Chính là **business rules + metric definitions** trong ontology |
| `current_operating_context.md` (mỗi bộ phận) | Vận hành thực tế, data flow, tool đang dùng, handoff giữa các bộ phận | → Chính là **entity + relationship + data binding** trong ontology |

**Khi hoàn thành context document tất cả bộ phận → tổng hợp lại = Hebekery Business Ontology.** Đây là lớp ngữ nghĩa nền tảng mà MỌI AI agent, dashboard, SOP đều tham chiếu.

### Tại sao không dùng Microsoft Fabric IQ trong năm 2026

| Yếu tố | Đánh giá |
|---|---|
| Fabric IQ status | Vẫn đang preview, chưa GA |
| Yêu cầu hạ tầng | Phải có Microsoft Fabric capacity (F-SKU, tối thiểu ~$262/tháng, thực tế cần F64 ~$6,400/tháng để dùng full) + dữ liệu nằm trong OneLake |
| Stack hiện tại Hebekery | Lark Base + Sapo + AMIS + Power BI + N8N + Supabase — không nằm trong Microsoft data ecosystem |
| Quy mô phù hợp | Fabric IQ thiết kế cho enterprise nhiều data source phức tạp, cross-domain reasoning — Hebekery 30 người, 50 tỷ/năm chưa cần |
| Kết luận | **Không triển khai Fabric IQ trong 2026.** Đánh giá lại khi GA + khi scale lên 100 tỷ với data volume lớn hơn |

**Tuy nhiên, tư duy ontology thì áp dụng NGAY** — không cần Fabric, không cần RDF/XML. Anh đã đang làm đúng thông qua context document.

### Ontology Playground — Dùng để học, không dùng production

[Microsoft Ontology Playground](https://microsoft.github.io/Ontology-Playground) là tool open-source miễn phí, dùng để:

- **Học concept:** Mở domain E-Commerce hoặc Manufacturing có sẵn → xem cách Microsoft define entity, relationship, property → áp dụng tư duy đó khi thiết kế context document cho Hebekery
- **Visual editor:** Kéo thả entity, relationship → giúp hình dung cấu trúc doanh nghiệp dưới dạng knowledge graph
- **Natural Language Query demo:** Gõ câu hỏi tiếng Anh → xem nó map vào entity nào → hiểu cách AI "đọc" ontology

**Không export RDF/XML để dùng** — Hebekery không có Fabric IQ infrastructure để consume format này.

### Áp dụng tư duy Ontology vào stack hiện tại

| Nơi áp dụng | Cách áp dụng | Timeline | Dependency |
|---|---|---|---|
| **Context document các bộ phận** | Thu thập entity, relationship, business rules từ từng bộ phận → tổng hợp thành Hebekery Business Ontology document | Q2–Q3/2026 (đang thực hiện) | Các trưởng bộ phận hoàn thành context document |
| **Power BI semantic model** | Chuẩn hóa Star Schema với naming convention thống nhất, measure definitions centralized. Khi Power BI Copilot hỏi "doanh thu granola tháng 3" → nó biết chính xác đang nói về gì | Q3/2026 — sau khi Factory Dashboard (PT) + Commerce Dashboard (HCM) đã lên | Context document hoàn thành → biết chính xác metric definitions |
| **Lark Base schema design** | Thiết kế Lark Base theo ontology thinking: mỗi Base = entity rõ ràng, linked record = relationship, field naming chuẩn hóa. AI agent đọc Lark Base qua API → hiểu ngay context | Q2–Q3/2026 — song song với Inventory Tracking + Production Planning | SOP Hub phải viết xong trước để biết rõ data flow |
| **Procurement Hub (Supabase)** | Database schema = ontology biến thành code. Entity types = tables, relationships = foreign keys, business rules = RLS + triggers. Review PRD v2.0 dưới góc nhìn "AI có thể tự query và hiểu không?" | Q3–Q4/2026 | Context document bộ phận thu mua hoàn thành |
| **AI Agent system prompt** | Embed ontology context vào system prompt của mọi AI agent: Claude chat, N8N workflow, CSKH chatbot, Lark Chatbot. Agent nào cũng "nói cùng ngôn ngữ" với doanh nghiệp | Ongoing — bắt đầu từ khi có context document đầu tiên | Ít nhất 1 bộ phận đã có context document |

### Cấu trúc Hebekery Business Ontology Document (đề xuất)

Khi tổng hợp context document tất cả bộ phận xong, ontology document sẽ có cấu trúc:

```
Hebekery Business Ontology
├── 1. Entity Catalog
│   ├── Core Entities: Sản phẩm, SKU, Đơn hàng, Khách hàng, NVL, Nhà cung cấp
│   ├── Operational Entities: Lệnh sản xuất, Lô sản xuất, Phiếu xuất kho, Ticket CSKH
│   └── Support Entities: Nhân viên, Bộ phận, Kênh bán hàng, Đối tác NPP
├── 2. Relationship Map
│   ├── Supply chain: NCC → cung cấp → NVL → dùng trong → Lệnh SX → tạo ra → Thành phẩm
│   ├── Sales: Khách hàng → đặt → Đơn hàng → chứa → SKU → bán qua → Kênh
│   └── Operations: Nhân viên → thuộc → Bộ phận → vận hành → Quy trình → có SOP
├── 3. Business Rules & Constraints
│   ├── Tồn kho an toàn NVL = tồn kho ≥ X ngày sản xuất (theo từng NVL)
│   ├── Đơn hàng hoàn thành = đã giao + đã thanh toán + không có khiếu nại mở
│   ├── SLA CSKH = phản hồi < 30 phút trong giờ hành chính
│   └── ... (bổ sung khi context document hoàn thành)
├── 4. Metric Definitions (Single Source of Truth)
│   ├── Doanh thu = SUM(Đơn hàng.total) WHERE status = completed, GROUP BY kênh/SKU/ngày
│   ├── COGS = SUM(NVL consumed × unit cost) + direct labor + overhead
│   ├── Tỷ lệ hoàn = COUNT(return orders) / COUNT(total orders) × 100%
│   └── ... (bổ sung khi Power BI model chuẩn hóa)
└── 5. Data Source Mapping
    ├── Sapo → Đơn hàng, Khách hàng, SKU, Doanh thu D2C
    ├── Lark Base → Tồn kho, Lệnh SX, QC, Xuất hàng, Nhân sự PT
    ├── AMIS → Kế toán, Hóa đơn, Hạch toán
    ├── Central Inbox tool → Ticket CSKH, SLA tracking
    └── Power BI → Dashboard layer (consume tất cả source trên)
```

> 📝 **File tham chiếu:** `hebekery-business-ontology.md` — tạo khi đủ context document từ ≥ 3 bộ phận.
> Dùng khi: build bất kỳ AI agent, dashboard, hoặc automation nào — để đảm bảo AI hiểu đúng ngữ nghĩa kinh doanh Hebekery.

### KPI Ontology

| Mốc | Deadline | Tiêu chí đạt |
|---|---|---|
| Context document bộ phận đầu tiên | 30/5/2026 | Ít nhất 1 bộ phận (PT hoặc HCM) có đủ objective + operating context |
| Ontology document v1 draft | 31/7/2026 | Entity catalog + relationship map + metric definitions cơ bản — đủ để embed vào AI agent |
| Power BI semantic model chuẩn hóa | 30/9/2026 | Naming convention thống nhất, measure centralized, Power BI Copilot trả lời đúng context |
| Ontology document v2 | 31/12/2026 | Full business rules + data source mapping, tất cả AI agent đều tham chiếu cùng ontology |
| Evaluate Fabric IQ | Q1/2027 | Review lại khi Fabric IQ GA + Hebekery scale — quyết định có migrate hay không |

---

## 9. PHỤ LỤC — CASE STUDY GỐC

> Toàn văn chi tiết về framework gốc được lưu trữ riêng để tham khảo và lấy cảm hứng.
> Nội dung bao gồm: bối cảnh, chân dung DN mục tiêu, pain points, cấu trúc platform (30+ module), lộ trình triển khai mẫu.
> File tham chiếu: `case-study-ai-first-chain-service.md`
> Dùng khi: Xin ý tưởng, tham khảo cấu trúc các module tự động hóa hoặc thiết kế các quy trình báo cáo/vận hành cho nhiều chi nhánh độc lập.

---

*File này là living document — cập nhật khi hoàn thành milestone, thay đổi timeline, hoặc bổ sung thông tin mới.*
