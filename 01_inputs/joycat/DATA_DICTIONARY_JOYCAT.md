# Joycat — Data dictionary đầu vào

> Phiên bản 2.1 · 11/09/2026 · Bản định nghĩa để Duy/cậu Sinh review, không phải dữ liệu mới xuất từ Meta.

## 1. Đọc file này để biết gì?

Data dictionary giải thích **mỗi trường là gì, kiểu dữ liệu nào, lấy ở đâu, dùng và xử lý thiếu thế nào**. Nó không phải công thức ROAS, không phải danh sách KPI và không phải kết luận hiệu quả.

[Workspace Context](../../context/WORKSPACE_CONTEXT.md) → [Current Intent](../../context/CURRENT_INTENT.md) → [Context Joycat](context.md) → **Dictionary này** → [KPI dự án](../project/KPI_TREE.md) và [cây chỉ số Joycat](Ad_Cost_GMV_all_platform%20v3.md) → [Metric Tree](METRIC_TREE.md) → [Bộ 5 Metrics](CONG_THUC_5_METRICS_JOYCAT_v3.md) ↔ [Mapping/Coverage](DATA_MAPPING_COVERAGE_JOYCAT.md).

Nguồn để lập bản này: [schema inventory đã có](../../02_work/joycat/dataset_audit/schema_inventory.json), [source audit](../../02_work/joycat/dataset_audit/source_audit_v2.json), [mapping/coverage hiện hành](DATA_MAPPING_COVERAGE_JOYCAT.md). Trạng thái cột bên dưới kế thừa audit trong workspace, **không phải lần kiểm lại toàn bộ Excel ngày 11/09**. Tên chuẩn snake_case là thiết kế, chưa phải cột ETL đã được tạo.

## 2. Các chiều và thông tin xác định phạm vi

| Trường chuẩn / kiểu | Ý nghĩa dễ hiểu | Nguồn/cột hoặc nơi xác nhận | Quy tắc và trạng thái |
|---|---|---|---|
| reporting_start, reporting_end / date | Khoảng thời gian số liệu đại diện | Meta export, sheet `Worksheet`, `Reporting starts`, `Reporting ends` | Có theo audit; hiện ưu tiên tháng 03–05/2026. Không suy ra số tuần/ngày từ tổng tháng |
| entity_level / enum | Số liệu thuộc Campaign, Ad set hay Ad | Cấp export trong source inventory | Chọn một cấp để cộng tiền; cấp khác chỉ đối soát độc lập |
| campaign_id, adset_id, ad_id / text | Mã định danh quảng cáo và quan hệ cha–con | Các cột ID nếu có tại đúng export; inventory chỉ rõ từng file | Không mặc định mọi export đủ ID cha–con. Giữ text; ID đã mất chữ số không được tự sửa đuôi |
| campaign_name, adset_name, ad_name / text | Tên do người vận hành đặt | `Campaign name`, `Ad set name`, `Ad name` theo cấp export | Tên không bảo đảm duy nhất; không dùng thay ID để join production nếu chưa đối soát |
| product_group / text | Nhóm hàng được quảng cáo, không phải SKU cụ thể | Tên Campaign + human mapping; xem bảng sản phẩm trong Mapping | Suy luận phải giữ căn cứ và reviewer; không tự gán nhóm sang một listing |
| item_id, sku_id / text | Listing trên sàn và biến thể hàng hóa | Catalog `JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`; mapping Ads → sản phẩm còn thiếu | 25 listing không có nghĩa 25 SKU; một Ad nhiều sản phẩm không được nhân đôi spend |
| campaign_objective_raw / text | Objective do Meta ghi nhận ở Campaign | Cần export Campaign objective gốc | Chưa có trong bộ preferred theo audit; không điền bằng Result indicator |
| optimization_goal_raw / text | Kết quả hệ thống được cấu hình tối ưu tại Ad set | Cần cấu hình/export Ad set tương ứng | Khác Campaign objective; chưa xác minh nguồn đủ trường |
| objective_inferred / text | Nhãn mục tiêu do con người diễn giải để ETL dùng | `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`, `Campaign_3_tháng`, cột `Objective suy luận` | Duy cho phép dùng human mapping; không đổi tên thành objective gốc; giữ version/căn cứ/reviewer |
| funnel_stage / enum | Vai trò dự kiến trong phễu | Demo trên, cột `Phễu`; người thiết kế mapping | TOFU/MOFU/BOFU/Shared/Unknown. Shared là dùng chung đã xác định; Unknown là chưa biết. Không suy phễu một-một từ objective |
| publisher_platform / text | Nền tảng quảng cáo thực sự hiển thị | Cần publisher breakdown | Thiếu theo audit. Không suy Facebook/Instagram từ tên Campaign; không mặc định WhatsApp là publisher |
| destination / text | Nơi khách được dẫn tới sau quảng cáo | Cấu hình quảng cáo/URL, owner vận hành | Khác publisher; Messenger/WhatsApp/Shopee có thể là destination; cần xác nhận từng Ad |
| audience_name, audience_type / text | Tên và cách tạo nhóm đối tượng | Tên Ad set, cấu hình audience và bảng owner xác nhận | Audience là khái niệm chung; LAL/Retargeting là loại/chiến lược, không phải các dimension đồng cấp để cộng |
| creative_format / text | Hình thức nội dung: ảnh, video… | `business_workbooks/AD format.xlsx` có danh mục; cần nối tới Ad | Danh mục format không chứng minh Ad nào dùng format nào |
| placement / text | Vị trí hiển thị, ví dụ Feed/Stories | Cần placement breakdown/cấu hình tương ứng | Khác creative format; không gộp “Creative format / Placement” thành một trường |
| attribution_setting / text | Cửa sổ quy gán kết quả Meta | Meta export `Attribution setting` | Có theo audit. Không trộn kết quả khác setting rồi coi cùng định nghĩa |
| result_indicator / text | Loại kết quả của cột Results ở dòng đó | Meta export `Result indicator` | Có theo audit nhưng một số dòng trống; khác objective và optimization goal |

### 2.1. Field contract cần kiểm tra ở ba cấp Meta

Các trường dưới đây là **yêu cầu dữ liệu mong muốn**, không phải tuyên bố rằng dataset hiện tại đã có đủ.

| Cấp | Field tối thiểu cần có | Dùng để trả lời | Hiện trạng nguồn đã audit | Nếu thiếu thì dừng ở đâu |
|---|---|---|---|---|
| Campaign | `account_id`, `campaign_id`, `campaign_name`, `campaign_objective_raw`, `buying_type`, `campaign_status`, reporting period | Campaign được chia theo mục tiêu nào và object nào thuộc cùng Campaign? | Preferred có tên, delivery, period và metric; **chưa có Campaign ID/objective gốc** | Không join production bằng Campaign name; không khẳng định objective thật |
| Ad set | `adset_id`, `campaign_id`, `adset_name`, `optimization_goal_raw`, `conversion_location`, `billing_event`, bid/budget, schedule, audience, placement/publisher control, attribution | Nhóm khách nào, tối ưu gì, ở đâu và theo ngân sách/lịch nào? | Preferred có tên, budget type, bid, dates, attribution và metric; thiếu ID cha-con, optimization, audience/placement chi tiết | Chỉ mô tả field quan sát được; không tái dựng đầy đủ setup |
| Ad | `ad_id`, `adset_id`, `campaign_id`, `ad_name`, `creative_id`, format, CTA, destination URL, status | Nội dung nào chạy trong Ad set nào và dẫn khách tới đâu? | Preferred có Ad ID, Ad set name, quality rankings và metric; thiếu Ad set/Campaign ID, creative ID, CTA/destination | Không join chắc chắn lên cha hoặc kết luận creative/destination |
| Breakdown phân phối | `publisher_platform`, `platform_position`, device, geography/time nếu câu hỏi cần | Quảng cáo thực tế được phân phối ở đâu/cho ai/khi nào? | Chưa có publisher breakdown trong preferred | Ba cặp có Nền tảng bị chặn; không gán Facebook/Instagram/WhatsApp từ tên |
| Business bridge | business order ID, order time, channel, status/return, GMV, attribution/bridge key được duyệt | Meta event có nối được tới đơn/GMV business không? | Chưa có | Không tính Business ROAS hoặc conversion xuyên bước như cohort |

## 3. Các số đo đầu vào và quy tắc tổng hợp

| Trường / kiểu / đơn vị | Định nghĩa và nguồn | Quy tắc |
|---|---|---|
| amount_spent / decimal / VND | `Amount spent (VND)` trong export được chọn | Cộng dòng không trùng, cùng kỳ và grain; không bỏ chi phí chỉ vì Results trống |
| impressions / integer / lượt | `Impressions` trong export | Cộng các phần không trùng; không cộng bản export tổng với bản breakdown của chính nó |
| reach / integer / người tiếp cận ước tính | `Reach` trong export | Không cộng Reach giữa Campaign/kỳ/platform để gọi là người duy nhất; cần số khử trùng lặp đúng scope |
| results / decimal / theo indicator | `Results` + `Result indicator` | Chỉ tổng hợp cùng loại và cùng hợp đồng attribution; không cộng Mess + Purchase thành một lượng chuyển đổi |
| messaging_started, new_messaging_contacts / numeric | `Messaging conversations started`, `New messaging contacts` | Hai metric khác nhau; không tự gọi là khách mua hoặc hội thoại chất lượng |
| meta_purchases_attributed / numeric / kết quả Meta | Cột nguồn `Purchases` | Sự kiện được Meta quy gán; luôn giữ attribution setting và không thay số đơn business |
| meta_orders_created, meta_orders_dispatched / numeric | `Orders created`, `Orders dispatched` | Giữ nguyên ý nghĩa nguồn; owner cần xác nhận event/hoàn-hủy |
| meta_purchase_value / decimal / VND | `Purchases conversion value` | Giữ đúng tên trường nguồn; không đổi dữ liệu Meta thành GMV business |
| clicks_all, link_clicks / numeric / lượt | Cần `Clicks (all)`, `Link clicks` | Chưa có trong preferred theo audit; không suy số click từ tên Ad |
| gmv_business / decimal / VND | Nguồn đơn/GMV doanh nghiệp cùng kỳ | Chưa có. Owner cần chốt kênh, hoàn/hủy, thời điểm ghi nhận và chống đếm trùng |
| business_orders_eligible / numeric / đơn | Nguồn đơn hàng business sau rule đủ điều kiện | Chưa có hợp đồng đủ dùng. AOV business chỉ dùng GMV và `business_orders_eligible` cùng scope |
| CPM, CPC, CTR, CPR, Frequency / derived | Công thức tại Metric Tree và Bộ 5 Metrics | Không là raw bắt buộc chỉ vì có thể export; tính từ tổng tử/mẫu đúng scope, không bình quân các tỷ số con. Mẫu số 0 → không xác định, không mặc định 0 |

### 3.1. Kiểu biến phục vụ association/correlation

| Kiểu | Field Joycat điển hình | Cách dùng ban đầu |
|---|---|---|
| Categorical | `funnel_stage`, `campaign_objective_raw`, `objective_inferred`, `product_group`, `publisher_platform`, `placement`, `result_indicator`, `attribution_setting` | Chia nhóm để so sánh; luôn báo số dòng/số object mỗi nhóm |
| Identifier | `campaign_id`, `adset_id`, `ad_id`; tên chỉ dùng khi chưa có ID và phải giữ lineage | Nối và drill-down; không mặc định coi ID có nhiều giá trị là một categorical variable có ý nghĩa thống kê |
| Time | `reporting_start`, `reporting_end`, tháng/ngày nếu source có đúng grain | Lọc kỳ hoặc xem trend; không trộn tổng tháng với dữ liệu ngày |
| Numerical additive | `amount_spent`, `impressions`, `clicks_all`, `link_clicks`, `results` cùng loại, `meta_purchases_attributed` cùng attribution | Có thể cộng khi các dòng không trùng và cùng semantic contract |
| Numerical non-additive | `reach`, người dùng duy nhất và các count đã deduplicate | Không cộng tùy ý qua Campaign/kỳ/platform |
| Numerical ratio/rate | `CPM`, `CPC`, `CTR`, `CPR`, `Frequency`, ROAS | Tính lại từ tổng tử/mẫu đúng scope; không lấy trung bình đơn giản rate theo dòng |
| Business numerical | `gmv_business`, `business_orders_eligible`, `AOV_business`, Business ROAS | Chưa sẵn có; không thay bằng Meta Purchase/Purchase Value |

### 3.2. Mong muốn kiểm nghiệm cặp biến của Duy

Duy muốn nêu một cặp biến cần phân tích rồi nhờ AI kiểm tra: **dataset hiện tại có thể ETL ra cặp đó hay không, ở grain nào, bằng nguồn nào và bị giới hạn gì**. Đây là bước kiểm tra khả năng dữ liệu, chưa phải kết luận tương quan.

Mẫu Duy có thể đưa cho AI:

```text
Câu hỏi: [Muốn hiểu điều gì?]
Biến phân nhóm: [categorical]
Metric cần so sánh: [numerical]
Kỳ: [tháng/ngày]
Cấp dữ liệu mong muốn: [Campaign/Ad set/Ad]
Lát cắt cần giữ: [Objective/Phễu/Sản phẩm/Nền tảng nếu có]
```

AI phải trả lại đúng sáu phần:

1. Loại cặp: `Categorical × Numerical`, `Numerical × Numerical` hoặc `Categorical × Categorical`.
2. Field nguồn và semantic của từng biến.
3. Grain, period, attribution và join key cần dùng.
4. Trạng thái: `ETL-ready`, `ETL-ready có điều kiện` hoặc `Blocked`.
5. Công thức tổng hợp đúng; đặc biệt rate phải tính lại từ tử/mẫu.
6. Field/owner cần bổ sung và điểm phải dừng kết luận.

### 3.3. Candidate `Categorical × Numerical` hiện tại

| Biến phân nhóm | Metric có thể hỏi | Trạng thái hiện tại | Điều kiện/giới hạn chính |
|---|---|---|---|
| Tháng | Ads Cost, Impressions, Reach, Results cùng loại | ETL-ready có điều kiện | Chọn cùng entity level; không cộng chéo Campaign–Ad set–Ad; Reach không cộng qua kỳ |
| Campaign/Ad set/Ad | Ads Cost và raw metrics tại đúng cấp | ETL-ready có điều kiện | Ưu tiên ID; Campaign export hiện thiếu Campaign ID, nên chưa có production key đáng tin ở cấp đó |
| `result_indicator` | Ads Cost, Results, Cost per Result | ETL-ready có điều kiện | Results chỉ so trong cùng loại result và attribution; dòng indicator trống phải giữ riêng |
| `objective_inferred` | Ads Cost, Impressions, Reach, Results cùng loại | ETL-ready có điều kiện | Human-curated; phải giữ basis/version/reviewer; không gọi là Objective gốc Meta |
| `funnel_stage` | Ads Cost, Impressions, Reach, Results cùng loại | ETL-ready có điều kiện | Human mapping; không suy phễu một-một từ Objective |
| `product_group` | Ads Cost và metric phân phối/kết quả | ETL-ready có điều kiện ở cấp nhóm | Suy từ naming/mapping; chưa nối được tới listing/SKU; không nhân đôi spend cho multi-product |
| `publisher_platform` | Ads Cost, CPM, CTR, CPC, Results | Blocked | Preferred export chưa có publisher breakdown; không suy Facebook/Instagram/WhatsApp từ tên |
| `placement` | Ads Cost, CPM, CTR, CPC, Results | Blocked | Chưa có placement breakdown/cấu hình đủ dùng |
| `audience_type` | Ads Cost, CPM, CTR, CPC, Results | ETL-ready có điều kiện hoặc Blocked theo câu hỏi | Tên Ad set chỉ tạo giả thuyết; cần mapping audience có source/reviewer để dùng như fact |
| `creative_format` | Ads Cost, CTR, CPC, Results ở cấp Ad | Blocked | Có danh mục format nhưng chưa có khóa nối format tới từng Ad |

Các trạng thái này phản ánh source đã audit trong workspace, không phải đảm bảo ETL chạy thành công. [Mapping/Coverage](DATA_MAPPING_COVERAGE_JOYCAT.md) là nơi ghi kết quả kiểm tra chi tiết từng cặp.

### 3.4. Quy tắc đọc “correlation” đơn giản

- `Categorical × Numerical`: trước hết là **so sánh giữa các nhóm**, ví dụ Objective A và B có phân phối CPM khác nhau hay không. Không tính Pearson cho mã category.
- `Numerical × Numerical`: mới xem scatter plot và hệ số correlation khi đủ số quan sát cùng grain.
- Correlation cho biết hai biến thay đổi cùng nhau trong dữ liệu, **không chứng minh biến này gây ra biến kia**.
- Nếu hai metric cùng dùng một tử/mẫu hoặc có đẳng thức trực tiếp, ví dụ `CPM = CPC × CTR × 1.000`, phải gắn nhãn `phụ thuộc toán học`; correlation giữa chúng không phải bằng chứng hành vi độc lập.
- Kết quả tổng toàn bộ có thể khác kết quả trong từng Objective/Phễu/Sản phẩm. Vì vậy phải xem theo case và lát cắt trước khi recommendation.
- Với nhóm ít quan sát, missing nhiều hoặc mapping chưa duyệt, AI chỉ báo data gap; không cố gán “thuận/nghịch” hay tốt/xấu.

## 4. “Case phân tích” là cách chọn dữ liệu, không phải phép cộng

Một case là **một câu hỏi + KPI cần đọc + phạm vi + nhóm so sánh + dữ liệu hỗ trợ**. Không viết `case = tháng + sản phẩm + objective...` như một đẳng thức và không bắt buộc mọi case có đủ mọi dimension.

Ví dụ thiết kế: “So sánh chi phí hội thoại tháng 03 và tháng 04 cho cùng nhóm hàng và cùng nhãn objective suy luận”. Ta giữ rõ grain Campaign, indicator Messaging và attribution; nếu không có publisher thì chỉ phân tích tổng Meta, không kết luận riêng Facebook.

Trường nào câu hỏi cần mà chưa có → đánh dấu nhánh đó bị giới hạn. Trường không liên quan → không áp dụng. Không biết → Unknown/null có lý do, không thay bằng số 0.

## 5. Hợp đồng mapping do con người bổ sung

Mỗi mapping cần: `object_level`, `object_id`, `source_file`, `source_sheet`, `source_row`, `reporting_period`, tên trường được gán, giá trị, `mapping_basis`, `mapping_version`, `mapped_by`, `mapped_at`, `reviewer`, `review_status`, `effective_from`, `effective_to`. Đây là hợp đồng thiết kế; file demo hiện chưa có đủ metadata.

Khóa ưu tiên là ID nguyên vẹn dạng text. Khi Campaign ID chưa có, chỉ được dùng surrogate có truy vết:

```text
surrogate_key
= source_file + source_sheet + source_row + reporting_period
```

`reporting_period + campaign_name` không phải production key vì tháng 04 đã quan sát một tên Campaign lặp hai dòng.

- Objective suy luận được Duy cho phép làm input ETL; giữ riêng objective gốc để bổ sung/đối soát sau.
- Quyền dùng objective suy luận không tự phê duyệt mọi mapping sản phẩm/phễu.
- Khi một đối tượng có nhiều nhãn, không nhân tiền cho mỗi nhãn. Giữ Shared/multi-product hoặc dùng phân bổ có owner duyệt và tổng trọng số bằng 1.
- Việc đã có dictionary không chứng minh join thành công: [Mapping/Coverage](DATA_MAPPING_COVERAGE_JOYCAT.md) quản lý từng cặp có thể làm được, chưa map, thiếu nguồn hay có số 0 thật.

## 6. Điểm cần owner xác nhận trước khi dùng số thực

| Thiếu / trạng thái | Owner cần xác nhận | Ảnh hưởng / câu hỏi tiếp theo |
|---|---|---|
| GMV, đơn business: To be updated | Cậu Sinh/người quản lý đơn | Chặn KPI tổng thực tế; GMV gồm kênh nào và xử lý hoàn/hủy ra sao? |
| Metadata mapping: một phần | Duy/người gắn nhãn | Chặn dùng mapping như fact đã xác minh; ai duyệt phiên bản và hiệu lực? |
| Publisher/placement/optimization goal: chưa có nguồn đủ dùng | Người export Ads | Chặn nhánh cần các chiều này; có thể xuất đúng breakdown/cấu hình không? |

Vẫn được hoàn thiện công thức và thiết kế câu hỏi trong lúc chờ. Chưa mở quyền chạy ETL hoặc kết luận hiệu quả.

## 7. Data Dictionary này bám template K60 như thế nào?

K60 chia một Data Dictionary đầy đủ thành tám nhóm thông tin. Bản Joycat giữ cùng logic nhưng trình bày gọn để Duy đọc được trước ETL:

| Nhóm K60 | Joycat đang ghi ở đâu? | Phần chỉ điền được sau khi audit/ETL |
|---|---|---|
| 1. Định danh | Tên field chuẩn, loại biến, entity level | Tên table vật lý cuối cùng và field ID |
| 2. Nguồn & kỹ thuật | Nguồn/cột, kiểu dữ liệu, sample/đơn vị | Kiểu dữ liệu sau load và format model |
| 3. Logic & tính toán | Định nghĩa, business rule, công thức, derived field | SQL/DAX implementation đã chạy |
| 4. Chất lượng dữ liệu | Trạng thái có/thiếu, điều kiện hợp lệ, không biến null thành 0 | Null%, distinct count, duplicate và range thực tế sau profiling |
| 5. Liên kết & mô hình | ID, join key, grain, cardinality và aggregation rule | Quan hệ thực tế sau join validation |
| 6. Bảo mật | Owner/nguồn cần xác nhận | Phân loại PII/quyền truy cập do owner chốt |
| 7. Sử dụng BI | KPI/metric/cặp phân tích và điều kiện hiển thị | Display folder, hidden flag và report usage sau Gate |
| 8. Kết luận | Readiness, limitation, priority và điểm dừng | AI-ready cuối cùng sau khi cậu Sinh duyệt |

Khi chuyển Dictionary này thành bảng ETL, mỗi field phải có tối thiểu: `table_name`, `field_name`, `business_name`, `variable_type`, `data_type`, `source_system`, `source_file`, `source_column`, `grain`, `definition`, `formula_or_rule`, `nullable`, `quality_rule`, `join_target`, `relationship`, `aggregation`, `owner`, `evidence_status`, `readiness` và `notes`. Trường chưa biết phải để `To be updated`, không tự điền cho đủ mẫu.
