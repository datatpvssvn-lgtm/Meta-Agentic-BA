# Báo cáo bàn giao — Context, Logic Tree và mapping Joycat

> Ngày: 2026-09-05  
> Phạm vi: thực hiện theo `YEU_CAU_HOAN_THIEN_CONTEXT_LOGIC_VA_MAPPING_JOYCAT.md`  
> Trạng thái: Hoàn thành bộ tài liệu chuẩn bị phân tích; còn các data/owner gate trước ETL/report

## 1. Kết quả ngắn

Đã nối lại chuỗi làm việc để AI mới không cần lịch sử chat vẫn hiểu:

```text
KPI cần xem
→ công thức Metric Tree
→ định nghĩa bốn chiều và mapping
→ audit dataset và coverage sáu cặp
→ Logic Tree bản nháp
→ ETL/report sau khi owner và data gate được duyệt
```

Đã tạo Logic Tree MD/MM, hợp đồng mapping/coverage, cập nhật dataset audit và đồng bộ ba file Context. Không sửa raw, không sửa nguồn Logic cũ tại `D:\BA_library`, không triển khai ETL/report và chưa kết luận hiệu quả Joycat.

## 2. Trạng thái 10 task

| Task | Kết quả | Trạng thái |
|---|---|---|
| 01. Audit hiện trạng/khóa nguồn | Kiểm kê file, phân biệt hiện có/đã đọc/owner duyệt và ghi mâu thuẫn | Đạt cho nguồn trong workspace; approval mới vẫn chờ owner |
| 02. Audit dataset/Objective | Kiểm tra 32 raw XLSX, chín preferred files, schema, spend, ID và file demo | Đạt; `Objective suy luận` được Duy xác nhận là human-curated ETL input |
| 03. Định nghĩa bốn chiều | Nền tảng, Sản phẩm, Phễu, Campaign objective có source/grain/rule/ngoại lệ/trạng thái | Đạt ở mức hợp đồng draft |
| 04. Coverage sáu cặp | Đủ sáu cặp, công thức và trạng thái theo 03–05/2026 | Đạt; chưa cặp nào đủ điều kiện gọi là phân rã đã xác minh hai chiều |
| 05. Thiết kế ETL/model tối thiểu | Đề xuất fact/dim/bridge, join test và aggregate rule | Đạt ở mức thiết kế; chưa triển khai pipeline |
| 06. Đồng bộ Context | Sửa phase, định nghĩa Tree, source map, facts/gaps và điều kiện chuyển bước | Đạt |
| 07. Logic Tree draft | Tạo MD/MM bám Logic cũ, thêm data gate, lát cắt, funnel/journey, evidence | Đạt bản nháp; chưa được cậu Sinh duyệt |
| 08. Đồng bộ công thức/mindmap | Tạo `Ad_Cost_cap_2_v3.mm`; audit bộ 5 metrics v3; patch nguồn Metric Tree | Đạt trong phạm vi feedback |
| 09. Câu hỏi owner/export | Gom trong mapping, dataset audit và báo cáo này | Đạt |
| 10. Validation/bàn giao | Context validator, XML parse, duplicate ID, content checks và raw-location check | Đạt trên máy; chưa mở thử bằng Lark/MindManager |

## 3. Nguồn và quyết định chọn bản làm việc

| File | Vai trò | Đã đọc/kiểm tra | Trạng thái sử dụng |
|---|---|---|---|
| `context\WORKSPACE_CONTEXT.md` | Hợp đồng workspace | Có | Nguồn Context cấp workspace hiện hành |
| `context\CURRENT_INTENT.md` | Phase/quyền hiện tại | Có | Nguồn quyết định phase hiện hành |
| `01_inputs\joycat\context.md` | Facts/source/gaps Joycat | Có | Nguồn Context case hiện hành |
| `KPI_TREE.md/.mm` | Danh sách KPI cần lượng hóa | Có | Bản làm việc; không phải kết luận business |
| `METRIC_TREE.md/.mm` | Công thức KPI tới node lá | Có | Bản làm việc; MD đã bỏ phụ thuộc nguồn D ngoài workspace |
| `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` | Công thức metrics và quan hệ có điều kiện | Có | Bản hiện hành; v2 là lịch sử cũ |
| `Ad_Cost_cap_2_v2.mm` | Sáu cặp công thức đã có | Có | Bản trước sửa, giữ đối chiếu |
| `Ad_Cost_cap_2_v3.mm` | Sáu cặp + định nghĩa + coverage | Có | Bản hiện hành để review |
| `JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx` | Bảng Campaign dẫn xuất | Có | `Objective suy luận` do Duy/con người map để dùng trong ETL; không phải field Meta gốc |
| `JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx` | Snapshot 25 listing | Có | Catalog hiện tại; không chứng minh catalog lịch sử 03–05/2026 |
| `D:\BA_library\Logic tree metrics ads JC.mm` | Logic cũ Duy nói đã được cậu Sinh duyệt | Có | Chỉ đối chiếu; approval là owner statement, không có artefact duyệt trực tiếp |

## 4. Facts đã xác minh từ dataset

- Raw có 33 file, trong đó 32 `.xlsx` và một archive; không có CSV đã bung.
- Bộ chính tạm dùng có chín file Campaign/Ad set/Ad cho tháng 03–05/2026.
- Header raw không có Campaign objective, Optimization/Performance goal, Publisher platform, Placement, Destination hoặc Product/SKU.
- File demo có 84 Campaign có spend: tháng 03 có 18, tháng 04 có 41, tháng 05 có 25.
- Tổng Campaign: 50.195.692 VND; 64.825.305 VND; 63.518.031 VND tương ứng ba tháng.
- Tháng 04 tổng Ad set/Ad là 64.825.345 VND, lệch 40 VND so với Campaign. Sai lệch được giữ, không tự sửa.
- Bốn Campaign có spend nhưng Results/Result indicator trống; vẫn nằm trong Ads Cost.
- Catalog có 25 Item ID dạng text. Chưa có khóa Ads → listing/SKU.
- Một số Ad/Campaign/Ad set ID ở file phụ đã thành number/scientific notation; đổi sang text sau làm tròn không khôi phục ID.

Chi tiết máy đọc lưu tại:

- `02_work\joycat\dataset_audit\source_audit_v2.json`.
- `02_work\joycat\dataset_audit\schema_inventory.json`.

## 5. Coverage sáu cặp

| Cặp | Trạng thái | Lý do chính |
|---|---|---|
| Nền tảng × Sản phẩm | Chưa tính được | Thiếu Publisher platform và Ads → Item/SKU |
| Nền tảng × Phễu | Chưa tính được | Thiếu Publisher platform; Phễu chưa có rule owner duyệt |
| Nền tảng × Objective | Chưa tính được | Thiếu Publisher platform; Objective human mapping đã có |
| Phễu × Sản phẩm | Mapping suy luận/một phần | Tên Campaign mới gợi ý nhóm, không tới 25 listing |
| Sản phẩm × Objective | Mapping suy luận/một phần | Product và Objective đều chưa có source xác minh |
| Phễu × Objective | Mapping suy luận/một phần | Hai cột cùng có ở demo nhưng đều chứa mapping/suy luận |

Kết luận coverage: viết được công thức không đồng nghĩa dataset tính được phần giao. Hiện ba cặp cuối có thể lập EDA thăm dò, nhưng chưa cặp nào đủ điều kiện gọi là kết quả hai chiều đã xác minh.

## 6. Những thay đổi chính

### Context

- Thay định nghĩa KPI Tree bắt buộc bốn tầng bằng “lượng hóa các chỉ số cụ thể cần xem”.
- Khóa Metric Tree là công thức tới field gốc/điểm dừng.
- Khóa Logic Tree là đường đi phân tích, không phải danh sách nguyên nhân đã kết luận.
- Mở Logic Tree ở trạng thái Draft theo yêu cầu 05/09/2026; không ghi cậu Sinh đã duyệt Logic mới.
- Thêm bản đồ file, coverage và data gate hiện tại.

### Logic Tree

- Giữ TOFU/MOFU/BOFU, audience, format và nhóm metric chính từ Logic cũ.
- Bổ sung data gate, kiểm soát tổng, bốn chiều/sáu cặp, drill-down và bằng chứng xác nhận/phản bác.
- Tách funnel classification khỏi customer journey; không gọi chuỗi Impressions → Click → Mess → Purchase là cùng một cohort nếu thiếu tracking key.
- Không mặc định TOFU/BOFU có CPM cao/thấp hay hiệu quả hơn nhau.

### Công thức và cặp

- `CONG_THUC_5_METRICS_JOYCAT_v3` đã dùng `Business ROAS = GMV / Ads Cost` và không còn câu kết luận ROAS tăng/giảm vô điều kiện, nên giữ nguyên.
- `Ad_Cost_cap_2_v3.mm` giữ toàn bộ công thức v2 và thêm định nghĩa bốn chiều, nguồn, điểm dừng và coverage sáu cặp.
- `METRIC_TREE.md` chuyển nguồn phạm vi sang file trong workspace, không phụ thuộc ngầm `D:\BA_library`.

## 7. Cần Duy/cậu Sinh xác nhận

### P0 — chặn modeling/coverage

1. **OBJ-01 — Khóa human mapping Objective**  
   Owner statement mới: Duy tự suy luận Objective và sẽ dùng cột này để ETL vì Meta export thiếu Objective gốc.  
   Cần khóa: rule theo Result indicator, rule override theo Campaign name, `mapping_version`, `mapped_by`, `mapped_at`, `review_status` và khóa Campaign theo kỳ.  
   Ảnh hưởng: không chặn ETL ba cặp có Objective; giới hạn là output phải ghi `human-curated`, không trình bày như cấu hình Meta đã xác minh.

2. **ID-01 — ID nguyên vẹn**  
   Đã kiểm tra: một số ID đã thành scientific notation/làm tròn.  
   Cần: CSV gốc nén zip hoặc XLSX có Account/Campaign/Ad set/Ad ID dạng text ngay từ nguồn.  
   Chặn: join Campaign → Ad set → Ad và drill-down đáng tin cậy.

3. **PLT-01 — Publisher platform**  
   Đã kiểm tra: không có trong raw hiện tại.  
   Cần: export breakdown Publisher platform, có ID/grain, kỳ và attribution tương ứng.  
   Chặn: ba cặp có Nền tảng.

4. **PROD-01 — Ads → sản phẩm**  
   Đã kiểm tra: chỉ có Campaign name và catalog 25 Item ID.  
   Cần: Campaign/Ad ID → Item ID/SKU/nhóm sản phẩm, grain, hiệu lực và xử lý multi-product/shared.  
   Chặn: ba cặp có Sản phẩm ở mức xác minh.

5. **FUN-01 — Rule Phễu**  
   Đã kiểm tra: có nhãn Phễu nhưng chưa có rule/version/owner/hiệu lực.  
   Cần: object level, object ID, stage, basis, mapping version, confirmed by, valid from/to.  
   Chặn: ba cặp có Phễu ở mức xác minh.

### P1 — mở phân tích sâu/Business ROAS

6. **CFG-01 — Optimization và Destination**  
   Cần Ad set ID + Optimization/Performance goal + Conversion location/Destination + kỳ hiệu lực.

7. **GMV-01 — GMV business**  
   Cần Order ID, sales channel, Item/SKU, order status, hoàn/hủy, voucher, kỳ ghi nhận và rule GMV.  
   Chặn: Business ROAS và kiểm tra giả định Ads Cost/GMV.

## 8. Validation đã chạy

| Kiểm tra | Kết quả |
|---|---|
| Context validator của workspace | Pass toàn bộ required files/three-layer/stale-reference checks |
| `LOGIC_TREE.mm` | XML parse OK; 92 node; 0 duplicate ID |
| `Ad_Cost_cap_2_v3.mm` | XML parse OK; 852 node; 0 duplicate ID |
| `CONG_THUC_5_METRICS_JOYCAT_v3.mm` | XML parse OK; 177 node; 0 duplicate ID |
| `METRIC_TREE.mm` | XML parse OK; 127 node; 0 duplicate ID |
| `KPI_TREE.mm` | XML parse OK; 41 node; 0 duplicate ID |
| Mapping đủ bốn chiều/sáu cặp | Pass |
| Formula v3 có GMV business, không có mũi tên ROAS tăng/giảm tự động | Pass |
| Output mới nằm trong raw | Không có |

Log máy đọc: `02_work\joycat\validation\handoff_validation.json`; `overall_pass = true`.

Giới hạn validation:

- XML hợp lệ không đồng nghĩa đã mở thử thành công trên Lark/MindManager. Duy cần upload hai file `.mm` mới để kiểm tra rendering.
- Join ETL chưa chạy vì ID/mapping/source còn thiếu; do đó kiểm tra “không nhân bản spend sau join” chưa thể pass trên model thật.
- Logic Tree mới là Draft, chưa có owner approval.

## 9. File bàn giao hiện hành

- `DIMENSION_MAPPING_VA_DO_PHU_DATASET.md` — định nghĩa, mapping, coverage và modeling contract.
- `DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` — schema và yêu cầu export.
- `LOGIC_TREE.md` / `LOGIC_TREE.mm` — Logic Tree draft.
- `Ad_Cost_cap_2_v3.mm` — cặp Ads Cost có định nghĩa và coverage.
- `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` — công thức metrics hiện hành.
- `KPI_TREE.md/.mm` và `METRIC_TREE.md/.mm` — KPI/Metric Tree hiện hành.

## 10. Việc được làm tiếp

1. Duy đọc `LOGIC_TREE.md`, kiểm tra đường đi có đúng logic Duy/cậu Sinh muốn không.
2. Upload `LOGIC_TREE.mm` và `Ad_Cost_cap_2_v3.mm` lên Lark để review trực quan.
3. Gửi nhóm câu hỏi P0 cho cậu Sinh, ưu tiên review rule `Objective suy luận` và ID nguyên vẹn.

## 11. Decision log bổ sung — Objective suy luận

**Owner đã xác nhận — Duy, 05/09/2026:**

```text
Meta export thiếu Campaign objective
→ Duy/con người suy luận Objective
→ lưu thành cột Objective suy luận
→ dùng làm dimension trong ETL
→ giữ metadata nguồn/rule/version để biết đây là human mapping
```

Campaign objective do Meta export không còn là điều kiện bắt buộc để bắt đầu ETL. Nếu có sau, lưu riêng để đối soát và cải thiện mapping; không ghi đè lịch sử human mapping.
4. Khi có nguồn mới, chạy lại audit và cập nhật coverage từng cặp.
5. Chỉ sau khi data gate phù hợp được duyệt mới thiết kế ETL/report chi tiết hoặc phân tích case thực tế.
