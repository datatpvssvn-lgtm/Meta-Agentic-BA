# Ý định hiện tại — Khóa Context, KPI và Data Dictionary trước ETL

> Phiên bản: 21.0  
> Cập nhật: 2026-09-11  
> Người thực hiện: Duy, có Codex hỗ trợ  
> Người review và quyết định chuyển bước: cậu Sinh  
> Trạng thái: Đang hoàn thiện bốn việc cậu Sinh giao trên nền bảy lỗi Gate 2; **chờ cậu Sinh review, chưa pass Gate 2**; chưa chạy ETL, correlation thực tế hoặc Power BI Joycat.

## 1. Outcome đang có hiệu lực

Hoàn thiện nền Context–KPI–Metric–Mapping để một người hoặc AI mới mở workspace có thể:

1. hiểu mục tiêu dự án là học cách phân tích Meta Ads có bằng chứng, không phải cố chứng minh tỷ lệ 5–10%;
2. phân biệt KPI thành công của dự án với chỉ số kinh doanh của case Joycat;
3. biết phải kiểm tra gì tại ba cấp `Campaign → Ad set → Ad`;
4. phân biệt field Meta, xác nhận của người vận hành, human mapping và suy luận;
5. nhận ra cặp phân tích nào dataset làm được, làm được một phần hoặc bị chặn;
6. chuẩn bị được hợp đồng ETL/modeling có lineage, nhưng chưa triển khai ETL ở lượt này.

Joycat là case học đầu tiên. `Ads Cost / GMV = 5–10%` là giả định thực hành đã được Duy chọn để học cách phân rã KPI; không phải KPI thành công của toàn dự án và không phải tỷ lệ đã được dữ liệu hiện tại chứng minh.

## 1.1. Bốn việc cậu Sinh giao đang được thực hiện

1. **Tổ chức lại workspace:** giữ đúng vai trò `01_inputs`, `02_work`, `03_outputs`, `04_reference`; không tạo thêm source of truth cạnh tranh và không xóa file phụ. Review Gate 2 đã đặt tại `01_inputs\joycat\reviews`; ba tài liệu HTML Power BI đã chuyển khỏi root sang `04_reference\power_bi_interactive`; render cache PDF cũ đã chuyển khỏi root vào `02_work\joycat\pdf_build\render_cache_2026-09-09`.
2. **Đưa kho AI Agentic Analytics K60 vào luồng tra cứu:** các archive/folder Duy tải đã được hợp nhất tại `D:\AI_Agentic_Analytics_K60_20260909_FULL\AI Agentic Analytics K60`. Việc “tải folder” đã xong; lượt này chỉ sửa source map và chỉ dẫn để AI đọc đúng bộ đầy đủ, không tải lại.
3. **Bám review của cậu Sinh và kiến thức K60:** rà lại `AGENTS.md`, Workspace Context, Current Intent, Context Joycat và hai KPI Tree để mục tiêu, bằng chứng, cấu trúc Meta và quyền chuyển Gate nhất quán.
4. **Hoàn thiện Data Dictionary và Pair Readiness:** Duy nêu cặp biến muốn kiểm nghiệm; AI chuyển thành field, formula, grain, period, source, join và báo `Sẵn sàng`, `Có điều kiện` hoặc `Bị chặn` trước khi ETL.

### Mong muốn thực tế về association/correlation

Duy cần AI hỗ trợ **kiểm tra cặp biến có phân tích được từ dataset hay không**, sau đó mới hỗ trợ phân tích. Không biến việc này thành bài toán thống kê phức tạp:

```text
Câu hỏi của Duy
→ xác định loại cặp biến
→ khóa kỳ + grain + scope + attribution
→ kiểm tra field + source + join + coverage
→ báo readiness và phần thiếu
→ chỉ phân tích khi đủ điều kiện
```

- `Categorical × Numerical`: trước hết là so sánh metric giữa các nhóm; không gọi là Pearson correlation.
- `Numerical × Numerical`: xem scatter/association trước; chỉ tính hệ số correlation khi đủ quan sát cùng grain.
- `Categorical × Categorical`: dùng bảng chéo và tỷ trọng khi câu hỏi cần so cơ cấu.
- Correlation không chứng minh causation. Quan hệ giữa các metric có chung công thức có thể chỉ là quan hệ toán học cơ học.
- Không kết luận một metric tốt/xấu hoặc ROAS tăng/giảm nếu chưa đặt trong đúng sản phẩm, objective, phễu, publisher, cấp quảng cáo, kỳ và attribution của case.

## 2. Bảy lỗi đang được xử lý

| # | Lỗi từ review cậu Sinh | Kết quả phải có trong lượt này |
|---:|---|---|
| 1 | Current Intent đặt trọng tâm chưa đúng | File này khóa đúng outcome, scope, deliverable và điểm dừng |
| 2 | KPI dự án lẫn với chỉ số Joycat | Có [KPI Tree dự án](../01_inputs/project/KPI_TREE.md) riêng; giữ [cây chỉ số Joycat](../01_inputs/joycat/Ad_Cost_GMV_all_platform%20v3.md) riêng |
| 3 | Chưa đủ rule ngăn AI tự đoán | `AGENTS.md` có trust order, evidence status và phân quyền Duy/Sinh |
| 4 | Chưa rõ dữ liệu cần có ở Campaign/Ad set/Ad | Data Dictionary có field contract và trạng thái từng cấp |
| 5 | Folder, link, validator và join key chưa đáng tin | Một source of truth, link nội bộ hợp lệ, script nhận `--root`, mapping có surrogate/lineage |
| 6 | `Purchases` lẫn Meta event với đơn business | Dùng riêng `meta_purchases_attributed` và `business_orders_eligible` |
| 7 | Chưa có quyền chuyển bước | Gate checklist để `Chờ cậu Sinh review`; không tự mở ETL/Power BI |

Nguồn review: [Review Gate 2 — Trees và Data Mapping Joycat](../01_inputs/joycat/reviews/2026-09-09_GATE-2_TREES_MAPPING_REVIEW.md).

## 3. Deliverable của lượt này

### Context và quyền vận hành

- [`AGENTS.md`](../AGENTS.md)
- [`WORKSPACE_CONTEXT.md`](WORKSPACE_CONTEXT.md)
- [`CURRENT_INTENT.md`](CURRENT_INTENT.md)
- [`Context Joycat`](../01_inputs/joycat/context.md)

### Tree và logic

- [`KPI Tree dự án`](../01_inputs/project/KPI_TREE.md) và [mindmap](../01_inputs/project/KPI_TREE.mm)
- [`Cây chỉ số kinh doanh Joycat`](../01_inputs/joycat/Ad_Cost_GMV_all_platform%20v3.md) và [mindmap](../01_inputs/joycat/Ad_Cost_GMV_all_platform%20v3.mm)
- [`Metric Tree Joycat`](../01_inputs/joycat/METRIC_TREE.md)
- [`Bộ 5 Metrics Joycat`](../01_inputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md)

### Data contract và kiểm định

- [`Data Dictionary Joycat`](../01_inputs/joycat/DATA_DICTIONARY_JOYCAT.md)
- [`Data Mapping & Coverage Joycat`](../01_inputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md)
- [`Gate 2 Checklist`](../02_work/joycat/GATE_2_CHECKLIST.md)
- Validator và audit scripts trong `02_work\joycat` chạy được theo project root truyền vào, không hard-code ổ D.

## 4. Source of truth và cách đọc

```text
AGENTS.md
→ context/WORKSPACE_CONTEXT.md
→ context/CURRENT_INTENT.md
→ 01_inputs/joycat/context.md
→ 01_inputs/joycat/DATA_DICTIONARY_JOYCAT.md
→ 01_inputs/project/KPI_TREE.md                    (KPI thành công của dự án)
→ 01_inputs/joycat/Ad_Cost_GMV_all_platform v3.md (chỉ số case Joycat)
→ 01_inputs/joycat/METRIC_TREE.md
→ 01_inputs/joycat/CONG_THUC_5_METRICS_JOYCAT_v3.md
↔ 01_inputs/joycat/DATA_MAPPING_COVERAGE_JOYCAT.md
```

Quy ước folder hiện hành:

- `01_inputs`: raw và artefact thiết kế/logic dùng làm đầu vào cho bước phân tích;
- `01_inputs\joycat\raw`: chỉ đọc;
- `02_work`: script, audit, validation và dữ liệu dẫn xuất đang làm;
- `03_outputs`: chỉ dành cho kết quả phân tích/ETL đã được tạo ở phase sau; hiện không dùng làm source of truth cho Tree;
- `04_reference`: nguồn phương pháp, không phải fact Joycat.

## 5. Ranh giới bằng chứng

Thứ tự tin cậy để xác định cấu hình Meta/Joycat:

```text
Field trực tiếp từ Meta
→ người vận hành Joycat xác nhận
→ naming/mapping rule đã review
→ suy luận của Duy/AI
```

Mỗi thông tin quan trọng phải mang một trạng thái: `Đã xác minh từ nguồn`; `Owner đã xác nhận`; `Suy luận` hoặc `Human-curated — chờ review`; hoặc `To be updated`.

Không dùng tên Campaign hoặc Result indicator để khẳng định Objective, audience, placement, destination, budget, optimization goal hoặc creative thật.

## 6. Hai loại Purchase phải tách

```text
meta_purchases_attributed
= số Purchase event Meta quy gán theo attribution setting

business_orders_eligible
= tập đơn business đủ điều kiện theo rule doanh nghiệp

AOV_business
= GMV_business / business_orders_eligible

Business ROAS
= GMV_business / Ads Cost cùng scope
```

Chưa có bridge được duyệt thì không biến `meta_purchases_attributed` thành `business_orders_eligible`. Thiếu GMV business chỉ chặn phép tính Business ROAS/5–10%; không chặn kiểm tra cấu trúc Meta và cách Joycat tổ chức quảng cáo.

## 7. Phạm vi

### Trong phạm vi

- sửa tài liệu và link;
- tách hai KPI Tree;
- làm rõ field contract ba cấp;
- sửa source map K60 sang bộ đầy đủ Duy đã tải;
- ghi hợp đồng kiểm tra `Categorical × Numerical`, `Numerical × Numerical` và Pair Readiness;
- bổ sung mapping lineage và join key tạm;
- tách semantic Purchase;
- sửa validator/audit scripts để tái tạo được;
- chạy kiểm tra tài liệu, XML/mindmap và raw-preservation.

### Ngoài phạm vi

- chạy ETL hoặc build data model;
- làm dashboard Power BI;
- phân tích Campaign tốt/xấu;
- tính correlation thực tế hoặc chạy statistical test;
- kết luận CPM/CTR/CPC/CPR làm ROAS tăng/giảm trong case thực tế;
- chứng minh tỷ lệ 5–10%;
- tạo lại toàn bộ PDF K60 trong lượt này;
- sửa raw hoặc thay đổi Ads.

## 8. Điều kiện bàn giao và Gate

Lượt sửa tài liệu hoàn thành khi:

- [x] 7 lỗi có bằng chứng sửa hoặc được ghi rõ còn mở trong `02_work/joycat/GATE_2_CHECKLIST.md`;
- [x] link nội bộ của 14 file Markdown active không hỏng;
- [x] 6/6 mindmap active/reference parse XML và không trùng ID;
- [x] validator nhận project root qua `--root`; negative test với root cố ý không tồn tại đã trả exit code `1`;
- [x] raw không có thay đổi trong working tree; manifest hiện hành ghi SHA-256 của 33 file;
- [x] Gate 2 vẫn ghi `Chờ cậu Sinh review`.

Chỉ cậu Sinh có quyền đổi trạng thái Gate 2 thành `Approved/Pass`. Hoàn thành kỹ thuật không tự mở ETL hoặc Power BI.

## 9. Trạng thái nguồn và blocker

| Nội dung | Trạng thái | Ảnh hưởng | Owner/nguồn cần xác nhận |
|---|---|---|---|
| Raw Meta tháng 03–05/2026 ở ba cấp | Sẵn có một phần | Có thể audit cấu trúc/metric; chưa chắc đủ ID cha-con | Người export Meta |
| Campaign ID trong preferred Campaign export | Chưa sẵn có | Campaign name không đủ làm production key | Người export Meta |
| Objective gốc / Optimization goal / Placement / Publisher | Một phần hoặc chưa có | Chặn kết luận setup thật ở nhánh tương ứng | Người export + vận hành Joycat |
| Human mapping Objective/Phễu | Có bản làm việc, chờ review | Dùng cho exploration có nhãn; chưa là Meta fact | Duy + reviewer |
| Mapping Ads → listing/SKU | Chưa sẵn có | Chặn phân tích sản phẩm tới listing | Người vận hành/data owner |
| GMV và đơn business đủ điều kiện | Chưa sẵn có | Chặn Business ROAS và kiểm nghiệm 5–10% | Business owner |
| Chênh spend demo tháng 04 `+9.252 VND` | Chưa giải quyết | Chặn chọn fact spend production từ demo | Duy + data owner |

## 10. Việc tiếp theo sau lượt sửa

1. Duy nêu một câu hỏi `Categorical × Numerical` bằng lời thường, ví dụ: “Tui muốn so CPM giữa các Objective trong cùng tháng ở cấp Campaign”.
2. AI điền phiếu Pair Readiness, chỉ rõ field/source/join nào có, thiếu hoặc cần human mapping; chưa tự chạy correlation.
3. Duy đọc và trình bày lại bộ Context–KPI–Dictionary–Mapping bằng lời của mình.
4. Gửi cậu Sinh review hai KPI Tree, Data Dictionary/Mapping contract và Gate checklist.
5. Chỉ sau khi cậu Sinh duyệt Gate 2 mới lập kế hoạch ETL/Power BI và kiểm nghiệm các cặp đã sẵn sàng.
