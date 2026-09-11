# Review Gate 2 — Trees và Data Mapping Joycat

> Project: Meta Agentic Analytics — Joycat  
> Owner thực thi: Duy  
> Người review/phê duyệt cuối: Nguyễn Trường Sinh  
> Ngày review: 2026-09-09  
> Folder được review: `Duy Meta Agentic BA_2026-09-08` và file ZIP cùng tên  
> Kết luận đề xuất: **Chưa pass Gate 2**  
> Lưu ý: Đây là kết quả audit để Sinh quyết định; không tự chuyển gate.

# Bản feedback chính dành cho Duy

> Duy nên đọc phần 7 mục này trước. Các phần phía sau là bằng chứng kiểm tra chi tiết để tra cứu khi sửa file.

## 1. Cây KPI hiện tại của Duy đang nói gì?

Theo file `Ad_Cost_GMV_all_platform v3.md`, cây hiện tại được hiểu như sau:

```text
Định hướng
└── Kiểm soát chi phí quảng cáo so với GMV Joycat
    └── Chủ đề
        └── Hiệu quả chi phí quảng cáo toàn doanh nghiệp
            └── Kết quả cần đo
                └── Biết chi phí quảng cáo tương ứng với GMV cùng kỳ
                    ├── K01: Chi phí quảng cáo / GMV = 5–10%
                    └── K02: GMV / Chi phí quảng cáo = 10–20 lần
```

Các chỉ số hỗ trợ hiện có gồm:

```text
Tổng chi phí quảng cáo
├── Chi phí cho 1.000 lượt hiển thị (CPM)
├── Chi phí cho một lượt nhấp (CPC)
├── Chi phí cho một kết quả
├── Chi phí cho một cuộc hội thoại
├── Chi phí cho một người nhắn tin mới
└── Chi phí cho một lượt mua được Meta ghi nhận
```

Các cách chia dữ liệu hiện có gồm: nền tảng, sản phẩm, phễu, Objective, Campaign → Ad set → Ad và thời gian.

### Vấn đề của cây hiện tại

- K01 và K02 chỉ là hai cách đọc ngược nhau của cùng một tỷ lệ, không phải hai KPI độc lập.
- “Biết được tỷ lệ” mới là kết quả của một phép tính, chưa phải kết quả chính mà toàn dự án cần tạo ra.
- Mốc 5–10% chỉ là giả định dùng để thử cách phân tích trên dữ liệu Joycat.
- Cây chưa đo được Duy có hiểu đúng cách đội Joycat tổ chức quảng cáo hay không.
- Cây chưa đo việc Duy có bám đúng cấu trúc Meta hay không.
- Cây chưa đo khả năng áp dụng phương pháp cho thương hiệu khác.
- Cây chưa đo Power BI có giúp kiểm tra và ngăn AI tự đoán hay không.

Vì vậy, cây hiện tại có thể giữ làm **cây chỉ số kinh doanh của case Joycat**, nhưng không phù hợp làm **cây KPI của toàn dự án**.

## 2. Cây KPI của dự án nên được hiểu như thế nào?

```text
MỤC TIÊU LỚN
Xây một khung phân tích Meta Ads có bằng chứng,
giúp hiểu đúng cách đội ngũ tổ chức quảng cáo
và có thể áp dụng lại cho nhiều thương hiệu/ngành hàng
│
├── NHÁNH 1 — Bám đúng cấu trúc Meta
│   ├── Tái dựng đúng quan hệ Campaign → Ad set → Ad
│   ├── Đo tỷ lệ đối tượng nối đúng bằng ID
│   ├── Đo số dòng trùng, dòng không nối được hoặc nối sai
│   └── Không khẳng định cấu hình Meta khi chưa có bằng chứng
│
├── NHÁNH 2 — Hiểu được cách Joycat đang tổ chức quảng cáo
│   ├── Giải thích cách đội Joycat chia Campaign, Ad set và Ad
│   ├── Phân biệt điều đã thấy trong dữ liệu với điều đang suy luận
│   ├── Phân tích mối liên hệ giữa cách setup và kết quả quảng cáo
│   └── Mọi kết luận phải chỉ ra được nguồn và giới hạn
│
├── NHÁNH 3 — Dùng Power BI làm lớp kiểm tra bằng chứng
│   ├── Công thức đo lường được định nghĩa thống nhất
│   ├── Tổng chi phí phải đối chiếu khớp với file nguồn
│   ├── Mỗi biểu đồ phải truy được về công thức và dữ liệu gốc
│   └── AI không được đưa ra kết luận nếu không chỉ được bằng chứng
│
└── NHÁNH 4 — Áp dụng lại cho thương hiệu khác
    ├── Tách phần chung của Meta khỏi phần riêng của Joycat
    ├── Ghi rõ thông tin nào cần nhập lại cho từng thương hiệu
    ├── Hạn chế việc phải sửa lại toàn bộ công thức và báo cáo
    └── Thử trên ít nhất một bộ dữ liệu khác trước khi nói rằng
        phương pháp đã dùng lại được
```

Những mức KPI cụ thể chưa được Sinh chốt phải ghi `Chưa chốt`. Duy không tự đặt con số chỉ để làm đầy cây.

## 3. Joycat nằm ở đâu trong dự án này?

Joycat là bộ dữ liệu mẫu dùng để thử toàn bộ phương pháp:

```text
Hiểu cấu trúc chuẩn của Meta
→ Kiểm tra dữ liệu Joycat
→ Tái dựng cách đội Joycat đang setup quảng cáo
→ Phân tích cách setup ảnh hưởng đến phân phối và kết quả
→ Kiểm chứng số liệu trong Power BI
→ Tách phần dùng chung và phần riêng của Joycat
→ Đóng gói thành khung phương pháp
→ Thử lại trên một thương hiệu khác
```

Tỷ lệ `Chi phí quảng cáo / GMV = 5–10%` chỉ là một chỉ số thử nghiệm trong case Joycat:

```text
Chỉ số kinh doanh Joycat
├── Chi phí quảng cáo / GMV — giả định 5–10%
└── GMV / Chi phí quảng cáo — cách đọc ngược lại, 10–20 lần
```

Thiếu GMV chỉ chặn việc tính tỷ lệ này. Việc đó không chặn Duy phân tích cấu trúc Campaign, Ad set, Ad và cách đội Joycat đang tổ chức quảng cáo.

## 4. “Bám sát cách Meta tổ chức quảng cáo” có nghĩa là gì?

Duy cần phân tích theo từng tầng cấu hình, không chỉ nhìn một danh sách chỉ số:

| Cấp | Duy cần trả lời được |
| --- | --- |
| Campaign | Đội ngũ muốn đạt mục tiêu gì và đang chia nhóm chiến dịch như thế nào? |
| Ad set | Nhắm tới nhóm khách hàng nào, hiển thị ở đâu, dùng ngân sách/lịch chạy/cách tối ưu nào? |
| Ad | Dùng nội dung, hình ảnh hoặc video nào; nút kêu gọi và nơi dẫn khách tới đâu? |
| Phân phối | Meta thực tế đã phân phối quảng cáo ở đâu, cho nhóm nào và vào thời điểm nào? |
| Kết quả Meta | Meta đang ghi nhận loại kết quả nào và theo điều kiện ghi nhận nào? |
| Kết quả kinh doanh | Có nối được với đơn hàng và GMV cùng phạm vi hay không? Nếu không thì phải dừng kết luận ở đâu? |

Mỗi thông tin phải thuộc một trong ba nhóm:

```text
1. DỮ LIỆU GỐC META
   Có trường trực tiếp trong file xuất, API hoặc giao diện Meta.

2. JOYCAT ĐÃ XÁC NHẬN
   Người vận hành Joycat xác nhận đây là cách đội thực tế đang làm.

3. SUY LUẬN
   Duy hoặc AI đoán từ tên Campaign, loại kết quả hoặc dấu hiệu trong dữ liệu.
```

Nhóm thứ ba chỉ dùng để đặt câu hỏi kiểm tra. Không được trình bày như sự thật. Ví dụ, không được chỉ nhìn tên Campaign hoặc loại kết quả rồi khẳng định Objective, nhóm khách hàng, vị trí hiển thị hay cách tối ưu thật của quảng cáo.

## 5. Đánh giá file AGENTS.md

Kết luận: **chưa đủ cho mục tiêu Sinh vừa xác nhận**.

### Điểm tốt

- Đã yêu cầu ghi công thức, nguồn, phạm vi, kỳ dữ liệu, cấp dữ liệu và giới hạn.
- Đã cấm cộng lẫn Campaign, Ad set và Ad.
- Đã cấm mang kết luận và mục tiêu từ Joycat sang Truther.
- Cách hướng dẫn Duy vừa học vừa làm là phù hợp.

### Điểm cần sửa

- Đang ưu tiên yêu cầu mới nhất của Duy, trong khi Sinh là người duyệt cuối về mục tiêu, quy tắc kinh doanh và việc chuyển bước.
- Chưa quy định nguồn nào đáng tin hơn khi xác định cấu hình Meta.
- Chưa cấm rõ việc nhìn tên Campaign rồi tự đoán cách setup thật.
- Chưa tách rõ dữ liệu gốc Meta, điều Joycat xác nhận và điều do Duy/AI suy luận.
- Chưa quy định mỗi biểu đồ Power BI phải truy được về công thức và file nguồn.
- Chưa thể hiện đầy đủ các bước cần Sinh duyệt.
- Quyền của Duy và quyền duyệt cuối của Sinh còn bị lẫn.
- Nơi lưu file đầu vào, file đang xử lý và sản phẩm bàn giao chưa khớp quy định chung của workspace.

## 6. Đánh giá các file Context

Kết luận: **đủ để biết Duy đang làm những file công thức và mapping nào, nhưng chưa đủ để hiểu đúng mục tiêu cuối của dự án**.

Các điểm còn thiếu hoặc chưa rõ:

- Đang lấy việc “tìm hiểu cơ chế 5–10%” làm trọng tâm quá lớn.
- Chưa ghi “tái dựng cách đội Joycat tổ chức quảng cáo” thành một sản phẩm Duy phải bàn giao.
- Chưa ghi rõ Power BI là lớp kiểm tra bằng chứng bắt buộc ở bước sau.
- Chưa có danh sách thông tin phải kiểm tra ở ba cấp Campaign, Ad set và Ad.
- Chưa quy định thứ tự tin cậy của các nguồn.
- Chưa tách rõ điều đã xác minh, điều người vận hành xác nhận và điều đang suy luận.
- Chưa có tiêu chí để nói phương pháp đã áp dụng được cho thương hiệu/ngành khác.
- Chưa nói đủ rõ rằng thiếu GMV chỉ chặn tỷ lệ kinh doanh, không chặn việc phân tích cách setup quảng cáo.

Context nên mô tả đường đi thống nhất:

```text
Chuẩn Meta
→ Cách Joycat thực tế đang làm
→ Bằng chứng từ dữ liệu
→ Phân tích và kiểm tra trong Power BI
→ Khung phương pháp dùng chung
→ Thử lại trên thương hiệu khác
```

## 7. Kết luận và thứ tự Duy nên sửa

Kết luận đề xuất vẫn là: **Chưa pass Gate 2**.

Nguyên nhân chính không phải vì Duy làm ít. Duy đã làm nhiều về công thức, mapping và kiểm tra độ phủ dữ liệu. Vấn đề là mục tiêu gốc đang bị đặt lệch: tập trung giải thích tỷ lệ chi phí thay vì tìm hiểu cách đội Joycat tổ chức quảng cáo và xây một phương pháp có bằng chứng.

Duy nên sửa theo thứ tự:

1. Sửa `CURRENT_INTENT.md` để chốt đúng mục tiêu và sản phẩm cần bàn giao.
2. Tách cây KPI của dự án khỏi cây chỉ số kinh doanh Joycat.
3. Bổ sung quy tắc chống AI tự đoán vào `AGENTS.md`.
4. Xác định rõ dữ liệu cần có tại cấp Campaign, Ad set và Ad.
5. Sửa các lỗi về nơi lưu file, đường dẫn chương trình kiểm tra và khóa nối dữ liệu.
6. Tách rõ lượt mua Meta ghi nhận khỏi đơn hàng kinh doanh.
7. Sau khi các phần trên được Sinh duyệt, mới chuyển sang ETL và xây Power BI.

---

# Phụ lục — Bằng chứng kiểm tra chi tiết

## 1. Phạm vi và nguồn đã kiểm tra

- `AGENTS.md`.
- `context/WORKSPACE_CONTEXT.md` và `context/CURRENT_INTENT.md`.
- `01_inputs/joycat/context.md`.
- KPI Tree: `Ad_Cost_GMV_all_platform v3.md/.mm`.
- Data dictionary: `DATA_DICTIONARY_JOYCAT.md`.
- Metric Tree: `METRIC_TREE.md/.mm`.
- Bộ 5 Metrics: `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm`.
- Mapping/Coverage: `DATA_MAPPING_COVERAGE_JOYCAT.md/.mm`.
- Workbook mapping: `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`.
- Chín workbook Meta `preferred_candidate` tháng 03–05/2026 ở ba grain Campaign, Ad set và Ad.
- `coverage_6_pairs_detail.csv`, `coverage_audit_summary.json`, `source_audit_v2.json`, `handoff_validation.json` và các script tạo/kiểm tra liên quan.

Ngoài phạm vi: không sửa raw, không chạy ETL, không kết luận hiệu quả Campaign và không thay đổi artefact của Duy.

## 2. Executive summary

Bộ tài liệu có nền phương pháp tốt hơn rõ rệt: đã tách Meta Purchase Value khỏi GMV business, tách Campaign/Ad set/Ad, không cộng sáu cách phân rã, phân biệt ô chưa quan sát với số 0 và giữ đúng giới hạn cho ba cặp thiếu `publisher_platform`. Các tổng Ads Cost chính và coverage nội bộ cũng được ghi tương đối minh bạch.

Tuy nhiên Gate 2 chưa nên pass vì còn bốn blocker ảnh hưởng trực tiếp đến source of truth, khả năng tái tạo và tính đúng của metric: cấu trúc bàn giao làm mất toàn bộ output chính khỏi `03_outputs`; validation đang báo PASS trên một đường dẫn khác; mapping chưa có khóa/metadata đủ để audit; và biến `Purchases` đang bị dùng lẫn giữa Meta-attributed purchase với đơn business trong chuỗi công thức Business ROAS. Ngoài ra, trạng thái “đã qua điều kiện chuyển bước” chưa có xác nhận trực tiếp của Sinh trong workspace.

Khuyến nghị: chưa chuyển sang ETL. Duy nên thực hiện một vòng sửa hẹp tập trung vào packaging, validator, mapping contract và metric semantics; không cần viết lại toàn bộ framework.

## 3. Findings

### M-01 — Major — Source of truth và cấu trúc bàn giao đang mâu thuẫn

- Trạng thái: `Open`.
- Bằng chứng:
  - `03_outputs/joycat` trong cả folder giải nén và file ZIP không có file bàn giao nào.
  - `AGENTS.md:120` quy định toàn bộ Context/KPI/Metric/Mapping nằm trong `01_inputs/joycat`, còn `AGENTS.md:125` nói `03_outputs/joycat` để trống.
  - `context/CURRENT_INTENT.md:55-86` dẫn các artefact chính tại `01_inputs/joycat`.
  - Ngược lại, `01_inputs/joycat/context.md:9-11,49-50,57-58,172-188` và `01_inputs/joycat/DATA_DICTIONARY_JOYCAT.md:9-11,67` vẫn trỏ tới `03_outputs/joycat`.
  - Audit link phát hiện 15 liên kết nội bộ hỏng. `KPI_TREE.md/.mm` được mô tả là alias tương thích nhưng không tồn tại ở khu vực active.
- Ảnh hưởng:
  - Người/AI nhận folder không xác định chắc bản canonical.
  - Chuỗi đọc tài liệu bị gãy và handoff không đáp ứng cấu trúc project cấp workspace.
  - Các script/validator đang tìm file ở vị trí khác với vị trí thực tế.
- Cách sửa đề xuất:
  1. Chọn lại một source of truth theo contract cấp workspace: raw/source ở `01_inputs`, work/derived/validation ở `02_work`, artefact xin duyệt ở `03_outputs`.
  2. Chuyển/copy có kiểm soát các artefact canonical sang `03_outputs/joycat`; không duy trì hai bản active cạnh tranh.
  3. Khôi phục alias `KPI_TREE.md/.mm` nếu vẫn tuyên bố hỗ trợ, hoặc xóa toàn bộ tuyên bố về alias.
  4. Sửa toàn bộ link và chạy link check tới khi không còn link nội bộ hỏng.
- Owner xử lý: Duy.
- Điều kiện review lại: một canonical path cho từng artefact; `03_outputs` có đủ gói xin duyệt; link hỏng = 0.

### M-02 — Major — Kết quả validation PASS không tái tạo được trên folder bàn giao

- Trạng thái: `Open`.
- Bằng chứng:
  - `02_work/joycat/validation/validate_handoff.py:8` hard-code `ROOT = D:\Meta Agentic BA`.
  - Validator yêu cầu mười file chính trong `03_outputs/joycat`, nhưng cả mười file đều không tồn tại trong folder bàn giao hiện tại.
  - `handoff_validation.json` vẫn ghi các file đó tồn tại và `overall_pass: true`; vì vậy JSON này là kết quả từ môi trường/cấu trúc cũ, không chứng minh gói hiện tại pass.
  - `dataset_audit/audit_sources_v2.py:13-22`, `dataset_audit/inspect_dataset_schema.py:10-11` và `coverage_audit/build_coverage_audit.py:15-18` cũng hard-code `D:\Meta Agentic BA` và đường dẫn output cũ.
- Ảnh hưởng:
  - Người nhận không thể chạy lại audit trên folder đã bàn giao.
  - PASS có nguy cơ che lỗi đóng gói và làm Gate 2 được duyệt trên bằng chứng stale.
- Cách sửa đề xuất:
  1. Resolve project root từ vị trí script hoặc nhận `--root` qua CLI; không hard-code ổ đĩa.
  2. Validator phải trả exit code khác 0 khi thiếu file hoặc có link hỏng.
  3. Ghi `generated_at`, project root tương đối, hash/size của artefact chính và summary lỗi vào JSON.
  4. Chạy lại validator ngay trên bản ZIP sau khi đóng gói, không dùng JSON copy từ folder nguồn.
- Owner xử lý: Duy.
- Điều kiện review lại: script chạy nguyên trạng trên folder giải nén bất kỳ và tạo báo cáo mới khớp inventory thực tế.

### M-03 — Major — Mapping human-curated chưa có khóa và lineage đủ để audit

- Trạng thái: `Open`.
- Bằng chứng:
  - `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`, sheet `Campaign_3_tháng`, hàng header 5 chỉ có bảy cột: Tháng, Campaign name, Result indicator, Cost per results, Amount spent, Phễu và Objective suy luận.
  - Workbook chưa có các trường mà chính tài liệu yêu cầu: `object_level`, khóa ID/source row, `mapping_basis`, `mapping_version`, `mapped_by`, `mapped_at`, reviewer/`review_status` và kỳ hiệu lực; xem `DATA_MAPPING_COVERAGE_JOYCAT.md:300-301,343-356`.
  - Khóa tạm `Tháng + Campaign name` không unique: tháng 04 có hai dòng cùng tên `4/4 - SALE - POST XANH - MESS 1 - Bản sao` với spend 418.375 và 443.951 VND.
  - Preferred Campaign export hiện không có Campaign ID. Mapping tháng 04 còn một cặp tên không khớp và tổng demo lệch source kiểm soát 9.252 VND; tài liệu đã ghi tại `DATA_MAPPING_COVERAGE_JOYCAT.md:170-186`.
- Ảnh hưởng:
  - Không thể xác định chắc mapping áp cho object nào nếu tên trùng, đổi tên hoặc export lại.
  - Manual override không có version/reviewer nên chưa tạo được audit trail.
  - Join theo tên có thể mất dòng, nhân dòng hoặc gắn sai objective/phễu.
- Cách sửa đề xuất:
  1. Ưu tiên export lại có Campaign ID dạng text.
  2. Trong lúc chưa có ID, dùng surrogate có truy vết như `source_file + source_sheet + source_row + reporting_period`; không coi Campaign name là key production.
  3. Thêm metadata mapping đã định nghĩa, kèm trạng thái `Draft/Reviewed/Approved` và kỳ hiệu lực.
  4. Reconcile row count, duplicate key, orphan và spend trước/sau join; xử lý rõ 9.252 VND tháng 04.
- Owner xử lý: Duy; data owner hỗ trợ re-export ID; Sinh duyệt rule mapping.
- Điều kiện review lại: key unique theo grain được duyệt; 100% dòng có lineage; override có version/reviewer; spend reconcile theo tolerance được Sinh chốt.

### M-04 — Major — `Purchases` bị dùng lẫn giữa Meta event và đơn business

- Trạng thái: `Open`.
- Bằng chứng:
  - `CONG_THUC_5_METRICS_JOYCAT_v3.md:35` định nghĩa `AOV = GMV / Purchases`.
  - Cùng file tại `:71-73` lại định nghĩa `Purchases` là sự kiện Meta attribution và yêu cầu không đồng nhất với Orders business.
  - Tại `:419-461`, cùng ký hiệu `Purchases` được dùng cho Purchase rate, Cost per Purchase, `GMV = Purchases × AOV` và biến đổi `Business ROAS = AOV / Cost per Purchase`; điều kiện cuối nói Purchases phải thuộc tập đơn business. Chuỗi này vì vậy chưa có semantic contract nhất quán.
  - `Ad_Cost_GMV_all_platform v3.md:52` định nghĩa M07 là toàn bộ Ads Cost / Meta Purchases, trong khi `METRIC_TREE.md:162` định nghĩa Cost per Purchase Result bằng spend của riêng dòng purchase / Meta Purchases.
  - Kiểm tra read-only nguồn Campaign cho thấy Meta Purchases xuất hiện nhiều trên dòng có `Result indicator = messaging_conversation_started_7d`: tổng 139 purchase tháng 03, 174 tháng 04 và 100 tháng 05. Tháng 05 còn 9 purchase trên dòng indicator trống. Nếu chỉ lấy dòng purchase indicator, metric sẽ bỏ phần lớn purchase được Meta attribution ghi nhận.
- Ảnh hưởng:
  - Có thể ghép GMV business với Meta-attributed purchase, làm AOV và các đẳng thức Business ROAS sai population.
  - M07 và Metric Tree có thể tạo hai Cost per Purchase khác nhau nhưng dùng gần như cùng tên.
- Cách sửa đề xuất:
  1. Tách tên biến xuyên suốt thành `meta_purchases_attributed` và `business_orders_eligible`.
  2. Định nghĩa `AOV_business = GMV_business / business_orders_eligible`.
  3. Nếu cần metric Meta, định nghĩa rõ `Cost per Meta-attributed Purchase = spend cùng scope / meta_purchases_attributed cùng attribution`.
  4. Nếu cần CPR của nhóm Campaign tối ưu Purchase, đặt tên riêng và lọc cả tử/mẫu theo đúng objective/result contract.
  5. Chỉ dùng decomposition Mess → Business Order → GMV khi có bridge/cohort hoặc ít nhất cùng population được owner xác nhận; nếu chưa có, giữ là giả thuyết kiểm tra, không gọi là đẳng thức dữ liệu hiện tại.
- Owner xử lý: Duy; Sinh/data owner chốt semantic business order và attribution scope.
- Điều kiện review lại: mỗi công thức nêu rõ population, source, grain, period và attribution; không còn ký hiệu `Purchases` mơ hồ.

### M-05 — Major — Trạng thái chuyển bước chưa có bằng chứng phê duyệt trực tiếp

- Trạng thái: `Open`.
- Bằng chứng:
  - `context/WORKSPACE_CONTEXT.md:227-232` ghi “Nền móng Context đã qua điều kiện chuyển bước” và mô tả đây là “phê duyệt chuyển giai đoạn”.
  - Nguồn duy nhất được ghi là Duy thuật lại phản hồi của Sinh ngày 2026-08-21; tài liệu cũng thừa nhận chưa có biên bản hoặc phản hồi trực tiếp trong workspace.
  - Contract cấp workspace quy định Sinh là người duy nhất quyết định chuyển gate và owner statement không tự trở thành approval.
- Ảnh hưởng:
  - AI/người nhận sau có thể hiểu nhầm Gate 1 đã được Sinh phê duyệt và tự mở phase tiếp theo.
- Cách sửa đề xuất:
  - Đổi nhãn thành `Owner statement — chờ Sinh xác nhận` cho tới khi Sinh xác nhận trực tiếp; hoặc ghi lại approval trực tiếp với ngày, phạm vi và điều kiện.
- Owner xử lý: Sinh xác nhận; Duy cập nhật Context.
- Điều kiện review lại: có trạng thái Gate 1 rõ ràng, đúng authority và không suy approval từ lời thuật lại.

### m-01 — Minor — Current Intent tự mâu thuẫn về việc tiếp theo

- Trạng thái: `Open`.
- Bằng chứng:
  - `context/CURRENT_INTENT.md:67-70` nói cầu nối và phương pháp đã bổ sung, bước tiếp theo là review/patch mâu thuẫn.
  - `context/CURRENT_INTENT.md:215` lại trả lời AI phải tiếp tục “bổ sung cầu nối…”, khiến công việc đã hoàn thành bị hiểu là nhiệm vụ còn mở.
- Ảnh hưởng: AI mới có thể viết lại hoặc mở rộng ngoài phạm vi thay vì review.
- Cách sửa đề xuất: đổi câu trả lời tại dòng 215 thành “review, kiểm chứng và patch các mâu thuẫn còn lại”.
- Owner xử lý: Duy.
- Điều kiện review lại: một câu trả lời thống nhất về next action.

### m-02 — Minor — Cấu trúc đánh số Bộ 5 Metrics khó điều hướng

- Trạng thái: `Open`.
- Bằng chứng: `CONG_THUC_5_METRICS_JOYCAT_v3.md` có mục chính `## 7. Năm nhóm Metrics chi tiết` nhưng các nhóm bên trong tiếp tục dùng heading cấp `## 2`, `## 3`... thay vì heading con. Tên file là v3 nhưng metadata/version trong các tài liệu liên quan chưa đồng bộ hoàn toàn.
- Ảnh hưởng: link heading, table of contents và đối chiếu Markdown–mindmap dễ nhầm; không làm đổi kết luận.
- Cách sửa đề xuất: dùng `### 7.1...7.5` hoặc một cấu trúc heading nhất quán; đồng bộ version metadata.
- Owner xử lý: Duy.
- Điều kiện review lại: heading hierarchy và version nhất quán.

## 4. Kết quả kiểm tra độc lập

- Inventory ZIP và folder giải nén: `03_outputs/joycat` có 0 file trực tiếp.
- Link audit trên các Markdown active, loại trừ archive: 15 link nội bộ hỏng.
- XML/mindmap parse: 5 file active đã kiểm tra parse OK; số node lần lượt 159, 119, 277, 439 và 1.614; không phát hiện duplicate ID.
- Mapping workbook: 84 dòng; phân bổ 47 MOFU, 27 TOFU, 10 BOFU; có một duplicate key `Tháng + Campaign name`.
- Ads Cost Campaign preferred: tháng 03 = 50.195.692; tháng 04 = 64.825.305; tháng 05 = 63.518.031 VND.
- Objective demo: tháng 04 = 64.834.557 VND, lệch +9.252 VND so với preferred Campaign.
- Coverage CSV: 279 dòng; ba cặp có Nền tảng được để trống spend và gắn `Thiếu nguồn/thiếu chiều`; không phát hiện spend giả ở ba cặp này.
- Script validation/audit không chạy được nguyên trạng trên folder bàn giao vì hard-code đường dẫn cũ. Các kết quả JSON hiện có được xem là bằng chứng lịch sử cần tái tạo lại, không phải bằng chứng PASS của gói hiện tại.

## 5. Điểm tốt nên giữ nguyên

- Ranh giới Meta Purchase Value và GMV business được nhắc rõ ở nhiều tài liệu.
- Không cộng chéo ba grain Campaign/Ad set/Ad.
- Có kiểm soát tổng spend theo tháng và ghi rõ chênh lệch 40 VND giữa các grain tháng 04.
- Không bịa `publisher_platform`; ba cặp thiếu nguồn được chặn đúng.
- Phân biệt `Chưa quan sát tổ hợp`, `Thiếu nguồn` và `Bằng 0 được nguồn xác nhận`.
- Có mẫu data gate trước so sánh và yêu cầu bằng chứng hỗ trợ/phản bác trước recommendation.

## 6. Điều kiện review lại và thứ tự ưu tiên

1. Sửa packaging/source of truth và toàn bộ link nội bộ.
2. Parameterize validator/audit scripts và chạy lại trên chính folder ZIP bàn giao.
3. Bổ sung key + lineage + version/reviewer cho mapping; xử lý duplicate và chênh tháng 04.
4. Tách `meta_purchases_attributed` khỏi `business_orders_eligible` trong KPI/Metric/Bộ 5 Metrics.
5. Sinh xác nhận hoặc bác bỏ trạng thái chuyển từ Context sang Tree.
6. Sau khi năm mục trên đạt, review lại Gate 2; chưa triển khai ETL trước khi có quyết định của Sinh.

## 7. Phần AI đã tự sửa

Không sửa file của Duy, không sửa raw và không thay đổi artefact xin review. Chỉ tạo file review này tại project Meta theo quy trình audit cấp workspace.

## 8. Bổ sung theo xác nhận trực tiếp của Sinh ngày 2026-09-09

### 8.1. Duy cần hiểu mục tiêu dự án như sau

Sinh xác nhận trực tiếp:

- Joycat là **bộ dữ liệu mẫu để Duy học và xây phương pháp**, không phải đích cuối của dự án.
- Tỷ lệ `Chi phí quảng cáo / GMV = 5–10%` chỉ là **một giả định để Duy thử cách phân tích trên dữ liệu Joycat**. Duy không phải dùng dữ liệu hiện tại để cố chứng minh con số này đúng.
- Duy phải phân tích đủ sâu để hiểu được **đội Joycat đang chia và sắp xếp quảng cáo như thế nào**, từ cấp Campaign xuống Ad set và Ad.
- Sau khi hiểu case Joycat, Duy phải rút ra một **khung phương pháp chung** có thể áp dụng cho thương hiệu và ngành hàng khác.
- Phần nào là cách làm riêng của Joycat thì phải ghi rõ là riêng của Joycat; không được tự mang sang thương hiệu khác.
- Cách phân tích phải bám theo cấu trúc và cách tổ chức quảng cáo của Meta. Không được nhìn tên Campaign rồi tự đoán đó là cấu hình thật.
- Power BI được dùng làm nơi kiểm tra số liệu và lưu bằng chứng, để Duy có thể đối chiếu kết luận của AI thay vì tin ngay vào câu trả lời của AI.

Nội dung này thay thế cách hiểu cũ rằng mục tiêu chính của dự án là “tìm hiểu cơ chế tỷ lệ 5–10%”.

### M-06 — Major — Cây KPI hiện tại chưa đo đúng mục tiêu của dự án

- Trạng thái: `Open`.
- Bằng chứng:
  - `Ad_Cost_GMV_all_platform v3.md:7,15-21` đặt mục tiêu gốc là kiểm soát chi phí quảng cáo so với GMV Joycat.
  - Hai KPI đang dùng là `Chi phí quảng cáo / GMV` và `GMV / Chi phí quảng cáo`. Hai chỉ số này chỉ là hai cách đọc ngược nhau của cùng một tỷ lệ.
  - `context/CURRENT_INTENT.md:13,17,154,177-178` đang dành trọng tâm cho việc giải thích tỷ lệ 5–10%.
  - Theo xác nhận trực tiếp của Sinh, kết quả thật cần đạt là: hiểu cách Joycat tổ chức quảng cáo, rút ra khung phương pháp đúng với Meta và kiểm chứng qua Power BI.
- Ảnh hưởng:
  - Duy có thể làm rất kỹ phần công thức nhưng vẫn chưa trả lời được Joycat đang sắp xếp Campaign → Ad set → Ad như thế nào.
  - Chưa có KPI để đánh giá Duy có bám đúng Meta, có đủ bằng chứng và có áp dụng được cho thương hiệu khác hay không.
- Cách sửa đề xuất:
  1. Tách **Cây KPI của toàn dự án** khỏi **Cây chỉ số kinh doanh của Joycat**.
  2. Cây KPI của dự án phải đo bốn kết quả: bám đúng cấu trúc Meta; kết luận có bằng chứng; hiểu đủ sâu case Joycat; áp dụng lại được cho thương hiệu khác qua Power BI.
  3. Giữ `Chi phí quảng cáo / GMV` là một chỉ số thử nghiệm trong case Joycat, không dùng làm mục tiêu gốc của toàn dự án.
  4. Những mức cần đạt mà Sinh chưa duyệt phải ghi `Chưa chốt`, không tự đặt số.
- Người xử lý: Duy soạn lại; Sinh duyệt mục tiêu và mức cần đạt.
- Điều kiện kiểm tra lại: cây mới phải phân biệt rõ KPI thành công của dự án với chỉ số kinh doanh của Joycat.

### M-07 — Major — Context chưa nói rõ Duy phải tìm hiểu cách Joycat tổ chức quảng cáo

- Trạng thái: `Open`.
- Bằng chứng:
  - `context/CURRENT_INTENT.md:21-25` hiện tập trung vào bốn cách chia dữ liệu: Nền tảng, Sản phẩm, Phễu và Objective.
  - `context/CURRENT_INTENT.md:116-117,212,216` nói chưa phân tích Campaign và chưa làm Power BI, nhưng chưa mô tả rõ đây là các bước phải làm tiếp theo để đạt mục tiêu dài hạn.
  - Context chưa tách rõ ba loại thông tin: trường có sẵn trong dữ liệu Meta; cách setup Joycat đã được người vận hành xác nhận; nhãn do Duy hoặc AI suy luận.
  - Chưa có tiêu chí để kết luận khung phương pháp đã áp dụng được cho thương hiệu khác.
- Ảnh hưởng:
  - Duy hoặc AI có thể hiểu nhãn suy luận như TOFU/MOFU/BOFU hoặc Objective đọc từ tên Campaign là cấu hình thật của Meta.
  - Bộ tài liệu có thể trở thành một bộ công thức rất lớn nhưng chưa giúp Duy hiểu cách đội quảng cáo đang vận hành.
- Cách sửa đề xuất:
  1. Ghi rõ đường đi của dự án: **hiểu cấu trúc chuẩn Meta → kiểm tra cách Joycat thực tế đang setup → phân tích bằng số liệu → đưa vào Power BI → rút ra khung phương pháp chung**.
  2. Mỗi trường dữ liệu và mỗi kết luận phải ghi rõ lấy từ đâu và mức độ tin cậy.
  3. Lập danh sách thông tin cần kiểm tra tại cả ba cấp Campaign, Ad set và Ad; trường nào chưa có nguồn thì ghi rõ là chưa biết.
  4. Chỉ được gọi là “dùng lại được” sau khi đã thử trên ít nhất một thương hiệu hoặc bộ dữ liệu khác; tiêu chí cuối do Sinh duyệt.
- Người xử lý: Duy soạn lại; Sinh duyệt.
- Điều kiện kiểm tra lại: người mới đọc Context phải phân biệt được đâu là chuẩn Meta, đâu là sự thật của Joycat và đâu mới chỉ là suy luận.

### M-08 — Major — AGENTS.md chưa có đủ quy tắc ngăn AI tự đoán

- Trạng thái: `Open`.
- Bằng chứng:
  - `AGENTS.md:106,112-113` đã yêu cầu ghi công thức, nguồn, cấp dữ liệu và không mang kết luận từ case này sang case khác. Đây là điểm tốt.
  - Tuy nhiên file chưa quy định rõ nguồn nào đáng tin hơn khi xác định cấu hình Meta.
  - File chưa cấm việc nhìn tên Campaign hoặc loại kết quả rồi tự đoán Objective, nhóm khách hàng, vị trí hiển thị, ngân sách, cách tối ưu hay nội dung quảng cáo.
  - `AGENTS.md:17,25` ưu tiên yêu cầu mới nhất của Duy, trong khi Sinh là người duyệt cuối về mục tiêu, quy tắc kinh doanh và chuyển bước.
  - `AGENTS.md:91,110` chưa phân biệt rõ Duy được quyền làm và đề xuất phần nào, Sinh cần duyệt phần nào.
  - `AGENTS.md:120,125` đang đặt cả tài liệu kết quả và file Excel đã xử lý vào khu vực dữ liệu đầu vào, không khớp cấu trúc chung của workspace.
- Ảnh hưởng:
  - AI có thể trình bày một điều tự suy luận như thể đó là cấu hình thật của đội Joycat.
  - Power BI có thể hiện ra con số đúng theo công thức nhưng vẫn dẫn đến kết luận sai nếu ý nghĩa dữ liệu ban đầu đã bị hiểu sai.
- Cách sửa đề xuất:
  1. Quy định thứ tự tin cậy: trường lấy trực tiếp từ Meta → người vận hành Joycat xác nhận → quy tắc đặt tên đã được kiểm tra → suy luận của Duy/AI.
  2. Thông tin không có bằng chứng trực tiếp phải ghi `Suy luận` hoặc `Chưa có thông tin`; không được dùng để khẳng định team đã setup thật như vậy.
  3. Mỗi số liệu quan trọng trên Power BI phải truy ngược được về công thức, bảng dữ liệu và file nguồn.
  4. Duy chịu trách nhiệm xây, phân tích và đề xuất; Sinh duyệt mục tiêu, quy tắc kinh doanh, mức KPI, việc chuyển bước và hành động có ảnh hưởng lớn.
  5. Sắp xếp lại nơi lưu file theo đúng cấu trúc chung của workspace.
- Người xử lý: Duy soạn thay đổi; Sinh duyệt vì đây là file hướng dẫn AI làm việc.
- Điều kiện kiểm tra lại: các quy tắc phải đủ rõ để AI không biến điều suy luận thành sự thật và không dùng Power BI như bằng chứng hình thức.

## 9. Kết luận sau phần bổ sung

Kết luận vẫn là **Chưa pass Gate 2**. Trước khi làm ETL và Power BI, Duy cần sửa lại mục tiêu gốc của dự án và quy định rõ cách dùng bằng chứng. Những lỗi đã nêu trước đó về nơi lưu file, chương trình kiểm tra, khóa nối dữ liệu và cách hiểu biến `Purchases` vẫn phải sửa, vì nếu dữ liệu đầu vào chưa đáng tin thì Power BI cũng không thể tạo ra bằng chứng đáng tin.
