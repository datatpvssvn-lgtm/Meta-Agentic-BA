# Joycat — Định nghĩa chiều, mapping và độ phủ dataset

> Phiên bản: 1.0  
> Ngày kiểm tra: 2026-09-05  
> Trạng thái: Bản làm việc để Duy và cậu Sinh xác nhận  
> Phạm vi dữ liệu: Meta Ads Joycat tháng 03–05/2026 và catalog Shopee thu thập ngày 25/08/2026

## 1. File này dùng để làm gì?

File này nối bốn phần vốn đang tách rời:

```text
Công thức Ads Cost
→ chiều dùng để phân tích
→ nguồn và quy tắc gắn nhãn
→ cặp nào dataset hiện tính được
→ dữ liệu nào cần bổ sung trước ETL/report
```

Nó không kết luận quảng cáo tốt/xấu và không chứng minh `Ads Cost / GMV = 5–10%`.

## 2. Kết luận nhanh từ dữ liệu hiện có

1. Bộ `preferred_candidate` có chín file: Campaign, Ad set và Ad cho tháng 03, 04, 05/2026.
2. Raw hiện tại không có các header `Campaign objective`, `Optimization goal`, `Performance goal`, `Publisher platform`, `Platform position`, `Destination`, `Product ID` hoặc `SKU`.
3. `Result indicator` có trong raw nhưng không phải Campaign objective.
4. `Phễu` có trong các file variant và file mapping; đây là cột được thêm, không phải field Meta gốc đã được chứng minh trong workspace.
5. File `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx` có 84 Campaign có spend. Cột tên chính xác là `Objective suy luận`: mapping do Duy/con người bổ sung và được Duy xác nhận dùng làm chiều Objective trong ETL.
6. Catalog có 25 Item ID được giữ dưới dạng text. Catalog hiện tại không chứng minh từng Item đã tồn tại hoặc được quảng cáo trong tháng 03–05/2026.
7. Không có breakdown nền tảng hiển thị. Vì vậy ba cặp có chiều Nền tảng hiện chưa tính được từ raw.
8. Ba cặp còn lại có thể dùng mapping Phễu và `Objective suy luận` làm chiều ETL có nguồn con người. Chúng vẫn chưa phải field Meta gốc; chiều sản phẩm chưa có bằng chứng xuống từng SKU.
9. Các ID trong mapping overview được lưu dạng số khoa học. Với ID dài 17–18 chữ số, không thể coi đây là khóa chính xác để join production.

## 3. Quy tắc bằng chứng và trạng thái

| Trạng thái | Cách hiểu trong file này |
|---|---|
| Đã xác minh từ nguồn | Đọc trực tiếp được từ file, sheet, header hoặc giá trị |
| Owner đã xác nhận | Duy thuật lại quyết định của cậu Sinh/người phụ trách; chưa đổi thành bằng chứng dữ liệu |
| Mapping suy luận | Có rule tạm để học hoặc thăm dò; phải ghi cơ sở và không gọi là fact |
| To be updated | Thiếu nguồn hoặc rule; phải nêu người/nguồn cần hỏi và ảnh hưởng |

Các trạng thái khả dụng của cặp:

| Trạng thái cặp | Định nghĩa |
|---|---|
| Tính được | Hai chiều cùng nằm trên một grain hoặc nối được bằng khóa hợp lệ; kiểm tra tổng không nhân bản spend |
| Tính được một phần | Chỉ một số kỳ/đối tượng hoặc chỉ tới nhóm cao hơn |
| Chưa quan sát tổ hợp | Có đủ hai chiều nhưng không có dòng cho tổ hợp trong phạm vi đã kiểm tra; chưa đồng nghĩa chắc chắn bằng 0 |
| Thiếu chiều/mapping | Ít nhất một chiều chưa tồn tại hoặc chưa phân loại được |
| Không nối được | Hai chiều có ở hai nguồn riêng nhưng không có khóa/grain hợp lệ |
| Mapping suy luận | Có thể lập bảng thăm dò nhưng chưa đủ để dùng như số đã xác minh |

`0`, ô trống, không có dòng và không có nguồn là bốn trạng thái khác nhau.

## 4. Hợp đồng tổng Ads Cost

### 4.1. Grain kiểm soát tổng

```text
Tổng Ads Cost tháng
= tổng Amount spent (VND) của các dòng Campaign có Campaign name
```

Không cộng dòng tổng Meta với các dòng Campaign. Không cộng Campaign + Ad set + Ad.

| Tháng | Campaign có spend | Tổng dòng Campaign có tên | Dòng tổng trong file Campaign | Đối soát Ad set/Ad |
|---|---:|---:|---:|---:|
| 2026-03 | 18 | 50.195.692 VND | 50.195.692 VND | 50.195.692 VND |
| 2026-04 | 41 | 64.825.305 VND | 64.825.305 VND | 64.825.345 VND |
| 2026-05 | 25 | 63.518.031 VND | 63.518.031 VND | 63.518.031 VND |

Tháng 04 lệch 40 VND giữa Campaign và Ad set/Ad trong nguồn. Ghi nhận sai lệch, không tự sửa hoặc phân bổ 40 VND.

### 4.2. Dòng có spend nhưng không có Results

Trong 84 Campaign có spend, có bốn dòng có `Results` và `Result indicator` trống: một dòng tháng 04 và ba dòng tháng 05. Toàn bộ Amount spent của chúng vẫn nằm trong Ads Cost. Không thể dựng lại spend bằng `Results × Cost per Result` cho các dòng này.

## 5. Chiều 1 — Nền tảng

### 5.1. Ba khái niệm không được trộn

| Khái niệm | Câu hỏi nó trả lời | Ví dụ |
|---|---|---|
| Publisher platform | Quảng cáo được hiển thị ở đâu? | Facebook, Instagram, Messenger, Audience Network hoặc giá trị khác do export trả về |
| Destination | Sau khi bấm, khách được dẫn tới đâu? | Messenger, WhatsApp, Shopee, website |
| Sales platform/channel | Doanh nghiệp ghi nhận đơn và GMV ở đâu? | Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B |

Ví dụ: Ads hiển thị trên Facebook, dẫn sang WhatsApp và đơn được ghi ở cửa hàng. Đó là ba trường khác nhau.

Meta Business SDK công khai `objective`, `optimization_goal` và `publisher_platform` như các field riêng:  
https://github.com/facebook/facebook-python-business-sdk/blob/main/facebook_business/adobjects/adsinsights.py

### 5.2. Nhóm phân tích dự kiến

```text
Ads Cost theo publisher platform
= Ads Cost (Facebook)
+ Ads Cost (Instagram)
+ Ads Cost (Messenger)
+ Ads Cost (Audience Network)
+ Ads Cost (Nền tảng khác)
+ Ads Cost (Unknown/Unmapped)
```

Nhánh WhatsApp được giữ như một khả năng Duy muốn khảo sát, nhưng phải xác định nó là publisher, destination hay sales channel trong nguồn cụ thể. Không gọi spend là `Ads Cost WhatsApp` chỉ vì khách được dẫn tới WhatsApp.

### 5.3. Source binding

| Thuộc tính | Quy ước hiện tại |
|---|---|
| Nguồn cần có | Meta Ads export có breakdown `Publisher platform`; export Destination riêng nếu cần |
| Grain dự kiến | Campaign × kỳ × publisher platform; breakdown khác làm đổi grain |
| Khóa dự kiến | Account ID + Campaign ID + kỳ + publisher platform + các breakdown còn lại |
| Nguồn hiện có | Chưa có header publisher/destination trong 32 workbook raw |
| Trạng thái | To be updated |
| Ảnh hưởng | Chặn mọi cặp có Nền tảng |

Không suy publisher từ tiền tố `CPAS-SHOPEE`, Campaign name hoặc loại result.

## 6. Chiều 2 — Sản phẩm

### 6.1. Phân biệt cấp sản phẩm

| Cấp | Ý nghĩa | Nguồn hiện có |
|---|---|---|
| Nhóm sản phẩm | Dòng/nhóm lớn như Natural, PerformX, MineralX, Vi sinh | Có thể gợi ý từ tên Campaign; chưa có bảng rule owner duyệt |
| Listing | Trang bán hàng Shopee, nhận diện bằng Item ID | Catalog snapshot có 25 Item ID dạng text |
| Biến thể/SKU | Mã đơn vị bán cụ thể trong hệ thống đơn hàng | Chưa có SKU/Product ID business |

Không tự gọi Item ID là SKU nếu nguồn chỉ chứng minh đây là Item ID.

### 6.2. Danh mục 25 listing

| Mã phân tích | Nhóm | Quy cách | Item ID |
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

Nguồn: `JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx`, sheet `Danh sách sản phẩm`, header dòng 7. Item ID được lưu dạng text.

### 6.3. Rule mapping tạm thời

| Dấu hiệu trong Campaign name | Nhãn cao nhất được phép gợi ý | Trạng thái |
|---|---|---|
| `VI SINH` | Nhóm Vi sinh khử mùi | Mapping suy luận; không chọn SP01/SP02/SP08 |
| `NA` | Nhóm Cát Sắn Natural | Mapping suy luận; không chọn một listing cụ thể |
| `PFX` | Nhóm Cát Mix PerformX | Mapping suy luận |
| `MNX` | Nhóm Cát Khoáng MineralX | Mapping suy luận |
| `CÁT` | Ngành hàng cát nói chung | Không đủ chọn Natural/PerformX/MineralX/PowerX/Tofuu.X |
| `Sale`, `Branding`, không có mã | Shared/Unmapped | Không ép xuống sản phẩm |

Không thấy bằng chứng Campaign name đủ để map chi phí trực tiếp tới từng SP01–SP25. Không thấy dấu hiệu chắc chắn cho PowerX/Tofuu.X trong các Campaign có spend đã đọc. Mapping sản phẩm hiện chỉ nên dùng ở cấp nhóm và phải được owner xác nhận.

### 6.4. Source binding

| Thuộc tính | Quy ước hiện tại |
|---|---|
| Nguồn chuẩn cần có | Product/content ID từ Meta nếu có, hoặc bảng Campaign/Ad ID → Item ID/SKU có owner và hiệu lực |
| Grain ưu tiên | Ad × kỳ nếu creative quảng cáo sản phẩm cụ thể; Campaign chỉ dùng khi toàn Campaign có cùng scope sản phẩm |
| Quan hệ | Một Ad có thể quảng cáo nhiều listing; cần bridge và rule phân bổ nếu muốn chia tiền |
| Ngoại lệ | Product group only; Multi-product; Branding/Shared; Unmapped |
| Trạng thái | Catalog sẵn có; Ads → sản phẩm chưa sẵn có |

## 7. Chiều 3 — Phễu

### 7.1. Định nghĩa làm việc

| Nhãn | Vai trò phân tích | Không được hiểu tự động là |
|---|---|---|
| TOFU | Tạo nhận biết/tương tác ban đầu, tạo tệp quan tâm | Mọi Campaign có post engagement; CPM luôn cao hoặc thấp |
| MOFU | Khách đã có tín hiệu, cần click/messaging/tương tác sâu hơn | Mọi messaging result đều chắc chắn là MOFU |
| BOFU | Mua hàng/chốt lại nhóm có intent cao | Mọi purchase event hoặc Campaign có chữ Doanh số đều đã tạo GMV business |

Owner đã xác nhận cấp cao: TOFU hướng tới View; MOFU/BOFU hướng tới chuyển đổi. Việc gắn từng Campaign vẫn cần rule và source riêng.

### 7.2. Nguồn quan sát

- `Phễu` xuất hiện trong các file `variants\dataset_xlsx` và mapping overview.
- File Campaign dẫn xuất có spend chứa 84 dòng: MOFU 47, TOFU 27, BOFU 10.
- Đây là mapping được thêm; chưa có tài liệu rule, owner/version/hiệu lực đầy đủ.

### 7.3. Rule cần khóa

1. Chọn grain gắn phễu: Campaign, Ad set hay Ad.
2. Ghi căn cứ ưu tiên: owner mapping → objective/optimization đã xác minh → intent/name có quy tắc → Unmapped.
3. Nếu một đối tượng phục vụ nhiều tầng và chưa có rule phân bổ, gắn `Mixed/Shared`, không chọn một tầng để làm đủ cây.
4. Không dùng tên chứa `TOFU/MOFU/BOFU` làm bằng chứng duy nhất khi cấu hình thực tế xung đột.
5. Mỗi mapping phải có `mapping_version`, `valid_from`, `valid_to`, `confirmed_by` và `mapping_basis`.

Trạng thái: mapping một phần; cần cậu Sinh/người tạo mapping xác nhận rule.

## 8. Chiều 4 — Campaign objective

### 8.1. Ba trường riêng

| Trường | Cấp chính | Trả lời câu hỏi |
|---|---|---|
| Campaign objective | Campaign | Campaign được tạo để theo đuổi nhóm kết quả nào? |
| Optimization/Performance goal | Ad set | Meta tối ưu phân phối cho hành động nào? |
| Result indicator | Báo cáo/Insights | Cột Results ở dòng này đang đại diện loại kết quả nào? |

Meta Business SDK cũng thể hiện `optimization_goal` tại Ad set là trường riêng:  
https://github.com/facebook/facebook-python-business-sdk/blob/main/facebook_business/adobjects/adset.py

### 8.2. Nhãn phân tích hiện dùng

| Nhãn đang hiển thị | Campaign objective dự kiến | Result/goal đi kèm | Trạng thái hiện tại |
|---|---|---|---|
| Engagement & Messaging | Engagement | Messaging conversation/conversation | Human mapping từ Result indicator; Duy xác nhận dùng cho ETL |
| Engagement & Post Engagement | Engagement | Post engagement | Human mapping từ Result indicator; Duy xác nhận dùng cho ETL |
| Sales & Purchase | Sales | Purchase | Human mapping; bốn dòng theo purchase indicator, hai dòng override từ chữ `Doanh số` |
| Awareness & Ad Recall | Awareness | Estimated ad recall | Human mapping từ ad recall indicator |
| Objective khác/chưa xác định | Chưa biết | Result trống hoặc loại khác | Giữ riêng, không ép mapping |

`Engagement & Messaging` là nhãn ghép do con người tạo để ETL/phân tích, không phải một giá trị objective nguyên bản đã được tìm thấy trong raw.

### 8.3. Hợp đồng dùng `Objective suy luận` trong ETL

**Owner đã xác nhận — Duy, 05/09/2026:** do Meta export hiện thiếu Campaign objective, Duy chủ động suy luận Objective và sẽ dùng cột này trong ETL.

Rule làm việc hiện quan sát được:

| Cơ sở mapping | Objective suy luận |
|---|---|
| `actions:onsite_conversion.messaging_conversation_started_7d` | Engagement - Messaging |
| `actions:post_engagement` | Engagement - Post engagement |
| `actions:onsite_conversion.purchase` | Sales - Purchase |
| `estimated_ad_recallers` | Awareness - Ad recall |
| Result trống nhưng Campaign name có tín hiệu `Doanh số` | Sales - Purchase suy từ Campaign name |
| Không đủ tín hiệu | Chưa xác định |

Thứ tự ưu tiên khi ETL:

1. Manual override được Duy/owner duyệt cho Campaign cụ thể.
2. Mapping từ `Result indicator` theo bảng trên.
3. Mapping từ Campaign name theo rule có tài liệu.
4. Không đủ căn cứ → `Chưa xác định`; không ép nhãn.

Các cột metadata phải giữ:

```text
objective_mapped
objective_mapping_basis
objective_mapping_version
mapped_by
mapped_at
review_status
```

Nếu sau này có Campaign objective được export trực tiếp từ Meta, lưu thành cột riêng `campaign_objective_meta`; không ghi đè `objective_mapped`. Hai cột được dùng để đối soát, tìm conflict và cập nhật mapping.

### 8.4. Số dòng trong file demo

| Objective suy luận | Số Campaign có spend |
|---|---:|
| Engagement - Messaging | 49 |
| Engagement - Post engagement | 26 |
| Sales - Purchase | 4 |
| Sales - Purchase suy từ tên Campaign | 2 |
| Awareness - Ad recall | 1 |
| Chưa xác định | 2 |

Tổng: 84. Nguồn cột: `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx`, sheet `Campaign_3_tháng`, header dòng 5. Chính file ghi đây là suy luận để Duy review.

### 8.5. Source binding

| Thuộc tính | Quy ước hiện tại |
|---|---|
| Nguồn ETL hiện dùng | `Objective suy luận` trong file Campaign dẫn xuất; Duy là owner mapping |
| Khóa | Campaign name + tháng đang dùng tạm trong bảng dẫn xuất; cần Campaign ID text để bền vững hơn |
| Nguồn Meta bổ sung nếu có | Campaign ID + Campaign objective; Ad set ID + Optimization/Performance goal |
| Trạng thái | Human-curated mapping: dùng được cho ETL; không phải field Meta gốc |
| Câu hỏi owner | Khóa mapping version, rule override theo Campaign name và người review từng ngoại lệ |

## 9. Sáu cặp và khả năng tính từ dataset

### Cặp 1 — Nền tảng × Sản phẩm

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

| Kiểm tra | Kết quả |
|---|---|
| Platform breakdown | Không có |
| Ads → Item ID/SKU | Không có; chỉ có gợi ý nhóm từ name |
| Khóa nối | Không đủ |
| Trạng thái | Thiếu cả platform và mapping sản phẩm chi tiết |

Biết tổng Facebook và tổng SP01 không cho biết phần giao Facebook × SP01.

### Cặp 2 — Nền tảng × Phễu

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, TOFU)
+ Ads Cost (Facebook, MOFU)
+ Ads Cost (Facebook, BOFU)
+ Ads Cost (Facebook, Mixed/Shared)
+ Ads Cost (Facebook, Unmapped)
```

Phễu có mapping một phần nhưng platform không có. Trạng thái: thiếu platform breakdown; chưa tính được.

### Cặp 3 — Nền tảng × Campaign objective

```text
Ads Cost (Facebook)
= Ads Cost (Facebook, Awareness)
+ Ads Cost (Facebook, Engagement)
+ Ads Cost (Facebook, Sales)
+ Ads Cost (Facebook, Objective khác)
+ Ads Cost (Facebook, Objective chưa xác định)
```

Platform không có; Objective dùng `Objective suy luận` do Duy map. Trạng thái: bị chặn bởi platform, không bị chặn bởi việc thiếu field Objective gốc.

### Cặp 4 — Phễu × Sản phẩm

```text
Ads Cost (TOFU)
= Ads Cost (TOFU, SP01) + ... + Ads Cost (TOFU, SP25)
+ Ads Cost (TOFU, Product group only)
+ Ads Cost (TOFU, Multi-product/Shared)
+ Ads Cost (TOFU, Unmapped)

Ads Cost (MOFU)
= Ads Cost (MOFU, SP01) + ... + Ads Cost (MOFU, SP25)
+ Ads Cost (MOFU, Product group only)
+ Ads Cost (MOFU, Multi-product/Shared)
+ Ads Cost (MOFU, Unmapped)

Ads Cost (BOFU)
= Ads Cost (BOFU, SP01) + ... + Ads Cost (BOFU, SP25)
+ Ads Cost (BOFU, Product group only)
+ Ads Cost (BOFU, Multi-product/Shared)
+ Ads Cost (BOFU, Unmapped)
```

File Campaign dẫn xuất có Phễu và Campaign name trên cùng dòng nên có thể thăm dò **nhóm sản phẩm × Phễu**. Không thể xác nhận 25 listing vì Campaign name không chỉ rõ SP01–SP25. Trạng thái: Mapping suy luận, tính được một phần ở cấp nhóm.

### Cặp 5 — Sản phẩm × Campaign objective

```text
Ads Cost (SP01)
= Ads Cost (SP01, Awareness)
+ Ads Cost (SP01, Engagement)
+ Ads Cost (SP01, Sales)
+ Ads Cost (SP01, Objective khác/chưa xác định)
```

Campaign name và `Objective suy luận` nằm trên cùng dòng demo, nên có thể ETL **nhóm sản phẩm × Objective suy luận**. Objective là human-curated mapping được Duy cho phép dùng; giới hạn còn lại là chưa có mapping SP01–SP25 và chưa có khóa sản phẩm xác minh.

### Cặp 6 — Phễu × Campaign objective

```text
Ads Cost (TOFU)
= Ads Cost (TOFU, Awareness)
+ Ads Cost (TOFU, Engagement)
+ Ads Cost (TOFU, Sales)
+ Ads Cost (TOFU, Objective khác/chưa xác định)
```

File demo có cả `Phễu` và `Objective suy luận` trên 84 dòng có spend. Có thể ETL bảng Phễu × Objective và đối soát về tổng Campaign. Hai chiều đều là mapping do con người bổ sung; output phải hiển thị mapping version/status, không trình bày như field Meta export.

### 9.1. Bảng coverage tổng hợp

| Cặp | 03/2026 | 04/2026 | 05/2026 | Mức sâu tối đa hiện tại | Điều thiếu chính |
|---|---|---|---|---|---|
| Nền tảng × Sản phẩm | Thiếu chiều | Thiếu chiều | Thiếu chiều | Không tính | Publisher + Ads→product |
| Nền tảng × Phễu | Thiếu chiều | Thiếu chiều | Thiếu chiều | Không tính | Publisher platform |
| Nền tảng × Objective | Thiếu chiều | Thiếu chiều | Thiếu chiều | Không tính | Thiếu Publisher; Objective human mapping đã có |
| Phễu × Sản phẩm | Mapping suy luận | Mapping suy luận | Mapping suy luận | Nhóm sản phẩm | Rule phễu + Ads→Item/SKU |
| Sản phẩm × Objective | Human mapping/một phần | Human mapping/một phần | Human mapping/một phần | Nhóm sản phẩm × Objective suy luận | Ads→Item/SKU; version mapping |
| Phễu × Objective | Human mapping | Human mapping | Human mapping | Campaign | Khóa rule/version của hai mapping |

Sáu cặp đều có thể viết công thức. Ba cặp cuối có thể đưa vào ETL bằng mapping con người; report phải ghi rõ nguồn `human-curated`. Ba cặp có Nền tảng vẫn bị chặn. Chưa cặp nào được gọi là phân rã hoàn toàn từ field Meta gốc theo cả hai chiều.

## 10. Yêu cầu ETL/modeling tối thiểu

### 10.1. Các bảng đề xuất

```text
fact_ads_spend_campaign_period
├── account_id_text
├── campaign_id_text
├── period_start / period_end
├── amount_spent_vnd
├── impressions / reach / results
├── result_indicator / attribution_setting
└── source_file / source_row

dim_campaign_config
├── campaign_id_text
├── campaign_name
├── campaign_objective
├── objective_mapped / objective_mapping_basis
├── objective_mapping_version / mapped_by / mapped_at / review_status
└── valid_from / valid_to / source

dim_adset_config
├── adset_id_text / campaign_id_text
├── optimization_goal
├── conversion_location / destination
└── valid_from / valid_to / source

map_funnel
├── object_level / object_id_text
├── funnel_stage
├── mapping_basis / mapping_version
└── confirmed_by / valid_from / valid_to

bridge_ad_product
├── ad_id_text
├── item_id_text hoặc sku_text
├── allocation_rule / allocation_weight nếu có
└── evidence / valid_from / valid_to

fact_ads_spend_publisher
├── campaign_id_text / period
├── publisher_platform / platform_position
└── amount_spent_vnd
```

Không ép `fact_ads_spend_publisher` nối với product nếu export breakdown không có Ad/product key tương thích.

### 10.2. Kiểm tra bắt buộc cho mỗi join

1. Khóa bên trái/bên phải có đúng kiểu text và đúng grain.
2. Cardinality dự kiến và thực tế: 1:1, nhiều:1 hay nhiều:nhiều.
3. Số dòng trước/sau join.
4. Tổng Amount spent trước/sau join.
5. Số orphan và duplicate.
6. Số tiền Unmapped/Shared vẫn còn trong tổng.
7. Nếu một Ad nối nhiều sản phẩm, không nhân spend; chỉ phân bổ khi có rule/weight đã được owner duyệt.

### 10.3. Quy tắc aggregate

- Ads Cost: cộng Amount spent tại đúng một grain.
- CPM/CPC/CPR/ROAS: tính lại từ tổng tử số và mẫu số; không lấy trung bình các tỷ lệ theo dòng.
- Reach: không cộng giữa các nhóm/kỳ khi cùng người có thể lặp lại.
- Results: chỉ cộng khi cùng Result indicator và attribution phù hợp.
- Dòng có spend nhưng không result vẫn giữ trong tổng Ads Cost.
- Không cộng kết quả của các lát cắt một chiều/cặp 2 với nhau; đó là các cách đọc cùng một khoản chi.

## 11. Rủi ro khóa ID

Các `Ad ID`, `Ad set ID`, `Campaign ID` trong mapping overview được lưu dạng numeric/scientific notation. File Ads tháng 03/05 variant còn co rút nhiều ID thành các giá trị như `1.20235E+17`, làm giảm số ID distinct. Đổi format sang text sau đó không khôi phục chữ số đã mất.

Không được:

- tự thay ba/bốn số 0 cuối bằng một hậu tố chung;
- nối bằng ID đã bị làm tròn như thể chính xác;
- chuyển Campaign/Ad set/Ad name thành khóa duy nhất mà không kiểm tra duplicate.

Cần CSV gốc hoặc XLSX đã lưu ID dưới dạng text ngay từ lúc export.

## 12. Dữ liệu cần xin để mở từng cặp

| Mức ưu tiên | Cần gì | Format tối thiểu | Mở được gì |
|---|---|---|---|
| P0 | ID nguyên vẹn | Account/Campaign/Ad set/Ad ID dạng text; cùng name và kỳ | Nối cấu trúc, tránh ghép sai |
| P0 | Khóa/version Objective human mapping | Campaign key + objective_mapped + basis + version + mapped_by/review_status | ETL ba cặp có Objective |
| P0 | Optimization/Performance goal | Ad set ID + goal + hiệu lực | Tách objective khỏi cách tối ưu |
| P0 | Publisher breakdown | Campaign hoặc Ad ID + kỳ + publisher platform + spend | Ba cặp Nền tảng, nếu grain nối được |
| P0 | Ads → sản phẩm | Ad/Campaign ID + Item ID/SKU + rule/hiệu lực | Cặp Sản phẩm xuống listing/SKU |
| P0 | Funnel rule/version | Object ID + stage + basis + version + owner | Xác nhận ba cặp có Phễu |
| P1 | Destination/conversion location | Ad set ID + destination/location + kỳ | Tách nơi hiển thị và nơi dẫn khách |
| P1 | GMV business | Order/SKU/channel/kỳ/status/rule hoàn hủy | ROAS business; ngoài việc tính Ads Cost |

Nếu Meta không hỗ trợ export đồng thời publisher platform với một breakdown khác, xin file riêng nhưng phải giữ cùng kỳ, attribution và ID/grain cần nối. Không hứa có thể khôi phục giao hai chiều từ hai bảng tổng biên không có khóa chung.

## 13. Câu hỏi cần Duy/cậu Sinh xác nhận

1. Duy muốn đặt `objective_mapping_version` đầu tiên là gì, và ai review các dòng override từ Campaign name?
2. `Phễu` do ai tạo, rule nào và áp dụng từ thời điểm nào? Nhãn ở Campaign, Ad set hay Ad?
3. Các mã `NA`, `PFX`, `MNX`, `VI SINH`, `CÁT` được owner xác nhận là nhóm sản phẩm nào? Có mã cho PowerX và Tofuu.X không?
4. Khi một Campaign quảng cáo nhiều sản phẩm, giữ Shared hay có rule phân bổ? Nếu phân bổ, dựa trên gì và ai duyệt?
5. Trong công thức nền tảng, “WhatsApp” đang muốn nói publisher platform hay destination?
6. Có thể export lại ID dưới dạng text cùng publisher/objective/optimization không?

## 14. Giới hạn

- Các kết luận về schema, số dòng, spend và tên cột là kết quả đọc file hiện có ngày 05/09/2026.
- Danh mục field Meta có thể thay đổi theo phiên bản API/tài khoản; link SDK dùng để xác nhận các field là khái niệm riêng, không chứng minh tài khoản Joycat đã export được mọi tổ hợp.
- Không có GMV business nên chưa tính Business ROAS hoặc xác minh tỷ lệ 5–10%.
- Mapping suy luận chỉ giúp chuẩn bị câu hỏi/EDA; không phải kết luận hiệu quả.
