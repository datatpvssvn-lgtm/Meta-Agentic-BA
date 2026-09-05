# Yêu cầu bàn giao AI — Hoàn thiện Context, Logic Tree và mapping dữ liệu Joycat

Ngày lập: 05/09/2026. Người yêu cầu: Duy. Người review nghiệp vụ: cậu Sinh.

Đây là bản giao việc để AI khác tiếp tục trong workspace `D:\Meta Agentic BA`. Không cần có toàn bộ lịch sử chat mới hiểu nhiệm vụ. Đọc chỉ dẫn workspace trước khi thực hiện. Bản yêu cầu này không có nghĩa các task dưới đây đã hoàn thành.

## 1. Mục tiêu và lý do làm

Cậu Sinh feedback: cần làm rõ các đầu mục nền tảng, sản phẩm, phễu, Campaign objective và thể hiện vào file. Khi bước sang ETL, AI phải biết bóc tách dữ liệu, thiết kế model và báo được những cặp phân tích nào dataset chưa đáp ứng, để report không trình bày sai.

Hiện công thức có dạng:

```text
Tổng Ads Cost = Ads Cost (Facebook) + Ads Cost (Instagram) + Ads Cost (WhatsApp)
Tổng Ads Cost = Ads Cost (SP01) + Ads Cost (SP02) + ... + Ads Cost (SPn)
Tổng Ads Cost = Ads Cost (TOFU) + Ads Cost (MOFU) + Ads Cost (BOFU)
Tổng Ads Cost = Ads Cost (Campaign objective 1) + ... + Ads Cost (Campaign objective n)
```

Các dòng trên mô tả hướng tư duy, chưa tự chứng minh danh sách nhóm đầy đủ hoặc dữ liệu tính được. Cần giải thích từng đầu mục là gì, nguồn nào cho biết nó, mapping thế nào và khi bắt cặp có tính được tiền giao nhau hay không.

Kết quả cuối cần đạt:

1. AI mới mở Context hiểu mục tiêu, lịch sử quyết định chính, file hiện hành và phần chưa xong.
2. Logic Tree thể hiện đường đi phân tích theo nhiều góc, không kết luận trước.
3. Mỗi chiều có định nghĩa, nguồn, khóa nối và quy tắc mapping.
4. Mỗi cặp có trạng thái khả dụng dựa trên dataset thực tế, không dựa vào việc đã viết được công thức.
5. Có yêu cầu bổ sung dữ liệu cụ thể để Duy chuyển cậu Sinh; chưa triển khai ETL production hay dashboard.

## 2. Quy ước đã chốt với Duy

- KPI Tree: lượng hóa những chỉ số cụ thể cần xem. Không ép lại bốn tầng chiến lược/chủ đề/chiến thuật/KPI.
- Metric Tree: công thức của các chỉ số đó, rẽ tới trường gốc hoặc điểm không thể rẽ tiếp.
- Logic Tree: đường đi cần phân tích gì, nhìn theo khía cạnh nào, so sánh gì, cần bằng chứng gì.
- Giữ công thức tổng quan dễ đọc; dùng dấu cộng và ngoặc như `Ads Cost (Facebook, TOFU)`. Không dùng ký hiệu sigma.
- Có thể liệt kê trường hợp lý thuyết dù chưa có dữ liệu. Nhưng phải tách rõ danh mục lý thuyết và khả năng tính từ dữ liệu.
- Công thức business dùng `ROAS = GMV / Ads Cost`. Không đổi tên cột raw `Purchases conversion value` thành GMV rồi coi là cùng một dữ liệu.
- Không kết luận kiểu “CPM cao → ROAS thấp”. Quan hệ thuận/nghịch chỉ ghi cùng các biến giữ nguyên và điều kiện toán học; case thực tế cần xét nhiều chiều.
- Không mặc định TOFU CPM đắt, BOFU CPM rẻ. Đây có thể là trường hợp cần kiểm tra, không phải quy luật.
- Phân biệt quan hệ toán học, tương quan quan sát và nguyên nhân.
- 5–10% chỉ là giả định/lời xác nhận overall đã trao đổi; không gán cho từng nhóm và không coi là kết quả raw đã tái tính. Không biến nhiệm vụ này thành chứng minh tỷ lệ đó.
- Duy muốn giữ một folder bàn giao phẳng tại `03_outputs\joycat`. Không tạo START_HERE hoặc chia thêm folder KPI/Metric/Logic/AHP.
- Giữ phần Duy/cậu Sinh đã làm và duyệt. Bổ sung có mục tiêu, không thay nguyên file vì thấy một điểm chưa đúng.

## 3. Nguồn phải đọc và thứ tự

Các đường dẫn dưới đây tương đối với `D:\Meta Agentic BA`, trừ khi ghi đường dẫn ổ D khác.

| Thứ tự | Nguồn | Cần lấy gì |
|---|---|---|
| 1 | `AGENTS.md` | Quyền sửa, cách làm việc, thứ tự ưu tiên |
| 2 | `context\WORKSPACE_CONTEXT.md` | Mục tiêu, hợp đồng cộng tác, source map |
| 3 | `context\CURRENT_INTENT.md` | Phase, phần đã làm và giới hạn hiện tại |
| 4 | `01_inputs\joycat\context.md` | Facts Joycat, owner statements, nguồn và gaps |
| 5 | `03_outputs\joycat\Ad_Cost_cap_2_v2.mm` | Các chiều và sáu cặp đã biểu diễn |
| 6 | `03_outputs\joycat\KPI_TREE.md/.mm`, `METRIC_TREE.md/.mm` | Chỉ số cần tính và công thức đang dùng |
| 7 | `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` | Công thức và cách mô tả quan hệ với ROAS |
| 8 | `03_outputs\joycat\DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` | Audit cũ để đối chiếu, không thay kiểm tra nguồn mới |
| 9 | `03_outputs\joycat\JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx` | Bảng dẫn xuất, Objective và Phễu đang dùng |
| 10 | `03_outputs\joycat\JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx` | Catalog 25 sản phẩm và quy cách |
| 11 | `01_inputs\joycat\raw` và các mapping tại `02_work\joycat` | Schema, giá trị, ID, kỳ và khả năng nối thực tế |
| 12 | `D:\BA_library\Logic tree metrics ads JC.mm` nếu còn truy cập được | Logic cũ Duy nói đã được cậu duyệt; giữ làm nền đối chiếu |

Tìm thêm bản `Ad_Cost_GMV_all_platform v4` hoặc nguồn Objective mới nếu cần; không chọn chỉ theo tên hay ngày sửa. Ghi đường dẫn thực tế và lý do chọn bản chính thức. Nếu nguồn ngoài workspace không truy cập được, ghi rõ, không giả vờ đã đọc.

Lưu ý từ lần kiểm tra trước, cần xác minh lại:

- Current Intent ngày 03/09 còn ghi chưa tạo Logic Tree và một số bước tự viết tay từ phase trước. Yêu cầu mới mở việc chuẩn bị Context/Logic, không mở kết luận hiệu quả hay thay Ads.
- Một số Context cũ còn yêu cầu bốn tầng KPI, không khớp cách Duy đã chốt sau đó.
- File cặp 2 còn dẫn tới `Objective suy luận`; Duy nói đã có Objective thật. Phải tìm nguồn mới, không mặc định demo chính là Objective thật, cũng không khẳng định mọi nguồn đều thiếu Objective.
- Có lịch sử Ad ID dài bị Excel làm tròn. Không khôi phục ID bằng cách tự gắn chung đuôi 412/0460/0467.
- Catalog snapshot 25/08/2026 không chứng minh tất cả sản phẩm đã có/chạy Ads trong tháng 03–05/2026.

## 4. Phạm vi thực hiện

### Được làm

- Đọc nguồn, kiểm tra schema và thực hiện kiểm tra dữ liệu không làm thay đổi raw.
- Tạo tài liệu định nghĩa/mapping/coverage và Logic Tree bản nháp.
- Đề xuất cập nhật Context, đồng bộ tài liệu công thức và mindmap trong phạm vi feedback.
- Tạo script/log kiểm định nhỏ tại `02_work\joycat` nếu cần, không xây pipeline production.
- Ghi các câu hỏi owner cần trả lời; tiếp tục phần không bị chặn.

### Không làm

- Không sửa raw, đổi tên cột raw, đoán ID, xóa bản gốc hoặc ghi vào `D:\BA_library`.
- Không tự phân bổ chi phí dùng chung xuống SKU/phễu khi chưa có rule duyệt.
- Không thay ngân sách, targeting, tài khoản Ads; không publish hay gửi tin cho cậu Sinh.
- Không triển khai ETL/report production, không chốt trọng số AHP.
- Không coi request này là cậu đã duyệt tất cả mapping hoặc Logic mới. Nội dung nghiệp vụ mới chưa chốt phải ghi bản nháp.
- Với Context/AGENTS/skill, tuân thủ quy trình duyệt tại workspace. Nếu cần duyệt trước sửa, đưa diff đề xuất, không tự bỏ qua. Không tạo/sửa skill hay AGENTS trong nhiệm vụ này.

## 5. Danh sách task và mô tả chi tiết

### Task 01 — Audit hiện trạng và khóa nguồn làm việc

**Mục đích:** biết chính xác file nào đang có, đang dùng và mâu thuẫn ở đâu trước khi viết tiếp.

**Thực hiện:**

1. Đọc nguồn theo mục 3, kiểm kê các phiên bản liên quan trong workspace.
2. Lập bảng: file/phiên bản, vai trò, nội dung hiện có, điều cần bổ sung, nguồn đối chiếu, trạng thái review.
3. Tách “file tồn tại”, “đã kiểm tra nội dung” và “đã được owner duyệt”. Không suy ra duyệt từ tên v3/v4.
4. Ghi các mâu thuẫn: định nghĩa Tree cũ/mới, Objective suy luận/thật, GMV/Meta value, MD/MM lệch nhau, phase cũ/mới.
5. Xác định nguồn làm việc tạm thời kèm lý do. Nếu lựa chọn nguồn làm thay đổi kết luận, xin Duy quyết định thay vì tự chọn.

**Đầu ra:** phần audit/decision log trong báo cáo bàn giao, kèm bảng nguồn tại tài liệu mapping.

**Đạt khi:** mỗi nguồn chính có đường dẫn thật; các điểm mâu thuẫn được nêu rõ, không còn “đã xong” chỉ dựa trên lịch sử chat.

### Task 02 — Kiểm tra dataset và nguồn Campaign objective mới

**Mục đích:** xác minh cột/giá trị nào thực sự tồn tại, ở cấp nào và tháng nào.

**Thực hiện:**

1. Kiểm tra Campaign, Ad set, Ad của tháng 03, 04, 05/2026. Ghi file, sheet, header row, kỳ, grain, số dòng dữ liệu và dòng tổng.
2. Liệt kê cột, kiểu dữ liệu thực tế, tỷ lệ rỗng; phân biệt trường export trực tiếp và cột bổ sung thủ công.
3. Kiểm tra Campaign ID, Ad set ID, Ad ID: text hay number, mất chữ số, null, trùng và quan hệ cha–con. Không dùng tên làm khóa chính khi tên không duy nhất.
4. Tìm cột Campaign objective mới; đọc giá trị và nguồn sinh ra cột. Đối chiếu với demo suy luận. Nếu chỉ có suy luận, ghi giới hạn và hỏi đúng file mới.
5. Kiểm tra riêng Objective, Optimization goal/Performance goal, Result indicator, publisher platform, placement, destination, product mapping, funnel mapping.
6. Phân biệt ngày báo cáo, ngày tạo campaign và ngày trong tên campaign; không dùng thay nhau.
7. Kiểm tra dòng có Amount spent nhưng Results bằng 0/null: giữ chi phí, không loại vì không có CPR.
8. Không cộng Campaign + Ad set + Ad, không ghép các bản export trùng để tăng độ phủ giả.

**Đầu ra:** cập nhật `DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` sau khi lưu bản trước sửa; dẫn chứng có file/sheet/cột và mẫu giá trị phù hợp.

**Đạt khi:** có thể trả lời “Objective thật ở đâu?” bằng nguồn cụ thể hoặc một gap có nguồn cần hỏi; trạng thái cũ không được dùng thay kiểm tra mới.

### Task 03 — Viết hợp đồng định nghĩa bốn chiều và mapping

**Mục đích:** chuyển các chữ SP, TOFU, Objective, Facebook… thành khái niệm AI và người cùng hiểu.

**Đầu ra chính:** `03_outputs\joycat\DIMENSION_MAPPING_VA_DO_PHU_DATASET.md`.

Mỗi chiều phải có:

| Trường | Nội dung bắt buộc |
|---|---|
| Mã và tên chiều | Tên dễ đọc cùng tên chuẩn dùng khi modeling |
| Định nghĩa | Nó trả lời câu hỏi gì? Không bao gồm cái gì? |
| Danh sách nhóm | Nhóm lý thuyết và giá trị thực sự quan sát, tách riêng |
| Nguồn | File, sheet, cột; hoặc bảng mapping/owner xác nhận |
| Grain và khóa | Nhãn gắn với Campaign, Ad set, Ad hay SKU; nối bằng gì |
| Rule mapping | Điều kiện cụ thể, thứ tự ưu tiên nguồn, xử lý xung đột |
| Phiên bản/hiệu lực | Ai xác nhận, ngày nào, áp dụng kỳ nào |
| Ngoại lệ | Shared, Mixed, Unmapped, Unknown; không gom tất cả thành số 0 |
| Trạng thái | Nguồn xác minh / owner xác nhận / suy luận / chưa rõ |

**3A. Nền tảng:** tách publisher platform, destination và sales platform. Facebook/Instagram/WhatsApp là các nhánh Duy muốn xem, không tự xác nhận tài khoản đã chi trên từng nhánh. Danh sách nền tảng thực tế lấy từ nguồn phù hợp; giữ nhóm khác/chưa xác định để tổng không thiếu.

**3B. Sản phẩm:** lấy đủ 25 sản phẩm catalog, mã SP01–SP25 nhất quán với Item ID và tên/quy cách. Phân biệt listing, biến thể và SKU; nếu catalog chỉ có Item ID thì không tự gọi đó là SKU đã xác minh. Campaign chỉ gắn được nhóm sản phẩm thì dừng ở nhóm. Quảng cáo nhiều sản phẩm, branding hoặc chưa rõ đi riêng; không chia đều. Tên PFX/MNX/NA/VI SINH chỉ là bằng chứng gợi ý nếu chưa có rule được duyệt.

**3C. Phễu:** định nghĩa TOFU/MOFU/BOFU theo logic Duy/cậu, quy tắc thực tế và phiên bản mapping. Không đồng nhất objective với funnel. Có Mixed/Shared nếu nhiều vai trò, Unmapped nếu thiếu căn cứ. Nếu gắn nhãn ở Ad thay vì Campaign, ghi rõ khi roll-up.

**3D. Campaign objective:** giữ trường objective thật riêng với optimization goal và result indicator. Các nhãn như `Engagement & Messaging`, `Sales & Purchase` là nhãn phân tích ghép, không mặc định tên objective nguyên bản. Lập bảng tách từng nhãn thành ba trường và đánh dấu trường nào đã xác minh. Không suy `post_engagement = Awareness` chỉ từ result.

**Đạt khi:** AI có thể giải thích và gắn nhãn một dòng mẫu bằng rule rõ ràng; không có “map theo tên” chung chung mà thiếu bằng chứng/ngoại lệ.

### Task 04 — Kiểm tra khả năng phân tích sáu cặp

**Mục đích:** biết các phép phân rã trong mindmap có dựng được từ dataset không.

Kiểm tra đủ:

1. Nền tảng × Sản phẩm.
2. Nền tảng × Phễu.
3. Nền tảng × Campaign objective.
4. Phễu × Sản phẩm — trình bày theo ba block TOFU/MOFU/BOFU cho dễ đọc.
5. Sản phẩm × Campaign objective.
6. Phễu × Campaign objective.

Với mỗi cặp, ghi:

- Câu hỏi, ví dụ “Facebook chi cho SP01 bao nhiêu trong tháng 03?”.
- Công thức tổng quan dùng ngoặc: `Ads Cost (Facebook) = Ads Cost (Facebook, SP01) + ... + Ads Cost (Facebook, Shared/Unmapped)`; triển khai nhóm dư đủ bao phủ theo rule thực tế.
- Nguồn có đồng thời hai chiều, hoặc đường nối hợp lệ với grain/khóa và quan hệ 1:1, nhiều:1, nhiều:nhiều.
- Tháng nào, cấp nào dựng được; mức tin cậy mapping và ngoại lệ.
- Số dòng/chi phí được map và chưa map nếu kiểm tra được; mẫu minh chứng và cách kiểm tra tổng.
- Phần thiếu cụ thể, người/nguồn cần bổ sung và ảnh hưởng tới report.

Phân loại trạng thái tối thiểu:

| Trạng thái | Diễn giải |
|---|---|
| Tính được | Có dữ liệu giao nhau hoặc mapping hợp lệ, đã kiểm tra không nhân bản tiền |
| Tính được một phần | Chỉ có một số kỳ/đối tượng/nhóm hoặc mapping còn giới hạn |
| Chưa quan sát tổ hợp | Có đủ chiều nhưng không có dòng cho tổ hợp; chưa đồng nghĩa thiếu cột hoặc chắc chắn bằng 0 |
| Thiếu chiều/mapping | Không phân loại được ít nhất một phía |
| Không nối được | Có hai chiều ở các bảng riêng nhưng thiếu khóa/grain tương thích |
| Mapping suy luận | Có thể thăm dò, chưa đủ coi là kết quả phân loại đã xác nhận |

Một cặp có thể có nhiều trạng thái ở các tổ hợp/tháng khác nhau. Không gán một nhãn “có” cho toàn cặp chỉ vì có một dòng mẫu.

Ví dụ bắt buộc giải thích: biết Facebook chi 100 và SP01 chi 60 không cho biết Facebook chi cho SP01 bao nhiêu. Không nhân tỷ trọng hoặc chia đều để lấp ô thiếu. Tương tự, nếu một Ad quảng cáo nhiều sản phẩm thì nối với nhiều SKU sẽ nhân bản spend nếu không có rule phân bổ.

**Đầu ra:** bảng coverage trong file Task 03. Bảng chi tiết máy đọc được tại `02_work\joycat` nếu cần, được link từ tài liệu. Chưa bung cặp 3 thành nhiệm vụ độc lập; ghi rõ muốn mở rộng phải kiểm tra giao ba chiều, không suy ra từ việc sáu cặp đều có.

**Đạt khi:** đủ sáu cặp; có nguồn và kiểm tra tổng cho phần tính được; 0, null, không có dòng và thiếu nguồn được phân biệt.

### Task 05 — Viết thiết kế nối dữ liệu tối thiểu cho bước ETL sau

**Mục đích:** cung cấp yêu cầu modeling, chưa triển khai pipeline.

**Thực hiện:**

1. Chọn grain kiểm soát tổng từ nguồn đủ tin cậy; mặc định xem xét Campaign theo kỳ, ghi nếu cần đổi và lý do.
2. Đề xuất bảng spend gốc, bảng cấu trúc Campaign–Ad set–Ad và các bảng mapping cần thiết. Không ép mọi breakdown vào một bảng nếu export không hỗ trợ giao chiều đó.
3. Nêu khóa dự kiến gồm account/ID/kỳ/breakdown cần thiết, rồi kiểm tra tính duy nhất; không khẳng định chỉ Campaign ID đã đủ cho mọi dòng.
4. Với từng join: cột nối, cardinality, số dòng trước/sau, tổng spend trước/sau, orphan và duplicate cần xử lý.
5. Quy tắc tổng hợp: cộng spend/count khi metric và phạm vi cho phép; tính lại CPM/CPC/CPR/ROAS từ tổng tử/mẫu, không lấy trung bình tỷ lệ; Reach không cộng tùy tiện qua nhóm/thời gian có người trùng.
6. Nêu bộ dữ liệu nào dùng cho lát cắt nào, không cộng các lát cắt vào nhau. Khoản chưa map vẫn nằm trong tổng kiểm soát.

**Đầu ra:** một phần “Yêu cầu ETL/modeling” trong file Task 03; sơ đồ nhỏ khi cần.

**Đạt khi:** người làm ETL biết phép nối nào hợp lệ, phép nào bị chặn, kiểm tra nào phải pass trước khi report dùng số.

### Task 06 — Hoàn thiện Context nối được toàn bộ các bước

**Mục đích:** Context không còn là các mảnh rời hoặc chỉ liệt kê tên file.

**Các file:** `context\WORKSPACE_CONTEXT.md`, `context\CURRENT_INTENT.md`, `01_inputs\joycat\context.md`.

**Nội dung cần bổ sung/sửa có mục tiêu:**

1. Ba lớp: mục tiêu dài hạn, kết quả phase hiện tại, điều kiện vận hành/dữ liệu thực tế.
2. Chuỗi công việc: xác định chỉ số → công thức → định nghĩa chiều/mapping → kiểm tra dữ liệu và cặp → đường đi phân tích → ETL/report khi được duyệt. Đây là bản đồ vai trò/phụ thuộc, không phải tuyên bố đã làm xong từng bước.
3. Quyết định mới nhất của Duy ở mục 2; ghi quyết định thay thế nội dung nào cũ và vì sao.
4. Bản đồ file chính thức: đọc file nào để hiểu gì; file nháp/cũ để đối chiếu, không tạo nhiều “nguồn chính” xung đột.
5. Facts, owner statements, giả định và gaps tách riêng; liên kết nguồn cụ thể, không chép lại toàn bộ công thức vào Context.
6. Trạng thái từng task và điều kiện chuyển bước, câu hỏi đang chờ. Không ghi cậu đã duyệt Logic mới nếu chưa có xác nhận.

**Đạt khi:** một AI không có lịch sử chat vẫn trả lời được: dự án làm gì, đã làm tới đâu, cách hiểu ba Tree, dữ liệu chính ở đâu, phần nào đã xác minh và bước nào chưa được phép làm.

### Task 07 — Soạn Logic Tree bản nháp để Duy/cậu review

**Mục đích:** biểu diễn đường đi phân tích, chưa khẳng định nguyên nhân hay hiệu quả.

**Đầu ra:** `03_outputs\joycat\LOGIC_TREE.md` và `LOGIC_TREE.mm` cùng nội dung.

**Cần làm:**

1. Đọc Logic cũ Duy đã tự làm và nói được cậu duyệt. Ghi phần giữ, phần làm rõ và phần mới đề xuất; không thay toàn bộ logic bằng framework lạ.
2. Bắt đầu từ câu hỏi: cần nhìn Ads Cost và các chỉ số thế nào theo sản phẩm, objective, phễu và nền tảng để phân tích đúng từng case?
3. Tách bước kiểm tra tính so sánh được, bước nhìn tổng, bước đi sâu từng chiều/cặp và bước xem quan hệ metric theo điều kiện.
4. Mỗi nhánh có: câu hỏi → lát cắt → metric/công thức liên quan → dữ liệu cần → nhóm/kỳ so sánh → giả thuyết có thể kiểm tra → bằng chứng phản bác/xác nhận → giới hạn.
5. Funnel và journey tách nhau: funnel là vai trò phân loại; journey là hành trình quan sát hoặc giả thuyết. Không coi toàn bộ Impressions → Click → Mess → Purchase là một đoàn khách đã theo dõi được nếu không có dữ liệu nối.
6. Góc nhìn chính: sản phẩm/quy cách, objective thật và mục tiêu tối ưu, funnel, publisher/destination/sales channel. Góc bổ trợ: Campaign/Ad set/Ad, audience, creative/format, placement, thời gian, attribution, ưu đãi và vận hành nếu có nguồn.
7. Ví dụ nhánh CPM: so cùng sản phẩm, objective, kỳ và scope phù hợp; xem CPM cùng CTR/CPC/CPR, chất lượng kết quả và GMV nếu nối được. Không đánh đồng chênh lệch TOFU–BOFU với hiệu quả tốt/xấu.
8. Gắn trạng thái dữ liệu từ coverage: phân tích được ngay, một phần, cần xác nhận, hoặc chỉ là hướng để sau.

**Đạt khi:** Duy nhìn Tree biết tiếp theo cần xem gì và cần dữ liệu nào; không có node cuối chỉ ghi “tối ưu content/target” mà thiếu câu hỏi và bằng chứng.

### Task 08 — Đồng bộ công thức và mindmap liên quan

**Mục đích:** sửa phần trình bày đang dễ làm AI hiểu sai, không nhân tiện viết lại toàn bộ bộ tài liệu.

**Các file:** `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm`, `Ad_Cost_cap_2_v2.mm`; KPI/METRIC_TREE chỉ kiểm tra và đề xuất patch nếu xung đột trực tiếp.

**Thực hiện:**

1. Bổ sung định nghĩa đầu mục và đường dẫn hợp đồng mapping vào cặp 2. Giữ các công thức/cặp đã được Duy chấp nhận.
2. Công thức business dùng GMV nhưng giữ tên trường Meta ở phần nguồn; không đổi bản chất dữ liệu để dễ đọc.
3. Bỏ kết luận tăng/giảm tự động, thay bằng quan hệ thuận/nghịch có điều kiện hoặc “chưa có chiều cố định”. Nêu rõ giữ biến nào không đổi.
4. Nếu dùng GMV = số đơn × AOV, phải cùng phạm vi đơn business. Nếu dùng Purchases Meta, không gọi tỷ lệ đó là conversion business/chốt sale đã xác minh.
5. Tỷ số Purchases/Clicks hay Mess/Clicks chỉ thành tỷ lệ hành trình khi có tập sự kiện và phạm vi phù hợp; phép rút gọn đại số không chứng minh đường đi thực tế.
6. CTR phân biệt dạng tỷ lệ 0,02 và số phần trăm 2; hằng số trong công thức phải tương ứng. Mẫu số 0/null không ép thành kết quả hữu hạn.
7. CPM/CPC/CPR là các cách mô tả cùng spend; không cộng chúng như khoản tiền độc lập. Công thức dựng spend từ tỷ lệ đã làm tròn chỉ là đối soát có sai số.
8. Chỉ sửa nội dung liên quan feedback; ghi changelog. Nếu tạo version mới phải chọn sau khi kiểm tra trùng tên và cập nhật đường dẫn tham chiếu.

**Đạt khi:** MD/MM đồng nhất phần đã sửa; không còn câu khẳng định chiều ROAS vô điều kiện hoặc đồng nhất Meta value với GMV business.

### Task 09 — Gom câu hỏi xác nhận và yêu cầu export

**Mục đích:** Duy có thể gửi cậu Sinh một danh sách hành động cụ thể, không hỏi lại những gì nguồn đã có.

Mỗi gap phải có: mã, thông tin thiếu, file/cột đã kiểm tra, câu hỏi ngắn, owner/nguồn dự kiến, format trả lời, cặp/nhánh bị chặn và mức ưu tiên.

Ví dụ: “Nguồn Campaign objective thật ở file/sheet nào? Cần Campaign ID và kỳ tương ứng để nối với spend, không chỉ danh sách objective rời.”

Các nhóm cần xem xét: nguồn export chính thức, IDs nguyên vẹn dạng text, objective/optimization/result, publisher breakdown, mapping sản phẩm/phễu, mapping có hiệu lực theo thời gian và định nghĩa GMV nếu bước phân tích cần.

Yêu cầu export phải ghi grain, kỳ, field và breakdown; kiểm tra nền tảng có cho xuất đồng thời không. Nếu không, yêu cầu bộ báo cáo tách cùng khóa và ghi rõ giới hạn nối; không hứa mọi tổ hợp đều export được.

**Đầu ra:** phần “Cần Duy/cậu Sinh xác nhận” trong báo cáo bàn giao; yêu cầu export chi tiết trong dataset audit. Không tạo thêm nhiều file form nếu không cần.

### Task 10 — Kiểm định và bàn giao

**Kiểm định bắt buộc:**

- Đường dẫn tham chiếu tồn tại; nguồn ngoài workspace được nhận diện để bộ gửi cậu không âm thầm phụ thuộc ổ máy khác.
- Context không còn mâu thuẫn phase/định nghĩa với yêu cầu mới; phân biệt draft và approved.
- Đủ bốn chiều, sáu cặp, quy tắc mapping và trạng thái từng kỳ/phạm vi đã kiểm tra.
- Kiểm tra join không nhân bản spend; phần chưa map không biến mất khỏi tổng. Nếu chưa kiểm tra được, ghi chưa đạt, không tự cho pass.
- Raw và nguồn Logic gốc không bị thay đổi; lưu bản trước sửa artefact tại `02_work\joycat` nếu cần.
- Mindmap XML hợp lệ, ID không trùng, nhánh khớp Markdown. Parse XML thành công chưa đồng nghĩa đã mở thử Lark; ghi riêng kiểm tra nào thực sự làm được.
- Chạy validator Context nếu có tại `.agents\skills\context-skill\scripts\validate_workspace_context.ps1`; pass đường dẫn không thay cho audit nội dung.
- Rà lại dấu ↑/↓ và các câu tăng/giảm kết luận sẵn; không xóa mô tả dữ liệu thực tế hợp lệ nếu có bằng chứng, chỉ bỏ suy diễn vô điều kiện.

**Đầu ra:** `03_outputs\joycat\BAO_CAO_BAN_GIAO_CONTEXT_LOGIC_JOYCAT.md` gồm file đã sửa/tạo, thay đổi chính, bằng chứng kiểm định, việc còn thiếu, câu hỏi owner và việc được làm tiếp.

## 6. Bộ file bàn giao dự kiến

| File | Hành động |
|---|---|
| `context\WORKSPACE_CONTEXT.md` | Đề xuất/cập nhật có kiểm soát theo quy trình duyệt |
| `context\CURRENT_INTENT.md` | Đồng bộ outcome và trạng thái thật |
| `01_inputs\joycat\context.md` | Đồng bộ facts, nguồn, mapping và giới hạn |
| `03_outputs\joycat\DIMENSION_MAPPING_VA_DO_PHU_DATASET.md` | Tạo mới; chứa định nghĩa, sáu cặp và yêu cầu modeling |
| `03_outputs\joycat\DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` | Cập nhật từ kiểm tra nguồn mới |
| `03_outputs\joycat\LOGIC_TREE.md/.mm` | Tạo bản nháp đồng nhất, bám Logic cũ |
| `03_outputs\joycat\Ad_Cost_cap_2_v2.mm` | Bổ sung hoặc bản kế tiếp có changelog, không bỏ nhánh cũ |
| `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` | Đồng bộ phần feedback; bảo toàn phiên bản trước sửa |
| `03_outputs\joycat\BAO_CAO_BAN_GIAO_CONTEXT_LOGIC_JOYCAT.md` | Tạo mới, gom audit, câu hỏi và kết quả kiểm định |

Không tạo thêm AHP, skill, dashboard hoặc bản công thức dài mới ngoài phạm vi. Không cần tái tạo catalog Excel nếu dữ liệu hiện có dùng được.

## 7. Thứ tự thực hiện và các điểm cần review

1. **Task 01–02:** đọc và kiểm tra nguồn trước. Báo nguồn Objective thật đã tìm được hay chưa.
2. **Task 03–05:** hoàn thiện định nghĩa và coverage. Những mapping nghiệp vụ chưa chốt phải trình Duy, không tự biến thành fact.
3. **Task 06:** chuẩn bị cập nhật Context và xin duyệt nếu quy trình yêu cầu.
4. **Task 07:** viết Logic Markdown trước để review đường đi; sau đó đồng bộ mindmap, ghi bản nháp cho tới khi được duyệt.
5. **Task 08–09:** đồng bộ công thức/cặp và gom yêu cầu dữ liệu.
6. **Task 10:** kiểm định chéo, bàn giao phần đạt và phần chưa đạt.

Không dừng toàn bộ chỉ vì thiếu GMV hay một breakdown. Hoàn thiện phần định nghĩa/thiết kế tính được, ghi rõ phần phân tích nào bị chặn. Không ước lượng thời gian hoàn tất chắc chắn trước khi kiểm tra nguồn.

## 8. Format cập nhật tiến độ cho Duy

Mỗi lượt báo ngắn theo mẫu:

```text
Đã làm: Task ...; file ...; thay đổi ...
Đã kiểm tra: nguồn ...; kết quả ...
Còn thiếu: ...; chặn cặp/nhánh ...
Cần Duy/cậu xác nhận: một câu hỏi cụ thể ...
Tiếp theo: ...
```

Không dùng “hoàn thiện Context/Logic” khi chỉ đã tạo file hoặc mới bung nhãn. Hoàn thiện tài liệu chuẩn bị phân tích cũng không đồng nghĩa dữ liệu đủ cho mọi cặp, ETL đã chạy hoặc hiệu quả Joycat đã được chứng minh.
