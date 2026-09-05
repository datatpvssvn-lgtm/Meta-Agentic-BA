# JOYCAT — Data Mapping & Coverage cho Ads Cost

> Phiên bản: 3.0  
> Cập nhật: 2026-09-05  
> Owner nội dung: Duy  
> Reviewer: cậu Sinh  
> Trạng thái: Đã hoàn thiện để review; chưa phải kết luận hiệu quả và chưa phải ETL/report production  
> Phạm vi đã kiểm tra: Meta Ads Joycat tháng 03–05/2026; catalog Shopee chụp ngày 25/08/2026

> **Vai trò tài liệu:** định nghĩa bốn chiều, sáu cặp, mapping, coverage và data contract. Công thức metric chi tiết nằm trong Metric Tree; đường đặt câu hỏi và ra quyết định nằm trong Logic Tree.

## 1. Đọc nhanh cho Duy và cậu Sinh

### 1.1. Tài liệu này giúp làm gì?

Tài liệu này nối liền toàn bộ đường làm việc:

```text
Mục tiêu phân tích
→ KPI cần lượng hóa
→ công thức Metric Tree
→ bốn chiều và sáu cặp phân tích
→ nguồn dữ liệu và mapping
→ phần dataset tính được hoặc còn thiếu
→ phép so sánh
→ giả thuyết và bằng chứng
→ recommendation khi đủ điều kiện
```

Nói đơn giản: trước khi hỏi “Campaign nào tốt?”, ta phải biết đang so cùng sản phẩm, cùng nhiệm vụ, cùng tầng phễu, cùng nơi hiển thị và cùng kỳ hay chưa. Sau đó mới đọc các chỉ số liên quan, đi sâu từ Campaign xuống Ad set và Ad, rồi kiểm tra cách giải thích nào phù hợp với dữ liệu.

### 1.2. Kết quả quan trọng nhất

| Nội dung | Kết quả hiện tại | Ý nghĩa với bước sau |
|---|---|---|
| Tổng Ads Cost trong preferred Campaign | Tháng 03: 50.195.692; tháng 04: 64.825.305; tháng 05: 63.518.031 VND | Có thể làm số kiểm soát tại grain Campaign × tháng |
| `Objective suy luận` | 84 Campaign có spend; Duy xác nhận cho phép dùng làm human mapping | ETL được dùng nhưng phải giữ basis, version, người gắn và trạng thái review |
| Phễu | Có nhãn TOFU/MOFU/BOFU trên file dẫn xuất | Có thể thăm dò; rule, version, grain và owner vẫn cần khóa |
| Sản phẩm | Catalog có 25 listing; Campaign name chỉ gợi ý được một số nhóm/ngành hàng | Chưa phân bổ Ads Cost xuống SP01–SP25 |
| Publisher platform | Không có trong bộ dữ liệu đã kiểm tra | Ba cặp có chiều Nền tảng chưa tính được |
| GMV business | Không có | Chưa tính được Business ROAS hoặc Ads Cost/GMV thật |
| File Objective demo tháng 04 | 64.834.557 VND, cao hơn preferred Campaign 9.252 VND | Dùng để đọc mapping; chưa dùng làm fact spend chính tháng 04 |

### 1.3. Ba Tree giữ ba vai trò riêng

| Tree | Câu hỏi nó trả lời | Ví dụ |
|---|---|---|
| KPI Tree | Cần lượng hóa những chỉ số nào? | Ads Cost, CPM, CPC, Cost per Messaging Conversation, Purchase |
| Metric Tree | Chỉ số được tính thế nào và rẽ tới field nào? | `CPM = Amount Spent / Impressions × 1.000` |
| Logic Tree | Khi phân tích một case, phải kiểm tra và so sánh theo đường nào? | Chọn đúng chiều → qua data gate → đọc nhóm metric → drill-down → kiểm chứng giả thuyết |

### 1.4. Sáu cặp dataset hiện làm được tới đâu?

| Cặp | Mức hiện tại |
|---|---|
| Nền tảng × Sản phẩm | Thiếu Publisher platform và Ads → sản phẩm |
| Nền tảng × Phễu | Thiếu Publisher platform; Phễu chưa khóa hợp đồng mapping |
| Nền tảng × Campaign objective | Thiếu Publisher platform; Objective human mapping đã có |
| Phễu × Sản phẩm | Thăm dò được ở cấp nhóm/ngành hàng bằng human mapping |
| Sản phẩm × Campaign objective | Thăm dò được ở cấp nhóm/ngành hàng × Objective suy luận |
| Phễu × Campaign objective | Tính được trên file demo bằng hai human mappings; còn cần khóa Phễu và đối soát source |

“Tính được” ở đây nói về cấu trúc Ads Cost. Nó không tự chứng minh hiệu quả, nguyên nhân hoặc Business ROAS.

## 2. Hợp đồng Context và bằng chứng

### 2.1. Ba lớp context

| Lớp | Nội dung Joycat |
|---|---|
| Objective Context | Xây hệ thống hỗ trợ phân tích marketing đa nguồn, bắt đầu từ Meta Ads Joycat |
| Mong muốn thực tế của phase | Hoàn thiện Context và Logic Tree đủ rõ để review và chuẩn bị ETL/modeling |
| Current Operating Context | Có Meta Ads export tháng 03–05, file mapping thủ công và catalog; chưa có publisher breakdown, khóa sản phẩm đầy đủ hoặc GMV business |

### 2.2. Bốn nhãn bằng chứng

| Nhãn | Cách hiểu |
|---|---|
| Đã xác minh từ nguồn | File/schema/dòng dữ liệu trực tiếp hỗ trợ phát biểu |
| Owner đã xác nhận | Duy, cậu Sinh hoặc owner nghiệp vụ đã chốt; vẫn khác bằng chứng dữ liệu |
| Suy luận | Có cơ sở hợp lý nhưng cần kiểm tra thêm |
| To be updated | Chưa có nguồn đủ mạnh; phải ghi điều thiếu, owner và ảnh hưởng |

### 2.3. Data gate trước mọi phép so sánh

Chỉ so hai case khi trả lời được:

1. Cùng kỳ, timezone và đơn vị tiền chưa?
2. Cùng grain chưa? Grain là “một dòng đại diện cho cái gì”: Campaign, Ad set hay Ad trong một kỳ.
3. Nếu dùng Meta Results/Purchases, attribution có giống nhau không?
4. `Results` có cùng `Result indicator` không?
5. Hai case có cùng sản phẩm, nhiệm vụ/objective, phễu và publisher cần kiểm soát không?
6. Nhãn là field gốc hay human mapping? Mapping version nào?
7. Nếu tính Business ROAS, GMV và Ads Cost có cùng phạm vi không?
8. Sau join, số dòng và tổng spend có tăng hoặc mất không?

Không đạt gate thì gắn `Chỉ thăm dò` hoặc `Chưa so sánh được` và nói rõ lý do.

## 3. Kiểm soát Tổng Ads Cost

### 3.1. Công thức kiểm soát

```text
Tổng Ads Cost tháng
= tổng Amount spent (VND) của các dòng Campaign có Campaign name trong tháng
```

Đường đối soát độc lập:

```text
Tổng Amount spent ở Campaign
≈ Tổng Amount spent ở Ad set
≈ Tổng Amount spent ở Ad
```

Ba tổng mô tả cùng một khoản tiền ở ba grain. Không cộng Campaign + Ad set + Ad.

### 3.2. Kết quả từ preferred source

| Tháng | Campaign có spend | Campaign total | Ad set/Ad total | Kết quả |
|---|---:|---:|---:|---|
| 2026-03 | 18 | 50.195.692 | 50.195.692 | Khớp |
| 2026-04 | 41 | 64.825.305 | 64.825.345 | Lệch 40 VND; giữ nguyên |
| 2026-05 | 25 | 63.518.031 | 63.518.031 | Khớp |

Trong preferred Campaign có bốn dòng có spend nhưng thiếu cả `Results` và `Result indicator`: tháng 04 có một, tháng 05 có ba. Các dòng này vẫn nằm trong Ads Cost.

### 3.3. Chênh lệch file Objective demo tháng 04

| Kiểm tra | Kết quả |
|---|---:|
| Preferred Campaign tháng 04 | 64.825.305 VND |
| Objective demo tháng 04 | 64.834.557 VND |
| Chênh lệch | +9.252 VND |

Chi tiết truy vết:

- 40/41 tên Campaign trong demo khớp chính xác với preferred source.
- Trong 40 dòng khớp tên, 13 dòng có Amount Spent khác; tổng chênh lệch của các dòng này là +7.902 VND.
- Demo dòng 63 có Campaign `9/4/2026 - NA - TOFU Test - 1 - Mess -`, spend 5.467.562 VND; tên này không tồn tại nguyên văn trong preferred source.
- Preferred source có `9/4/2026 - NA Ver.3 - TOFU Test - NEW 1 - Mess - test Audience 2`, spend 5.466.212 VND; tên này không tồn tại nguyên văn trong demo.
- Phần chênh giữa hai dòng trên là +1.350 VND. `7.902 + 1.350 = 9.252 VND`.

Kết luận được phép: file demo là nguồn mapping hiện hành, nhưng preferred Campaign mới là số kiểm soát spend đang dùng. Trước ETL production cần xác nhận demo được tạo từ phiên bản export nào hoặc tái tạo mapping trên preferred source.

## 4. Chiều Nền tảng

### 4.1. Ý nghĩa và nhóm

| Khái niệm | Nghĩa bằng lời thường | Ví dụ |
|---|---|---|
| Publisher platform | Ads thực sự hiển thị ở đâu | Facebook, Instagram, Messenger, Audience Network |
| Destination | Bấm Ads xong khách được dẫn tới đâu | Messenger, WhatsApp, Shopee, website |
| Sales channel | Doanh nghiệp ghi nhận đơn và GMV ở đâu | Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B |

Một Ads có thể hiển thị trên Facebook, dẫn khách sang WhatsApp và đơn được ghi tại cửa hàng. Ba tên này không được coi là cùng một chiều.

### 4.2. Công thức mô hình

```text
Tổng Ads Cost
= Ads Cost (Facebook)
+ Ads Cost (Instagram)
+ Ads Cost (Messenger)
+ Ads Cost (Audience Network)
+ Ads Cost (WhatsApp, nếu source trả về như publisher platform)
+ Ads Cost (Nền tảng khác)
+ Ads Cost (Nền tảng chưa xác định)
```

### 4.3. Source binding và rule

| Thuộc tính | Quy ước |
|---|---|
| File hiện có | Chín preferred workbook Campaign/Ad set/Ad tháng 03–05/2026 |
| Sheet | `Worksheet` |
| Field cần | `Publisher platform`; nên lấy thêm `Platform position`, `Impression device` |
| Grain mong muốn | Campaign hoặc Ad × kỳ × publisher platform × breakdown đi kèm |
| Khóa | Account ID + object ID dạng text + kỳ + publisher platform + breakdown còn lại |
| Mapping | Lấy trực tiếp từ export; không suy từ Campaign name, `CPAS-SHOPEE` hoặc Result indicator |
| Coverage | Chưa có field Publisher platform trong các workbook đã kiểm tra |

### 4.4. Cách phân tích

So platform trong cùng sản phẩm, objective/optimization, phễu, kỳ và attribution. Đọc Spend, CPM, Reach, Frequency, CTR/CPC và Result/Cost per Result đúng loại. Nếu placement hoặc device khác, chênh lệch chưa thể quy riêng cho platform.

## 5. Chiều Sản phẩm

### 5.1. Ba cấp không được trộn

| Cấp | Nghĩa | Dữ liệu hiện có |
|---|---|---|
| Nhóm sản phẩm | Dòng sản phẩm lớn | Có thể suy luận một phần từ Campaign name |
| Listing | Trang bán hàng cụ thể, nhận diện bằng Shopee Item ID | Có snapshot 25 listing |
| SKU/biến thể | Đơn vị bán cụ thể trong hệ thống đơn hàng | Chưa có khóa SKU business |

### 5.2. Công thức mô hình

```text
Tổng Ads Cost
= Ads Cost (SP01) + Ads Cost (SP02) + ... + Ads Cost (SP25)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (Nhiều sản phẩm/branding/shared)
+ Ads Cost (Sản phẩm chưa xác định)
```

### 5.3. Mapping quan sát được

| Tín hiệu trong Campaign name | Mức sâu tối đa | Trạng thái |
|---|---|---|
| `VI SINH` | Nhóm Vi sinh khử mùi | Suy luận; chưa chọn SP01/SP02/SP08 |
| `NA` | Nhóm Cát Sắn Natural | Suy luận |
| `PFX` | Nhóm Cát Mix PerformX | Suy luận |
| `MNX` | Nhóm Cát Khoáng MineralX | Suy luận |
| `CÁT` | Ngành hàng cát nói chung | Không đủ chọn Natural/PerformX/MineralX/PowerX/Tofuu.X |
| `Sale`, branding hoặc không có mã | Shared/Unmapped | Không ép xuống sản phẩm |

Các rule này chưa được Duy/cậu Sinh duyệt như mapping sản phẩm chính thức. Snapshot ngày 25/08/2026 không chứng minh listing đã tồn tại hoặc được quảng cáo trong tháng 03–05/2026.

### 5.4. Source binding và cách phân tích

- Nguồn catalog: `JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`, sheet `Danh sách sản phẩm`, Item ID ở cột `Item ID`.
- Nguồn Ads: preferred Campaign có `Campaign name`; chưa có Product ID/Item ID/SKU.
- Grain ưu tiên cho mapping: Ad × kỳ khi creative quảng cáo sản phẩm cụ thể. Campaign chỉ dùng nếu toàn Campaign có cùng phạm vi sản phẩm.
- Một Ad quảng cáo nhiều sản phẩm cần bridge. Giữ `Multi-product/Shared` cho tới khi có rule phân bổ được owner duyệt.
- Khi phân tích, so cùng nhóm/listing trước; sau đó kiểm soát objective, phễu, publisher, format, kỳ và attribution.

## 6. Chiều Phễu

### 6.1. Ý nghĩa

| Nhãn | Nhiệm vụ phân tích | Không được mặc định |
|---|---|---|
| TOFU | Phân phối, nhận biết và tạo tín hiệu ban đầu | Mọi post engagement đều chắc chắn là TOFU; CPM phải cao/thấp |
| MOFU | Quan tâm, click, tương tác sâu hoặc messaging | Mọi messaging result đều chắc chắn là MOFU |
| BOFU | Hành động mua, đơn và GMV | Meta Purchase bằng đơn/GMV business |
| Mixed/Shared | Một đối tượng phục vụ nhiều tầng | Tự chia đều spend cho ba tầng |
| Chưa phân loại | Chưa đủ căn cứ | Loại spend khỏi tổng |

Owner đã xác nhận ở cấp cao: TOFU hướng tới View; MOFU/BOFU hướng tới chuyển đổi. Rule gắn từng Campaign vẫn chưa khóa.

### 6.2. Công thức mô hình

```text
Tổng Ads Cost
= Ads Cost (TOFU)
+ Ads Cost (MOFU)
+ Ads Cost (BOFU)
+ Ads Cost (Mixed/Shared Funnel)
+ Ads Cost (Chưa phân loại phễu)
```

### 6.3. Source binding và rule

- File mapping hiện dùng: `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`, sheet `Campaign_3_tháng`, cột `Phễu`.
- Grain hiện tại: Campaign name × tháng trong file dẫn xuất.
- Coverage quan sát: 84 Campaign có spend gồm MOFU 47, TOFU 27, BOFU 10.
- Trạng thái: human mapping một phần; chưa có rule, version, người xác nhận và kỳ hiệu lực đầy đủ.
- Mapping tối thiểu cần giữ: `object_level`, `object_id_text`, `funnel_stage`, `mapping_basis`, `mapping_version`, `confirmed_by`, `valid_from`, `valid_to`, `review_status`.
- Khi objective, name và vai trò thật xung đột, dùng `Mixed/Shared` hoặc `Chưa phân loại` để chờ review.

## 7. Chiều Campaign objective

### 7.1. Bốn lớp phải tách riêng

| Lớp | Grain chính | Nó trả lời câu hỏi nào? |
|---|---|---|
| Campaign objective gốc | Campaign | Campaign được tạo với nhóm mục tiêu nào trong Meta? |
| Optimization/Performance goal | Ad set | Meta đang tối ưu phân phối cho hành động nào? |
| Result indicator | Dòng Insights | `Results` của dòng đang đại diện loại kết quả nào? |
| Objective suy luận | Campaign × kỳ trong file hiện hành | Con người phân nhóm Campaign để ETL/phân tích khi thiếu objective gốc |

### 7.2. Nhãn thực tế trong file demo

```text
Engagement - Messaging
Engagement - Post engagement
Sales - Purchase
Sales - Purchase [Suy luận từ tên Campaign]
Awareness - Ad recall
Chưa xác định
```

Số Campaign có spend: 49, 26, 4, 2, 1 và 2; tổng 84.

### 7.3. Công thức mô hình

```text
Tổng Ads Cost
= Ads Cost (Engagement - Messaging)
+ Ads Cost (Engagement - Post engagement)
+ Ads Cost (Sales - Purchase)
+ Ads Cost (Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Awareness - Ad recall)
+ Ads Cost (Objective khác)
+ Ads Cost (Objective chưa xác định)
```

### 7.4. Rule và quyết định của Duy

**Owner đã xác nhận — Duy, 05/09/2026:** được dùng `Objective suy luận` làm human-curated ETL input vì raw thiếu Campaign objective. “Human-curated” nghĩa là nhãn do con người gắn và chịu trách nhiệm review, không phải field Meta tự xuất.

| Cơ sở | Objective suy luận |
|---|---|
| `actions:onsite_conversion.messaging_conversation_started_7d` | Engagement - Messaging |
| `actions:post_engagement` | Engagement - Post engagement |
| `actions:onsite_conversion.purchase` | Sales - Purchase |
| `estimated_ad_recallers` | Awareness - Ad recall |
| Result trống, Campaign name có `Doanh số` | Sales - Purchase [Suy luận từ tên Campaign] |
| Không đủ tín hiệu | Chưa xác định |

Thứ tự ưu tiên: manual override được review → Result indicator → Campaign name theo rule → Chưa xác định.

ETL phải giữ `objective_mapped`, `objective_mapping_basis`, `objective_mapping_version`, `mapped_by`, `mapped_at`, `review_status`. Nếu có objective Meta sau này, lưu riêng thành `campaign_objective_meta` để đối soát; không ghi đè lịch sử human mapping.

## 8. Sáu cặp: công thức, nguồn và cách đối soát

Mỗi cặp là một bảng giao giữa hai chiều. Các ô trong một cặp phải không trùng nhau và bao hết spend nhờ Shared/Mixed/Unmapped. Không cộng tổng của sáu cặp với nhau.

### 8.1. Nền tảng × Sản phẩm

**Câu hỏi:** trên từng nơi hiển thị, tiền được chi cho sản phẩm nào?

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, SP01) + Ads Cost (Facebook, SP02) + ... + Ads Cost (Facebook, SP25)
+ Ads Cost (Facebook, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (Facebook, Nhiều sản phẩm/branding/shared)
+ Ads Cost (Facebook, Sản phẩm chưa xác định)

Ads Cost (Instagram)
= Ads Cost (Instagram, SP01) + Ads Cost (Instagram, SP02) + ... + Ads Cost (Instagram, SP25)
+ Ads Cost (Instagram, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (Instagram, Nhiều sản phẩm/branding/shared)
+ Ads Cost (Instagram, Sản phẩm chưa xác định)

Ads Cost (Messenger)
= Ads Cost (Messenger, SP01) + Ads Cost (Messenger, SP02) + ... + Ads Cost (Messenger, SP25)
+ Ads Cost (Messenger, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (Messenger, Nhiều sản phẩm/branding/shared)
+ Ads Cost (Messenger, Sản phẩm chưa xác định)

Ads Cost (Audience Network)
= Ads Cost (Audience Network, SP01) + ... + Ads Cost (Audience Network, SP25)
+ Ads Cost (Audience Network, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (Audience Network, Nhiều sản phẩm/branding/shared)
+ Ads Cost (Audience Network, Sản phẩm chưa xác định)

Ads Cost (WhatsApp, nếu là publisher platform)
= Ads Cost (WhatsApp, SP01) + ... + Ads Cost (WhatsApp, SP25)
+ Ads Cost (WhatsApp, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (WhatsApp, Nhiều sản phẩm/branding/shared)
+ Ads Cost (WhatsApp, Sản phẩm chưa xác định)

Ads Cost (Nền tảng khác/chưa xác định)
= Ads Cost (Nền tảng khác/chưa xác định, SP01) + ... + Ads Cost (Nền tảng khác/chưa xác định, SP25)
+ Ads Cost (Nền tảng khác/chưa xác định, Nhóm sản phẩm/shared/unmapped)
```

Cách đọc ngược: `Ads Cost (SP01) = Ads Cost (Facebook, SP01) + Ads Cost (Instagram, SP01) + ... + Ads Cost (Nền tảng chưa xác định, SP01)`.

Nguồn cần: publisher breakdown và Ads ID → Item ID/SKU mapping ở grain tương thích. Hiện thiếu cả hai; chưa tính được.

### 8.2. Nền tảng × Phễu

**Câu hỏi:** trên từng publisher platform, tiền phục vụ tầng phễu nào?

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, TOFU) + Ads Cost (Facebook, MOFU) + Ads Cost (Facebook, BOFU)
+ Ads Cost (Facebook, Mixed/Shared Funnel) + Ads Cost (Facebook, Chưa phân loại phễu)

Ads Cost (Instagram)
= Ads Cost (Instagram, TOFU) + Ads Cost (Instagram, MOFU) + Ads Cost (Instagram, BOFU)
+ Ads Cost (Instagram, Mixed/Shared Funnel) + Ads Cost (Instagram, Chưa phân loại phễu)

Ads Cost (Messenger)
= Ads Cost (Messenger, TOFU) + Ads Cost (Messenger, MOFU) + Ads Cost (Messenger, BOFU)
+ Ads Cost (Messenger, Mixed/Shared Funnel) + Ads Cost (Messenger, Chưa phân loại phễu)

Ads Cost (Audience Network)
= Ads Cost (Audience Network, TOFU) + Ads Cost (Audience Network, MOFU) + Ads Cost (Audience Network, BOFU)
+ Ads Cost (Audience Network, Mixed/Shared Funnel) + Ads Cost (Audience Network, Chưa phân loại phễu)

Ads Cost (WhatsApp, nếu là publisher platform)
= Ads Cost (WhatsApp, TOFU) + Ads Cost (WhatsApp, MOFU) + Ads Cost (WhatsApp, BOFU)
+ Ads Cost (WhatsApp, Mixed/Shared Funnel) + Ads Cost (WhatsApp, Chưa phân loại phễu)

Ads Cost (Nền tảng khác/chưa xác định)
= Ads Cost (Nền tảng khác/chưa xác định, TOFU)
+ Ads Cost (Nền tảng khác/chưa xác định, MOFU)
+ Ads Cost (Nền tảng khác/chưa xác định, BOFU)
+ Ads Cost (Nền tảng khác/chưa xác định, Mixed/Shared/Chưa phân loại)
```

Cách đọc ngược: `Ads Cost (TOFU) = Ads Cost (Facebook, TOFU) + Ads Cost (Instagram, TOFU) + ...`.

Nguồn cần: publisher breakdown + `map_funnel`; cùng ID/kỳ/grain. Hiện bị chặn bởi Publisher platform.

### 8.3. Nền tảng × Campaign objective

**Câu hỏi:** mỗi publisher platform chi bao nhiêu cho từng nhóm objective?

Viết riêng từng nền tảng để ETL không phải suy đoán “P” là gì:

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, Engagement - Messaging)
+ Ads Cost (Facebook, Engagement - Post engagement)
+ Ads Cost (Facebook, Sales - Purchase)
+ Ads Cost (Facebook, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Facebook, Awareness - Ad recall)
+ Ads Cost (Facebook, Objective khác)
+ Ads Cost (Facebook, Objective chưa xác định)

Ads Cost (Instagram)
= Ads Cost (Instagram, Engagement - Messaging)
+ Ads Cost (Instagram, Engagement - Post engagement)
+ Ads Cost (Instagram, Sales - Purchase)
+ Ads Cost (Instagram, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Instagram, Awareness - Ad recall)
+ Ads Cost (Instagram, Objective khác)
+ Ads Cost (Instagram, Objective chưa xác định)

Ads Cost (Messenger)
= Ads Cost (Messenger, Engagement - Messaging)
+ Ads Cost (Messenger, Engagement - Post engagement)
+ Ads Cost (Messenger, Sales - Purchase)
+ Ads Cost (Messenger, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Messenger, Awareness - Ad recall)
+ Ads Cost (Messenger, Objective khác)
+ Ads Cost (Messenger, Objective chưa xác định)

Ads Cost (Audience Network)
= Ads Cost (Audience Network, Engagement - Messaging)
+ Ads Cost (Audience Network, Engagement - Post engagement)
+ Ads Cost (Audience Network, Sales - Purchase)
+ Ads Cost (Audience Network, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Audience Network, Awareness - Ad recall)
+ Ads Cost (Audience Network, Objective khác)
+ Ads Cost (Audience Network, Objective chưa xác định)

Ads Cost (WhatsApp, nếu là publisher platform)
= Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Messaging)
+ Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Post engagement)
+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase)
+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (WhatsApp, nếu là publisher platform, Awareness - Ad recall)
+ Ads Cost (WhatsApp, nếu là publisher platform, Objective khác)
+ Ads Cost (WhatsApp, nếu là publisher platform, Objective chưa xác định)

Ads Cost (Nền tảng khác)
= Ads Cost (Nền tảng khác, Engagement - Messaging)
+ Ads Cost (Nền tảng khác, Engagement - Post engagement)
+ Ads Cost (Nền tảng khác, Sales - Purchase)
+ Ads Cost (Nền tảng khác, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Nền tảng khác, Awareness - Ad recall)
+ Ads Cost (Nền tảng khác, Objective khác)
+ Ads Cost (Nền tảng khác, Objective chưa xác định)

Ads Cost (Nền tảng chưa xác định)
= Ads Cost (Nền tảng chưa xác định, Engagement - Messaging)
+ Ads Cost (Nền tảng chưa xác định, Engagement - Post engagement)
+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase)
+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Nền tảng chưa xác định, Awareness - Ad recall)
+ Ads Cost (Nền tảng chưa xác định, Objective khác)
+ Ads Cost (Nền tảng chưa xác định, Objective chưa xác định)
```

Các block trên là công thức mô hình. Chỉ điền Ads Cost thật khi source trả về đúng `publisher_platform`; riêng WhatsApp phải được xác nhận là publisher, không lấy destination thay thế.

Cách đọc ngược: cộng một objective qua toàn bộ publisher platform. Nguồn cần: publisher breakdown + Objective human mapping. Objective đã có; publisher vẫn thiếu.

### 8.4. Phễu × Sản phẩm

**Câu hỏi:** trong mỗi tầng phễu, tiền được chi cho sản phẩm nào?

```text
Ads Cost (TOFU)
= Ads Cost (TOFU, SP01) + Ads Cost (TOFU, SP02) + ... + Ads Cost (TOFU, SP25)
+ Ads Cost (TOFU, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (TOFU, Nhiều sản phẩm/branding/shared)
+ Ads Cost (TOFU, Sản phẩm chưa xác định)

Ads Cost (MOFU)
= Ads Cost (MOFU, SP01) + Ads Cost (MOFU, SP02) + ... + Ads Cost (MOFU, SP25)
+ Ads Cost (MOFU, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (MOFU, Nhiều sản phẩm/branding/shared)
+ Ads Cost (MOFU, Sản phẩm chưa xác định)

Ads Cost (BOFU)
= Ads Cost (BOFU, SP01) + Ads Cost (BOFU, SP02) + ... + Ads Cost (BOFU, SP25)
+ Ads Cost (BOFU, Chỉ xác định được nhóm sản phẩm)
+ Ads Cost (BOFU, Nhiều sản phẩm/branding/shared)
+ Ads Cost (BOFU, Sản phẩm chưa xác định)

Ads Cost (Mixed/Shared Funnel)
= Ads Cost (Mixed/Shared Funnel, SP01) + ... + Ads Cost (Mixed/Shared Funnel, SP25)
+ Ads Cost (Mixed/Shared Funnel, Nhóm sản phẩm/shared/unmapped)

Ads Cost (Chưa phân loại phễu)
= Ads Cost (Chưa phân loại phễu, SP01) + ... + Ads Cost (Chưa phân loại phễu, SP25)
+ Ads Cost (Chưa phân loại phễu, Nhóm sản phẩm/shared/unmapped)
```

Nguồn hiện tại cho phép thăm dò ở cấp nhóm/ngành hàng vì `Phễu` và Campaign name nằm cùng dòng. Chưa có bằng chứng cho SP01–SP25.

### 8.5. Sản phẩm × Campaign objective

**Câu hỏi:** mỗi sản phẩm/nhóm sản phẩm đang nhận spend cho nhiệm vụ nào?

Viết đủ 25 listing và ba bucket ngoại lệ để mô hình không làm rơi spend:

```text
Ads Cost (SP01)
= Ads Cost (SP01, Engagement - Messaging)
+ Ads Cost (SP01, Engagement - Post engagement)
+ Ads Cost (SP01, Sales - Purchase)
+ Ads Cost (SP01, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP01, Awareness - Ad recall)
+ Ads Cost (SP01, Objective khác)
+ Ads Cost (SP01, Objective chưa xác định)

Ads Cost (SP02)
= Ads Cost (SP02, Engagement - Messaging)
+ Ads Cost (SP02, Engagement - Post engagement)
+ Ads Cost (SP02, Sales - Purchase)
+ Ads Cost (SP02, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP02, Awareness - Ad recall)
+ Ads Cost (SP02, Objective khác)
+ Ads Cost (SP02, Objective chưa xác định)

Ads Cost (SP03)
= Ads Cost (SP03, Engagement - Messaging)
+ Ads Cost (SP03, Engagement - Post engagement)
+ Ads Cost (SP03, Sales - Purchase)
+ Ads Cost (SP03, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP03, Awareness - Ad recall)
+ Ads Cost (SP03, Objective khác)
+ Ads Cost (SP03, Objective chưa xác định)

Ads Cost (SP04)
= Ads Cost (SP04, Engagement - Messaging)
+ Ads Cost (SP04, Engagement - Post engagement)
+ Ads Cost (SP04, Sales - Purchase)
+ Ads Cost (SP04, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP04, Awareness - Ad recall)
+ Ads Cost (SP04, Objective khác)
+ Ads Cost (SP04, Objective chưa xác định)

Ads Cost (SP05)
= Ads Cost (SP05, Engagement - Messaging)
+ Ads Cost (SP05, Engagement - Post engagement)
+ Ads Cost (SP05, Sales - Purchase)
+ Ads Cost (SP05, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP05, Awareness - Ad recall)
+ Ads Cost (SP05, Objective khác)
+ Ads Cost (SP05, Objective chưa xác định)

Ads Cost (SP06)
= Ads Cost (SP06, Engagement - Messaging)
+ Ads Cost (SP06, Engagement - Post engagement)
+ Ads Cost (SP06, Sales - Purchase)
+ Ads Cost (SP06, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP06, Awareness - Ad recall)
+ Ads Cost (SP06, Objective khác)
+ Ads Cost (SP06, Objective chưa xác định)

Ads Cost (SP07)
= Ads Cost (SP07, Engagement - Messaging)
+ Ads Cost (SP07, Engagement - Post engagement)
+ Ads Cost (SP07, Sales - Purchase)
+ Ads Cost (SP07, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP07, Awareness - Ad recall)
+ Ads Cost (SP07, Objective khác)
+ Ads Cost (SP07, Objective chưa xác định)

Ads Cost (SP08)
= Ads Cost (SP08, Engagement - Messaging)
+ Ads Cost (SP08, Engagement - Post engagement)
+ Ads Cost (SP08, Sales - Purchase)
+ Ads Cost (SP08, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP08, Awareness - Ad recall)
+ Ads Cost (SP08, Objective khác)
+ Ads Cost (SP08, Objective chưa xác định)

Ads Cost (SP09)
= Ads Cost (SP09, Engagement - Messaging)
+ Ads Cost (SP09, Engagement - Post engagement)
+ Ads Cost (SP09, Sales - Purchase)
+ Ads Cost (SP09, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP09, Awareness - Ad recall)
+ Ads Cost (SP09, Objective khác)
+ Ads Cost (SP09, Objective chưa xác định)

Ads Cost (SP10)
= Ads Cost (SP10, Engagement - Messaging)
+ Ads Cost (SP10, Engagement - Post engagement)
+ Ads Cost (SP10, Sales - Purchase)
+ Ads Cost (SP10, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP10, Awareness - Ad recall)
+ Ads Cost (SP10, Objective khác)
+ Ads Cost (SP10, Objective chưa xác định)

Ads Cost (SP11)
= Ads Cost (SP11, Engagement - Messaging)
+ Ads Cost (SP11, Engagement - Post engagement)
+ Ads Cost (SP11, Sales - Purchase)
+ Ads Cost (SP11, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP11, Awareness - Ad recall)
+ Ads Cost (SP11, Objective khác)
+ Ads Cost (SP11, Objective chưa xác định)

Ads Cost (SP12)
= Ads Cost (SP12, Engagement - Messaging)
+ Ads Cost (SP12, Engagement - Post engagement)
+ Ads Cost (SP12, Sales - Purchase)
+ Ads Cost (SP12, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP12, Awareness - Ad recall)
+ Ads Cost (SP12, Objective khác)
+ Ads Cost (SP12, Objective chưa xác định)

Ads Cost (SP13)
= Ads Cost (SP13, Engagement - Messaging)
+ Ads Cost (SP13, Engagement - Post engagement)
+ Ads Cost (SP13, Sales - Purchase)
+ Ads Cost (SP13, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP13, Awareness - Ad recall)
+ Ads Cost (SP13, Objective khác)
+ Ads Cost (SP13, Objective chưa xác định)

Ads Cost (SP14)
= Ads Cost (SP14, Engagement - Messaging)
+ Ads Cost (SP14, Engagement - Post engagement)
+ Ads Cost (SP14, Sales - Purchase)
+ Ads Cost (SP14, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP14, Awareness - Ad recall)
+ Ads Cost (SP14, Objective khác)
+ Ads Cost (SP14, Objective chưa xác định)

Ads Cost (SP15)
= Ads Cost (SP15, Engagement - Messaging)
+ Ads Cost (SP15, Engagement - Post engagement)
+ Ads Cost (SP15, Sales - Purchase)
+ Ads Cost (SP15, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP15, Awareness - Ad recall)
+ Ads Cost (SP15, Objective khác)
+ Ads Cost (SP15, Objective chưa xác định)

Ads Cost (SP16)
= Ads Cost (SP16, Engagement - Messaging)
+ Ads Cost (SP16, Engagement - Post engagement)
+ Ads Cost (SP16, Sales - Purchase)
+ Ads Cost (SP16, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP16, Awareness - Ad recall)
+ Ads Cost (SP16, Objective khác)
+ Ads Cost (SP16, Objective chưa xác định)

Ads Cost (SP17)
= Ads Cost (SP17, Engagement - Messaging)
+ Ads Cost (SP17, Engagement - Post engagement)
+ Ads Cost (SP17, Sales - Purchase)
+ Ads Cost (SP17, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP17, Awareness - Ad recall)
+ Ads Cost (SP17, Objective khác)
+ Ads Cost (SP17, Objective chưa xác định)

Ads Cost (SP18)
= Ads Cost (SP18, Engagement - Messaging)
+ Ads Cost (SP18, Engagement - Post engagement)
+ Ads Cost (SP18, Sales - Purchase)
+ Ads Cost (SP18, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP18, Awareness - Ad recall)
+ Ads Cost (SP18, Objective khác)
+ Ads Cost (SP18, Objective chưa xác định)

Ads Cost (SP19)
= Ads Cost (SP19, Engagement - Messaging)
+ Ads Cost (SP19, Engagement - Post engagement)
+ Ads Cost (SP19, Sales - Purchase)
+ Ads Cost (SP19, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP19, Awareness - Ad recall)
+ Ads Cost (SP19, Objective khác)
+ Ads Cost (SP19, Objective chưa xác định)

Ads Cost (SP20)
= Ads Cost (SP20, Engagement - Messaging)
+ Ads Cost (SP20, Engagement - Post engagement)
+ Ads Cost (SP20, Sales - Purchase)
+ Ads Cost (SP20, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP20, Awareness - Ad recall)
+ Ads Cost (SP20, Objective khác)
+ Ads Cost (SP20, Objective chưa xác định)

Ads Cost (SP21)
= Ads Cost (SP21, Engagement - Messaging)
+ Ads Cost (SP21, Engagement - Post engagement)
+ Ads Cost (SP21, Sales - Purchase)
+ Ads Cost (SP21, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP21, Awareness - Ad recall)
+ Ads Cost (SP21, Objective khác)
+ Ads Cost (SP21, Objective chưa xác định)

Ads Cost (SP22)
= Ads Cost (SP22, Engagement - Messaging)
+ Ads Cost (SP22, Engagement - Post engagement)
+ Ads Cost (SP22, Sales - Purchase)
+ Ads Cost (SP22, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP22, Awareness - Ad recall)
+ Ads Cost (SP22, Objective khác)
+ Ads Cost (SP22, Objective chưa xác định)

Ads Cost (SP23)
= Ads Cost (SP23, Engagement - Messaging)
+ Ads Cost (SP23, Engagement - Post engagement)
+ Ads Cost (SP23, Sales - Purchase)
+ Ads Cost (SP23, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP23, Awareness - Ad recall)
+ Ads Cost (SP23, Objective khác)
+ Ads Cost (SP23, Objective chưa xác định)

Ads Cost (SP24)
= Ads Cost (SP24, Engagement - Messaging)
+ Ads Cost (SP24, Engagement - Post engagement)
+ Ads Cost (SP24, Sales - Purchase)
+ Ads Cost (SP24, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP24, Awareness - Ad recall)
+ Ads Cost (SP24, Objective khác)
+ Ads Cost (SP24, Objective chưa xác định)

Ads Cost (SP25)
= Ads Cost (SP25, Engagement - Messaging)
+ Ads Cost (SP25, Engagement - Post engagement)
+ Ads Cost (SP25, Sales - Purchase)
+ Ads Cost (SP25, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (SP25, Awareness - Ad recall)
+ Ads Cost (SP25, Objective khác)
+ Ads Cost (SP25, Objective chưa xác định)

Ads Cost (Chỉ xác định được nhóm sản phẩm)
= Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Messaging)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Post engagement)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Awareness - Ad recall)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective khác)
+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective chưa xác định)

Ads Cost (Nhiều sản phẩm/branding/shared)
= Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Messaging)
+ Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Post engagement)
+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase)
+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Nhiều sản phẩm/branding/shared, Awareness - Ad recall)
+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective khác)
+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective chưa xác định)

Ads Cost (Sản phẩm chưa xác định)
= Ads Cost (Sản phẩm chưa xác định, Engagement - Messaging)
+ Ads Cost (Sản phẩm chưa xác định, Engagement - Post engagement)
+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase)
+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (Sản phẩm chưa xác định, Awareness - Ad recall)
+ Ads Cost (Sản phẩm chưa xác định, Objective khác)
+ Ads Cost (Sản phẩm chưa xác định, Objective chưa xác định)
```

Đây là ma trận mô hình. Dataset hiện chưa có khóa Ads → listing nên chưa được điền spend vào SP01–SP25; chỉ có thể thăm dò ở cấp nhóm/ngành hàng theo quy tắc suy luận được ghi riêng.

Cách đọc ngược: mỗi Objective bằng tổng các ô của SP01–SP25 và các bucket ngoại lệ. Hiện mới thăm dò được nhóm/ngành hàng × Objective suy luận.

### 8.6. Phễu × Campaign objective

**Câu hỏi:** trong từng tầng phễu, tiền đang phục vụ nhóm objective nào?

```text
Ads Cost (TOFU)
= Ads Cost (TOFU, Engagement - Messaging)
+ Ads Cost (TOFU, Engagement - Post engagement)
+ Ads Cost (TOFU, Sales - Purchase)
+ Ads Cost (TOFU, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (TOFU, Awareness - Ad recall)
+ Ads Cost (TOFU, Objective khác)
+ Ads Cost (TOFU, Objective chưa xác định)

Ads Cost (MOFU)
= Ads Cost (MOFU, Engagement - Messaging)
+ Ads Cost (MOFU, Engagement - Post engagement)
+ Ads Cost (MOFU, Sales - Purchase)
+ Ads Cost (MOFU, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (MOFU, Awareness - Ad recall)
+ Ads Cost (MOFU, Objective khác)
+ Ads Cost (MOFU, Objective chưa xác định)

Ads Cost (BOFU)
= Ads Cost (BOFU, Engagement - Messaging)
+ Ads Cost (BOFU, Engagement - Post engagement)
+ Ads Cost (BOFU, Sales - Purchase)
+ Ads Cost (BOFU, Sales - Purchase [Suy luận từ tên Campaign])
+ Ads Cost (BOFU, Awareness - Ad recall)
+ Ads Cost (BOFU, Objective khác)
+ Ads Cost (BOFU, Objective chưa xác định)

Ads Cost (Mixed/Shared Funnel)
= tổng các Ads Cost (Mixed/Shared Funnel, từng Objective và Objective chưa xác định)

Ads Cost (Chưa phân loại phễu)
= tổng các Ads Cost (Chưa phân loại phễu, từng Objective và Objective chưa xác định)
```

Hai chiều đang cùng nằm trong file demo nên có thể tạo bảng thăm dò. Objective được Duy cho phép dùng; Phễu còn cần khóa hợp đồng.

### 8.7. Kiểm soát chung của sáu cặp

Với mỗi cặp và từng tháng:

```text
Tổng số dòng nguồn = tổng số dòng ở mọi ô của cặp
Tổng Amount Spent nguồn = tổng Ads Cost ở mọi ô của cặp
```

Nếu một dòng nối nhiều sản phẩm, phép join có thể nhân spend. Phải giữ Shared hoặc dùng allocation rule có owner duyệt; tổng sau phân bổ vẫn phải quay về tổng trước phân bổ.

## 9. Coverage từng tổ hợp đã kiểm tra

Bảng chi tiết 279 dòng nằm tại `02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv`. Bảng lưu kỳ, hai giá trị chiều, cấp sản phẩm, số dòng, Ads Cost, source row, mapping, trạng thái, lý do và bước xử lý.

### 9.1. Ba cặp có Nền tảng

Mỗi tháng được ghi `Thiếu nguồn/thiếu chiều`. Không tạo ô Facebook/Instagram/WhatsApp có spend vì source không có Publisher platform.

### 9.2. Ba cặp có thể thăm dò bằng mapping

| Cặp | 2026-03 | 2026-04 | 2026-05 | Đối soát nội bộ với demo |
|---|---:|---:|---:|---|
| Phễu × Sản phẩm | 9 ô quan sát | 13 ô | 13 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo |
| Sản phẩm × Objective | 7 ô | 12 ô | 16 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo |
| Phễu × Objective | 3 ô | 4 ô | 6 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo |

“Ô quan sát” nghĩa là có ít nhất một Campaign được mapping vào tổ hợp. Ô không có dòng được ghi `Chưa quan sát trong phạm vi đã kiểm tra` và để trống Ads Cost; không đổi thành 0.

### 9.3. Trạng thái coverage dùng cho ETL/report

| Trạng thái | Khi dùng |
|---|---|
| Có dữ liệu và tính được | Hai chiều là source trực tiếp và join đã đối soát |
| Tính được bằng human mapping | Có rule/basis truy vết và owner cho phép dùng |
| Chỉ tính được một phần | Ví dụ chỉ xuống nhóm sản phẩm, chưa xuống listing/SKU |
| Chưa map | Có dòng nhưng thiếu nhãn |
| Thiếu nguồn/thiếu chiều | Không có field cần thiết như Publisher platform |
| Không nối được | Có hai nguồn nhưng thiếu khóa/grain tương thích |
| Chưa quan sát tổ hợp | Trong phạm vi đã kiểm tra không có dòng; Ads Cost để trống |
| Bằng 0 được nguồn xác nhận | Chỉ dùng khi source bao phủ cả dòng zero và chứng minh giá trị 0 |

## 10. Đường phân tích các nhóm metric

CPM chỉ là một mắt xích. Mỗi nhóm dưới đây phải được đọc theo cùng nguyên tắc: xác định case → chọn nhóm so sánh tương đồng → tính lại từ raw metric → xem nhiều chiều → drill-down → kiểm chứng giả thuyết.

### 10.1. Phân phối: Spend, Impressions, Reach, Frequency, CPM

```text
CPM = Ads Cost / Impressions × 1.000
Ads Cost = Impressions × CPM / 1.000
Frequency = Impressions / Reach
Ads Cost = Reach × Frequency × CPM / 1.000
```

- Câu hỏi: chi phí khác do giá mua hiển thị, số người tiếp cận hay số lần lặp lại?
- So sánh: cùng sản phẩm, objective/optimization, phễu, publisher/placement, format, kỳ và attribution.
- Đọc cùng: Spend, Impressions, Reach, Frequency, CPM; thêm CTR/CPC và đúng Result/CPR để biết phân phối có tạo hành động liên quan không.
- Giả thuyết: platform/placement, creative/format, thời gian, cấu hình tối ưu hoặc cơ cấu Campaign khác nhau.
- Bằng chứng hỗ trợ: chênh lệch vẫn còn khi các biến so sánh chính tương đồng; drill-down chỉ ra Ad set/Ad cụ thể.
- Bằng chứng phản bác: hai case khác sản phẩm, objective, phễu hoặc publisher; khi đó CPM không được so như cùng nhiệm vụ.
- Kết luận được phép: mô tả chênh lệch và nơi phát sinh. Chưa kết luận CPM cao/thấp là tốt/xấu hoặc làm ROAS thay đổi nếu chưa có case và GMV cùng phạm vi.

### 10.2. Click: Clicks, Link Clicks, CTR và CPC

```text
CTR (all, dạng thập phân) = Clicks (all) / Impressions
CTR (link, dạng thập phân) = Link Clicks / Impressions
CPC (all) = Ads Cost / Clicks (all)
CPC (link) = Ads Cost / Link Clicks
Ads Cost = Clicks (all) × CPC (all)
Ads Cost = Link Clicks × CPC (link)
CPM = CTR (all, dạng thập phân) × CPC (all) × 1.000
CPM = CTR (link, dạng thập phân) × CPC (link) × 1.000
```

Nếu CTR trong report hiển thị `2%`, khi thế vào công thức dùng `0,02`, không dùng `2`.

- Câu hỏi: Ads tạo nhiều click vì hiển thị nhiều, nội dung có sức hút hay loại click đang được đo khác nhau?
- So sánh: cùng định nghĩa click (`all`, `link`, `outbound`), sản phẩm, objective, phễu, publisher, format và kỳ.
- Đọc cùng: Impressions, CPM, Clicks, Link Clicks, CTR, CPC và landing result nếu có.
- Giả thuyết: creative/offer, placement, destination hoặc tracking khác.
- Bằng chứng phản bác: CTR all tăng do tương tác không dẫn tới destination; link click không đồng nghĩa landing page load hoặc purchase.
- Dataset hiện tại: preferred files chưa có Clicks/Link Clicks/CTR/CPC; đường này đang chờ export bổ sung.

### 10.3. Engagement và video

```text
Ads Cost của một loại kết quả = Results cùng loại × Cost per Result cùng loại
Cost per Post Engagement = Ads Cost / Post Engagements
Ads Cost của nhóm Post Engagement = Post Engagements × Cost per Post Engagement

Video completion rate ở mốc k
= Video plays đạt mốc k / Video starts hoặc mẫu số được Meta định nghĩa cho field đó
```

- Câu hỏi: creative nào tạo đúng loại tương tác hoặc mức xem cần cho nhiệm vụ của tầng phễu?
- So sánh: cùng format/video length, sản phẩm, objective, publisher/placement và kỳ.
- Đọc cùng: Spend, Impressions, Reach, CPM, Post Engagements/CPR, video plays và milestones khi có.
- Giới hạn: `Results = post_engagement` chỉ cộng khi Result indicator giống nhau. Bộ preferred chưa có các mốc video chi tiết.
- Không biến nhiều engagement/view thành kết luận người đó đã nhắn hoặc mua nếu thiếu khóa hành trình.

### 10.4. Messaging

```text
Cost per Messaging Conversation
= Ads Cost / Messaging Conversations Started

Cost per New Messaging Contact
= Ads Cost / New Messaging Contacts

Tỷ số New Contact trên Conversation
= New Messaging Contacts / Messaging Conversations Started
```

- Câu hỏi: spend tạo được bao nhiêu cuộc hội thoại, bao nhiêu liên hệ mới và chất lượng hội thoại có phù hợp không?
- So sánh: cùng product scope, Engagement - Messaging, phễu, publisher/destination, kỳ và attribution.
- Đọc cùng: Spend, CPM, CTR/CPC nếu có, Messaging Conversations Started, New Messaging Contacts và hai cost metric.
- Giả thuyết: phân phối, nội dung, lời kêu gọi, destination hoặc cách đo conversation khác.
- Bằng chứng phản bác: conversation rẻ nhưng tỷ lệ liên hệ mới thấp, chất lượng lead thấp hoặc không nối được đơn business.
- `New Contacts / Conversations` là tỷ số tổng hợp. Chỉ gọi là conversion của cùng hành trình khi định nghĩa và khóa theo dõi hỗ trợ.

### 10.5. Purchase, Orders và business outcome

```text
Cost per Meta Purchase = Ads Cost / Meta-attributed Purchases
Cost per Order Created = Ads Cost / Orders Created do Meta ghi nhận
Cost per Order Dispatched = Ads Cost / Orders Dispatched do Meta ghi nhận

Business ROAS = GMV business / Ads Cost cùng phạm vi
Ads Cost / GMV = Ads Cost / GMV business × 100%
```

- Câu hỏi: event cuối phễu Meta có khớp đơn, trạng thái giao và GMV do doanh nghiệp ghi nhận không?
- So sánh: cùng sales channel, sản phẩm/SKU, kỳ, attribution, rule hoàn/hủy, voucher và shipping.
- Đọc cùng: Meta Purchase/Orders, cost tương ứng, đơn business, đơn hoàn/hủy, GMV và AOV nếu định nghĩa đã khóa.
- Giả thuyết: tracking, chất lượng lead, khả năng chốt, giá/ưu đãi, tồn kho hoặc vận hành đơn.
- Bằng chứng phản bác: Meta Purchase/value khác dữ liệu order/GMV business hoặc attribution khác.
- Hiện chưa có GMV business nên chưa kết luận Business ROAS.

## 11. Quan hệ toán học và giới hạn diễn giải

Ví dụ:

```text
Ads Cost = Impressions × CPM / 1.000
Business ROAS = GMV / Ads Cost

Business ROAS
= GMV × 1.000 / (Impressions × CPM)
```

Công thức chỉ cho biết quan hệ khi giữ các biến còn lại không đổi. Trong dữ liệu thật, GMV, Impressions, sản phẩm, objective, phễu, publisher và creative có thể cùng thay đổi.

Không được ghi kết luận vô điều kiện như:

- CPM cao nên ROAS giảm.
- CTR cao chứng minh GMV tốt.
- CPC hoặc CPR thấp thì nên tăng ngân sách.
- TOFU phải có CPM đắt hơn BOFU.
- Frequency cao chứng minh audience mệt mỏi.

Nếu chưa có khóa người dùng/event xuyên bước, `Link Clicks → Messaging → Purchase` là đường phân tích quy trình; các tỷ số giữa bước chỉ là tỷ số tổng hợp, chưa phải cohort conversion.

## 12. Funnel, drill-down và đường tới recommendation

### 12.1. Đường funnel/journey

```text
TOFU: phân phối và tín hiệu ban đầu
→ MOFU: click, tương tác sâu hoặc conversation
→ BOFU: Meta Purchase/Orders
→ đơn business
→ GMV business
```

Mũi tên mô tả thứ tự cần kiểm tra. Nó không tự chứng minh quan hệ nhân quả hoặc cùng một nhóm người đi xuyên suốt.

### 12.2. Drill-down khi phát hiện chênh lệch

```text
Campaign
→ Ad set: optimization goal, audience, budget/bid, placement, delivery
→ Ad: creative, format, message, sản phẩm quảng cáo
```

Chỉ drill-down khi có ID nguyên vẹn và quan hệ cấp cha–con đúng. Nếu chỉ có tên, kết quả là thăm dò và phải kiểm tra duplicate.

### 12.3. Mẫu quyết định trước recommendation

1. Mô tả vấn đề và số liệu quan sát được.
2. Khóa phạm vi: kỳ, grain, sản phẩm, objective/optimization, phễu, publisher và attribution.
3. Chọn nhóm so sánh tương đồng.
4. Tính lại metric từ tổng tử số và mẫu số.
5. Đi sâu Campaign → Ad set → Ad để tìm nơi tạo chênh lệch.
6. Viết nhiều giả thuyết; với mỗi giả thuyết nêu bằng chứng hỗ trợ và bằng chứng có thể bác bỏ.
7. Chỉ khi đủ bằng chứng mới viết hành động hoặc test: owner, phạm vi, chỉ số theo dõi, thời gian, tiêu chí giữ/sửa/dừng.

## 13. Hợp đồng ETL, modeling và report

### 13.1. Các bảng tối thiểu

| Bảng | Một dòng đại diện cho gì? | Vai trò |
|---|---|---|
| `fact_ads_spend_campaign_period` | Một Campaign trong một kỳ | Số kiểm soát spend và raw metrics |
| `dim_campaign_config` | Một version cấu hình/mapping của Campaign | Name, objective Meta, Objective suy luận và metadata |
| `dim_adset_config` | Một Ad set trong thời gian hiệu lực | Optimization goal, destination, bid/budget |
| `map_funnel` | Một object được gắn một trạng thái phễu trong thời gian hiệu lực | Human mapping Phễu |
| `bridge_ad_product` | Một quan hệ Ad ↔ Item/SKU | Mapping sản phẩm và rule phân bổ nếu many-to-many |
| `fact_ads_spend_publisher` | Một object × kỳ × publisher breakdown | Ba cặp có Nền tảng |
| `fact_business_order_gmv` | Một order/order line theo rule business | Đơn, trạng thái, sản phẩm, channel và GMV |

### 13.2. Kiểm tra join bắt buộc

- ID phải là text nguyên vẹn; ID đã scientific/làm tròn không được sửa bằng đoán hậu tố.
- Ghi cardinality dự kiến và thực tế: một–một, nhiều–một hoặc nhiều–nhiều.
- So số dòng, tổng spend, orphan, duplicate và conflict trước/sau join.
- Giữ Shared/Unmapped trong tổng.
- Khi một Ad nối nhiều sản phẩm, không nhân spend; dùng allocation rule có owner hoặc giữ Shared.
- CPM/CPC/CPR/ROAS tổng phải tính lại từ tổng tử số và mẫu số.
- Reach không cộng tùy tiện qua các nhóm có thể trùng người.
- Results chỉ cộng khi cùng Result indicator và attribution.

### 13.3. Report được phép hiển thị theo coverage hiện tại

| Phần | Có thể hiển thị | Chưa được ghi như fact |
|---|---|---|
| Objective | Spend/metrics theo `Objective suy luận`, kèm human mapping | Objective gốc Meta đã xác minh |
| Phễu | Thăm dò TOFU/MOFU/BOFU theo file hiện hành | Mapping phễu đã được owner duyệt hoàn toàn |
| Sản phẩm | Spend theo nhóm/ngành hàng suy luận | Spend của từng SP01–SP25 |
| Nền tảng | Danh sách dimension cần có | Spend Facebook/Instagram/WhatsApp từ dataset hiện tại |
| Business | Khoảng trống source và công thức | Business ROAS/Ads Cost-GMV thực tế |

## 14. Ví dụ xuyên suốt bằng Campaign thật

### 14.1. Dòng nguồn

- Preferred source: `CPAS-SHOPEE-Campaigns-1-Mar-2026-31-Mar-2026.xlsx`, sheet `Worksheet`, dòng 15.
- Mapping source: `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`, sheet `Campaign_3_tháng`, dòng 6.
- Campaign: `10/11/2025 - MOF - TESTING A/B - 1% - CÁT`.
- Kỳ: 2026-03.
- Amount Spent: 6.639.470 VND.
- Impressions: 67.455; Reach: 23.122.
- Results: 96; Result indicator: `actions:onsite_conversion.messaging_conversation_started_7d`.
- Cost per Result: 69.161,14583 VND; attribution: `7-day click or 1-day view`.

### 14.2. Mapping và trạng thái bằng chứng

- Objective suy luận = `Engagement - Messaging`, basis là Result indicator. Duy cho phép dùng kiểu mapping này trong ETL.
- Phễu = `MOFU` từ file dẫn xuất. Đây là human mapping chưa khóa đủ rule/version/owner.
- Sản phẩm = `Cát nói chung`, vì tên chỉ có `CÁT`; không đủ chọn nhóm hoặc SP01–SP25.
- Publisher platform = chưa có.

Campaign này đi vào ba ô có thể thăm dò:

```text
Ads Cost (MOFU, Engagement - Messaging)
Ads Cost (MOFU, Cát nói chung)
Ads Cost (Cát nói chung, Engagement - Messaging)
```

### 14.3. Metric tính được

```text
CPM = 6.639.470 / 67.455 × 1.000 ≈ 98.427 VND
Frequency = 67.455 / 23.122 ≈ 2,92
Ads Cost kiểm tra = 96 × 69.161,14583 ≈ 6.639.470 VND
```

### 14.4. Chọn nhóm so sánh và đặt câu hỏi

Candidate gần nhất trong cùng tháng là Campaign `10/11/2025 - MOF - TESTING A/B - GỐC - CÁT`, preferred source dòng 39, demo dòng 7. Nó cùng MOFU, cùng Objective suy luận, cùng ngành hàng cát, cùng Result indicator và attribution; có Spend 6.370.694 VND, 129.733 Impressions, Reach 56.830, Results 86 và Cost per Result 74.077,83721 VND.

Case `1%` có CPM cao hơn nhưng Cost per Result thấp hơn candidate `GỐC`. Điều này chỉ tạo câu hỏi:

> Khác biệt đến từ phân phối, audience/optimization ở Ad set, creative ở Ad, hay hai Campaign thực ra quảng cáo các sản phẩm/offer khác nhau?

Muốn trả lời phải drill-down bằng ID nguyên vẹn và kiểm tra cấu hình/creative. Chưa có GMV nên không được kết luận ROAS hoặc đề xuất tăng ngân sách.

### 14.5. Cách Duy trình bày lại

“Con lấy một Campaign thật, kiểm tra spend và metric ở source, rồi gắn Objective, Phễu và sản phẩm theo đúng mức bằng chứng. Campaign này chỉ map được tới ngành hàng cát, chưa tới sản phẩm cụ thể và chưa có platform. Con chọn một Campaign gần giống để so. CPM và Cost per Result đi khác chiều nên con chưa phán Campaign nào tốt; con cần xuống Ad set/Ad và thêm dữ liệu business trước khi recommendation.”

## 15. Nguồn, phần còn thiếu và kiểm định

### 15.1. Nguồn hiện hành

- Raw: `01_inputs\joycat\raw`; 32 workbook `.xlsx` và một archive; không có CSV đã bung.
- Preferred source: chín workbook Campaign/Ad set/Ad tháng 03–05/2026.
- Human mapping: `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`.
- Catalog: `JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`.
- Coverage audit chi tiết: `02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv`.
- Coverage audit summary: `02_work\joycat\coverage_audit\coverage_audit_summary.json`.
- Bản trước khi gộp: `02_work\joycat\archive\2026-09-05_context_logic_mapping_before_merge`.

### 15.2. Owner cần xác nhận

| Cần xác nhận | Owner/nguồn | Ảnh hưởng |
|---|---|---|
| Preferred candidate có phải source chính thức? | Cậu Sinh/người chuẩn bị data | Khóa lineage và số kiểm soát |
| Objective mapping version và reviewer | Duy/cậu Sinh | Cho phép ETL lặp lại và audit override |
| Rule/grain/version/owner Phễu | Người tạo mapping | Xác nhận ba cặp có Phễu |
| Mã nhóm sản phẩm và xử lý multi-product | Owner Campaign/sản phẩm | Nâng coverage từ inference tới mapping duyệt |
| Publisher breakdown và ID text nguyên vẹn | Người export Meta | Mở ba cặp Nền tảng và drill-down |
| Định nghĩa GMV, kỳ, sales channel, hoàn/hủy, voucher, shipping | Owner business data | Mở Business ROAS |
| Nguồn tạo file Objective demo tháng 04 | Người tạo file demo | Giải thích chênh 9.252 VND |

### 15.3. Nội dung khôi phục từ bản cũ

- Campaign → Ad set → Ad.
- Nhiệm vụ TOFU/MOFU/BOFU và các metric cần đọc.
- Cách chọn case so sánh.
- Giả thuyết phải có bằng chứng hỗ trợ và phản bác.
- Điều kiện chuyển sang ETL/report.

### 15.4. Kiểm định

- Markdown và mindmap phải có cùng 16 nhánh chính.
- Mindmap phải có đủ sáu cặp và công thức đầy đủ tên đại lượng.
- XML parse được và ID không trùng chỉ là kiểm tra cấu trúc; việc mở/hiển thị trên Lark hoặc MindManager cần Duy kiểm tra trên ứng dụng.
- Coverage ba cặp không có Nền tảng phải ghi thiếu chiều; không tạo spend giả.
- Coverage ba cặp còn lại phải giữ đủ dòng và spend của file demo, đồng thời ghi rõ demo tháng 04 chưa khớp preferred.
- Không có kết luận CPM/CTR/CPC/CPR tác động ROAS vô điều kiện.
- Không dùng Meta Purchase Conversion Value thay GMV business.
- Không cộng Campaign, Ad set và Ad; không cộng sáu cách phân rã.
- Không phân tích audience size trong phiên bản này.

## 16. Phụ lục — 25 listing Joycat

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

Danh mục là snapshot ngày 25/08/2026; không phải bằng chứng lịch sử chạy Ads tháng 03–05/2026.
