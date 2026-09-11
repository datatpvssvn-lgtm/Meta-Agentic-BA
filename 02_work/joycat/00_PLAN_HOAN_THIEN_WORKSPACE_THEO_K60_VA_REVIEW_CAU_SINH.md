# Kế hoạch hoàn thiện Meta Agentic BA theo kho K60 và review của cậu Sinh

> Ngày lập: 09/09/2026  
> Người thực hiện: Duy phối hợp với AI  
> Người review và quyết định chuyển bước: cậu Sinh  
> Trạng thái: **Đang thực hiện bốn việc cậu Sinh giao; phần tổ chức, Context/AGENTS/KPI và hợp đồng Pair Readiness đã được cập nhật kỹ thuật. Sáu PDF cũ chỉ bao phủ snapshot một phần; chưa coi full K60 đã chuyển hết thành PDF. Gate 2 vẫn chờ cậu Sinh review.**  
> Phạm vi: tổ chức workspace, tiếp nhận kho kiến thức K60, sửa Context/AGENTS/KPI Tree, hoàn thiện Data Dictionary và kiểm tra khả năng ETL các cặp Category–Numeric, tạo PDF học tập, xử lý bảy lỗi trong review Gate 2.

---

## 1. Nói ngắn gọn: kế hoạch này nhằm tạo ra điều gì?

Sau khi hoàn thành, một người hoặc AI mới mở workspace phải hiểu được:

1. Dự án dùng Joycat làm **case học và kiểm nghiệm phương pháp**, không phải đích cuối.
2. Bài thực hành đầu tiên là KPI Tree với giả định `Ads Cost / GMV = 5–10%`; không cần cố chứng minh giả định này đúng khi thiếu GMV business.
3. Cấu trúc quảng cáo phải được đọc theo chuẩn Meta: `Campaign → Ad set → Ad`.
4. Điều gì lấy trực tiếp từ Meta, điều gì Joycat xác nhận, điều gì Duy/AI suy luận và điều gì chưa biết.
5. Duy muốn phân tích cặp Category–Numeric nào, dataset có đủ để ETL hay không, thiếu trường hoặc khóa nào.
6. Mỗi kết luận sau này có thể kiểm lại bằng dữ liệu và Power BI.
7. Phần nào là cách làm dùng chung, phần nào chỉ đúng với Joycat.

Kết quả của đợt này chưa phải dashboard hay recommendation. Kết quả là **một workspace đúng cấu trúc, Context đúng mục tiêu và hợp đồng dữ liệu đủ rõ để quyết định có thể bắt đầu ETL phần nào**.

---

## 2. Ba nguồn bắt buộc phải đọc và phân vai

### 2.1. Kho kiến thức K60 — nguồn phương pháp

Đường dẫn nguồn hiện có:

```text
D:\AI_Agentic_Analytics_K60_20260909_FULL\AI Agentic Analytics K60
```

Snapshot đầy đủ đã xác minh ngày 11/09/2026: 1.277 file tài liệu gốc, 5.873.080.087 byte; hai sidecar định tuyến AI được thêm sau inventory.

| Nhóm nguồn | Hiện có | Cách dùng trong dự án |
|---|---:|---|
| Session 12–13 EDA Descriptive | 148 ảnh WEBP + `EDA_Descriptive_Checklist.xlsx` | Phân loại biến, thống kê mô tả và các cặp Cat×Num/Num×Num |
| Session 14–15 EDA Diagnostic | 113 ảnh WEBP + `EDA_Diagnostics_Methods.xlsx` | Chọn kiểm tra phù hợp theo loại cặp và điều kiện dữ liệu |
| Session 16–18 Visualization | 159 ảnh JPG | Visualization, analytical dashboard, bias, actionable insight và storytelling |
| Giáo trình và tài liệu đi kèm | 590 file | Analytical thinking, logic tree, data quality, data model và bài tập |
| Các nhóm source còn lại | 427 file | E-learning, tài liệu cập nhật, dữ liệu theo ngày học và workbook định tuyến |

Quy tắc: K60 là **nguồn phương pháp**. Không lấy ví dụ Contoso hoặc kiến thức tổng quát trong K60 làm fact của Joycat.

### 2.2. Review của cậu Sinh — nguồn yêu cầu và acceptance criteria

Nguồn hiện tại:

- [`01_inputs/joycat/reviews/2026-09-09_GATE-2_TREES_MAPPING_REVIEW.md`](../../01_inputs/joycat/reviews/2026-09-09_GATE-2_TREES_MAPPING_REVIEW.md)

Review này dùng để xác định lỗi, thứ tự sửa và điều kiện review lại. Không tự hiểu review là đã pass Gate 2.

### 2.3. Workspace hiện tại — đối tượng cần sửa

Các file điều hành phải đọc trước:

- [`AGENTS.md`](../../AGENTS.md)
- [`context/WORKSPACE_CONTEXT.md`](../../context/WORKSPACE_CONTEXT.md)
- [`context/CURRENT_INTENT.md`](../../context/CURRENT_INTENT.md)
- [`01_inputs/joycat/context.md`](../../01_inputs/joycat/context.md)

Các Tree và hợp đồng dữ liệu Joycat hiện hành:

- `Ad_Cost_GMV_all_platform v3.md/.mm`
- `METRIC_TREE.md/.mm`
- `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm`
- `DATA_DICTIONARY_JOYCAT.md`
- `DATA_MAPPING_COVERAGE_JOYCAT.md/.mm`
- Các workbook Joycat và raw Meta tháng 03–05/2026

---

## 3. Nguyên tắc thực hiện

1. **Preservation first:** không sửa raw, không ghi đè kho K60 gốc, không xóa file cũ trước khi có inventory và bản lưu.
2. **Một canonical path:** mỗi artefact chỉ có một bản active; bản review/export phải ghi rõ là snapshot, không phải source of truth thứ hai.
3. **Source trước conclusion:** trường Meta trực tiếp, xác nhận của Joycat và suy luận phải được gắn nhãn riêng.
4. **Không đoán cấu hình:** không suy Objective, audience, placement, budget, optimization hoặc creative thật từ tên Campaign.
5. **Không trộn grain:** Campaign, Ad set và Ad phải nối bằng ID; không cộng ba grain như ba nguồn chi phí độc lập.
6. **Không trộn business với Meta attribution:** GMV/Business Orders và Meta-attributed Purchases là hai population khác nhau cho tới khi có bridge được xác nhận.
7. **Không tự đặt target:** mức chưa được cậu Sinh chốt phải ghi `Chưa chốt`.
8. **Power BI là bằng chứng:** mỗi số quan trọng sau này phải truy được về measure, table, row lineage và source file.
9. **KPI Tree 5–10% vẫn được giữ:** đây là bài thực hành đầu tiên của case Joycat; không thay nó bằng một cây học tập chung chung.
10. **Chỉ chuyển phase khi review pass:** hoàn thành tài liệu không tự đồng nghĩa được phép chạy ETL hoặc đưa recommendation.

---

## 4. Cấu trúc workspace mục tiêu

Trước khi di chuyển, AI phải tạo inventory gồm đường dẫn, loại file, kích thước, thời gian sửa và SHA-256. Sau đó tổ chức theo cấu trúc dự kiến:

```text
D:\Meta Agentic BA
├── AGENTS.md
├── context
│   ├── WORKSPACE_CONTEXT.md
│   ├── CURRENT_INTENT.md
│   └── PROJECT_SUCCESS_CRITERIA.md          # tiêu chí thành công/Gate toàn dự án
├── 01_inputs
│   └── joycat
│       ├── context.md
│       ├── raw                              # nguồn gốc bất biến
│       ├── analysis_design                  # KPI, Metric, công thức, dictionary, mapping contract
│       └── reviews                          # feedback/review đầu vào
├── 02_work
│   └── joycat
│       ├── inventory
│       ├── derived_data                     # workbook dẫn xuất/human mapping
│       ├── dataset_audit
│       ├── pair_readiness
│       ├── validation
│       ├── pdf_build                        # file tạm khi dựng PDF
│       └── archive
├── 03_outputs
│   └── joycat                               # chỉ có report/ETL/Power BI output thật khi được mở phase
└── 04_reference
    ├── AI_Agentic_Analytics_K60             # bản sao read-only của kho học
    ├── K60_PDF_READERS                      # PDF để Duy đọc
    └── META_ALL_METRICS.mm
```

### 4.1. Quy tắc phân loại cụ thể

| Loại file | Vị trí canonical | Lý do |
|---|---|---|
| Raw Meta/Business gốc | `01_inputs/joycat/raw` | Bằng chứng gốc, chỉ đọc |
| Context Joycat | `01_inputs/joycat/context.md` | Context của case |
| KPI Tree Joycat, Metric Tree, bộ công thức | `01_inputs/joycat/analysis_design` | Là đầu vào thiết kế cho ETL/analysis |
| Data Dictionary và Mapping contract | `01_inputs/joycat/analysis_design` | Hợp đồng ngữ nghĩa và dữ liệu |
| Objective/Phễu do con người gắn | `02_work/joycat/derived_data` | Dữ liệu dẫn xuất, phải có lineage/version/reviewer |
| Coverage/audit/validator result | `02_work/joycat/...` | Bằng chứng trung gian có thể tái tạo |
| Review của cậu Sinh | `01_inputs/joycat/reviews` | Yêu cầu đầu vào và điều kiện duyệt |
| Kho K60 | `04_reference/AI_Agentic_Analytics_K60` | Nguồn học phương pháp, không phải dữ liệu Joycat |
| PDF học K60 | `04_reference/K60_PDF_READERS` | Tài liệu đọc lại |
| Báo cáo, ETL output, PBIX Joycat | `03_outputs/joycat` | Chỉ xuất hiện khi phase tương ứng được duyệt |

### 4.2. Mâu thuẫn phải sửa trong AGENTS.md

AGENTS hiện vừa nói Excel dẫn xuất nằm ở `01_inputs`, vừa nói derived data phải nằm ở `02_work`. Khi triển khai sẽ sửa thành:

```text
Input gốc và specification được duyệt → 01_inputs
Draft, mapping thủ công, derived data và validation → 02_work
Report/ETL/Power BI output thật → 03_outputs
Knowledge dùng để tham khảo → 04_reference
```

---

## 5. Trình tự thực hiện

## Task 0 — Chụp hiện trạng và bảo toàn

### Mục đích

Có thể truy lại trạng thái trước sửa và không mất file của Duy.

### Việc làm

1. Lập inventory toàn workspace và kho K60.
2. Tính hash cho artefact chính, review và file K60.
3. Ghi rõ file active, duplicate, archive và file chưa rõ vai trò.
4. Tạo snapshot trong `02_work/joycat/archive` trước khi di chuyển/sửa.
5. Không chạy file XMind `.exe`.
6. Không coi `.drivedownload` là video đã tải.

### Đầu ra

- Inventory trước sửa.
- Manifest hash.
- Bản snapshot phục hồi.

### Điều kiện đạt

- Không mất file.
- Raw và kho K60 gốc không thay đổi hash.

---

## Task 1 — Tổ chức lại workspace

### Mục đích

Một người mới biết ngay file nào là input, work, output và reference.

### Việc làm

1. Áp dụng cấu trúc ở mục 4.
2. Chuyển các file logic vào `01_inputs/joycat/analysis_design`.
3. Chuyển workbook dẫn xuất/human mapping vào `02_work/joycat/derived_data`.
4. Chuyển review của cậu Sinh vào `01_inputs/joycat/reviews`; giữ nguyên nội dung.
5. Giữ `03_outputs/joycat` trống cho tới khi có output phân tích thật.
6. Tạo một `README.md` ngắn ở mỗi folder quan trọng để giải thích vai trò và thứ tự đọc.
7. Chọn đúng một canonical path cho mỗi artefact.
8. Sửa toàn bộ Markdown link và link trong `.mm`.
9. Lưu migration map: file cũ → file mới.

### Không làm

- Không xóa archive.
- Không tạo hai bản active cùng tên ở input và output.
- Không sửa nội dung chuyên môn chỉ vì đang chuyển folder.

### Điều kiện đạt

- Broken internal links = 0.
- Mỗi artefact có đúng một canonical path.
- Người mới đọc README biết phải bắt đầu từ đâu.

---

## Task 2 — Tiếp nhận và lập Knowledge Map cho K60

### Mục đích

Biến kho K60 thành nguồn kiến thức có thể tra cứu, thay vì chỉ là một folder nhiều file.

### Việc làm

1. Copy kho K60 vào `04_reference/AI_Agentic_Analytics_K60`; không move hoặc sửa bản gốc.
2. Tạo inventory theo folder, session, loại file và chủ đề.
3. Phân loại nội dung theo các nhóm:
   - problem solving và root cause;
   - KPI/Business Value;
   - data quality và data maturity;
   - data model và table relationship;
   - visualization và chart selection;
   - bias và cách đọc insight;
   - actionable insight và storytelling;
   - Power BI.
4. Với mỗi bài học, ghi:
   - nội dung nguồn dạy gì;
   - áp dụng được phần nào cho Meta Agentic BA;
   - phần nào chỉ là ví dụ của khóa học;
   - file nào của Joycat cần sửa theo bài học đó;
   - nguồn file/trang/slide để truy lại.
5. Không tự điền nội dung cho folder rỗng hoặc file chưa tải.

### Đầu ra

- `K60_KNOWLEDGE_MAP.md`.
- `K60_SOURCE_INVENTORY.csv`.
- Danh sách knowledge → artefact Joycat cần sửa.

### Điều kiện đạt

- Mọi thay đổi trong Context/KPI/Data Dictionary đều chỉ ra được nguồn K60 hoặc feedback cậu Sinh.
- Không biến ví dụ Contoso thành business rule Joycat.

---

## Task 3 — Sửa AGENTS và ba lớp Context

### Mục đích

AI mới mở workspace hiểu đúng bài toán mà không cần lịch sử chat.

### File cần sửa

- `AGENTS.md`.
- `context/WORKSPACE_CONTEXT.md`.
- `context/CURRENT_INTENT.md`.
- `01_inputs/joycat/context.md`.

### Nội dung phải thể hiện

1. **Objective Context:** Duy học và xây phương pháp phân tích Meta Ads có bằng chứng, dùng Joycat làm case đầu tiên.
2. **Mong muốn phase hiện tại:** hoàn thiện Context, Tree, Dictionary và Pair Readiness trước ETL.
3. **Current Operating Context:** dữ liệu hiện có, người duyệt, công cụ và giới hạn.
4. **Chuỗi phương pháp:**

```text
KPI Tree Joycat 5–10%
→ Metric Tree
→ cấu trúc Campaign → Ad set → Ad
→ Data Dictionary
→ cặp Category–Numeric cần kiểm nghiệm
→ Data Readiness
→ ETL
→ Power BI kiểm chứng
→ rút ra phương pháp chung
```

5. Thứ tự tin cậy khi xác định cấu hình:

```text
Field trực tiếp từ Meta
→ người vận hành Joycat xác nhận
→ naming rule đã được kiểm tra và duyệt
→ suy luận của Duy/AI
→ chưa có thông tin
```

6. Quyền hạn:
   - Duy xây, học, phân tích và đề xuất.
   - AI hỗ trợ đọc nguồn, audit, thiết kế và chỉ ra thiếu.
   - Cậu Sinh duyệt mục tiêu, rule business, target KPI, Gate và hành động quan trọng.
   - Data/Joycat owner xác nhận cấu hình và dữ liệu nghiệp vụ.
7. Power BI phải giữ evidence lineage.
8. Thiếu GMV chỉ chặn Business ROAS/5–10%; không chặn phân tích cấu trúc Meta và delivery metrics.

### Điều kiện đạt

- Bốn file không mâu thuẫn mục tiêu, phase, đường dẫn hoặc quyền duyệt.
- AI không thể đọc tên Campaign rồi trình bày suy luận như cấu hình thật.
- `CURRENT_INTENT` nói rõ việc đang làm, việc tiếp theo và blocker.

---

## Task 4 — Chỉnh đúng vai trò hai tầng KPI

### Mục đích

Giữ KPI Tree Joycat 5–10% là bài học đầu tiên, đồng thời không nhầm nó với toàn bộ thành công của dự án.

### Tầng A — Thành công toàn dự án

Tạo tiêu chí/KPI cấp dự án cho bốn kết quả:

1. Bám đúng cấu trúc Meta.
2. Hiểu và tái dựng được cách Joycat tổ chức quảng cáo.
3. Kết luận có bằng chứng và kiểm được trong Power BI.
4. Phương pháp có thể thử trên thương hiệu khác.

Target chưa được cậu Sinh duyệt phải ghi `Chưa chốt`.

### Tầng B — KPI Tree của case Joycat

Giữ file `Ad_Cost_GMV_all_platform v3.md/.mm` và ghi rõ:

- KPI chính: `Ads Cost / GMV`.
- `5–10%` là giả định bài tập.
- `GMV / Ads Cost = 10–20 lần` là phép đọc nghịch đảo, không phải KPI độc lập.
- Thiếu GMV business nên chưa tính được kết quả thật.
- Tree dùng để rẽ xuống Metric, dữ liệu và câu hỏi kiểm nghiệm.

### Điều kiện đạt

- Không loại bỏ KPI Tree 5–10%.
- Không gọi bài tập Joycat là toàn bộ KPI thành công dự án.
- KPI Tree nối được sang Metric Tree, Data Dictionary và Pair Readiness.

---

## Task 5 — Tái dựng cấu trúc Campaign → Ad set → Ad

### Mục đích

Hiểu đội Joycat đang tổ chức quảng cáo như thế nào dựa trên bằng chứng, không chỉ đọc danh sách metric.

### Data contract tối thiểu

| Cấp | Field/nhóm thông tin cần kiểm tra |
|---|---|
| Campaign | Account ID, Campaign ID, Campaign name, Objective gốc, buying type, status, budget mode |
| Ad set | Ad set ID, Campaign ID, optimization/performance goal, conversion location, billing event, bid strategy, budget, schedule, attribution setting, audience, placement |
| Ad | Ad ID, Ad set ID, Ad name, Creative ID, format, media, CTA, destination/link, status |
| Delivery | reporting period, publisher platform, placement, impressions, reach, frequency, amount spent |
| Meta result | result indicator, results, cost per result, attributed purchases/value, attribution |
| Business result | order key, order status, eligible order, GMV, channel, product/SKU, order date |

### Kiểm tra bắt buộc

- ID lưu dạng text, không để Excel làm tròn.
- Parent–child join bằng ID.
- Duplicate ID, orphan, many-to-many và row multiplication.
- Tổng spend trước/sau join.
- Field thật và field suy luận tách riêng.
- Không mặc định Publisher platform từ destination.

### Đầu ra

- Bảng hierarchy Meta của Joycat.
- Bảng field availability theo Campaign/Ad set/Ad.
- Danh sách field phải export lại.

---

## Task 6 — Hoàn thiện Data Dictionary

### Mục đích

Mỗi cột phải đủ rõ để AI biết dùng, join, aggregate và kết luận tới đâu.

### Mỗi field phải có

| Nhóm thuộc tính | Nội dung |
|---|---|
| Nhận diện | canonical field, raw field, tiếng Việt dễ hiểu |
| Nguồn | source file, sheet/table, header row, source row nếu là mapping |
| Cấu trúc | object level, grain, data type, key/foreign key |
| Vai trò phân tích | ID, Category, Numeric measure, Date, Text, metadata |
| Phép tính | unit, aggregation rule, denominator, null/zero rule |
| Ngữ nghĩa Meta | objective, optimization, result indicator, attribution |
| Bằng chứng | Meta direct, Joycat confirmed, human mapping, AI inference, unknown |
| Quản trị | owner, mapping basis, version, effective period, reviewer, review status |
| Readiness | usable now, transform needed, mapping needed, missing source, invalid |

### Semantic bắt buộc phải tách

```text
meta_purchases_attributed
business_orders_eligible
meta_purchase_value_attributed
GMV_business
AOV_business
```

Không dùng chung từ `Purchases` nếu không chỉ rõ population.

---

## Task 7 — Ghi mong muốn phân tích thành các cặp Category–Numeric

### Mục đích

Duy nói được mình muốn so sánh điều gì, còn AI kiểm tra dataset có thể ETL để trả lời hay không.

### Cách ghi một mong muốn

Ví dụ:

```text
Câu hỏi: CPM khác nhau thế nào giữa các Campaign objective trong cùng tháng?
Category: Campaign objective
Numeric: CPM
Phạm vi: tháng 03–05/2026, grain Campaign hoặc Ad set được chọn
Mục đích: kiểm tra chi phí phân phối theo nhiệm vụ quảng cáo
Không được kết luận sẵn: Objective nào tốt hơn hoặc ROAS tăng/giảm
```

### Catalogue Category dự kiến

- Reporting period.
- Campaign, Ad set, Ad.
- Campaign objective gốc.
- Objective suy luận.
- Optimization/Performance goal.
- Result indicator.
- Product/SKU hoặc nhóm sản phẩm.
- TOFU/MOFU/BOFU/Shared.
- Publisher platform và placement.
- Audience type/name.
- Creative format, CTA và destination.
- Attribution setting.

### Catalogue Numeric dự kiến

- Amount Spent.
- Impressions, Reach, Frequency, CPM.
- Clicks all, Link Clicks, CTR all/link, CPC all/link.
- Post Engagement, Messaging Conversations Started, New Messaging Contacts.
- Results và Cost per Result theo đúng indicator.
- Meta-attributed Purchases và Cost per Meta Purchase.
- Business Orders, GMV business, AOV business và Business ROAS khi có nguồn.

### Không tạo Cartesian product mù

Không lấy mọi Category nhân với mọi Numeric chỉ để có bảng lớn. Mỗi cặp phải có:

- câu hỏi muốn trả lời;
- lý do cần phân tích;
- grain;
- field/category và measure;
- công thức;
- required join;
- giới hạn kết luận;
- người dùng kết quả.

---

## Task 8 — Audit ETL Readiness cho từng cặp

### Mục đích

AI trả lời rõ: cặp này làm được ngay, cần transform, cần human mapping hay đang bị chặn.

### Năm trạng thái đầu ra

| Trạng thái | Ý nghĩa |
|---|---|
| Ready now | Có field, key, grain và công thức đủ rõ |
| Ready after transform | Có dữ liệu nhưng cần chuẩn hóa type/unpivot/deduplicate |
| Ready after human mapping | Cần Duy/Joycat gắn nhãn và có version/reviewer |
| Blocked — missing source | Dataset không có field hoặc business source cần thiết |
| Invalid pair | Hai đại lượng khác grain/population nên ghép sẽ sai |

### Mỗi cặp phải được kiểm tra

1. Category có tồn tại không?
2. Numeric có tồn tại hoặc tính được không?
3. Hai bên cùng grain không?
4. Có key để join không?
5. Có nguy cơ duplicate/many-to-many không?
6. Aggregation có hợp lệ không?
7. Period và attribution có khớp không?
8. Null khác zero thế nào?
9. Có cần xác nhận của Joycat/cậu Sinh không?
10. Có được phép đưa lên Power BI chưa?

### Đầu ra

- `CAT_NUM_ANALYSIS_REQUESTS.md`: mong muốn phân tích bằng lời thường.
- `CAT_NUM_PAIR_READINESS.csv`: một dòng cho mỗi cặp.
- `ETL_GAPS_AND_REEXPORT_REQUEST.md`: danh sách cột/file cần xin lại.
- `JOIN_AND_RECONCILIATION_RULES.md`: rule join và kiểm soát tổng.

### Điều kiện đạt

- Duy nhìn từng cặp biết vì sao muốn phân tích.
- AI/ETL nhìn từng cặp biết làm được không và thiếu gì.
- Không dùng nhãn suy luận như fact Meta.

---

## Task 9 — Xử lý bảy lỗi Gate 2

| Lỗi trong feedback | Task xử lý | Bằng chứng hoàn thành |
|---|---|---|
| 1. Current Intent chưa đúng trọng tâm | Task 3 | Context ghi đúng Joycat là case học, KPI 5–10% là bài tập đầu tiên |
| 2. Lẫn KPI dự án và chỉ số Joycat | Task 4 | Hai tầng được phân vai và liên kết rõ |
| 3. AGENTS chưa chống AI tự đoán | Task 3 | Có trust order, evidence labels và authority |
| 4. Chưa rõ dữ liệu ba cấp Campaign/Ad set/Ad | Task 5–6 | Có hierarchy contract và field availability |
| 5. Folder, link, validator và key nối sai | Task 0–1, Task 8 | Một canonical, link hỏng = 0, validator chạy lại được |
| 6. Lẫn Meta Purchase với Business Order | Task 6 | Semantic contract tách population xuyên suốt |
| 7. Chưa có approval để chuyển ETL/Power BI | Task 10 | Gate checklist được cậu Sinh duyệt |

Ngoài bảy lỗi chính, phải xử lý các technical findings trong phụ lục review:

- Campaign name không unique.
- Thiếu Campaign ID ở workbook mapping.
- Mapping tháng 04 lệch 9.252 VND.
- Validator và audit script hard-code đường dẫn.
- JSON PASS cũ không chứng minh package hiện tại pass.
- Heading/version của bộ 5 Metrics chưa nhất quán.

---

## Task 10 — Làm validator và Gate checklist tái tạo được

### Việc làm

1. Bỏ hard-code `D:\Meta Agentic BA`; resolve root từ script hoặc `--root`.
2. Validator đọc manifest canonical thay vì tự đoán vị trí.
3. Exit code khác 0 khi thiếu file, link hỏng, XML lỗi hoặc duplicate ID.
4. Ghi `generated_at`, relative root, file hash/size và error summary.
5. Chạy trên workspace chính và một bản copy/ZIP giải nén.
6. Kiểm tra raw hash không đổi.
7. Ghi Gate checklist, owner và trạng thái `Draft/Reviewed/Approved`.

### Điều kiện đạt

- Một người khác tải folder về có thể chạy lại kiểm tra.
- PASS mới phản ánh đúng inventory hiện tại.
- Không suy approval từ lời thuật lại.

---

## Task 11 — Tạo PDF để Duy học kho K60

> Trạng thái hiệu chỉnh 11/09/2026: **Sáu PDF của snapshot cũ đã hoàn thành; full source mới chưa được chuyển hết thành PDF.** Theo xác nhận mới nhất của Duy, mục số 2 hiện chỉ có nghĩa là các folder/archive K60 đã được tải và hợp nhất. Việc tạo PDF đầy đủ cho 148/113/159 slide là task riêng, không thuộc lượt Context/Data Dictionary hiện tại.

### Nguyên tắc

Không biến mọi binary thành PDF một cách máy móc. Mỗi loại nguồn có cách bàn giao riêng:

| Nguồn | PDF dự kiến | Cách làm |
|---|---|---|
| 41 slide JPG của snapshot cũ | `05_K60_VISUALIZATION_SESSION_16_18.pdf` | Đã sắp theo số slide và giữ tỷ lệ; 41 ảnh + 1 trang dẫn; full source hiện có 159 ảnh |
| PPTX 30 slide | Ghép trong `01_K60_ANALYTICAL_THINKING_AND_LOGIC_TREE.pdf` | Đã chuyển đủ 30 slide bằng PowerPoint |
| Problem Solving 101 | Ghép trong `01_K60_ANALYTICAL_THINKING_AND_LOGIC_TREE.pdf` | Giữ nguyên 68 trang nguồn, có divider và bookmark |
| Folder XLSX/CSV/ACCDB | `02_K60_DATA_SAMPLE_CATALOG.pdf` | Mô tả workbook/sheet/header và bài học; không in toàn bộ hàng dữ liệu |
| PBIX sample | `04_K60_POWER_BI_SAMPLE_CATALOG.pdf` | Chưa thể hiện nội dung report vì PBIX chưa mở/export; catalogue ghi rõ điều kiện tiếp theo |
| `.drivedownload` | `03_K60_AI_FLUENCY_SESSION_STATUS.pdf` | Chỉ ghi readiness/blocker; không giả lập nội dung video |
| `.exe` | Không tạo PDF nội dung | Chỉ ghi trong inventory; không chạy |

### PDF index dự kiến

1. `00_K60_READING_GUIDE.pdf` — thứ tự đọc và mục tiêu từng tài liệu.
2. `01_K60_ANALYTICAL_THINKING_AND_LOGIC_TREE.pdf` — 102 trang.
3. `02_K60_DATA_SAMPLE_CATALOG.pdf` — 4 trang.
4. `03_K60_AI_FLUENCY_SESSION_STATUS.pdf` — 2 trang.
5. `04_K60_POWER_BI_SAMPLE_CATALOG.pdf` — 2 trang.
6. `05_K60_VISUALIZATION_SESSION_16_18.pdf` — 42 trang.

Chi tiết hash và QA: `04_reference\AI_Agentic_Analytics_K60\PDF_MANIFEST.md`.

### Quality check

- Đủ trang/slide theo đúng snapshot được dùng để tạo PDF; không gọi là full K60 nếu chưa bao phủ full source.
- Tiếng Việt không lỗi font.
- Không cắt chữ, méo ảnh hoặc sai thứ tự.
- Render PDF cuối thành ảnh để kiểm tra bằng mắt.
- Ghi source path và ngày tạo trong từng PDF.

---

## Task 12 — Đóng gói để cậu Sinh review lại

### Nội dung gói review

1. README: đọc gì trước và review câu hỏi nào.
2. AGENTS và ba Context.
3. Project success criteria/Gate checklist.
4. KPI Tree Joycat 5–10%.
5. Metric Tree và bộ 5 Metrics.
6. Data Dictionary.
7. Campaign–Ad set–Ad hierarchy/field availability.
8. Category–Numeric request và Pair Readiness.
9. Mapping lineage và danh sách cần re-export.
10. Báo cáo validator mới.

Gói review là snapshot có manifest/hash. Canonical file vẫn nằm đúng folder làm việc, không tạo hai bản active cạnh tranh.

### Điều kiện đạt

- Cậu Sinh đọc được đường đi từ mục tiêu → Tree → data → readiness → Gate.
- Duy trình bày được bằng lời thường.
- Chỉ cậu Sinh mới đổi trạng thái Gate 2 sang pass.

---

## 6. Thứ tự ưu tiên và dependency

```text
Task 0 — Inventory và backup
  ↓
Task 1 — Tổ chức folder và canonical path
  ↓
Task 2 — Đọc/lập Knowledge Map K60
  ↓
Task 3 — Sửa AGENTS và Context
  ↓
Task 4 — Phân vai KPI dự án và KPI Tree Joycat
  ↓
Task 5 — Tái dựng Campaign → Ad set → Ad
  ↓
Task 6 — Data Dictionary
  ↓
Task 7 — Duy nêu cặp Category–Numeric muốn kiểm nghiệm
  ↓
Task 8 — AI audit ETL Readiness từng cặp
  ↓
Task 9–10 — Đóng các lỗi và chạy validator
  ↓
Task 11 — PDF reader K60
  ↓
Task 12 — Package review Gate 2
```

PDF có thể làm song song sau khi Task 2 đã có inventory, nhưng không được làm chậm việc sửa Context/Data contract.

---

## 7. Việc Duy cần tham gia

Duy không phải tự thiết kế ETL. Duy cần cung cấp “mong muốn phân tích” bằng lời thường.

Với mỗi câu hỏi, Duy chỉ cần trả lời:

1. Duy muốn so sánh nhóm nào?
2. Duy muốn nhìn con số nào?
3. Duy muốn biết điều gì sau khi so sánh?
4. Duy đang dựa trên quan sát nào hay chỉ muốn khám phá?

Ví dụ:

```text
Tui muốn so CPM giữa các Objective trong cùng tháng,
để xem chi phí phân phối khác nhau ra sao.
Tui chưa kết luận Objective nào tốt hơn.
```

AI chịu trách nhiệm chuyển câu này thành field, grain, công thức, join, data check và readiness status.

---

## 8. Các blocker đã biết

| Blocker | Ảnh hưởng | Owner/nguồn |
|---|---|---|
| Chưa có GMV business đa kênh | Chặn Business ROAS và kiểm nghiệm 5–10%; không chặn cấu trúc Meta | Joycat/data owner/cậu Sinh |
| Publisher platform thiếu | Chặn các cặp cần phân tách Facebook/Instagram | Người export Meta |
| Mapping Ads → SKU/listing thiếu | Chặn phân tích tới sản phẩm thật | Joycat/product owner |
| Campaign ID thiếu ở workbook mapping | Join theo tên không an toàn | Người export Meta/Duy |
| Human mapping thiếu lineage/version/reviewer | Không audit được Objective/Phễu suy luận | Duy + cậu Sinh |
| Video K60 chỉ là `.drivedownload` | Không thể đọc hoặc tạo PDF nội dung | Người sở hữu Drive |
| Power BI sample có thể cần Power BI Desktop | Có thể chặn PDF report pages | Máy của Duy/tool availability |
| Gate 2 chưa pass | Chưa triển khai ETL/Power BI production | Cậu Sinh |

---

## 9. Definition of Done cho toàn đợt

Đợt này chỉ được gọi là hoàn thành khi:

- [ ] Workspace đúng cấu trúc và có migration manifest.
- [ ] Raw và kho K60 gốc không bị thay đổi.
- [ ] Broken Markdown/MM links = 0.
- [ ] K60 có inventory, Knowledge Map và source citation.
- [ ] AGENTS, Workspace Context, Current Intent và Context Joycat khớp nhau.
- [ ] KPI Tree 5–10% được giữ đúng vai trò bài thực hành Joycat.
- [ ] Có tiêu chí thành công/Gate của toàn dự án, target chưa duyệt ghi `Chưa chốt`.
- [ ] Có data contract Campaign → Ad set → Ad.
- [ ] Data Dictionary tách rõ Category, Numeric, ID, grain và evidence status.
- [ ] Meta Purchases và Business Orders không còn dùng chung semantic.
- [ ] Duy có danh sách cặp Category–Numeric muốn kiểm nghiệm.
- [ ] Mỗi cặp có ETL readiness status và lý do.
- [ ] Validator chạy được trên folder copy/ZIP, không hard-code path.
- [ ] PDF reader K60 được render và kiểm tra hình ảnh.
- [ ] Gói review có manifest/hash và không tạo source of truth cạnh tranh.
- [ ] Cậu Sinh review và quyết định Gate 2; AI không tự đánh dấu pass.

---

## 10. Việc sẽ làm ngay sau khi Duy duyệt plan

Chỉ bắt đầu **Task 0 và Task 1**:

1. Chụp inventory + hash + backup.
2. Đề xuất migration map cụ thể từng file hiện tại.
3. Tổ chức folder theo map đã duyệt.
4. Sửa link và kiểm tra lại.

Chưa sửa sâu KPI/formula, chưa chạy ETL và chưa tạo PDF cho tới khi cấu trúc canonical đã ổn định.
