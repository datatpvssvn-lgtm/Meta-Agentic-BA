<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="MAP_DC76E9F0C0006E8F" TEXT="JOYCAT — Data Mapping &amp; Coverage cho Ads Cost" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="MAP_124F801B449AF725" TEXT="1. Đọc nhanh cho Duy và cậu Sinh" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_A888E1567AD879C8" TEXT="1.1. Tài liệu này giúp làm gì?" FOLDED="true">
        <node ID="MAP_E24E2A7E314C07A2" TEXT="Tài liệu này nối liền chuỗi làm việc từ tư duy phân tích sang yêu cầu kỹ thuật:" />
        <node ID="MAP_24EFF823E280F81F" TEXT="Mục tiêu phân tích / Câu hỏi kinh doanh&#10;→ công thức và bối cảnh đọc (Bộ 5 Metrics)&#10;→ bốn chiều và sáu cặp phân tích (Tài liệu này)&#10;→ nguồn dữ liệu gốc và bảng ánh xạ (Mapping)&#10;→ đánh giá độ phủ (Coverage) và nhận diện khoảng trống&#10;→ điều kiện nối (Join integrity) và data gate&#10;→ thiết kế hợp đồng ETL khi dữ liệu sẵn sàng" />
        <node ID="MAP_907AED5D125757F9" TEXT="Nói đơn giản: Trước khi hỏi “Campaign nào tốt?”, ta phải biết câu hỏi đó cần tách theo chiều nào (sản phẩm, nhiệm vụ, phễu hay nền tảng), so với nhóm đối chứng nào, raw data hiện tại có trường dữ liệu đó không, và nếu chưa có thì ranh giới kết luận phải dừng ở đâu." />
      </node>
      <node ID="MAP_97A037B3EC85D544" TEXT="1.2. Kết quả quan trọng nhất" FOLDED="true">
        <node ID="MAP_A6CE461EB325B79F" TEXT="Nội dung | Kết quả hiện tại | Ý nghĩa với bước sau" />
        <node ID="MAP_083D1CB67730A8F6" TEXT="Tổng Ads Cost trong preferred Campaign | Tháng 03: 50.195.692; tháng 04: 64.825.305; tháng 05: 63.518.031 VND | Có thể làm số kiểm soát tại grain Campaign × tháng" />
        <node ID="MAP_91F5743C340B4E4E" TEXT="Objective suy luận | 84 Campaign có spend; Duy xác nhận cho phép dùng làm human mapping | ETL được dùng nhưng phải giữ basis, version, người gắn và trạng thái review" />
        <node ID="MAP_3600C43CA4082C1A" TEXT="Phễu | Có nhãn TOFU/MOFU/BOFU trên file dẫn xuất | Có thể thăm dò; rule, version, grain và owner vẫn cần khóa" />
        <node ID="MAP_C9A2246BE4369E1D" TEXT="Sản phẩm | Catalog có 25 listing; Campaign name chỉ gợi ý được một số nhóm/ngành hàng | Chưa phân bổ Ads Cost xuống SP01–SP25" />
        <node ID="MAP_94150666AFC865DB" TEXT="Publisher platform | Không có trong bộ dữ liệu đã kiểm tra | Ba cặp có chiều Nền tảng chưa tính được" />
        <node ID="MAP_BEBA4430D55DDAED" TEXT="GMV business | Không có | Chưa tính được Business ROAS hoặc Ads Cost/GMV thật" />
        <node ID="MAP_54D46802B8D0E0C1" TEXT="File Objective demo tháng 04 | 64.834.557 VND, cao hơn preferred Campaign 9.252 VND | Dùng để đọc mapping; chưa dùng làm fact spend chính tháng 04" />
      </node>
      <node ID="MAP_FACABF7A6584DF80" TEXT="1.3. Phân công vai trò trong bộ tài liệu phân tích Joycat" FOLDED="true">
        <node ID="MAP_7B674D74A0FE246A" TEXT="Tài liệu | Câu hỏi tài liệu trả lời | Vai trò trong hệ thống" />
        <node ID="MAP_7627B78D6BF2CFB5" TEXT="KPI_TREE.md | Cần lượng hóa những chỉ số cấp cao nào? | Cấu trúc chỉ số mục tiêu" />
        <node ID="MAP_E369CA52DB113097" TEXT="METRIC_TREE.md | Chỉ số được tính thế nào và rẽ tới field gốc nào? | Công thức rẽ nhánh toán học" />
        <node ID="MAP_748A37E3E740DCB2" TEXT="CONG_THUC_5_METRICS_JOYCAT_v3.md | Chỉ số này có ý nghĩa gì, đọc trong bối cảnh nào và tư duy phản biện ra sao? | Phương pháp đọc, bối cảnh &amp; tư duy phân tích" />
        <node ID="MAP_5884DE555E9F21A5" TEXT="DATA_MAPPING_COVERAGE_JOYCAT.md (Tài liệu này) | Cần tách theo đầu mục nào, trường raw nào hỗ trợ và dữ liệu đáp ứng tới đâu? | Cầu nối câu hỏi sang dữ liệu, mapping &amp; coverage ETL" />
      </node>
      <node ID="MAP_670BEFCFDF026380" TEXT="1.4. Sáu cặp dataset hiện làm được tới đâu?" FOLDED="true">
        <node ID="MAP_6B57F3EDFE01B760" TEXT="Cặp | Mức hiện tại" />
        <node ID="MAP_BEB194285B02815E" TEXT="Nền tảng × Sản phẩm | Thiếu Publisher platform và Ads → sản phẩm" />
        <node ID="MAP_9FBF1FEDBF55C45D" TEXT="Nền tảng × Phễu | Thiếu Publisher platform; Phễu chưa khóa hợp đồng mapping" />
        <node ID="MAP_399405CC286B3BDC" TEXT="Nền tảng × Campaign objective | Thiếu Publisher platform; Objective human mapping đã có" />
        <node ID="MAP_F142DEC2626A1AAD" TEXT="Phễu × Sản phẩm | Thăm dò được ở cấp nhóm/ngành hàng bằng human mapping" />
        <node ID="MAP_AAB438A40AFC2E01" TEXT="Sản phẩm × Campaign objective | Thăm dò được ở cấp nhóm/ngành hàng × Objective suy luận" />
        <node ID="MAP_5A617F9C2AE65AD4" TEXT="Phễu × Campaign objective | Tính được trên file demo bằng hai human mappings; còn cần khóa Phễu và đối soát source" />
        <node ID="MAP_A42BB5C93A703213" TEXT="“Tính được” ở đây nói về cấu trúc Ads Cost. Nó không tự chứng minh hiệu quả, nguyên nhân hoặc Business ROAS." />
      </node>
      <node ID="MAP_B45BD4FC97F2B03A" TEXT="1.5. Bảng từ câu hỏi phân tích đến yêu cầu dữ liệu (4 chiều &amp; 6 cặp)" FOLDED="true">
        <node ID="MAP_51A8D4D0D3027321" TEXT="Phân loại | Câu hỏi phục vụ | Vì sao cần tách | Đầu mục &amp; mức chi tiết | Trường nguồn / Mapping liên quan | Điều kiện nối / tổng hợp cần kiểm tra | Dữ liệu hiện tại hỗ trợ tới đâu | Phần thiếu &amp; Giới hạn kết luận" />
        <node ID="MAP_155FFFA1A207D774" TEXT="Chiều 1: Nền tảng | Quảng cáo Joycat hiển thị ở đâu và từng nơi chi bao nhiêu? | Chi phí hiển thị và hành vi click trên Facebook khác Instagram, Messenger | Facebook, Instagram, Messenger, Audience Network | Cần trường Meta export: publisher_platform, platform_position | Grain phân tách theo platform; tổng spend các platform = Tổng Ads Cost | Chưa hỗ trợ trong 32 file raw | Thiếu trường platform. Không suy đoán platform từ tên Campaign hay CPAS-SHOPEE" />
        <node ID="MAP_6FA47880254656D6" TEXT="Chiều 2: Sản phẩm | Tiền quảng cáo chi cho dòng sản phẩm hay quy cách nào? | Mỗi dòng sản phẩm (Cát sắn, Cát khoáng, Vi sinh) có biên lợi nhuận và nhu cầu khác nhau | 3 cấp: Nhóm sản phẩm (NA, PFX, MNX, Vi sinh) → Listing (SP01–SP25) → SKU | Catalog snapshot 25 listing; tiền tố tên Campaign (NA, PFX, MNX, VI SINH) | 1 Ad có thể quảng cáo nhiều listing (multi-product); không nhân đôi spend khi join | Thăm dò cấp nhóm qua tên Campaign; có catalog 25 listing | Thiếu bảng mapping Ads→Item ID. Chưa phân bổ được spend xuống SP01–SP25" />
        <node ID="MAP_E5C13134DC6BAC23" TEXT="Chiều 3: Phễu | Ngân sách đang phân bổ bao nhiêu cho nhận biết, hội thoại và chuyển đổi? | Phễu giúp kiểm soát kỳ vọng: không đòi hỏi TOFU sinh đơn ngay, không để BOFU bị đói ngân sách | TOFU (độ phủ/view), MOFU (tương tác/chat), BOFU (chuyển đổi đơn), Shared | Cột Phễu trong file dẫn xuất; tên Campaign có chứa TOFU, MOFU, BOFU | Gắn đúng grain; tổng spend 3 tầng + Shared = Tổng Ads Cost | Thăm dò theo file dẫn xuất (47 MOFU, 27 TOFU, 10 BOFU) | Chưa có quy tắc khóa grain, version và owner duyệt mapping phễu" />
        <node ID="MAP_CD7746A0EBA97CE5" TEXT="Chiều 4: Objective | Meta đang được chỉ định tối ưu hóa cho hành động nào? | Kết quả đo lường (Results) mang ý nghĩa hoàn toàn khác nhau tùy mục tiêu | Engagement - Messaging, Post Engagement, Sales - Purchase, Ad Recall | Cột Objective suy luận do Duy gắn; Result indicator trong raw | Không cộng gộp Results khác indicator; giữ nguyên spend dòng không result | Đã có bản làm việc trên 84 Campaign có spend (human mapping) | Raw thiếu Campaign objective gốc. Phải ghi rõ nguồn human-curated" />
        <node ID="MAP_A99F8D636941BB63" TEXT="Cặp 1: Nền tảng × Sản phẩm | Trên từng nền tảng, tiền chi cho sản phẩm nào? | Đánh giá sản phẩm nào phù hợp bán qua kênh nào (ví dụ Instagram chuộng visual) | Cấp Platform × Cấp nhóm/listing sản phẩm | publisher_platform + Bảng mapping Ads → listing | Join bằng ID text; tổng mọi ô = Tổng Ads Cost | Chưa tính được | Thiếu cả trường platform và khóa mapping Ads → listing" />
        <node ID="MAP_1DDA62180C3CC3ED" TEXT="Cặp 2: Nền tảng × Phễu | Trên từng nền tảng, ngân sách chia cho các tầng phễu ra sao? | Kiểm tra nền tảng nào đóng vai trò kéo phễu đầu, nền tảng nào chốt đơn | Cấp Platform × Tầng phễu (TOFU/MOFU/BOFU) | publisher_platform + Bảng map_funnel | Không suy từ tổng platform và tổng phễu riêng rẽ | Chưa tính được | Thiếu trường platform; phễu chưa khóa hợp đồng mapping" />
        <node ID="MAP_A4747EAB82EAAD6E" TEXT="Cặp 3: Nền tảng × Objective | Mỗi nền tảng phục vụ mục tiêu gì chủ yếu? | Kiểm tra xem Meta có phân bổ tin nhắn sang Messenger và post engagement sang Feed không | Cấp Platform × Nhãn Objective suy luận | publisher_platform + Objective suy luận | Giữ metadata version của objective mapping | Chưa tính được | Bị chặn bởi thiếu trường platform" />
        <node ID="MAP_F28C4549A320F695" TEXT="Cặp 4: Phễu × Sản phẩm | Trong từng tầng phễu, tiền chi cho sản phẩm nào? | Xem sản phẩm nào đang được đầu tư làm nhận biết, sản phẩm nào chỉ chạy chốt đơn | Tầng phễu × Nhóm sản phẩm (NA, PFX, MNX, Vi sinh) | Cột Phễu + Tên Campaign có mã sản phẩm | Tổng các ô trong một tầng = Spend của tầng phễu đó | Thăm dò cấp nhóm sản phẩm (9 ô T3, 13 ô T4, 13 ô T5) | Chưa xuống được 25 listing; phụ thuộc human mapping trên tên Campaign" />
        <node ID="MAP_F67EB6B06862B798" TEXT="Cặp 5: Sản phẩm × Objective | Mỗi sản phẩm nhận bao nhiêu ngân sách cho từng mục tiêu? | Đánh giá chiến lược marketing của từng dòng: dòng nào đẩy mạnh chat tư vấn, dòng nào chạy sales | Nhóm sản phẩm × Nhãn Objective suy luận | Mã sản phẩm từ tên Campaign + Objective suy luận | Tổng spend các objective của một nhóm = Spend nhóm sản phẩm đó | Thăm dò cấp nhóm sản phẩm (7 ô T3, 12 ô T4, 16 ô T5) | Dừng ở cấp nhóm; chưa xác minh cho từng listing Shopee cụ thể" />
        <node ID="MAP_BC2286A5B6B09D19" TEXT="Cặp 6: Phễu × Objective | Trong từng tầng phễu, tiền đang phục vụ objective nào? | Đối soát tính hợp lý: TOFU có đúng là Post Engagement/Recall không, MOFU có đúng là Messaging không | Tầng phễu × Nhãn Objective suy luận | Cột Phễu + Cột Objective suy luận trên 84 Campaign | Tổng các ô = Tổng spend 84 Campaign có chi phí | Tính được trên file demo (3 ô T3, 4 ô T4, 6 ô T5) | Phụ thuộc hoàn toàn vào 2 cột human mapping; tháng 04 còn lệch 9.252 VND" />
      </node>
    </node>
    <node ID="MAP_BEA7E6D12999C34A" TEXT="2. Hợp đồng Context và bằng chứng" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_39A7EDED9D33BEA1" TEXT="2.1. Ba lớp context" FOLDED="true">
        <node ID="MAP_FAE7EDDC9E8F4775" TEXT="Lớp | Nội dung Joycat" />
        <node ID="MAP_9ABD96FA5C7CF1B2" TEXT="Objective Context | Xây hệ thống hỗ trợ phân tích marketing đa nguồn, bắt đầu từ Meta Ads Joycat" />
        <node ID="MAP_30F27C52279C0D3E" TEXT="Mong muốn thực tế của phase | Hoàn thiện Context và thiết kế tư duy phân tích marketing Joycat trước ETL" />
        <node ID="MAP_1D641762894269D4" TEXT="Current Operating Context | Có Meta Ads export tháng 03–05, file mapping thủ công và catalog; chưa có publisher breakdown, khóa sản phẩm đầy đủ hoặc GMV business" />
      </node>
      <node ID="MAP_67DED9E9A8B86FCD" TEXT="2.2. Bốn nhãn bằng chứng" FOLDED="true">
        <node ID="MAP_AF987F2AD853B061" TEXT="Nhãn | Cách hiểu" />
        <node ID="MAP_D89334F7BFFA8CA1" TEXT="Đã xác minh từ nguồn | File/schema/dòng dữ liệu trực tiếp hỗ trợ phát biểu" />
        <node ID="MAP_8DE98B3226176F7A" TEXT="Owner đã xác nhận | Duy, cậu Sinh hoặc owner nghiệp vụ đã chốt; vẫn khác bằng chứng dữ liệu" />
        <node ID="MAP_065A4FE341370BE1" TEXT="Suy luận | Có cơ sở hợp lý nhưng cần kiểm tra thêm" />
        <node ID="MAP_861D7DA7DC6BA8DC" TEXT="To be updated | Chưa có nguồn đủ mạnh; phải ghi điều thiếu, owner và ảnh hưởng" />
      </node>
      <node ID="MAP_CC7C5A5E4F6778D3" TEXT="2.3. Ba loại phát biểu trong tài liệu" FOLDED="true">
        <node ID="MAP_DAE17C930F7C0937" TEXT="Để không gây hiểu nhầm cho người đọc và AI kế thừa, tài liệu phân biệt rõ 3 loại phát biểu:" />
        <node ID="MAP_8B36E853A5D57C17" TEXT="Loại 1 — Công thức hoặc cấu trúc mô hình có thể thiết kế trước: Là các công thức toán học, cấu trúc 4 chiều, 6 cặp và schema bảng ETL. Các mục này có thể thiết kế hoàn chỉnh ngay cả khi chưa có dữ liệu." />
        <node ID="MAP_A9E1A114702CE9BF" TEXT="Loại 2 — Khả năng dữ liệu đã được ghi nhận trong nguồn/audit hiện có: Là các trạng thái số liệu đã qua kiểm tra trực tiếp từ 32 file raw hoặc file demo (ví dụ: tổng spend preferred Campaign, sự tồn tại của 84 Campaign có spend, 25 Item ID trong catalog Shopee)." />
        <node ID="MAP_F2E462671DEE6A0E" TEXT="Loại 3 — Khả năng chỉ được xác nhận sau khi kiểm định dữ liệu thực tế: Là các giả thuyết cần nguồn mới để mở khóa (ví dụ: chia spend theo Facebook/Instagram chỉ khả thi sau khi export được trường publisher; tính Business ROAS chỉ khả thi sau khi nhận được file đơn hàng business)." />
      </node>
      <node ID="MAP_7B7F39A1F7305D05" TEXT="2.4. Quy ước đặt tên và giới hạn phát ngôn trong báo cáo tương lai" FOLDED="true">
        <node ID="MAP_02798F51E6D2E39B" TEXT="Khi xây dựng báo cáo hoặc tài liệu phân tích về sau, bắt buộc tuân thủ quy tắc phát ngôn:" />
        <node ID="MAP_7DF459C761E15F4C" TEXT="Được phép gọi:" FOLDED="true">
          <node ID="MAP_49C940C8D05E5B53" TEXT="“Chi phí quảng cáo phân bổ theo nhóm sản phẩm suy luận (human mapping)”." />
          <node ID="MAP_158D7E06CE1760AA" TEXT="“Tỷ trọng chi phí theo tầng phễu (thăm dò theo nhãn file dẫn xuất)”." />
          <node ID="MAP_4E623820AEBDBFEA" TEXT="“Chi phí trên mỗi kết quả quảng cáo Meta (Cost per Result)”." />
        </node>
        <node ID="MAP_9ADB8B89D49AEBE8" TEXT="Tuyệt đối chưa được gọi:" FOLDED="true">
          <node ID="MAP_967C2AA9141E248C" TEXT="Không gọi chi phí nhóm sản phẩm là “Chi phí thực tế của listing Shopee SP01–SP25” hoặc “Chi phí SKU đã xác minh”." />
          <node ID="MAP_D84548DFC818D70F" TEXT="Không gọi Objective suy luận là “Cấu hình Campaign objective do Meta ghi nhận”." />
          <node ID="MAP_393C9778EC98B7E4" TEXT="Không gọi Purchases conversion value của Meta là “Doanh thu / GMV thực tế của Joycat”." />
          <node ID="MAP_264609597CD97828" TEXT="Khi thiếu GMV business: Không được phát ngôn về “ROAS thực tế của chiến dịch” hay “quảng cáo đang sinh lời bao nhiêu”." />
        </node>
      </node>
      <node ID="MAP_9CAD82530E1E24E7" TEXT="2.5. Data gate trước mọi phép so sánh" FOLDED="true">
        <node ID="MAP_480E463460E2D7CE" TEXT="Chỉ so hai case khi trả lời được:" />
        <node ID="MAP_7373373D3F7838A3" TEXT="Cùng kỳ, timezone và đơn vị tiền chưa?" />
        <node ID="MAP_2DA7A72FA6EDE59F" TEXT="Cùng grain chưa? Grain là “một dòng đại diện cho cái gì”: Campaign, Ad set hay Ad trong một kỳ." />
        <node ID="MAP_224FE939829B7AB4" TEXT="Nếu dùng Meta Results/Purchases, attribution có giống nhau không?" />
        <node ID="MAP_671F8EBC684B037E" TEXT="Results có cùng Result indicator không?" />
        <node ID="MAP_53948F6214260342" TEXT="Hai case có cùng sản phẩm, nhiệm vụ/objective, phễu và publisher cần kiểm soát không?" />
        <node ID="MAP_1FDBB40FE5FB67FA" TEXT="Nhãn là field gốc hay human mapping? Mapping version nào?" />
        <node ID="MAP_F8D803E20BF1AB88" TEXT="Nếu tính Business ROAS, GMV và Ads Cost có cùng phạm vi không?" />
        <node ID="MAP_F71682745D5400EA" TEXT="Sau join, số dòng và tổng spend có tăng hoặc mất không?" />
        <node ID="MAP_70082C83BF51EE7A" TEXT="Không đạt gate thì gắn Chỉ thăm dò hoặc Chưa so sánh được và nói rõ lý do." />
      </node>
    </node>
    <node ID="MAP_2618F9B488C2068D" TEXT="3. Kiểm soát Tổng Ads Cost" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_52D1920B8379A471" TEXT="3.1. Công thức kiểm soát" FOLDED="true">
        <node ID="MAP_0452530A8377C43D" TEXT="Tổng Ads Cost tháng&#10;= tổng Amount spent (VND) của các dòng Campaign có Campaign name trong tháng" />
        <node ID="MAP_CDF35D6ABD1FEE24" TEXT="Đường đối soát độc lập:" />
        <node ID="MAP_A889C839EA445CC2" TEXT="Tổng Amount spent ở Campaign&#10;≈ Tổng Amount spent ở Ad set&#10;≈ Tổng Amount spent ở Ad" />
        <node ID="MAP_7CAE66A1A8C831CE" TEXT="Ba tổng mô tả cùng một khoản tiền ở ba grain. Không cộng Campaign + Ad set + Ad." />
      </node>
      <node ID="MAP_1BF2D0189ED28CCD" TEXT="3.2. Kết quả từ preferred source" FOLDED="true">
        <node ID="MAP_7F8C14A1E4724958" TEXT="Tháng | Campaign có spend | Campaign total | Ad set/Ad total | Kết quả" />
        <node ID="MAP_A5A8989FF95F06E0" TEXT="2026-03 | 18 | 50.195.692 | 50.195.692 | Khớp" />
        <node ID="MAP_7D3E90F042C2AAF2" TEXT="2026-04 | 41 | 64.825.305 | 64.825.345 | Lệch 40 VND; giữ nguyên" />
        <node ID="MAP_69F0E56DAFDE27AD" TEXT="2026-05 | 25 | 63.518.031 | 63.518.031 | Khớp" />
        <node ID="MAP_29829AE5779CEC3A" TEXT="Trong preferred Campaign có bốn dòng có spend nhưng thiếu cả Results và Result indicator: tháng 04 có một, tháng 05 có ba. Các dòng này vẫn nằm trong Ads Cost." />
      </node>
      <node ID="MAP_6B5AD222372C173F" TEXT="3.3. Chênh lệch file Objective demo tháng 04" FOLDED="true">
        <node ID="MAP_C7934FCFE1650EE8" TEXT="Kiểm tra | Kết quả" />
        <node ID="MAP_9C294EE0DDE853E2" TEXT="Preferred Campaign tháng 04 | 64.825.305 VND" />
        <node ID="MAP_9D242D2F3F844FA7" TEXT="Objective demo tháng 04 | 64.834.557 VND" />
        <node ID="MAP_24AE25F6C3BDB040" TEXT="Chênh lệch | +9.252 VND" />
        <node ID="MAP_7D66AF1F8944D72A" TEXT="Chi tiết truy vết:" />
        <node ID="MAP_49FE50EB2D9020E6" TEXT="40/41 tên Campaign trong demo khớp chính xác với preferred source." />
        <node ID="MAP_E38E449DB3288952" TEXT="Trong 40 dòng khớp tên, 13 dòng có Amount Spent khác; tổng chênh lệch của các dòng này là +7.902 VND." />
        <node ID="MAP_A739EB1B21EE5336" TEXT="Demo dòng 63 có Campaign 9/4/2026 - NA - TOFU Test - 1 - Mess -, spend 5.467.562 VND; tên này không tồn tại nguyên văn trong preferred source." />
        <node ID="MAP_DBA11D8EBA716A22" TEXT="Preferred source có 9/4/2026 - NA Ver.3 - TOFU Test - NEW 1 - Mess - test Audience 2, spend 5.466.212 VND; tên này không tồn tại nguyên văn trong demo." />
        <node ID="MAP_45304A8B8BDE8AC1" TEXT="Phần chênh giữa hai dòng trên là +1.350 VND. 7.902 + 1.350 = 9.252 VND." />
        <node ID="MAP_1C0EB5C673B2ECFB" TEXT="Kết luận được phép: file demo là nguồn mapping hiện hành, nhưng preferred Campaign mới là số kiểm soát spend đang dùng. Trước ETL production cần xác nhận demo được tạo từ phiên bản export nào hoặc tái tạo mapping trên preferred source." />
      </node>
    </node>
    <node ID="MAP_A6B84D5C1B58C11B" TEXT="4. Chiều Nền tảng" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_5481713706F2976B" TEXT="4.1. Ý nghĩa và nhóm" FOLDED="true">
        <node ID="MAP_CF60B5BE5363E9E7" TEXT="Khái niệm | Nghĩa bằng lời thường | Ví dụ" />
        <node ID="MAP_A86ABEDBC3DB8E7D" TEXT="Publisher platform | Ads thực sự hiển thị ở đâu | Facebook, Instagram, Messenger, Audience Network" />
        <node ID="MAP_9A0C68C93235249E" TEXT="Destination | Bấm Ads xong khách được dẫn tới đâu | Messenger, WhatsApp, Shopee, website" />
        <node ID="MAP_0ED8CC140E10BADB" TEXT="Sales channel | Doanh nghiệp ghi nhận đơn và GMV ở đâu | Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B" />
        <node ID="MAP_A3A47B56B59A9B4D" TEXT="Một Ads có thể hiển thị trên Facebook, dẫn khách sang WhatsApp và đơn được ghi tại cửa hàng. Ba tên này không được coi là cùng một chiều." />
      </node>
      <node ID="MAP_5F99B93BC2CF2D24" TEXT="4.2. Công thức mô hình" FOLDED="true">
        <node ID="MAP_F2707450FC465DE7" TEXT="Tổng Ads Cost&#10;= Ads Cost (Facebook)&#10;+ Ads Cost (Instagram)&#10;+ Ads Cost (Messenger)&#10;+ Ads Cost (Audience Network)&#10;+ Ads Cost (WhatsApp, nếu source trả về như publisher platform)&#10;+ Ads Cost (Nền tảng khác)&#10;+ Ads Cost (Nền tảng chưa xác định)" />
      </node>
      <node ID="MAP_F700D38C1099E044" TEXT="4.3. Source binding và rule" FOLDED="true">
        <node ID="MAP_9849323582B525C7" TEXT="Thuộc tính | Quy ước" />
        <node ID="MAP_014CEDA9F3E868E1" TEXT="File hiện có | Chín preferred workbook Campaign/Ad set/Ad tháng 03–05/2026" />
        <node ID="MAP_E6EEA6DF55C8E8D1" TEXT="Sheet | Worksheet" />
        <node ID="MAP_3DDF9CC49AAD03F1" TEXT="Field cần | Publisher platform; nên lấy thêm Platform position, Impression device" />
        <node ID="MAP_7269FE5904FA5F63" TEXT="Grain mong muốn | Campaign hoặc Ad × kỳ × publisher platform × breakdown đi kèm" />
        <node ID="MAP_113041534023DCB3" TEXT="Khóa | Account ID + object ID dạng text + kỳ + publisher platform + breakdown còn lại" />
        <node ID="MAP_43EB18DAF649D0DF" TEXT="Mapping | Lấy trực tiếp từ export; không suy từ Campaign name, CPAS-SHOPEE hoặc Result indicator" />
        <node ID="MAP_CBE7CC6B0AE6A7AC" TEXT="Coverage | Chưa có field Publisher platform trong các workbook đã kiểm tra" />
      </node>
      <node ID="MAP_3CA67A3C9812CDD7" TEXT="4.4. Cách phân tích" FOLDED="true">
        <node ID="MAP_A89A11C0B8F9682B" TEXT="So platform trong cùng sản phẩm, objective/optimization, phễu, kỳ và attribution. Đọc Spend, CPM, Reach, Frequency, CTR/CPC và Result/Cost per Result đúng loại. Nếu placement hoặc device khác, chênh lệch chưa thể quy riêng cho platform." />
      </node>
    </node>
    <node ID="MAP_41A9FC6555972AC8" TEXT="5. Chiều Sản phẩm" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_70062530E99DFB78" TEXT="5.1. Ba cấp không được trộn" FOLDED="true">
        <node ID="MAP_93BCAD794D73FE63" TEXT="Cấp | Nghĩa | Dữ liệu hiện có" />
        <node ID="MAP_49D91BFC3B27DF2D" TEXT="Nhóm sản phẩm | Dòng sản phẩm lớn | Có thể suy luận một phần từ Campaign name" />
        <node ID="MAP_0294D623DDE3AF4F" TEXT="Listing | Trang bán hàng cụ thể, nhận diện bằng Shopee Item ID | Có snapshot 25 listing" />
        <node ID="MAP_EFE41FFFBED88460" TEXT="SKU/biến thể | Đơn vị bán cụ thể trong hệ thống đơn hàng | Chưa có khóa SKU business" />
      </node>
      <node ID="MAP_DC4D6490A768F70F" TEXT="5.2. Công thức mô hình" FOLDED="true">
        <node ID="MAP_7EF6715D069FC1A5" TEXT="Tổng Ads Cost&#10;= Ads Cost (SP01) + Ads Cost (SP02) + ... + Ads Cost (SP25)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Sản phẩm chưa xác định)" />
      </node>
      <node ID="MAP_ADA4B13EF869358D" TEXT="5.3. Mapping quan sát được" FOLDED="true">
        <node ID="MAP_27099E3C49A2E654" TEXT="Tín hiệu trong Campaign name | Mức sâu tối đa | Trạng thái" />
        <node ID="MAP_EBC258A67315DFA1" TEXT="VI SINH | Nhóm Vi sinh khử mùi | Suy luận; chưa chọn SP01/SP02/SP08" />
        <node ID="MAP_96DDA326EEF5FED8" TEXT="NA | Nhóm Cát Sắn Natural | Suy luận" />
        <node ID="MAP_0CBF5A85781B359F" TEXT="PFX | Nhóm Cát Mix PerformX | Suy luận" />
        <node ID="MAP_FDE8F5F639E75BDE" TEXT="MNX | Nhóm Cát Khoáng MineralX | Suy luận" />
        <node ID="MAP_DB4C6A91BC8472C3" TEXT="CÁT | Ngành hàng cát nói chung | Không đủ chọn Natural/PerformX/MineralX/PowerX/Tofuu.X" />
        <node ID="MAP_46198FFCF5D80578" TEXT="Sale, branding hoặc không có mã | Shared/Unmapped | Không ép xuống sản phẩm" />
        <node ID="MAP_057493C774B02E18" TEXT="Các rule này chưa được Duy/cậu Sinh duyệt như mapping sản phẩm chính thức. Snapshot ngày 25/08/2026 không chứng minh listing đã tồn tại hoặc được quảng cáo trong tháng 03–05/2026." />
      </node>
      <node ID="MAP_81EA16766A31E530" TEXT="5.4. Source binding và cách phân tích" FOLDED="true">
        <node ID="MAP_6E9D018C1D8BE2A3" TEXT="Nguồn catalog: JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx, sheet Danh sách sản phẩm, Item ID ở cột Item ID." />
        <node ID="MAP_736CA91C0CABA016" TEXT="Nguồn Ads: preferred Campaign có Campaign name; chưa có Product ID/Item ID/SKU." />
        <node ID="MAP_45CF8E1D76DD8990" TEXT="Grain ưu tiên cho mapping: Ad × kỳ khi creative quảng cáo sản phẩm cụ thể. Campaign chỉ dùng nếu toàn Campaign có cùng phạm vi sản phẩm." />
        <node ID="MAP_CA4E8B1A1D7DE33F" TEXT="Một Ad quảng cáo nhiều sản phẩm cần bridge. Giữ Multi-product/Shared cho tới khi có rule phân bổ được owner duyệt." />
        <node ID="MAP_68A81D2E0AC081D9" TEXT="Khi phân tích, so cùng nhóm/listing trước; sau đó kiểm soát objective, phễu, publisher, format, kỳ và attribution." />
      </node>
    </node>
    <node ID="MAP_AB64C7A6668E8F9A" TEXT="6. Chiều Phễu" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_B7578FEB3F7239C1" TEXT="6.1. Ý nghĩa" FOLDED="true">
        <node ID="MAP_F8F8661DE6060A96" TEXT="Nhãn | Nhiệm vụ phân tích | Không được mặc định" />
        <node ID="MAP_A971D2899293258D" TEXT="TOFU | Phân phối, nhận biết và tạo tín hiệu ban đầu | Mọi post engagement đều chắc chắn là TOFU; CPM phải cao/thấp" />
        <node ID="MAP_03A07D2DC0B93EB0" TEXT="MOFU | Quan tâm, click, tương tác sâu hoặc messaging | Mọi messaging result đều chắc chắn là MOFU" />
        <node ID="MAP_4D25D75A84875631" TEXT="BOFU | Hành động mua, đơn và GMV | Meta Purchase bằng đơn/GMV business" />
        <node ID="MAP_79B29499075B79E6" TEXT="Mixed/Shared | Một đối tượng phục vụ nhiều tầng | Tự chia đều spend cho ba tầng" />
        <node ID="MAP_40C6215AB9FC63B9" TEXT="Chưa phân loại | Chưa đủ căn cứ | Loại spend khỏi tổng" />
        <node ID="MAP_B7695F0BF19BB5AB" TEXT="Owner đã xác nhận ở cấp cao: TOFU hướng tới View; MOFU/BOFU hướng tới chuyển đổi. Rule gắn từng Campaign vẫn chưa khóa." />
      </node>
      <node ID="MAP_315B7997C066D090" TEXT="6.2. Công thức mô hình" FOLDED="true">
        <node ID="MAP_62933F9222D84B70" TEXT="Tổng Ads Cost&#10;= Ads Cost (TOFU)&#10;+ Ads Cost (MOFU)&#10;+ Ads Cost (BOFU)&#10;+ Ads Cost (Mixed/Shared Funnel)&#10;+ Ads Cost (Chưa phân loại phễu)" />
      </node>
      <node ID="MAP_44FE80DE45BB683C" TEXT="6.3. Source binding và rule" FOLDED="true">
        <node ID="MAP_E82A0AF36C9DF208" TEXT="File mapping hiện dùng: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx, sheet Campaign_3_tháng, cột Phễu." />
        <node ID="MAP_381B41DEC72EA4C1" TEXT="Grain hiện tại: Campaign name × tháng trong file dẫn xuất." />
        <node ID="MAP_BB7D0F2D7749C092" TEXT="Coverage quan sát: 84 Campaign có spend gồm MOFU 47, TOFU 27, BOFU 10." />
        <node ID="MAP_BFAF65EE9BDDA28C" TEXT="Trạng thái: human mapping một phần; chưa có rule, version, người xác nhận và kỳ hiệu lực đầy đủ." />
        <node ID="MAP_E693D0DC19459392" TEXT="Mapping tối thiểu cần giữ: object_level, object_id_text, funnel_stage, mapping_basis, mapping_version, confirmed_by, valid_from, valid_to, review_status." />
        <node ID="MAP_E60531D025183EDB" TEXT="Khi objective, name và vai trò thật xung đột, dùng Mixed/Shared hoặc Chưa phân loại để chờ review." />
      </node>
    </node>
    <node ID="MAP_E67F2D2CBE974D2B" TEXT="7. Chiều Campaign objective" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_DAD81FA2F77E79D4" TEXT="7.1. Bốn lớp phải tách riêng" FOLDED="true">
        <node ID="MAP_5E7990676E63E702" TEXT="Lớp | Grain chính | Nó trả lời câu hỏi nào?" />
        <node ID="MAP_1267450675309CEE" TEXT="Campaign objective gốc | Campaign | Campaign được tạo với nhóm mục tiêu nào trong Meta?" />
        <node ID="MAP_83302886D14C3278" TEXT="Optimization/Performance goal | Ad set | Meta đang tối ưu phân phối cho hành động nào?" />
        <node ID="MAP_9C830D838EBBC9F5" TEXT="Result indicator | Dòng Insights | Results của dòng đang đại diện loại kết quả nào?" />
        <node ID="MAP_6E7A8173D2DC5BBE" TEXT="Objective suy luận | Campaign × kỳ trong file hiện hành | Con người phân nhóm Campaign để ETL/phân tích khi thiếu objective gốc" />
      </node>
      <node ID="MAP_2494F8343D22CDB0" TEXT="7.2. Nhãn thực tế trong file demo" FOLDED="true">
        <node ID="MAP_76498BF2BA0604B4" TEXT="Engagement - Messaging&#10;Engagement - Post engagement&#10;Sales - Purchase&#10;Sales - Purchase [Suy luận từ tên Campaign]&#10;Awareness - Ad recall&#10;Chưa xác định" />
        <node ID="MAP_07FA528ADC15196C" TEXT="Số Campaign có spend: 49, 26, 4, 2, 1 và 2; tổng 84." />
      </node>
      <node ID="MAP_D5E5D03262B4D2A9" TEXT="7.3. Công thức mô hình" FOLDED="true">
        <node ID="MAP_01D939B9D5996066" TEXT="Tổng Ads Cost&#10;= Ads Cost (Engagement - Messaging)&#10;+ Ads Cost (Engagement - Post engagement)&#10;+ Ads Cost (Sales - Purchase)&#10;+ Ads Cost (Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Awareness - Ad recall)&#10;+ Ads Cost (Objective khác)&#10;+ Ads Cost (Objective chưa xác định)" />
      </node>
      <node ID="MAP_05798F62AACC5FC4" TEXT="7.4. Rule và quyết định của Duy" FOLDED="true">
        <node ID="MAP_DA0708FE6F0559DB" TEXT="Owner đã xác nhận — Duy, 05/09/2026: được dùng Objective suy luận làm human-curated ETL input vì raw thiếu Campaign objective. “Human-curated” nghĩa là nhãn do con người gắn và chịu trách nhiệm review, không phải field Meta tự xuất." />
        <node ID="MAP_F3481D1509BCB5FB" TEXT="Cơ sở | Objective suy luận" />
        <node ID="MAP_83927C055074CCA9" TEXT="actions:onsite_conversion.messaging_conversation_started_7d | Engagement - Messaging" />
        <node ID="MAP_A76008C84CC2A9A1" TEXT="actions:post_engagement | Engagement - Post engagement" />
        <node ID="MAP_4A7D57EB538BE226" TEXT="actions:onsite_conversion.purchase | Sales - Purchase" />
        <node ID="MAP_E2E6C54754B863A6" TEXT="estimated_ad_recallers | Awareness - Ad recall" />
        <node ID="MAP_FD0362C3F097D992" TEXT="Result trống, Campaign name có Doanh số | Sales - Purchase [Suy luận từ tên Campaign]" />
        <node ID="MAP_8E5A1CE61C563C35" TEXT="Không đủ tín hiệu | Chưa xác định" />
        <node ID="MAP_304BFED18AFA8635" TEXT="Thứ tự ưu tiên: manual override được review → Result indicator → Campaign name theo rule → Chưa xác định." />
        <node ID="MAP_CB1B221F6D20F4BB" TEXT="ETL phải giữ objective_mapped, objective_mapping_basis, objective_mapping_version, mapped_by, mapped_at, review_status. Nếu có objective Meta sau này, lưu riêng thành campaign_objective_meta để đối soát; không ghi đè lịch sử human mapping." />
      </node>
    </node>
    <node ID="MAP_8BB7B9FEE7349EC1" TEXT="8. Sáu cặp: công thức, nguồn và cách đối soát" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_E1503D43C854F223" TEXT="Mỗi cặp là một bảng giao giữa hai chiều. Các ô trong một cặp phải không trùng nhau và bao hết spend nhờ Shared/Mixed/Unmapped. Không cộng tổng của sáu cặp với nhau." />
      <node ID="MAP_67CFD8B471CCBD85" TEXT="8.1. Nền tảng × Sản phẩm" FOLDED="true">
        <node ID="MAP_6E04FBD0971C280F" TEXT="Câu hỏi: trên từng nơi hiển thị, tiền được chi cho sản phẩm nào?" />
        <node ID="MAP_EF047D6A5CC94302" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, SP01) + Ads Cost (Facebook, SP02) + ... + Ads Cost (Facebook, SP25)&#10;+ Ads Cost (Facebook, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Facebook, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Facebook, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, SP01) + Ads Cost (Instagram, SP02) + ... + Ads Cost (Instagram, SP25)&#10;+ Ads Cost (Instagram, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Instagram, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Instagram, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, SP01) + Ads Cost (Messenger, SP02) + ... + Ads Cost (Messenger, SP25)&#10;+ Ads Cost (Messenger, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Messenger, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Messenger, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, SP01) + ... + Ads Cost (Audience Network, SP25)&#10;+ Ads Cost (Audience Network, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Audience Network, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Audience Network, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, SP01) + ... + Ads Cost (WhatsApp, SP25)&#10;+ Ads Cost (WhatsApp, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (WhatsApp, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (WhatsApp, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Nền tảng khác/chưa xác định)&#10;= Ads Cost (Nền tảng khác/chưa xác định, SP01) + ... + Ads Cost (Nền tảng khác/chưa xác định, SP25)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, Nhóm sản phẩm/shared/unmapped)" />
        <node ID="MAP_3385063D224AD4B2" TEXT="Cách đọc ngược: Ads Cost (SP01) = Ads Cost (Facebook, SP01) + Ads Cost (Instagram, SP01) + ... + Ads Cost (Nền tảng chưa xác định, SP01)." />
        <node ID="MAP_DBDC0895EE2E7E7B" TEXT="Nguồn cần: publisher breakdown và Ads ID → Item ID/SKU mapping ở grain tương thích. Hiện thiếu cả hai; chưa tính được." />
      </node>
      <node ID="MAP_DC167F973F95AFAF" TEXT="8.2. Nền tảng × Phễu" FOLDED="true">
        <node ID="MAP_756044E01CDD8582" TEXT="Câu hỏi: trên từng publisher platform, tiền phục vụ tầng phễu nào?" />
        <node ID="MAP_5623322A87296F86" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, TOFU) + Ads Cost (Facebook, MOFU) + Ads Cost (Facebook, BOFU)&#10;+ Ads Cost (Facebook, Mixed/Shared Funnel) + Ads Cost (Facebook, Chưa phân loại phễu)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, TOFU) + Ads Cost (Instagram, MOFU) + Ads Cost (Instagram, BOFU)&#10;+ Ads Cost (Instagram, Mixed/Shared Funnel) + Ads Cost (Instagram, Chưa phân loại phễu)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, TOFU) + Ads Cost (Messenger, MOFU) + Ads Cost (Messenger, BOFU)&#10;+ Ads Cost (Messenger, Mixed/Shared Funnel) + Ads Cost (Messenger, Chưa phân loại phễu)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, TOFU) + Ads Cost (Audience Network, MOFU) + Ads Cost (Audience Network, BOFU)&#10;+ Ads Cost (Audience Network, Mixed/Shared Funnel) + Ads Cost (Audience Network, Chưa phân loại phễu)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, TOFU) + Ads Cost (WhatsApp, MOFU) + Ads Cost (WhatsApp, BOFU)&#10;+ Ads Cost (WhatsApp, Mixed/Shared Funnel) + Ads Cost (WhatsApp, Chưa phân loại phễu)&#10;&#10;Ads Cost (Nền tảng khác/chưa xác định)&#10;= Ads Cost (Nền tảng khác/chưa xác định, TOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, MOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, BOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, Mixed/Shared/Chưa phân loại)" />
        <node ID="MAP_C3A8402EDABA7C55" TEXT="Cách đọc ngược: Ads Cost (TOFU) = Ads Cost (Facebook, TOFU) + Ads Cost (Instagram, TOFU) + ...." />
        <node ID="MAP_DD2CACA48DEF14B1" TEXT="Nguồn cần: publisher breakdown + map_funnel; cùng ID/kỳ/grain. Hiện bị chặn bởi Publisher platform." />
      </node>
      <node ID="MAP_2FADC64B42D9216F" TEXT="8.3. Nền tảng × Campaign objective" FOLDED="true">
        <node ID="MAP_1B02D5B7D742F86B" TEXT="Câu hỏi: mỗi publisher platform chi bao nhiêu cho từng nhóm objective?" />
        <node ID="MAP_220523A80749C4D0" TEXT="Viết riêng từng nền tảng để ETL không phải suy đoán “P” là gì:" />
        <node ID="MAP_A1B9E7D280E9B0A2" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, Engagement - Messaging)&#10;+ Ads Cost (Facebook, Engagement - Post engagement)&#10;+ Ads Cost (Facebook, Sales - Purchase)&#10;+ Ads Cost (Facebook, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Facebook, Awareness - Ad recall)&#10;+ Ads Cost (Facebook, Objective khác)&#10;+ Ads Cost (Facebook, Objective chưa xác định)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, Engagement - Messaging)&#10;+ Ads Cost (Instagram, Engagement - Post engagement)&#10;+ Ads Cost (Instagram, Sales - Purchase)&#10;+ Ads Cost (Instagram, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Instagram, Awareness - Ad recall)&#10;+ Ads Cost (Instagram, Objective khác)&#10;+ Ads Cost (Instagram, Objective chưa xác định)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, Engagement - Messaging)&#10;+ Ads Cost (Messenger, Engagement - Post engagement)&#10;+ Ads Cost (Messenger, Sales - Purchase)&#10;+ Ads Cost (Messenger, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Messenger, Awareness - Ad recall)&#10;+ Ads Cost (Messenger, Objective khác)&#10;+ Ads Cost (Messenger, Objective chưa xác định)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, Engagement - Messaging)&#10;+ Ads Cost (Audience Network, Engagement - Post engagement)&#10;+ Ads Cost (Audience Network, Sales - Purchase)&#10;+ Ads Cost (Audience Network, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Audience Network, Awareness - Ad recall)&#10;+ Ads Cost (Audience Network, Objective khác)&#10;+ Ads Cost (Audience Network, Objective chưa xác định)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Messaging)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Post engagement)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Awareness - Ad recall)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Objective khác)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Objective chưa xác định)&#10;&#10;Ads Cost (Nền tảng khác)&#10;= Ads Cost (Nền tảng khác, Engagement - Messaging)&#10;+ Ads Cost (Nền tảng khác, Engagement - Post engagement)&#10;+ Ads Cost (Nền tảng khác, Sales - Purchase)&#10;+ Ads Cost (Nền tảng khác, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nền tảng khác, Awareness - Ad recall)&#10;+ Ads Cost (Nền tảng khác, Objective khác)&#10;+ Ads Cost (Nền tảng khác, Objective chưa xác định)&#10;&#10;Ads Cost (Nền tảng chưa xác định)&#10;= Ads Cost (Nền tảng chưa xác định, Engagement - Messaging)&#10;+ Ads Cost (Nền tảng chưa xác định, Engagement - Post engagement)&#10;+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase)&#10;+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nền tảng chưa xác định, Awareness - Ad recall)&#10;+ Ads Cost (Nền tảng chưa xác định, Objective khác)&#10;+ Ads Cost (Nền tảng chưa xác định, Objective chưa xác định)" />
        <node ID="MAP_FC05F907A8A89A52" TEXT="Các block trên là công thức mô hình. Chỉ điền Ads Cost thật khi source trả về đúng publisher_platform; riêng WhatsApp phải được xác nhận là publisher, không lấy destination thay thế." />
        <node ID="MAP_3F3355FDA0DDD71D" TEXT="Cách đọc ngược: cộng một objective qua toàn bộ publisher platform. Nguồn cần: publisher breakdown + Objective human mapping. Objective đã có; publisher vẫn thiếu." />
      </node>
      <node ID="MAP_F5F8143B86F20487" TEXT="8.4. Phễu × Sản phẩm" FOLDED="true">
        <node ID="MAP_5C4FC91EE9A47E58" TEXT="Câu hỏi: trong mỗi tầng phễu, tiền được chi cho sản phẩm nào?" />
        <node ID="MAP_252ED24D99339A81" TEXT="Ads Cost (TOFU)&#10;= Ads Cost (TOFU, SP01) + Ads Cost (TOFU, SP02) + ... + Ads Cost (TOFU, SP25)&#10;+ Ads Cost (TOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (TOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (TOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (MOFU)&#10;= Ads Cost (MOFU, SP01) + Ads Cost (MOFU, SP02) + ... + Ads Cost (MOFU, SP25)&#10;+ Ads Cost (MOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (MOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (MOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (BOFU)&#10;= Ads Cost (BOFU, SP01) + Ads Cost (BOFU, SP02) + ... + Ads Cost (BOFU, SP25)&#10;+ Ads Cost (BOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (BOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (BOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Mixed/Shared Funnel)&#10;= Ads Cost (Mixed/Shared Funnel, SP01) + ... + Ads Cost (Mixed/Shared Funnel, SP25)&#10;+ Ads Cost (Mixed/Shared Funnel, Nhóm sản phẩm/shared/unmapped)&#10;&#10;Ads Cost (Chưa phân loại phễu)&#10;= Ads Cost (Chưa phân loại phễu, SP01) + ... + Ads Cost (Chưa phân loại phễu, SP25)&#10;+ Ads Cost (Chưa phân loại phễu, Nhóm sản phẩm/shared/unmapped)" />
        <node ID="MAP_2645CFFDC02308AB" TEXT="Nguồn hiện tại cho phép thăm dò ở cấp nhóm/ngành hàng vì Phễu và Campaign name nằm cùng dòng. Chưa có bằng chứng cho SP01–SP25." />
      </node>
      <node ID="MAP_8A41C423CB52C011" TEXT="8.5. Sản phẩm × Campaign objective" FOLDED="true">
        <node ID="MAP_0846365A94649AD1" TEXT="Câu hỏi: mỗi sản phẩm/nhóm sản phẩm đang nhận spend cho nhiệm vụ nào?" />
        <node ID="MAP_6B3038F4C3433DB4" TEXT="Viết đủ 25 listing và ba bucket ngoại lệ để mô hình không làm rơi spend:" />
        <node ID="MAP_1354698B2F4F74BE" TEXT="Ads Cost (SP01)&#10;= Ads Cost (SP01, Engagement - Messaging)&#10;+ Ads Cost (SP01, Engagement - Post engagement)&#10;+ Ads Cost (SP01, Sales - Purchase)&#10;+ Ads Cost (SP01, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP01, Awareness - Ad recall)&#10;+ Ads Cost (SP01, Objective khác)&#10;+ Ads Cost (SP01, Objective chưa xác định)&#10;&#10;Ads Cost (SP02)&#10;= Ads Cost (SP02, Engagement - Messaging)&#10;+ Ads Cost (SP02, Engagement - Post engagement)&#10;+ Ads Cost (SP02, Sales - Purchase)&#10;+ Ads Cost (SP02, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP02, Awareness - Ad recall)&#10;+ Ads Cost (SP02, Objective khác)&#10;+ Ads Cost (SP02, Objective chưa xác định)&#10;&#10;Ads Cost (SP03)&#10;= Ads Cost (SP03, Engagement - Messaging)&#10;+ Ads Cost (SP03, Engagement - Post engagement)&#10;+ Ads Cost (SP03, Sales - Purchase)&#10;+ Ads Cost (SP03, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP03, Awareness - Ad recall)&#10;+ Ads Cost (SP03, Objective khác)&#10;+ Ads Cost (SP03, Objective chưa xác định)&#10;&#10;Ads Cost (SP04)&#10;= Ads Cost (SP04, Engagement - Messaging)&#10;+ Ads Cost (SP04, Engagement - Post engagement)&#10;+ Ads Cost (SP04, Sales - Purchase)&#10;+ Ads Cost (SP04, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP04, Awareness - Ad recall)&#10;+ Ads Cost (SP04, Objective khác)&#10;+ Ads Cost (SP04, Objective chưa xác định)&#10;&#10;Ads Cost (SP05)&#10;= Ads Cost (SP05, Engagement - Messaging)&#10;+ Ads Cost (SP05, Engagement - Post engagement)&#10;+ Ads Cost (SP05, Sales - Purchase)&#10;+ Ads Cost (SP05, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP05, Awareness - Ad recall)&#10;+ Ads Cost (SP05, Objective khác)&#10;+ Ads Cost (SP05, Objective chưa xác định)&#10;&#10;Ads Cost (SP06)&#10;= Ads Cost (SP06, Engagement - Messaging)&#10;+ Ads Cost (SP06, Engagement - Post engagement)&#10;+ Ads Cost (SP06, Sales - Purchase)&#10;+ Ads Cost (SP06, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP06, Awareness - Ad recall)&#10;+ Ads Cost (SP06, Objective khác)&#10;+ Ads Cost (SP06, Objective chưa xác định)&#10;&#10;Ads Cost (SP07)&#10;= Ads Cost (SP07, Engagement - Messaging)&#10;+ Ads Cost (SP07, Engagement - Post engagement)&#10;+ Ads Cost (SP07, Sales - Purchase)&#10;+ Ads Cost (SP07, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP07, Awareness - Ad recall)&#10;+ Ads Cost (SP07, Objective khác)&#10;+ Ads Cost (SP07, Objective chưa xác định)&#10;&#10;Ads Cost (SP08)&#10;= Ads Cost (SP08, Engagement - Messaging)&#10;+ Ads Cost (SP08, Engagement - Post engagement)&#10;+ Ads Cost (SP08, Sales - Purchase)&#10;+ Ads Cost (SP08, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP08, Awareness - Ad recall)&#10;+ Ads Cost (SP08, Objective khác)&#10;+ Ads Cost (SP08, Objective chưa xác định)&#10;&#10;Ads Cost (SP09)&#10;= Ads Cost (SP09, Engagement - Messaging)&#10;+ Ads Cost (SP09, Engagement - Post engagement)&#10;+ Ads Cost (SP09, Sales - Purchase)&#10;+ Ads Cost (SP09, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP09, Awareness - Ad recall)&#10;+ Ads Cost (SP09, Objective khác)&#10;+ Ads Cost (SP09, Objective chưa xác định)&#10;&#10;Ads Cost (SP10)&#10;= Ads Cost (SP10, Engagement - Messaging)&#10;+ Ads Cost (SP10, Engagement - Post engagement)&#10;+ Ads Cost (SP10, Sales - Purchase)&#10;+ Ads Cost (SP10, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP10, Awareness - Ad recall)&#10;+ Ads Cost (SP10, Objective khác)&#10;+ Ads Cost (SP10, Objective chưa xác định)&#10;&#10;Ads Cost (SP11)&#10;= Ads Cost (SP11, Engagement - Messaging)&#10;+ Ads Cost (SP11, Engagement - Post engagement)&#10;+ Ads Cost (SP11, Sales - Purchase)&#10;+ Ads Cost (SP11, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP11, Awareness - Ad recall)&#10;+ Ads Cost (SP11, Objective khác)&#10;+ Ads Cost (SP11, Objective chưa xác định)&#10;&#10;Ads Cost (SP12)&#10;= Ads Cost (SP12, Engagement - Messaging)&#10;+ Ads Cost (SP12, Engagement - Post engagement)&#10;+ Ads Cost (SP12, Sales - Purchase)&#10;+ Ads Cost (SP12, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP12, Awareness - Ad recall)&#10;+ Ads Cost (SP12, Objective khác)&#10;+ Ads Cost (SP12, Objective chưa xác định)&#10;&#10;Ads Cost (SP13)&#10;= Ads Cost (SP13, Engagement - Messaging)&#10;+ Ads Cost (SP13, Engagement - Post engagement)&#10;+ Ads Cost (SP13, Sales - Purchase)&#10;+ Ads Cost (SP13, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP13, Awareness - Ad recall)&#10;+ Ads Cost (SP13, Objective khác)&#10;+ Ads Cost (SP13, Objective chưa xác định)&#10;&#10;Ads Cost (SP14)&#10;= Ads Cost (SP14, Engagement - Messaging)&#10;+ Ads Cost (SP14, Engagement - Post engagement)&#10;+ Ads Cost (SP14, Sales - Purchase)&#10;+ Ads Cost (SP14, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP14, Awareness - Ad recall)&#10;+ Ads Cost (SP14, Objective khác)&#10;+ Ads Cost (SP14, Objective chưa xác định)&#10;&#10;Ads Cost (SP15)&#10;= Ads Cost (SP15, Engagement - Messaging)&#10;+ Ads Cost (SP15, Engagement - Post engagement)&#10;+ Ads Cost (SP15, Sales - Purchase)&#10;+ Ads Cost (SP15, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP15, Awareness - Ad recall)&#10;+ Ads Cost (SP15, Objective khác)&#10;+ Ads Cost (SP15, Objective chưa xác định)&#10;&#10;Ads Cost (SP16)&#10;= Ads Cost (SP16, Engagement - Messaging)&#10;+ Ads Cost (SP16, Engagement - Post engagement)&#10;+ Ads Cost (SP16, Sales - Purchase)&#10;+ Ads Cost (SP16, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP16, Awareness - Ad recall)&#10;+ Ads Cost (SP16, Objective khác)&#10;+ Ads Cost (SP16, Objective chưa xác định)&#10;&#10;Ads Cost (SP17)&#10;= Ads Cost (SP17, Engagement - Messaging)&#10;+ Ads Cost (SP17, Engagement - Post engagement)&#10;+ Ads Cost (SP17, Sales - Purchase)&#10;+ Ads Cost (SP17, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP17, Awareness - Ad recall)&#10;+ Ads Cost (SP17, Objective khác)&#10;+ Ads Cost (SP17, Objective chưa xác định)&#10;&#10;Ads Cost (SP18)&#10;= Ads Cost (SP18, Engagement - Messaging)&#10;+ Ads Cost (SP18, Engagement - Post engagement)&#10;+ Ads Cost (SP18, Sales - Purchase)&#10;+ Ads Cost (SP18, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP18, Awareness - Ad recall)&#10;+ Ads Cost (SP18, Objective khác)&#10;+ Ads Cost (SP18, Objective chưa xác định)&#10;&#10;Ads Cost (SP19)&#10;= Ads Cost (SP19, Engagement - Messaging)&#10;+ Ads Cost (SP19, Engagement - Post engagement)&#10;+ Ads Cost (SP19, Sales - Purchase)&#10;+ Ads Cost (SP19, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP19, Awareness - Ad recall)&#10;+ Ads Cost (SP19, Objective khác)&#10;+ Ads Cost (SP19, Objective chưa xác định)&#10;&#10;Ads Cost (SP20)&#10;= Ads Cost (SP20, Engagement - Messaging)&#10;+ Ads Cost (SP20, Engagement - Post engagement)&#10;+ Ads Cost (SP20, Sales - Purchase)&#10;+ Ads Cost (SP20, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP20, Awareness - Ad recall)&#10;+ Ads Cost (SP20, Objective khác)&#10;+ Ads Cost (SP20, Objective chưa xác định)&#10;&#10;Ads Cost (SP21)&#10;= Ads Cost (SP21, Engagement - Messaging)&#10;+ Ads Cost (SP21, Engagement - Post engagement)&#10;+ Ads Cost (SP21, Sales - Purchase)&#10;+ Ads Cost (SP21, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP21, Awareness - Ad recall)&#10;+ Ads Cost (SP21, Objective khác)&#10;+ Ads Cost (SP21, Objective chưa xác định)&#10;&#10;Ads Cost (SP22)&#10;= Ads Cost (SP22, Engagement - Messaging)&#10;+ Ads Cost (SP22, Engagement - Post engagement)&#10;+ Ads Cost (SP22, Sales - Purchase)&#10;+ Ads Cost (SP22, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP22, Awareness - Ad recall)&#10;+ Ads Cost (SP22, Objective khác)&#10;+ Ads Cost (SP22, Objective chưa xác định)&#10;&#10;Ads Cost (SP23)&#10;= Ads Cost (SP23, Engagement - Messaging)&#10;+ Ads Cost (SP23, Engagement - Post engagement)&#10;+ Ads Cost (SP23, Sales - Purchase)&#10;+ Ads Cost (SP23, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP23, Awareness - Ad recall)&#10;+ Ads Cost (SP23, Objective khác)&#10;+ Ads Cost (SP23, Objective chưa xác định)&#10;&#10;Ads Cost (SP24)&#10;= Ads Cost (SP24, Engagement - Messaging)&#10;+ Ads Cost (SP24, Engagement - Post engagement)&#10;+ Ads Cost (SP24, Sales - Purchase)&#10;+ Ads Cost (SP24, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP24, Awareness - Ad recall)&#10;+ Ads Cost (SP24, Objective khác)&#10;+ Ads Cost (SP24, Objective chưa xác định)&#10;&#10;Ads Cost (SP25)&#10;= Ads Cost (SP25, Engagement - Messaging)&#10;+ Ads Cost (SP25, Engagement - Post engagement)&#10;+ Ads Cost (SP25, Sales - Purchase)&#10;+ Ads Cost (SP25, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP25, Awareness - Ad recall)&#10;+ Ads Cost (SP25, Objective khác)&#10;+ Ads Cost (SP25, Objective chưa xác định)&#10;&#10;Ads Cost (Chỉ xác định được nhóm sản phẩm)&#10;= Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Messaging)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Post engagement)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Awareness - Ad recall)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective khác)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective chưa xác định)&#10;&#10;Ads Cost (Nhiều sản phẩm/branding/shared)&#10;= Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Messaging)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Post engagement)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Awareness - Ad recall)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective khác)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective chưa xác định)&#10;&#10;Ads Cost (Sản phẩm chưa xác định)&#10;= Ads Cost (Sản phẩm chưa xác định, Engagement - Messaging)&#10;+ Ads Cost (Sản phẩm chưa xác định, Engagement - Post engagement)&#10;+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase)&#10;+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Sản phẩm chưa xác định, Awareness - Ad recall)&#10;+ Ads Cost (Sản phẩm chưa xác định, Objective khác)&#10;+ Ads Cost (Sản phẩm chưa xác định, Objective chưa xác định)" />
        <node ID="MAP_1CCA59701AD2D42B" TEXT="Đây là ma trận mô hình. Dataset hiện chưa có khóa Ads → listing nên chưa được điền spend vào SP01–SP25; chỉ có thể thăm dò ở cấp nhóm/ngành hàng theo quy tắc suy luận được ghi riêng." />
        <node ID="MAP_E63C7586089D4C89" TEXT="Cách đọc ngược: mỗi Objective bằng tổng các ô của SP01–SP25 và các bucket ngoại lệ. Hiện mới thăm dò được nhóm/ngành hàng × Objective suy luận." />
      </node>
      <node ID="MAP_1BE1CCD81F15F9B8" TEXT="8.6. Phễu × Campaign objective" FOLDED="true">
        <node ID="MAP_3C89A2D05C668BBC" TEXT="Câu hỏi: trong từng tầng phễu, tiền đang phục vụ nhóm objective nào?" />
        <node ID="MAP_4AFA500A10D72247" TEXT="Ads Cost (TOFU)&#10;= Ads Cost (TOFU, Engagement - Messaging)&#10;+ Ads Cost (TOFU, Engagement - Post engagement)&#10;+ Ads Cost (TOFU, Sales - Purchase)&#10;+ Ads Cost (TOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (TOFU, Awareness - Ad recall)&#10;+ Ads Cost (TOFU, Objective khác)&#10;+ Ads Cost (TOFU, Objective chưa xác định)&#10;&#10;Ads Cost (MOFU)&#10;= Ads Cost (MOFU, Engagement - Messaging)&#10;+ Ads Cost (MOFU, Engagement - Post engagement)&#10;+ Ads Cost (MOFU, Sales - Purchase)&#10;+ Ads Cost (MOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (MOFU, Awareness - Ad recall)&#10;+ Ads Cost (MOFU, Objective khác)&#10;+ Ads Cost (MOFU, Objective chưa xác định)&#10;&#10;Ads Cost (BOFU)&#10;= Ads Cost (BOFU, Engagement - Messaging)&#10;+ Ads Cost (BOFU, Engagement - Post engagement)&#10;+ Ads Cost (BOFU, Sales - Purchase)&#10;+ Ads Cost (BOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (BOFU, Awareness - Ad recall)&#10;+ Ads Cost (BOFU, Objective khác)&#10;+ Ads Cost (BOFU, Objective chưa xác định)&#10;&#10;Ads Cost (Mixed/Shared Funnel)&#10;= tổng các Ads Cost (Mixed/Shared Funnel, từng Objective và Objective chưa xác định)&#10;&#10;Ads Cost (Chưa phân loại phễu)&#10;= tổng các Ads Cost (Chưa phân loại phễu, từng Objective và Objective chưa xác định)" />
        <node ID="MAP_E5B6438721AD8CAC" TEXT="Hai chiều đang cùng nằm trong file demo nên có thể tạo bảng thăm dò. Objective được Duy cho phép dùng; Phễu còn cần khóa hợp đồng." />
      </node>
      <node ID="MAP_01934773B7B07E28" TEXT="8.7. Kiểm soát chung của sáu cặp" FOLDED="true">
        <node ID="MAP_3314A34EABBB0092" TEXT="Với mỗi cặp và từng tháng:" />
        <node ID="MAP_FCB27E62676B8BAB" TEXT="Tổng số dòng nguồn = tổng số dòng ở mọi ô của cặp&#10;Tổng Amount Spent nguồn = tổng Ads Cost ở mọi ô của cặp" />
        <node ID="MAP_D9A9953AACA1F853" TEXT="Nếu một dòng nối nhiều sản phẩm, phép join có thể nhân spend. Phải giữ Shared hoặc dùng allocation rule có owner duyệt; tổng sau phân bổ vẫn phải quay về tổng trước phân bổ." />
      </node>
    </node>
    <node ID="MAP_B1DBBAB5BE718B4D" TEXT="9. Coverage từng tổ hợp đã kiểm tra" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_97256A8723DD5BB9" TEXT="Bảng chi tiết 279 dòng nằm tại 02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv. Bảng lưu kỳ, hai giá trị chiều, cấp sản phẩm, số dòng, Ads Cost, source row, mapping, trạng thái, lý do và bước xử lý." />
      <node ID="MAP_166FCE9C1D2FCD24" TEXT="9.1. Ba cặp có Nền tảng" FOLDED="true">
        <node ID="MAP_9236CB6D4BCB3F99" TEXT="Mỗi tháng được ghi Thiếu nguồn/thiếu chiều. Không tạo ô Facebook/Instagram/WhatsApp có spend vì source không có Publisher platform." />
      </node>
      <node ID="MAP_27D84C22D10DEE2F" TEXT="9.2. Ba cặp có thể thăm dò bằng mapping" FOLDED="true">
        <node ID="MAP_4AA9B0962C89383D" TEXT="Cặp | 2026-03 | 2026-04 | 2026-05 | Đối soát nội bộ với demo" />
        <node ID="MAP_FADACE3C4E28081D" TEXT="Phễu × Sản phẩm | 9 ô quan sát | 13 ô | 13 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="MAP_FAAF804C3B173DA3" TEXT="Sản phẩm × Objective | 7 ô | 12 ô | 16 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="MAP_F3EE744FCB2676EB" TEXT="Phễu × Objective | 3 ô | 4 ô | 6 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="MAP_1E07B87A7094E45C" TEXT="“Ô quan sát” nghĩa là có ít nhất một Campaign được mapping vào tổ hợp. Ô không có dòng được ghi Chưa quan sát trong phạm vi đã kiểm tra và để trống Ads Cost; không đổi thành 0." />
      </node>
      <node ID="MAP_76BB9132EC58EDE8" TEXT="9.3. Trạng thái coverage dùng cho ETL/report" FOLDED="true">
        <node ID="MAP_1C6BC9F5354F8EF2" TEXT="Trạng thái | Khi dùng" />
        <node ID="MAP_B102E9B562402790" TEXT="Có dữ liệu và tính được | Hai chiều là source trực tiếp và join đã đối soát" />
        <node ID="MAP_312FA52A4F476C6B" TEXT="Tính được bằng human mapping | Có rule/basis truy vết và owner cho phép dùng" />
        <node ID="MAP_633B8230A7054B13" TEXT="Chỉ tính được một phần | Ví dụ chỉ xuống nhóm sản phẩm, chưa xuống listing/SKU" />
        <node ID="MAP_69C95B7DA7E45062" TEXT="Chưa map | Có dòng nhưng thiếu nhãn" />
        <node ID="MAP_F16226587DD598A6" TEXT="Thiếu nguồn/thiếu chiều | Không có field cần thiết như Publisher platform" />
        <node ID="MAP_7BBC44431B4EA111" TEXT="Không nối được | Có hai nguồn nhưng thiếu khóa/grain tương thích" />
        <node ID="MAP_871864DF2FD0202A" TEXT="Chưa quan sát tổ hợp | Trong phạm vi đã kiểm tra không có dòng; Ads Cost để trống" />
        <node ID="MAP_33434773A786170D" TEXT="Bằng 0 được nguồn xác nhận | Chỉ dùng khi source bao phủ cả dòng zero và chứng minh giá trị 0" />
      </node>
    </node>
    <node ID="MAP_3E89C563DBA22A1F" TEXT="10. Đường phân tích các nhóm metric" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_72A0AEA7D7A0AA39" TEXT="CPM chỉ là một mắt xích. Mỗi nhóm dưới đây phải được đọc theo cùng nguyên tắc: xác định case → chọn nhóm so sánh tương đồng → tính lại từ raw metric → xem nhiều chiều → drill-down → kiểm chứng giả thuyết." />
      <node ID="MAP_3C450A2433FA84F1" TEXT="10.1. Phân phối: Spend, Impressions, Reach, Frequency, CPM" FOLDED="true">
        <node ID="MAP_3F5A750C3C115B10" TEXT="CPM = Ads Cost / Impressions × 1.000&#10;Ads Cost = Impressions × CPM / 1.000&#10;Frequency = Impressions / Reach&#10;Ads Cost = Reach × Frequency × CPM / 1.000" />
        <node ID="MAP_1C64AB1FC14CCB70" TEXT="Câu hỏi: chi phí khác do giá mua hiển thị, số người tiếp cận hay số lần lặp lại?" />
        <node ID="MAP_5AAE26BC78125CC6" TEXT="So sánh: cùng sản phẩm, objective/optimization, phễu, publisher/placement, format, kỳ và attribution." />
        <node ID="MAP_34B0F7EDFA94977E" TEXT="Đọc cùng: Spend, Impressions, Reach, Frequency, CPM; thêm CTR/CPC và đúng Result/CPR để biết phân phối có tạo hành động liên quan không." />
        <node ID="MAP_2D7FFBEF00EBC98A" TEXT="Giả thuyết: platform/placement, creative/format, thời gian, cấu hình tối ưu hoặc cơ cấu Campaign khác nhau." />
        <node ID="MAP_A5BE2C989CE02383" TEXT="Bằng chứng hỗ trợ: chênh lệch vẫn còn khi các biến so sánh chính tương đồng; drill-down chỉ ra Ad set/Ad cụ thể." />
        <node ID="MAP_053C27CD778F4C34" TEXT="Bằng chứng phản bác: hai case khác sản phẩm, objective, phễu hoặc publisher; khi đó CPM không được so như cùng nhiệm vụ." />
        <node ID="MAP_D706EBD4C5D0616D" TEXT="Kết luận được phép: mô tả chênh lệch và nơi phát sinh. Chưa kết luận CPM cao/thấp là tốt/xấu hoặc làm ROAS thay đổi nếu chưa có case và GMV cùng phạm vi." />
      </node>
      <node ID="MAP_C938864830C93FF2" TEXT="10.2. Click: Clicks, Link Clicks, CTR và CPC" FOLDED="true">
        <node ID="MAP_7C592D3ADF5DA481" TEXT="CTR (all, dạng thập phân) = Clicks (all) / Impressions&#10;CTR (link, dạng thập phân) = Link Clicks / Impressions&#10;CPC (all) = Ads Cost / Clicks (all)&#10;CPC (link) = Ads Cost / Link Clicks&#10;Ads Cost = Clicks (all) × CPC (all)&#10;Ads Cost = Link Clicks × CPC (link)&#10;CPM = CTR (all, dạng thập phân) × CPC (all) × 1.000&#10;CPM = CTR (link, dạng thập phân) × CPC (link) × 1.000" />
        <node ID="MAP_5F2000BB3EC19D8E" TEXT="Nếu CTR trong report hiển thị 2%, khi thế vào công thức dùng 0,02, không dùng 2." />
        <node ID="MAP_455488159E7D8BCC" TEXT="Câu hỏi: Ads tạo nhiều click vì hiển thị nhiều, nội dung có sức hút hay loại click đang được đo khác nhau?" />
        <node ID="MAP_FE7B92E511990F9C" TEXT="So sánh: cùng định nghĩa click (all, link, outbound), sản phẩm, objective, phễu, publisher, format và kỳ." />
        <node ID="MAP_4CC86D3ABF600723" TEXT="Đọc cùng: Impressions, CPM, Clicks, Link Clicks, CTR, CPC và landing result nếu có." />
        <node ID="MAP_B03B7CE779D85E82" TEXT="Giả thuyết: creative/offer, placement, destination hoặc tracking khác." />
        <node ID="MAP_5EE304CB223CAD6D" TEXT="Bằng chứng phản bác: CTR all tăng do tương tác không dẫn tới destination; link click không đồng nghĩa landing page load hoặc purchase." />
        <node ID="MAP_D2DD855A7B0D1D5C" TEXT="Dataset hiện tại: preferred files chưa có Clicks/Link Clicks/CTR/CPC; đường này đang chờ export bổ sung." />
      </node>
      <node ID="MAP_A053F65C85B3052A" TEXT="10.3. Engagement và video" FOLDED="true">
        <node ID="MAP_7AB38477CD5649CE" TEXT="Ads Cost của một loại kết quả = Results cùng loại × Cost per Result cùng loại&#10;Cost per Post Engagement = Ads Cost / Post Engagements&#10;Ads Cost của nhóm Post Engagement = Post Engagements × Cost per Post Engagement&#10;&#10;Video completion rate ở mốc k&#10;= Video plays đạt mốc k / Video starts hoặc mẫu số được Meta định nghĩa cho field đó" />
        <node ID="MAP_ED03E971B7088199" TEXT="Câu hỏi: creative nào tạo đúng loại tương tác hoặc mức xem cần cho nhiệm vụ của tầng phễu?" />
        <node ID="MAP_E084C26BE8329284" TEXT="So sánh: cùng format/video length, sản phẩm, objective, publisher/placement và kỳ." />
        <node ID="MAP_1DB5C22A0D27C02F" TEXT="Đọc cùng: Spend, Impressions, Reach, CPM, Post Engagements/CPR, video plays và milestones khi có." />
        <node ID="MAP_4AD574F86B77D4A1" TEXT="Giới hạn: Results = post_engagement chỉ cộng khi Result indicator giống nhau. Bộ preferred chưa có các mốc video chi tiết." />
        <node ID="MAP_7D28BFF60A2CBB95" TEXT="Không biến nhiều engagement/view thành kết luận người đó đã nhắn hoặc mua nếu thiếu khóa hành trình." />
      </node>
      <node ID="MAP_F2ACD6F751C0A23B" TEXT="10.4. Messaging" FOLDED="true">
        <node ID="MAP_6E9A4661B52B0C2E" TEXT="Cost per Messaging Conversation&#10;= Ads Cost / Messaging Conversations Started&#10;&#10;Cost per New Messaging Contact&#10;= Ads Cost / New Messaging Contacts&#10;&#10;Tỷ số New Contact trên Conversation&#10;= New Messaging Contacts / Messaging Conversations Started" />
        <node ID="MAP_BF4E8F1A15431D24" TEXT="Câu hỏi: spend tạo được bao nhiêu cuộc hội thoại, bao nhiêu liên hệ mới và chất lượng hội thoại có phù hợp không?" />
        <node ID="MAP_1363348D0ABB94FF" TEXT="So sánh: cùng product scope, Engagement - Messaging, phễu, publisher/destination, kỳ và attribution." />
        <node ID="MAP_BA252C92F0D7942E" TEXT="Đọc cùng: Spend, CPM, CTR/CPC nếu có, Messaging Conversations Started, New Messaging Contacts và hai cost metric." />
        <node ID="MAP_7BE42C9DDA8EB4DB" TEXT="Giả thuyết: phân phối, nội dung, lời kêu gọi, destination hoặc cách đo conversation khác." />
        <node ID="MAP_C2A663711C3886F5" TEXT="Bằng chứng phản bác: conversation rẻ nhưng tỷ lệ liên hệ mới thấp, chất lượng lead thấp hoặc không nối được đơn business." />
        <node ID="MAP_9AC505AF973B0D7D" TEXT="New Contacts / Conversations là tỷ số tổng hợp. Chỉ gọi là conversion của cùng hành trình khi định nghĩa và khóa theo dõi hỗ trợ." />
      </node>
      <node ID="MAP_8D0AC311E3656B53" TEXT="10.5. Purchase, Orders và business outcome" FOLDED="true">
        <node ID="MAP_DAC1D73E49BCED60" TEXT="Cost per Meta Purchase = Ads Cost / Meta-attributed Purchases&#10;Cost per Order Created = Ads Cost / Orders Created do Meta ghi nhận&#10;Cost per Order Dispatched = Ads Cost / Orders Dispatched do Meta ghi nhận&#10;&#10;Business ROAS = GMV business / Ads Cost cùng phạm vi&#10;Ads Cost / GMV = Ads Cost / GMV business × 100%" />
        <node ID="MAP_AFD53255CF64CB95" TEXT="Câu hỏi: event cuối phễu Meta có khớp đơn, trạng thái giao và GMV do doanh nghiệp ghi nhận không?" />
        <node ID="MAP_53DA24B36B2E4609" TEXT="So sánh: cùng sales channel, sản phẩm/SKU, kỳ, attribution, rule hoàn/hủy, voucher và shipping." />
        <node ID="MAP_73E13EFFF090D23D" TEXT="Đọc cùng: Meta Purchase/Orders, cost tương ứng, đơn business, đơn hoàn/hủy, GMV và AOV nếu định nghĩa đã khóa." />
        <node ID="MAP_232AAA9FD8120025" TEXT="Giả thuyết: tracking, chất lượng lead, khả năng chốt, giá/ưu đãi, tồn kho hoặc vận hành đơn." />
        <node ID="MAP_8B986971366EDA9D" TEXT="Bằng chứng phản bác: Meta Purchase/value khác dữ liệu order/GMV business hoặc attribution khác." />
        <node ID="MAP_F42564FD5F8C75ED" TEXT="Hiện chưa có GMV business nên chưa kết luận Business ROAS." />
      </node>
    </node>
    <node ID="MAP_8FE8ADFABBB0716C" TEXT="11. Quan hệ toán học và giới hạn diễn giải" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_EEF9355044AED0FD" TEXT="Ví dụ:" />
      <node ID="MAP_B5AB1D87D13816B9" TEXT="Ads Cost = Impressions × CPM / 1.000&#10;Business ROAS = GMV / Ads Cost&#10;&#10;Business ROAS&#10;= GMV × 1.000 / (Impressions × CPM)" />
      <node ID="MAP_8D5C7811D94B46CE" TEXT="Công thức chỉ cho biết quan hệ khi giữ các biến còn lại không đổi. Trong dữ liệu thật, GMV, Impressions, sản phẩm, objective, phễu, publisher và creative có thể cùng thay đổi." />
      <node ID="MAP_127927041EAFBFB1" TEXT="Không được ghi kết luận vô điều kiện như:" />
      <node ID="MAP_1BC519F7D4733806" TEXT="CPM cao nên ROAS giảm." />
      <node ID="MAP_725898C375A760A4" TEXT="CTR cao chứng minh GMV tốt." />
      <node ID="MAP_19AF0B9F71AA40E4" TEXT="CPC hoặc CPR thấp thì nên tăng ngân sách." />
      <node ID="MAP_339928C0D447F80C" TEXT="TOFU phải có CPM đắt hơn BOFU." />
      <node ID="MAP_26D3473DE33F21E6" TEXT="Frequency cao chứng minh audience mệt mỏi." />
      <node ID="MAP_7FB34AD1C9968DD2" TEXT="Nếu chưa có khóa người dùng/event xuyên bước, Link Clicks → Messaging → Purchase là đường phân tích quy trình; các tỷ số giữa bước chỉ là tỷ số tổng hợp, chưa phải cohort conversion." />
    </node>
    <node ID="MAP_B4943C945EC005BC" TEXT="12. Funnel, drill-down và đường tới recommendation" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_84CFA25FD42A61F0" TEXT="12.1. Đường funnel/journey" FOLDED="true">
        <node ID="MAP_7C4728BE87412F16" TEXT="TOFU: phân phối và tín hiệu ban đầu&#10;→ MOFU: click, tương tác sâu hoặc conversation&#10;→ BOFU: Meta Purchase/Orders&#10;→ đơn business&#10;→ GMV business" />
        <node ID="MAP_BDDFA15F0C8B6058" TEXT="Mũi tên mô tả thứ tự cần kiểm tra. Nó không tự chứng minh quan hệ nhân quả hoặc cùng một nhóm người đi xuyên suốt." />
      </node>
      <node ID="MAP_EE92AA44CE750430" TEXT="12.2. Drill-down khi phát hiện chênh lệch" FOLDED="true">
        <node ID="MAP_4FBFF631151C44D8" TEXT="Campaign&#10;→ Ad set: optimization goal, audience, budget/bid, placement, delivery&#10;→ Ad: creative, format, message, sản phẩm quảng cáo" />
        <node ID="MAP_37B1B5227F6671C5" TEXT="Chỉ drill-down khi có ID nguyên vẹn và quan hệ cấp cha–con đúng. Nếu chỉ có tên, kết quả là thăm dò và phải kiểm tra duplicate." />
      </node>
      <node ID="MAP_DD56DC36D9ECA368" TEXT="12.3. Mẫu quyết định trước recommendation" FOLDED="true">
        <node ID="MAP_78AF4C814D6CCEAE" TEXT="Mô tả vấn đề và số liệu quan sát được." />
        <node ID="MAP_4D807BFDAC5AEE1B" TEXT="Khóa phạm vi: kỳ, grain, sản phẩm, objective/optimization, phễu, publisher và attribution." />
        <node ID="MAP_4283134B0152BC17" TEXT="Chọn nhóm so sánh tương đồng." />
        <node ID="MAP_A4C2271F3CCC2A02" TEXT="Tính lại metric từ tổng tử số và mẫu số." />
        <node ID="MAP_652CDDE1A3484FEA" TEXT="Đi sâu Campaign → Ad set → Ad để tìm nơi tạo chênh lệch." />
        <node ID="MAP_9ED0C4792A01D6D4" TEXT="Viết nhiều giả thuyết; với mỗi giả thuyết nêu bằng chứng hỗ trợ và bằng chứng có thể bác bỏ." />
        <node ID="MAP_9BAE290B68B9B3AA" TEXT="Chỉ khi đủ bằng chứng mới viết hành động hoặc test: owner, phạm vi, chỉ số theo dõi, thời gian, tiêu chí giữ/sửa/dừng." />
      </node>
    </node>
    <node ID="MAP_9414B9106E636114" TEXT="13. Hợp đồng ETL, modeling và report" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_F353DB059004C94F" TEXT="13.1. Các bảng tối thiểu" FOLDED="true">
        <node ID="MAP_E58ED7DE99F42FAB" TEXT="Bảng | Một dòng đại diện cho gì? | Vai trò" />
        <node ID="MAP_BE34384233D26698" TEXT="fact_ads_spend_campaign_period | Một Campaign trong một kỳ | Số kiểm soát spend và raw metrics" />
        <node ID="MAP_548A2B9DE08BBBC4" TEXT="dim_campaign_config | Một version cấu hình/mapping của Campaign | Name, objective Meta, Objective suy luận và metadata" />
        <node ID="MAP_3F830911EE73A992" TEXT="dim_adset_config | Một Ad set trong thời gian hiệu lực | Optimization goal, destination, bid/budget" />
        <node ID="MAP_280380F6F7DE076A" TEXT="map_funnel | Một object được gắn một trạng thái phễu trong thời gian hiệu lực | Human mapping Phễu" />
        <node ID="MAP_901115AF4E319571" TEXT="bridge_ad_product | Một quan hệ Ad ↔ Item/SKU | Mapping sản phẩm và rule phân bổ nếu many-to-many" />
        <node ID="MAP_A018F9C7DF9C8799" TEXT="fact_ads_spend_publisher | Một object × kỳ × publisher breakdown | Ba cặp có Nền tảng" />
        <node ID="MAP_40771F97360C5206" TEXT="fact_business_order_gmv | Một order/order line theo rule business | Đơn, trạng thái, sản phẩm, channel và GMV" />
      </node>
      <node ID="MAP_1203AFE184DF9A12" TEXT="13.2. Kiểm tra join bắt buộc" FOLDED="true">
        <node ID="MAP_C5BB2115F7C325B4" TEXT="ID phải là text nguyên vẹn; ID đã scientific/làm tròn không được sửa bằng đoán hậu tố." />
        <node ID="MAP_1B5967B783D4EBEC" TEXT="Ghi cardinality dự kiến và thực tế: một–một, nhiều–một hoặc nhiều–nhiều." />
        <node ID="MAP_0ED994CA8C985A63" TEXT="So số dòng, tổng spend, orphan, duplicate và conflict trước/sau join." />
        <node ID="MAP_3883AFA007DAF593" TEXT="Giữ Shared/Unmapped trong tổng." />
        <node ID="MAP_15BA22016729073C" TEXT="Khi một Ad nối nhiều sản phẩm, không nhân spend; dùng allocation rule có owner hoặc giữ Shared." />
        <node ID="MAP_32664917225B8E93" TEXT="CPM/CPC/CPR/ROAS tổng phải tính lại từ tổng tử số và mẫu số." />
        <node ID="MAP_8356883565C4531F" TEXT="Reach không cộng tùy tiện qua các nhóm có thể trùng người." />
        <node ID="MAP_0B8AB4DE7D9710A8" TEXT="Results chỉ cộng khi cùng Result indicator và attribution." />
      </node>
      <node ID="MAP_51E9DB7BD1590CD6" TEXT="13.3. Report được phép hiển thị theo coverage hiện tại" FOLDED="true">
        <node ID="MAP_BE79928EA080F2AE" TEXT="Phần | Có thể hiển thị | Chưa được ghi như fact" />
        <node ID="MAP_393AD11B01A05B63" TEXT="Objective | Spend/metrics theo Objective suy luận, kèm human mapping | Objective gốc Meta đã xác minh" />
        <node ID="MAP_2D9AFB890A028816" TEXT="Phễu | Thăm dò TOFU/MOFU/BOFU theo file hiện hành | Mapping phễu đã được owner duyệt hoàn toàn" />
        <node ID="MAP_ECD058B9A4D92315" TEXT="Sản phẩm | Spend theo nhóm/ngành hàng suy luận | Spend của từng SP01–SP25" />
        <node ID="MAP_567FC46965F0AED5" TEXT="Nền tảng | Danh sách dimension cần có | Spend Facebook/Instagram/WhatsApp từ dataset hiện tại" />
        <node ID="MAP_3C81A0FA421A8CB2" TEXT="Business | Khoảng trống source và công thức | Business ROAS/Ads Cost-GMV thực tế" />
      </node>
    </node>
    <node ID="MAP_F18602303A1F2971" TEXT="14. Ví dụ xuyên suốt bằng Campaign thật" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_D6E481EBF3DF159C" TEXT="14.1. Dòng nguồn" FOLDED="true">
        <node ID="MAP_3D243639CF976B82" TEXT="Preferred source: CPAS-SHOPEE-Campaigns-1-Mar-2026-31-Mar-2026.xlsx, sheet Worksheet, dòng 15." />
        <node ID="MAP_DA848CB7A6E5C3BF" TEXT="Mapping source: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx, sheet Campaign_3_tháng, dòng 6." />
        <node ID="MAP_964D523C6A2CBD22" TEXT="Campaign: 10/11/2025 - MOF - TESTING A/B - 1% - CÁT." />
        <node ID="MAP_0C48D6258626A392" TEXT="Kỳ: 2026-03." />
        <node ID="MAP_11A6ADAF277B7B83" TEXT="Amount Spent: 6.639.470 VND." />
        <node ID="MAP_3A22F0D829EE7F62" TEXT="Impressions: 67.455; Reach: 23.122." />
        <node ID="MAP_1826D098E2593DCB" TEXT="Results: 96; Result indicator: actions:onsite_conversion.messaging_conversation_started_7d." />
        <node ID="MAP_96902DCC3949C75B" TEXT="Cost per Result: 69.161,14583 VND; attribution: 7-day click or 1-day view." />
      </node>
      <node ID="MAP_5725F44D55E0B623" TEXT="14.2. Mapping và trạng thái bằng chứng" FOLDED="true">
        <node ID="MAP_1E9E3F480151222F" TEXT="Objective suy luận = Engagement - Messaging, basis là Result indicator. Duy cho phép dùng kiểu mapping này trong ETL." />
        <node ID="MAP_B9DF47D4018AC02A" TEXT="Phễu = MOFU từ file dẫn xuất. Đây là human mapping chưa khóa đủ rule/version/owner." />
        <node ID="MAP_56BE14491F4D1F41" TEXT="Sản phẩm = Cát nói chung, vì tên chỉ có CÁT; không đủ chọn nhóm hoặc SP01–SP25." />
        <node ID="MAP_8C505FAD49063295" TEXT="Publisher platform = chưa có." />
        <node ID="MAP_84403A0C10AE9821" TEXT="Campaign này đi vào ba ô có thể thăm dò:" />
        <node ID="MAP_8DC249A79FE7AAAD" TEXT="Ads Cost (MOFU, Engagement - Messaging)&#10;Ads Cost (MOFU, Cát nói chung)&#10;Ads Cost (Cát nói chung, Engagement - Messaging)" />
      </node>
      <node ID="MAP_DD0D7C997EF830F6" TEXT="14.3. Metric tính được" FOLDED="true">
        <node ID="MAP_0169E2317B6BA55B" TEXT="CPM = 6.639.470 / 67.455 × 1.000 ≈ 98.427 VND&#10;Frequency = 67.455 / 23.122 ≈ 2,92&#10;Ads Cost kiểm tra = 96 × 69.161,14583 ≈ 6.639.470 VND" />
      </node>
      <node ID="MAP_1AB5B6D10C3E564A" TEXT="14.4. Chọn nhóm so sánh và đặt câu hỏi" FOLDED="true">
        <node ID="MAP_A6EB5A8C17AC8CCE" TEXT="Candidate gần nhất trong cùng tháng là Campaign 10/11/2025 - MOF - TESTING A/B - GỐC - CÁT, preferred source dòng 39, demo dòng 7. Nó cùng MOFU, cùng Objective suy luận, cùng ngành hàng cát, cùng Result indicator và attribution; có Spend 6.370.694 VND, 129.733 Impressions, Reach 56.830, Results 86 và Cost per Result 74.077,83721 VND." />
        <node ID="MAP_7A9FF256F94F5059" TEXT="Case 1% có CPM cao hơn nhưng Cost per Result thấp hơn candidate GỐC. Điều này chỉ tạo câu hỏi:" />
        <node ID="MAP_43D95A8CC4A09514" TEXT="Khác biệt đến từ phân phối, audience/optimization ở Ad set, creative ở Ad, hay hai Campaign thực ra quảng cáo các sản phẩm/offer khác nhau?" />
        <node ID="MAP_6164CB33AAC019F8" TEXT="Muốn trả lời phải drill-down bằng ID nguyên vẹn và kiểm tra cấu hình/creative. Chưa có GMV nên không được kết luận ROAS hoặc đề xuất tăng ngân sách." />
      </node>
      <node ID="MAP_43CE753F45C716B1" TEXT="14.5. Cách Duy trình bày lại" FOLDED="true">
        <node ID="MAP_671DBE1670495B11" TEXT="“Con lấy một Campaign thật, kiểm tra spend và metric ở source, rồi gắn Objective, Phễu và sản phẩm theo đúng mức bằng chứng. Campaign này chỉ map được tới ngành hàng cát, chưa tới sản phẩm cụ thể và chưa có platform. Con chọn một Campaign gần giống để so. CPM và Cost per Result đi khác chiều nên con chưa phán Campaign nào tốt; con cần xuống Ad set/Ad và thêm dữ liệu business trước khi recommendation.”" />
      </node>
    </node>
    <node ID="MAP_3DF19805230EC5F9" TEXT="15. Nguồn, phần còn thiếu và kiểm định" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_04657DF70648AF86" TEXT="15.1. Nguồn hiện hành" FOLDED="true">
        <node ID="MAP_DD7235970F5F7A8E" TEXT="Raw: 01_inputs\joycat\raw; 32 workbook .xlsx và một archive; không có CSV đã bung." />
        <node ID="MAP_936B641EF255F8EE" TEXT="Preferred source: chín workbook Campaign/Ad set/Ad tháng 03–05/2026." />
        <node ID="MAP_8327BC2E6C705D2B" TEXT="Human mapping: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx." />
        <node ID="MAP_44C96033394D6762" TEXT="Catalog: JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx." />
        <node ID="MAP_72B9F015023C34FC" TEXT="Coverage audit chi tiết: 02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv." />
        <node ID="MAP_7D00FA2FEBA431E0" TEXT="Coverage audit summary: 02_work\joycat\coverage_audit\coverage_audit_summary.json." />
        <node ID="MAP_39E1870B855BE38A" TEXT="Bản trước khi gộp: 02_work\joycat\archive\2026-09-05_context_logic_mapping_before_merge." />
      </node>
      <node ID="MAP_2DD3911F84380EE0" TEXT="15.2. Owner cần xác nhận" FOLDED="true">
        <node ID="MAP_DC6D78B087B56279" TEXT="Cần xác nhận | Owner/nguồn | Ảnh hưởng" />
        <node ID="MAP_9A6A5CA0A5A3328C" TEXT="Preferred candidate có phải source chính thức? | Cậu Sinh/người chuẩn bị data | Khóa lineage và số kiểm soát" />
        <node ID="MAP_CEA1DEA30F3EA1D9" TEXT="Objective mapping version và reviewer | Duy/cậu Sinh | Cho phép ETL lặp lại và audit override" />
        <node ID="MAP_E883169F4976F566" TEXT="Rule/grain/version/owner Phễu | Người tạo mapping | Xác nhận ba cặp có Phễu" />
        <node ID="MAP_84839FAAC868AC39" TEXT="Mã nhóm sản phẩm và xử lý multi-product | Owner Campaign/sản phẩm | Nâng coverage từ inference tới mapping duyệt" />
        <node ID="MAP_658AC3B5135A18D4" TEXT="Publisher breakdown và ID text nguyên vẹn | Người export Meta | Mở ba cặp Nền tảng và drill-down" />
        <node ID="MAP_E32A41C0846D46FD" TEXT="Định nghĩa GMV, kỳ, sales channel, hoàn/hủy, voucher, shipping | Owner business data | Mở Business ROAS" />
        <node ID="MAP_BB1CF3202441B0E3" TEXT="Nguồn tạo file Objective demo tháng 04 | Người tạo file demo | Giải thích chênh 9.252 VND" />
      </node>
      <node ID="MAP_6105DC194C8FE728" TEXT="15.3. Nội dung khôi phục từ bản cũ" FOLDED="true">
        <node ID="MAP_069B5835E5938007" TEXT="Campaign → Ad set → Ad." />
        <node ID="MAP_53223D4E18205C64" TEXT="Nhiệm vụ TOFU/MOFU/BOFU và các metric cần đọc." />
        <node ID="MAP_5BA76011626DD0B8" TEXT="Cách chọn case so sánh." />
        <node ID="MAP_85D7A782CF6A10B8" TEXT="Giả thuyết phải có bằng chứng hỗ trợ và phản bác." />
        <node ID="MAP_246256489D08C24D" TEXT="Điều kiện chuyển sang ETL/report." />
      </node>
      <node ID="MAP_4C54A70A653B74C3" TEXT="15.4. Kiểm định" FOLDED="true">
        <node ID="MAP_983D5E0467AC0CB3" TEXT="Markdown và mindmap phải có cùng 16 nhánh chính." />
        <node ID="MAP_FF98A9595F6545F9" TEXT="Mindmap phải có đủ sáu cặp và công thức đầy đủ tên đại lượng." />
        <node ID="MAP_A39DC4D9D35BB216" TEXT="XML parse được và ID không trùng chỉ là kiểm tra cấu trúc; việc mở/hiển thị trên Lark hoặc MindManager cần Duy kiểm tra trên ứng dụng." />
        <node ID="MAP_4A58C8975013F818" TEXT="Coverage ba cặp không có Nền tảng phải ghi thiếu chiều; không tạo spend giả." />
        <node ID="MAP_259F0A014564878D" TEXT="Coverage ba cặp còn lại phải giữ đủ dòng và spend của file demo, đồng thời ghi rõ demo tháng 04 chưa khớp preferred." />
        <node ID="MAP_A653A54DAF7CF043" TEXT="Không có kết luận CPM/CTR/CPC/CPR tác động ROAS vô điều kiện." />
        <node ID="MAP_828EED006B315150" TEXT="Không dùng Meta Purchase Conversion Value thay GMV business." />
        <node ID="MAP_2BB233001DF73C62" TEXT="Không cộng Campaign, Ad set và Ad; không cộng sáu cách phân rã." />
        <node ID="MAP_00EDAF7791A7618D" TEXT="Không phân tích audience size trong phiên bản này." />
      </node>
    </node>
    <node ID="MAP_DB3DF3BE9DF9B0A0" TEXT="16. Phụ lục — 25 listing Joycat" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="MAP_204CEE76B9F2B7BB" TEXT="Mã | Nhóm | Quy cách | Item ID" />
      <node ID="MAP_F6665F48F835A061" TEXT="SP01 | Vi sinh khử mùi | Combo xịt và bột | 54652253159" />
      <node ID="MAP_EA028F2E200B9B9C" TEXT="SP02 | Vi sinh khử mùi | 1 túi 75g | 44502278009" />
      <node ID="MAP_D265B10F98382000" TEXT="SP03 | Cát Sắn Natural | Combo 3 túi | 53301517532" />
      <node ID="MAP_AC33DE82FA868779" TEXT="SP04 | Cát Sắn Natural | 1 túi 2,5kg / 6L | 41659422198" />
      <node ID="MAP_AA8FE7016997499E" TEXT="SP05 | Cát Mix PerformX | Combo 3 túi | 47303410867" />
      <node ID="MAP_1277580B4B6B4036" TEXT="SP06 | Cát Mix PerformX | 1 túi 2,5kg / 6L | 43727202767" />
      <node ID="MAP_01DB0A4D8DB691DC" TEXT="SP07 | Cát Sắn Natural | Combo 2 túi | 43026477525" />
      <node ID="MAP_088455AB9D272A0A" TEXT="SP08 | Vi sinh khử mùi | 1 chai 450ml | 48902263316" />
      <node ID="MAP_06859EA7C35363DC" TEXT="SP09 | Cát Khoáng MineralX | 1 túi 3,5kg / 8L | 44908677009" />
      <node ID="MAP_EC65E1FFB46F4E8B" TEXT="SP10 | Cát Khoáng MineralX | Combo 2 túi | 53758652941" />
      <node ID="MAP_F5F08A93FD3DF1D0" TEXT="SP11 | Cát Sắn Natural | 1 thùng | 54401512661" />
      <node ID="MAP_276D3C92E83BB62D" TEXT="SP12 | Cát Mix PerformX | Combo 2 túi | 54153386367" />
      <node ID="MAP_4199C20CDAEE1969" TEXT="SP13 | Cát Đậu Nành Mix Khoáng PowerX | 1 túi 2,5kg / 6L | 40981732711" />
      <node ID="MAP_DAC79C4693D392EC" TEXT="SP14 | Cát Sắn Mix Đậu Nành Tofuu.X | 1 túi 2,5kg / 6L | 54812261805" />
      <node ID="MAP_0D3B00134745D00D" TEXT="SP15 | Cát Khoáng MineralX | Combo 4 túi | 52008652913" />
      <node ID="MAP_32D04527788150C4" TEXT="SP16 | Cát Mix PerformX | 1 thùng | 43227384196" />
      <node ID="MAP_1CF80E4361611532" TEXT="SP17 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 3 túi | 55712258330" />
      <node ID="MAP_79CE6EA184CE7C07" TEXT="SP18 | Cát Khoáng MineralX | Combo 3 túi | 48458681913" />
      <node ID="MAP_35D3A214FC66173E" TEXT="SP19 | Cát Đậu Nành Mix Khoáng PowerX | Combo 2 túi | 48762287172" />
      <node ID="MAP_9D32C38D8277B141" TEXT="SP20 | Cát Đậu Nành Mix Khoáng PowerX | Combo 3 túi | 52462262098" />
      <node ID="MAP_234CFB5B2B6CA4FE" TEXT="SP21 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 2 túi | 52712266855" />
      <node ID="MAP_05DD615F13BD1689" TEXT="SP22 | Cát Đậu Nành Mix Khoáng PowerX | Combo 6 túi | 46362295656" />
      <node ID="MAP_4B3D8FE2F86B74DF" TEXT="SP23 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 6 túi | 40481736189" />
      <node ID="MAP_01C4DA39801356F8" TEXT="SP24 | Cát Mix PerformX | 1 túi 4,5kg; bán hết ở snapshot | 27144047088" />
      <node ID="MAP_E8C65F60F9F4C450" TEXT="SP25 | Cát Sắn Natural | 1 túi 4,5kg; bán hết ở snapshot | 54104795820" />
      <node ID="MAP_05F3B0D023672BB2" TEXT="Danh mục là snapshot ngày 25/08/2026; không phải bằng chứng lịch sử chạy Ads tháng 03–05/2026." />
    </node>
  </node>
</map>