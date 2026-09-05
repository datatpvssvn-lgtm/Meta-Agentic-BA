# JOYCAT — Logic Tree hợp nhất cho Ads Cost và Business ROAS

> Phiên bản: 2.0  
> Cập nhật: 2026-09-05  
> Owner nội dung: Duy  
> Reviewer quyết định chuyển bước: cậu Sinh  
> Trạng thái: Tài liệu hợp nhất để review; chưa phải kết luận hiệu quả và chưa tuyên bố ETL đã sẵn sàng  
> Phạm vi dữ liệu đã audit: Meta Ads Joycat tháng 03–05/2026; catalog Shopee chụp ngày 25/08/2026

## 1. Đọc nhanh cho Duy và cậu Sinh

### 1.1. Đích của tài liệu

Tài liệu này trả lời một câu hỏi thực hành:

> Khi phân tích Ads Cost và Business ROAS của Joycat, phải nhìn theo đường nào, chia theo đầu mục nào, lấy dữ liệu ở đâu và dataset hiện làm được tới mức nào?

Công thức business gốc:

```text
Business ROAS
= GMV business cùng phạm vi, cùng kỳ
  / Ads Cost cùng phạm vi, cùng kỳ
```

`GMV business` là số do doanh nghiệp ghi nhận. `Purchases conversion value` của Meta là giá trị Meta attribution cho quảng cáo; không được đổi tên hoặc dùng thay GMV business.

### 1.2. Ba Tree khác nhau ở đâu?

| Tree | Nói đơn giản | Ví dụ trong Joycat |
|---|---|---|
| KPI Tree | Cần lượng hóa chỉ số nào? | Ads Cost, CPM, CPC, Cost per Result, Business ROAS |
| Metric Tree | Chỉ số đó được tính ra sao, rẽ đến field gốc nào? | `CPM = Amount Spent / Impressions × 1.000` |
| Logic Tree | Khi phân tích một case, cần đi qua câu hỏi và phép so sánh nào? | So đúng sản phẩm, objective, phễu, nền tảng rồi mới drill-down Campaign → Ad set → Ad |

Tài liệu này là Logic Tree, nhưng đặt định nghĩa chiều, công thức phân rã và coverage cạnh đúng nhánh để người đọc không phải mở thêm nhiều file mới hiểu.

### 1.3. Bốn chiều đang dùng

1. Nền tảng: quảng cáo hiển thị ở đâu.
2. Sản phẩm: tiền quảng cáo thuộc nhóm sản phẩm, listing hoặc SKU nào.
3. Phễu: TOFU, MOFU, BOFU, Mixed/Shared hay chưa phân loại.
4. Campaign objective: nhãn mục tiêu dùng để phân tích Campaign.

Sáu cặp là sáu phần giao của hai chiều, ví dụ `Ads Cost (Facebook, TOFU)`. Chúng giúp trả lời chi phí nằm ở đâu chi tiết hơn so với chỉ xem tổng.

### 1.4. Trạng thái hiện tại

| Nội dung | Trạng thái | Ý nghĩa thực tế |
|---|---|---|
| Tổng Ads Cost theo Campaign/tháng | Đã xác minh từ nguồn | Tính và đối soát được cho 03–05/2026 |
| `Objective suy luận` | Owner đã xác nhận dùng cho ETL | Duy/con người gắn vì export thiếu Objective; phải giữ rule và lịch sử mapping |
| Phễu | Một phần | Có nhãn trên dữ liệu dẫn xuất nhưng rule/version/owner chưa khóa đủ |
| Sản phẩm | Một phần | Có catalog 25 listing; Ads chỉ gợi ý được một số nhóm từ tên Campaign |
| Publisher platform | Chưa sẵn có | Chưa tính được ba cặp có chiều Nền tảng |
| GMV business | Chưa sẵn có | Chưa tính được Business ROAS hoặc xác minh tỷ lệ 5–10% |
| ETL/report production | Chưa sẵn sàng | Thiếu ID nguyên vẹn và một số mapping/source quan trọng |

Điều có thể làm ngay: kiểm soát tổng spend, EDA theo `Objective suy luận`, thăm dò Phễu × Objective và một phần theo nhóm sản phẩm. Điều chưa được làm: gọi các kết quả đó là phân rã đã xác minh hoàn toàn hoặc kết luận Campaign tốt/xấu.

## 2. Hợp đồng kiểm soát trước mọi phân tích

### 2.1. Tổng Ads Cost

```text
Tổng Ads Cost tháng
= tổng Amount spent (VND) của các dòng Campaign có Campaign name
```

Đường đối soát độc lập:

```text
Tổng Campaign ≈ tổng Ad set ≈ tổng Ad
```

Ba tổng trên mô tả cùng một khoản tiền ở ba cấp. Không viết:

```text
Tổng Ads Cost = Campaign spend + Ad set spend + Ad spend
```

### 2.2. Số đã xác minh

| Tháng | Campaign có spend | Tổng Campaign | Tổng Ad set/Ad | Kiểm tra |
|---|---:|---:|---:|---|
| 2026-03 | 18 | 50.195.692 VND | 50.195.692 VND | Khớp |
| 2026-04 | 41 | 64.825.305 VND | 64.825.345 VND | Lệch 40 VND; giữ nguyên sai lệch nguồn |
| 2026-05 | 25 | 63.518.031 VND | 63.518.031 VND | Khớp |

Trong 84 Campaign có spend, bốn dòng có `Results` và `Result indicator` trống. Chi phí của chúng vẫn nằm trong tổng Ads Cost; không loại chỉ vì không có result.

### 2.3. Data gate

Chỉ so hai case khi trả lời được:

1. Có cùng kỳ và timezone không?
2. Có cùng currency không?
3. Có cùng grain không: Campaign, Ad set hay Ad?
4. Nếu dùng Results/Purchases Meta, attribution có cùng không?
5. `Results` có cùng `Result indicator` không?
6. Chiều phân tích lấy từ field gốc hay mapping nào, version nào?
7. Nếu tính Business ROAS, GMV và Ads Cost có cùng phạm vi không?
8. Sau join, số dòng và tổng spend có tăng sai không?

Không đạt gate thì ghi `Chỉ thăm dò` hoặc `Chưa so sánh được`; không ép ra kết luận.

## 3. Chiều 1 — Nền tảng

### 3.1. Nền tảng nghĩa là gì?

| Khái niệm | Câu hỏi | Ví dụ |
|---|---|---|
| Publisher platform | Quảng cáo hiển thị ở đâu? | Facebook, Instagram, Messenger, Audience Network |
| Destination | Bấm quảng cáo xong khách được dẫn tới đâu? | Messenger, WhatsApp, Shopee, website |
| Sales channel | Doanh nghiệp ghi nhận đơn và GMV ở đâu? | Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B |

Ví dụ: Ads hiển thị trên Facebook, dẫn khách sang WhatsApp, sau đó đơn được ghi ở cửa hàng. Đây là ba thuộc tính khác nhau của cùng hành trình.

### 3.2. Công thức phân rã

Danh sách thật phải lấy động từ export. Khung phân tích dự kiến:

```text
Tổng Ads Cost
= Ads Cost (Facebook)
+ Ads Cost (Instagram)
+ Ads Cost (Messenger)
+ Ads Cost (Audience Network)
+ Ads Cost (WhatsApp, nếu export thật sự trả về như publisher)
+ Ads Cost (Nền tảng khác)
+ Ads Cost (Unknown/Unmapped)
```

WhatsApp chỉ được gọi là `publisher platform` khi source có giá trị đó. Nếu WhatsApp chỉ là nơi khách được dẫn tới, nó nằm ở chiều Destination, không nằm trong tổng publisher platform.

### 3.3. Dữ liệu và mapping

| Thuộc tính | Quy ước |
|---|---|
| Field cần | `Publisher platform`; có thể thêm `Platform position`, `Impression device` |
| Grain gợi ý | Campaign × kỳ × publisher platform; mỗi breakdown thêm sẽ làm đổi grain |
| Khóa | Account ID + Campaign ID + kỳ + publisher platform + breakdown còn lại |
| Human mapping | Không suy platform từ Campaign name, `CPAS-SHOPEE` hoặc Result indicator |
| Dataset hiện tại | 32 workbook raw không có header publisher/destination |
| Coverage | Ba cặp chứa Nền tảng chưa tính được |

### 3.4. Đường phân tích

1. Nền tảng nào nhận bao nhiêu spend và bao nhiêu tỷ trọng?
2. So cùng sản phẩm, objective, phễu, kỳ và attribution.
3. Đọc CPM, Reach, Frequency, CTR/CPC và đúng loại Result/Cost per Result.
4. Kiểm tra placement/device trước khi quy chênh lệch cho riêng platform.
5. Nếu nối Business ROAS, GMV phải được phân bổ về đúng phạm vi platform bằng rule business đã duyệt.

## 4. Chiều 2 — Sản phẩm

### 4.1. Ba cấp sản phẩm

| Cấp | Nghĩa | Tình trạng Joycat |
|---|---|---|
| Nhóm sản phẩm | Natural, PerformX, MineralX, PowerX, Tofuu.X, Vi sinh | Có thể suy luận một phần từ tên Campaign |
| Listing | Một trang bán hàng Shopee, nhận diện bằng Item ID | Có snapshot 25 listing |
| SKU/biến thể | Đơn vị bán cụ thể trong hệ thống đơn hàng | Chưa có Product ID/SKU business |

Không tự gọi Item ID là SKU. Không lấy catalog tháng 08 để khẳng định cả 25 listing đã tồn tại hoặc được chạy Ads trong tháng 03–05.

### 4.2. Công thức phân rã

```text
Tổng Ads Cost
= Ads Cost (SP01)
+ Ads Cost (SP02)
+ ...
+ Ads Cost (SP25)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (Nhiều sản phẩm/branding/shared)
+ Ads Cost (Unmapped)
```

Một khoản spend chỉ xuống SP01–SP25 khi có bằng chứng nối Campaign/Ad với listing đó. Không chia đều spend và không phân bổ theo GMV nếu owner chưa duyệt rule.

### 4.3. Rule mapping hiện quan sát được

| Dấu hiệu trong Campaign name | Mức tối đa được gợi ý | Trạng thái |
|---|---|---|
| `VI SINH` | Nhóm Vi sinh khử mùi | Suy luận; chưa chọn SP01/SP02/SP08 |
| `NA` | Nhóm Cát Sắn Natural | Suy luận |
| `PFX` | Nhóm Cát Mix PerformX | Suy luận |
| `MNX` | Nhóm Cát Khoáng MineralX | Suy luận |
| `CÁT` | Ngành hàng cát nói chung | Không đủ chọn nhóm con |
| `Sale`, `Branding`, không có mã | Shared/Unmapped | Không ép xuống sản phẩm |

Duy chưa xác nhận bộ rule sản phẩm này là mapping chính thức. Đây là gợi ý cho EDA và là danh sách cần owner review.

### 4.4. Dữ liệu cần để ETL đúng

- Ưu tiên Ad ID × Item ID/SKU khi creative quảng cáo sản phẩm cụ thể.
- Nếu một Ad quảng cáo nhiều listing, dùng bridge và giữ `Multi-product/Shared` cho tới khi có allocation rule.
- Nếu toàn Campaign chỉ quảng cáo một nhóm, mapping Campaign có thể được dùng nhưng phải có hiệu lực, basis, version và người duyệt.
- Tổng spend sau mapping phải bằng tổng spend trước mapping.

### 4.5. Đường phân tích

1. Nhóm/listing nào nhận spend?
2. Case cùng sản phẩm có khác objective, phễu, platform hoặc format không?
3. Metrics phân phối và kết quả của từng case khác nhau thế nào?
4. Có Campaign nhiều sản phẩm hoặc branding làm sai phép so sánh không?
5. Nếu dùng GMV/AOV, source business có cùng Item ID/SKU và cùng rule hoàn/hủy không?

## 5. Chiều 3 — Phễu

### 5.1. Nhãn làm việc

| Nhãn | Vai trò phân tích | Không được mặc định |
|---|---|---|
| TOFU | Phân phối, nhận biết, tạo tín hiệu/tệp ban đầu | Mọi post engagement đều là TOFU; CPM phải cao hoặc thấp |
| MOFU | Quan tâm, click, tương tác sâu, messaging | Mọi messaging result đều chắc chắn là MOFU |
| BOFU | Hành động mua, đơn, GMV | Meta Purchase đồng nghĩa đơn và GMV business |
| Mixed/Shared | Một đối tượng phục vụ nhiều tầng | Tự chia tiền đều cho ba tầng |
| Unmapped | Chưa đủ căn cứ gắn phễu | Loại spend khỏi tổng |

Owner đã xác nhận ở cấp cao: TOFU hướng tới View; MOFU/BOFU hướng tới chuyển đổi. Việc gắn từng Campaign vẫn cần rule riêng.

### 5.2. Công thức phân rã

```text
Tổng Ads Cost
= Ads Cost (TOFU)
+ Ads Cost (MOFU)
+ Ads Cost (BOFU)
+ Ads Cost (Mixed/Shared Funnel)
+ Ads Cost (Chưa phân loại phễu)
```

### 5.3. Dữ liệu và human mapping

- Cột `Phễu` có trong file dẫn xuất/variant, không phải field Meta gốc đã được xác minh.
- 84 Campaign có spend hiện được gắn: MOFU 47, TOFU 27, BOFU 10.
- Chưa có đủ tài liệu về grain gắn nhãn, thứ tự ưu tiên, version, hiệu lực và người duyệt.
- Mapping cần tối thiểu: `object_level`, `object_id_text`, `funnel_stage`, `mapping_basis`, `mapping_version`, `confirmed_by`, `valid_from`, `valid_to`.
- Nếu objective/result/name xung đột hoặc Campaign phục vụ nhiều tầng, giữ `Mixed/Shared` hoặc `Unmapped`.

### 5.4. Đường phân tích

```text
TOFU: phân phối đúng người và tạo tín hiệu ban đầu chưa?
→ MOFU: tín hiệu đó có thành click, tương tác sâu hoặc conversation chưa?
→ BOFU: có thành purchase, đơn business và GMV chưa?
```

Không mặc định CPM TOFU đắt, CPM BOFU rẻ hoặc BOFU có ROAS cao. Chỉ so sau khi kiểm soát sản phẩm, objective, platform, kỳ, attribution và nguồn GMV.

## 6. Chiều 4 — Campaign objective

### 6.1. Ba lớp phải tách riêng

| Lớp | Cấp | Nó nói điều gì? |
|---|---|---|
| Campaign objective | Campaign | Cấu hình mục tiêu gốc khi tạo Campaign |
| Optimization/Performance goal | Ad set | Meta đang tối ưu phân phối cho hành động nào |
| Result indicator | Insights/report | `Results` trong dòng báo cáo đang đại diện loại kết quả nào |

`Engagement - Messaging` là nhãn phân tích do con người tạo, không phải bằng chứng rằng Meta export đã có đúng chuỗi chữ đó.

### 6.2. Các nhóm objective đang dùng

```text
Tổng Ads Cost
= Ads Cost (Engagement - Messaging)
+ Ads Cost (Engagement - Post engagement)
+ Ads Cost (Sales - Purchase)
+ Ads Cost (Awareness - Ad recall)
+ Ads Cost (Objective khác)
+ Ads Cost (Chưa xác định)
```

### 6.3. `Objective suy luận` là gì?

**Owner đã xác nhận — Duy, 05/09/2026:** raw thiếu Campaign objective, nên Duy/con người suy luận objective và dùng cột `Objective suy luận` làm input ETL.

Điều này có nghĩa:

- ETL được phép dùng mapping này.
- Report phải ghi rõ đây là `human-curated`, không trình bày như cấu hình Meta đã xác minh.
- Campaign objective gốc, nếu export được sau, lưu riêng để đối soát; không ghi đè lịch sử Duy đã map.
- Duy hoặc người được giao review chịu trách nhiệm các ngoại lệ/override.

Rule hiện dùng:

| Cơ sở | Objective suy luận |
|---|---|
| `actions:onsite_conversion.messaging_conversation_started_7d` | Engagement - Messaging |
| `actions:post_engagement` | Engagement - Post engagement |
| `actions:onsite_conversion.purchase` | Sales - Purchase |
| `estimated_ad_recallers` | Awareness - Ad recall |
| Result trống, Campaign name có tín hiệu `Doanh số` | Sales - Purchase suy từ tên Campaign |
| Không đủ tín hiệu | Chưa xác định |

Thứ tự ưu tiên:

1. Manual override được Duy/owner duyệt cho Campaign cụ thể.
2. Mapping từ `Result indicator` theo bảng trên.
3. Mapping từ Campaign name theo rule được ghi lại.
4. Không đủ căn cứ → `Chưa xác định`.

Metadata phải giữ:

```text
objective_mapped
objective_mapping_basis
objective_mapping_version
mapped_by
mapped_at
review_status
```

Nếu có field Meta sau này, thêm `campaign_objective_meta` để so với `objective_mapped`.

### 6.4. Coverage hiện tại

| Objective suy luận | Campaign có spend |
|---|---:|
| Engagement - Messaging | 49 |
| Engagement - Post engagement | 26 |
| Sales - Purchase | 4 |
| Sales - Purchase suy từ tên Campaign | 2 |
| Awareness - Ad recall | 1 |
| Chưa xác định | 2 |
| Tổng | 84 |

Khóa `Campaign name + tháng` mới là khóa tạm trong file dẫn xuất. ETL bền vững cần Campaign ID dạng text.

### 6.5. Đường phân tích theo objective

1. Chọn đúng nhãn objective và ghi mapping basis.
2. Đọc Result/Cost per Result đúng loại; không cộng Results khác loại.
3. So các case cùng sản phẩm, phễu, platform, kỳ và attribution.
4. Drill-down Optimization goal ở Ad set và creative ở Ad khi ID nguyên vẹn.
5. Khi human mapping khác field Meta bổ sung sau, giữ conflict để review; không âm thầm thay.

## 7. Sáu cặp — công thức, câu hỏi và coverage

Mỗi cặp là một cách đọc lại cùng Tổng Ads Cost. Không cộng tổng của sáu cặp với nhau.

### 7.1. Nền tảng × Sản phẩm

**Câu hỏi:** Trên từng publisher platform, tiền được chi cho sản phẩm nào?

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, SP01)
+ Ads Cost (Facebook, SP02)
+ ...
+ Ads Cost (Facebook, SP25)
+ Ads Cost (Facebook, Product group only)
+ Ads Cost (Facebook, Multi-product/Shared)
+ Ads Cost (Facebook, Unmapped)
```

- Nguồn hai chiều: `Publisher platform` + Ads ID → Item ID/SKU mapping.
- Grain/khóa: cùng một dòng breakdown hoặc join bằng ID text và kỳ tương thích.
- Coverage: chưa tính được; đang thiếu cả publisher breakdown và mapping Ads → listing/SKU.
- Kiểm soát: tổng mọi ô platform × product phải bằng tổng Ads Cost, kể cả Shared/Unmapped.

### 7.2. Nền tảng × Phễu

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, TOFU)
+ Ads Cost (Facebook, MOFU)
+ Ads Cost (Facebook, BOFU)
+ Ads Cost (Facebook, Mixed/Shared)
+ Ads Cost (Facebook, Unmapped)
```

- Câu hỏi: Trên mỗi platform, tiền chia cho từng tầng phễu thế nào?
- Nguồn: Publisher platform + bảng `map_funnel`.
- Coverage: chưa tính được vì thiếu publisher platform; phễu còn cần khóa rule/version.
- Không suy phần giao từ tổng Facebook và tổng TOFU riêng rẽ.

### 7.3. Nền tảng × Campaign objective

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, Engagement - Messaging)
+ Ads Cost (Facebook, Engagement - Post engagement)
+ Ads Cost (Facebook, Sales - Purchase)
+ Ads Cost (Facebook, Awareness - Ad recall)
+ Ads Cost (Facebook, Objective khác)
+ Ads Cost (Facebook, Chưa xác định)
```

- Câu hỏi: Trên mỗi platform, tiền đang phục vụ objective nào?
- Nguồn: Publisher platform + `Objective suy luận` human-curated.
- Coverage: bị chặn bởi platform; Objective mapping đã có thể dùng cho ETL.
- Output phải hiển thị basis/version của Objective.

### 7.4. Phễu × Sản phẩm

```text
Ads Cost (TOFU)
= Ads Cost (TOFU, SP01) + Ads Cost (TOFU, SP02) + ... + Ads Cost (TOFU, SP25)
+ Ads Cost (TOFU, Product group only/Multi-product/Unmapped)

Ads Cost (MOFU)
= Ads Cost (MOFU, SP01) + Ads Cost (MOFU, SP02) + ... + Ads Cost (MOFU, SP25)
+ Ads Cost (MOFU, Product group only/Multi-product/Unmapped)

Ads Cost (BOFU)
= Ads Cost (BOFU, SP01) + Ads Cost (BOFU, SP02) + ... + Ads Cost (BOFU, SP25)
+ Ads Cost (BOFU, Product group only/Multi-product/Unmapped)
```

- Câu hỏi: Trong từng tầng phễu, tiền đang chi cho sản phẩm nào?
- Nguồn: cột Phễu + Ads→product mapping trên cùng grain.
- Coverage: thăm dò được ở cấp nhóm sản phẩm từ Campaign name; chưa xuống được 25 listing.
- Ba block cộng thêm Mixed/Unmapped phải về tổng Ads Cost.

### 7.5. Sản phẩm × Campaign objective

```text
Ads Cost (SP01)
= Ads Cost (SP01, Engagement - Messaging)
+ Ads Cost (SP01, Engagement - Post engagement)
+ Ads Cost (SP01, Sales - Purchase)
+ Ads Cost (SP01, Awareness - Ad recall)
+ Ads Cost (SP01, Objective khác)
+ Ads Cost (SP01, Chưa xác định)
```

- Câu hỏi: Mỗi sản phẩm được chi bao nhiêu cho từng objective?
- Nguồn: Ads→product mapping + `Objective suy luận`.
- Coverage: EDA được ở cấp nhóm sản phẩm × Objective suy luận; chưa xác minh ở cấp SP01–SP25.
- Nhóm sản phẩm/Shared/Unmapped vẫn phải giữ đủ spend.

### 7.6. Phễu × Campaign objective

```text
Ads Cost (TOFU)
= Ads Cost (TOFU, Engagement - Messaging)
+ Ads Cost (TOFU, Engagement - Post engagement)
+ Ads Cost (TOFU, Sales - Purchase)
+ Ads Cost (TOFU, Awareness - Ad recall)
+ Ads Cost (TOFU, Objective khác)
+ Ads Cost (TOFU, Chưa xác định)
```

- Câu hỏi: Trong từng tầng phễu, tiền đang phục vụ objective nào?
- Nguồn: Phễu và `Objective suy luận` cùng có trên 84 Campaign dẫn xuất.
- Coverage: có thể ETL/EDA với nhãn human-curated; Phễu còn thiếu hợp đồng rule/version đầy đủ.
- Output phải ghi nguồn mapping, không trình bày hai chiều như field Meta gốc.

### 7.7. Bảng coverage tổng hợp

| Cặp | Mức sâu tối đa hiện tại | Trạng thái | Thiếu chính |
|---|---|---|---|
| Nền tảng × Sản phẩm | Chưa tính | Thiếu chiều/mapping | Publisher + Ads→product |
| Nền tảng × Phễu | Chưa tính | Thiếu chiều | Publisher + hợp đồng Phễu |
| Nền tảng × Objective | Chưa tính | Thiếu chiều | Publisher; Objective human mapping đã có |
| Phễu × Sản phẩm | Nhóm sản phẩm | Mapping suy luận/một phần | Ads→listing/SKU + hợp đồng Phễu |
| Sản phẩm × Objective | Nhóm × Objective suy luận | Human mapping/một phần | Ads→listing/SKU |
| Phễu × Objective | Campaign | Human mapping/một phần | Rule/version Phễu và review mapping |

## 8. Đường đi phân tích theo funnel/journey

### 8.1. TOFU — phân phối và tạo tín hiệu

- Câu hỏi: Ads có tiếp cận đúng phạm vi và tạo tín hiệu ban đầu không?
- Metrics: Amount Spent, Impressions, Reach, Frequency, CPM, video views/ThruPlay, post engagement và Cost per Result tương ứng.
- So sánh: cùng sản phẩm, objective, platform, format, kỳ và attribution.
- Giả thuyết: audience, creative, placement, thời gian hoặc cách tối ưu phân phối.
- Phản bác: nhiều chiều đổi cùng lúc thì chưa quy chênh lệch cho một nguyên nhân.

### 8.2. MOFU — quan tâm, click và messaging

- Câu hỏi: Người đã thấy/tương tác có tạo hành động sâu hơn không?
- Metrics: Reach, Frequency, Clicks (all), Link Clicks, CTR, CPC, Messaging Conversations Started, New Messaging Contacts, Cost per Result tương ứng.
- So sánh: cùng sản phẩm và mục tiêu; không so post engagement với messaging như cùng một result.
- Giả thuyết: traffic chưa đúng intent, content chưa tạo lý do nhắn, audience bão hòa, placement hoặc offer khác biệt.
- Phản bác: conversation rẻ chưa chứng minh có Purchase/GMV tốt.

### 8.3. BOFU — Purchase, đơn và GMV

- Câu hỏi: Tín hiệu cuối phễu có chuyển thành đơn business và GMV không?
- Metrics: Meta Purchases, Cost per Purchase, Orders Created/Dispatched, đơn business, hoàn/hủy, GMV và AOV.
- So sánh: cùng sales channel, sản phẩm, kỳ, attribution và rule GMV.
- Giả thuyết: chất lượng lead, khả năng chốt, giá/ưu đãi, tồn kho, vận hành đơn hoặc tracking.
- Phản bác: Meta Purchase/value không tự thay đơn và GMV business.

### 8.4. Journey không tự đồng nghĩa cohort

```text
Impression → Click → Messaging → Purchase → Order business → GMV
```

Đây là đường đi phân tích. Nếu không có khóa tracking xuyên suốt, các tỷ lệ giữa bước chỉ là tỷ lệ tổng hợp cùng phạm vi, không chứng minh cùng một người đã đi qua mọi bước.

## 9. Công thức hỗ trợ đọc mối quan hệ metrics

```text
Ads Cost = Amount Spent
Ads Cost = Impressions × CPM / 1.000
Ads Cost = Reach × Frequency × CPM / 1.000
Ads Cost = Clicks (all) × CPC (all)
Ads Cost = Link Clicks × CPC (link)
Ads Cost = Results cùng loại × Cost per Result cùng loại
Business ROAS = GMV business / Ads Cost
```

Các dòng trên là nhiều cách biểu diễn cùng một Ads Cost, không phải các khoản tiền để cộng với nhau.

Khi đọc `thuận/nghịch`, luôn ghi biến giữ nguyên. Ví dụ CPM thuận với Ads Cost khi Impressions giữ nguyên; CPM nghịch với Business ROAS khi GMV và Impressions giữ nguyên. Impressions không có chiều cố định với ROAS nếu CPM và GMV cùng thay đổi.

Đây là quan hệ toán học có điều kiện, chưa phải kết luận case. Kết luận ROAS tăng/giảm chỉ được viết sau khi đặt số liệu thực vào đúng lát cắt.

## 10. Thiết kế ETL tối thiểu

### 10.1. Các bảng cần có

| Bảng | Grain chính | Vai trò |
|---|---|---|
| `fact_ads_spend_campaign_period` | Campaign × kỳ | Tổng spend và metrics kiểm soát |
| `dim_campaign_config` | Campaign × hiệu lực | Name, Meta objective nếu có, Objective mapping và metadata |
| `dim_adset_config` | Ad set × hiệu lực | Optimization goal, conversion location, destination |
| `map_funnel` | Object ID × hiệu lực | Funnel stage và lịch sử human mapping |
| `bridge_ad_product` | Ad × listing/SKU × hiệu lực | Nối Ads với sản phẩm, xử lý multi-product |
| `fact_ads_spend_publisher` | Campaign/Ad × kỳ × publisher | Spend theo platform/placement |
| `fact_business_order_gmv` | Order/line item | Đơn, sales channel, sản phẩm, trạng thái và GMV business |

### 10.2. Cột tối thiểu của mapping

```text
object_level
object_id_text
mapped_value
mapping_basis
mapping_version
mapped_by hoặc confirmed_by
mapped_at
valid_from
valid_to
review_status
source
```

### 10.3. Kiểm tra join bắt buộc

1. ID hai bên là text nguyên vẹn và grain tương thích.
2. Cardinality dự kiến: 1:1, nhiều:1 hay nhiều:nhiều.
3. Số dòng trước và sau join.
4. Tổng Amount Spent trước và sau join.
5. Số orphan, duplicate và conflict.
6. Spend Shared/Unmapped vẫn còn trong tổng.
7. Nếu một Ad nối nhiều sản phẩm, không nhân spend; chỉ phân bổ khi có rule/weight owner duyệt.

### 10.4. Quy tắc tổng hợp

- Ads Cost: cộng `Amount spent` ở đúng một grain.
- CPM, CPC, CPR, ROAS: tính lại bằng tổng tử số / tổng mẫu số; không lấy trung bình các tỷ lệ theo dòng.
- Reach: không cộng tùy tiện giữa nhóm/kỳ vì một người có thể lặp.
- Results: chỉ cộng khi cùng `Result indicator` và attribution tương thích.
- Dòng có spend nhưng không có result vẫn giữ.
- Không cộng các breakdown độc lập với nhau.

## 11. Audit dataset và dữ liệu cần bổ sung

### 11.1. Nguồn hiện có

- Raw: 32 file `.xlsx` và một archive chứa lại các file `.xlsx`; không có CSV đã bung.
- Bộ `preferred_candidate`: chín file Campaign, Ad set, Ad cho tháng 03–05/2026.
- Schema: Campaign 23 cột, Ad set 27 cột, Ad 30 cột; 21 cột metrics chung.
- File demo: 84 Campaign có spend, có `Phễu` và `Objective suy luận`.
- Catalog: 25 Item ID dạng text.

### 11.2. Có ổn định trong chín file chính

`Reporting starts`, `Reporting ends`, `Results`, `Result indicator`, `Cost per results`, `Amount spent (VND)`, `Impressions`, `Reach`, `Attribution setting`, `Purchases`, `Purchases conversion value`, `Purchase ROAS`, `New messaging contacts`, `Cost per new messaging contact`, `Messaging conversations started`, `Cost per messaging conversation started`, `Orders created`, `Orders dispatched` và các cột tên/delivery theo cấp.

Các cột riêng theo grain:

| Grain | Cột riêng đang có |
|---|---|
| Campaign | `Campaign name`, `Campaign delivery` |
| Ad set | `Ad set name`, `Ad set delivery`, `Starts`, `Bid`, `Bid type`, `Last significant edit` |
| Ad | `Ad name`, `Ad delivery`, `Bid`, `Bid type`, `Last significant edit`, `Quality ranking`, `Engagement rate ranking`, `Conversion rate ranking`, `Ad set name` |

Một số cột chỉ có ở file phụ, không ổn định trong chín file chính: `Frequency`, `CTR (all)`, `Cost per purchase`, `Messaging conversations replied`, `Phễu`, `AD format`, `Month/Tháng`, `Objective suy luận` và các ID trong một số variant.

### 11.3. Thiếu hoặc không ổn định

| Nhóm | Cột/nguồn cần | Ảnh hưởng |
|---|---|---|
| ID | Account/Campaign/Ad set/Ad ID dạng text | Join Campaign → Ad set → Ad |
| Click | Clicks (all), Link clicks, Outbound clicks | CTR/CPC và các tỷ lệ Click → Mess/Purchase |
| Cấu hình | Campaign objective, Optimization/Performance goal, Conversion location, Destination | Đối soát Objective mapping và giải thích phân phối |
| Platform | Publisher platform, Platform position, Impression device | Ba cặp có Nền tảng |
| Product | Ads ID → Item ID/SKU, rule multi-product | Ba cặp có Sản phẩm ở cấp listing/SKU |
| Funnel | Rule, grain, version, owner, hiệu lực | Ba cặp có Phễu ở mức xác minh |
| Video/engagement | Post engagements, reactions, comments, shares, saves, ThruPlay và video milestones | Deep-dive TOFU/creative |
| Business | Order, sales channel, Item/SKU, status, hoàn/hủy, voucher, GMV | Business ROAS |

### 11.4. Bộ export nên xin

**P0 — khóa, cấu hình và công thức chính:**

- Account ID/name, Campaign ID/name, Ad set ID/name, Ad ID/name; ID phải là text từ nguồn.
- Day/Date, Reporting starts/ends, Campaign objective, Buying type, Optimization/Performance goal, Conversion location, Destination, Bid strategy/amount, Attribution setting và delivery/budget theo cấp.
- Amount spent, Impressions, Reach, Clicks (all), Link clicks, Outbound clicks, Landing page views, Results và Result indicator.
- Messaging conversations started/replied, New messaging contacts, Purchases, Orders created/dispatched, Content views, Adds to cart và Initiate checkout nếu tracking có hỗ trợ.
- Các rate/cost như Frequency, CPM, CTR, CPC, Cost per Result, Cost per Messaging và Cost per Purchase nên xuất kèm để đối soát; khi tổng hợp vẫn phải tính lại từ tổng tử số/mẫu số.

**P1 — breakdown riêng:**

- Publisher platform, Platform position và Impression device.
- Post engagement, reactions, comments, shares, saves, 3-second video plays, ThruPlay, Cost per ThruPlay, video 25/50/75/95/100% và average play time.
- Age, Gender, Region/Country chỉ khi câu hỏi phân tích cần; không ép mọi breakdown vào một file vì mỗi breakdown làm đổi grain.

**Business source riêng:**

- Order ID, ngày tạo/paid, sales channel, SKU/Product ID, quantity, gross item value, voucher/discount/subsidy, shipping rule, status, cancelled/returned/refunded value, GMV business và currency.
- Nếu muốn nối Ads → order, cần tracking key được owner xác nhận; không tự nối bằng Campaign name.

### 11.5. Rủi ro ID

Một số Ad/Campaign/Ad set ID từng bị Excel hoặc Power Query lưu dạng số khoa học/làm tròn. Đổi format sang text sau đó không khôi phục chữ số đã mất. Không tự thay phần đuôi ID thành `412`, `0460` hoặc `0467`.

Cần CSV gốc nén ZIP hoặc XLSX được tạo với ID là text ngay từ nguồn.

## 12. Danh sách owner cần xác nhận

| Mã | Cần xác nhận | Owner/nguồn | Nếu chưa có thì sao? |
|---|---|---|---|
| OBJ-01 | Version đầu tiên của `Objective suy luận`, rule override và người review | Duy/cậu Sinh | Vẫn ETL human mapping được, nhưng chưa quản trị lịch sử/conflict tốt |
| FUN-01 | Phễu gắn ở cấp nào, rule, version và hiệu lực | Người tạo mapping/cậu Sinh | Chỉ gọi phân tích phễu là thăm dò |
| PROD-01 | Mã NA/PFX/MNX/VI SINH/CÁT và cách xử lý multi-product | Cậu Sinh/product owner | Chỉ dừng ở mapping gợi ý cấp nhóm |
| PLT-01 | Có thể export publisher breakdown ở grain nào | Data owner | Ba cặp có Nền tảng bị chặn |
| ID-01 | File ID nguyên vẹn dạng text | Data owner | Không drill-down/join production |
| GMV-01 | Định nghĩa GMV, kỳ, sales channel, hoàn/hủy/voucher/shipping | Business owner | Không tính Business ROAS |

## 13. Phụ lục A — danh mục 25 listing

| Mã | Nhóm | Quy cách | Item ID |
|---|---|---|---|
| SP01 | Vi sinh khử mùi | Combo xịt và bột | 54652253159 |
| SP02 | Vi sinh khử mùi | 1 túi 75g | 44502278009 |
| SP03 | Cát Sắn Natural | Combo 3 túi | 53301517532 |
| SP04 | Cát Sắn Natural | 1 túi 2,5kg / 6L | 41659422198 |
| SP05 | Cát Mix PerformX | Combo 3 túi | 47303410867 |
| SP06 | Cát Mix PerformX | 1 túi 2,5kg / 6L | 43727202767 |
| SP07 | Cát Sắn Natural | Combo 2 túi | 43026477525 |
| SP08 | Vi sinh khử mùi | 1 chai 450ml | 48902263316 |
| SP09 | Cát Khoáng MineralX | 1 túi 3,5kg / 8L | 44908677009 |
| SP10 | Cát Khoáng MineralX | Combo 2 túi | 53758652941 |
| SP11 | Cát Sắn Natural | 1 thùng | 54401512661 |
| SP12 | Cát Mix PerformX | Combo 2 túi | 54153386367 |
| SP13 | Cát Đậu Nành Mix Khoáng PowerX | 1 túi 2,5kg / 6L | 40981732711 |
| SP14 | Cát Sắn Mix Đậu Nành Tofuu.X | 1 túi 2,5kg / 6L | 54812261805 |
| SP15 | Cát Khoáng MineralX | Combo 4 túi | 52008652913 |
| SP16 | Cát Mix PerformX | 1 thùng | 43227384196 |
| SP17 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 3 túi | 55712258330 |
| SP18 | Cát Khoáng MineralX | Combo 3 túi | 48458681913 |
| SP19 | Cát Đậu Nành Mix Khoáng PowerX | Combo 2 túi | 48762287172 |
| SP20 | Cát Đậu Nành Mix Khoáng PowerX | Combo 3 túi | 52462262098 |
| SP21 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 2 túi | 52712266855 |
| SP22 | Cát Đậu Nành Mix Khoáng PowerX | Combo 6 túi | 46362295656 |
| SP23 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 6 túi | 40481736189 |
| SP24 | Cát Mix PerformX | 1 túi 4,5kg; bán hết ở snapshot | 27144047088 |
| SP25 | Cát Sắn Natural | 1 túi 4,5kg; bán hết ở snapshot | 54104795820 |

Nguồn: `JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`. Đây là catalog snapshot, không phải bằng chứng lịch sử tháng 03–05/2026.

## 14. Changelog và kiểm định

### 14.1. Nội dung đã hợp nhất

- Định nghĩa bốn chiều và source binding.
- Sáu cặp Ads Cost, công thức tổng quan và coverage.
- Data gate, funnel/journey và drill-down của Logic Tree cũ.
- Audit schema, rủi ro ID, yêu cầu export và ETL modeling contract.
- Quyết định `Objective suy luận` là human-curated ETL input.

### 14.2. Quyết định giữ file riêng

- `KPI_TREE.md/.mm`: giữ vì trả lời “cần lượng hóa gì”.
- `METRIC_TREE.md/.mm`: giữ vì chứa công thức tới raw field/điểm dừng.
- `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm`: giữ như tài liệu công thức chi tiết; Logic Tree chỉ lấy phần cần cho đường phân tích.
- AHP, catalog Excel và `META_ALL_METRICS.mm`: không nhập vào Logic Tree vì có vai trò khác.

### 14.3. Kết quả kiểm định tài liệu

- Markdown và mindmap phải có cùng các nhánh chính từ §1 đến §15.
- Mindmap phải XML hợp lệ, ID không trùng; kiểm tra này không thay việc Duy upload Lark/MindManager để kiểm tra hiển thị.
- Hoàn thành gộp tài liệu không đồng nghĩa mapping/source đã đủ hoặc ETL production đã sẵn sàng.
- Các file cũ được chuyển vào `02_work\joycat\archive\2026-09-05_context_logic_mapping_before_merge`; bảng đối chiếu nằm trong archive.

## 15. Bản nói ngắn để Duy trình bày lại

> Đầu tiên con đối soát tổng chi phí ở cấp Campaign. Sau đó con đọc cùng khoản chi qua bốn chiều: nền tảng, sản phẩm, phễu và objective. Sáu cặp là phần giao của hai chiều, nhưng chỉ tính khi hai chiều cùng grain hoặc nối được bằng ID nguyên vẹn mà không làm tăng spend. Objective hiện là mapping do con tự gắn và được dùng cho ETL, nên con giữ rule/version để phân biệt với field Meta. Dataset hiện chưa có publisher platform, chưa nối Ads xuống 25 listing và chưa có GMV business, vì vậy con mới chuẩn bị được đường phân tích và một số EDA; chưa thể gọi toàn bộ ETL sẵn sàng hay kết luận ROAS.
