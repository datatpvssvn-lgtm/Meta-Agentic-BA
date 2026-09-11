<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DC76E9F0C0006E8F" TEXT="JOYCAT — Data Mapping &amp; Coverage cho Ads Cost" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_ABF365ABA3869BDE" TEXT="Liên kết trong bộ Joycat" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C42E658C41B28210" TEXT="Context Joycat · Current Intent · Dictionary đầu vào · KPI v3 · Metric Tree · Bộ 5 Metrics · Mapping/Coverage." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_277EEFBD585C0E73" TEXT="Định nghĩa trường chuẩn đặt tại Dictionary; file này dùng các định nghĩa đó theo vai trò riêng. Cập nhật liên kết và phân vai ngày 08/09/2026; không xác nhận lại toàn bộ raw data." />
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2888EE22DBC414EF" TEXT="1. Đọc nhanh cho Duy và cậu Sinh" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AA58D0B67F702976" TEXT="1.1. Tài liệu này giúp làm gì?" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AA3D7337CA9D350D" TEXT="Tài liệu này nối liền chuỗi làm việc từ tư duy phân tích sang yêu cầu kỹ thuật:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D52A9C61D5F35528" TEXT="Mục tiêu phân tích / Câu hỏi kinh doanh&#10;→ công thức và bối cảnh đọc (Bộ 5 Metrics)&#10;→ bốn chiều và sáu cặp phân tích (Tài liệu này)&#10;→ nguồn dữ liệu gốc và bảng ánh xạ (Mapping)&#10;→ đánh giá độ phủ (Coverage) và nhận diện khoảng trống&#10;→ điều kiện nối (Join integrity) và data gate&#10;→ thiết kế hợp đồng ETL khi dữ liệu sẵn sàng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2F3106EEBB1D1E76" TEXT="Nói đơn giản: Trước khi hỏi “Campaign nào tốt?”, ta phải biết câu hỏi đó cần tách theo chiều nào (sản phẩm, nhiệm vụ, phễu hay nền tảng), so với nhóm đối chứng nào, raw data hiện tại có trường dữ liệu đó không, và nếu chưa có thì ranh giới kết luận phải dừng ở đâu." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D82741043002880C" TEXT="1.2. Kết quả quan trọng nhất" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AAE5A2E0F05EFF89" TEXT="Nội dung | Kết quả hiện tại | Ý nghĩa với bước sau" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B9CFA494B1F506CE" TEXT="Tổng Ads Cost trong preferred Campaign | Tháng 03: 50.195.692; tháng 04: 64.825.305; tháng 05: 63.518.031 VND | Có thể làm số kiểm soát tại grain Campaign × tháng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0E590EC94DF2CCCB" TEXT="Objective suy luận | 84 Campaign có spend; Duy xác nhận cho phép dùng làm human mapping | ETL được dùng nhưng phải giữ basis, version, người gắn và trạng thái review" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F11D7DB194E1F886" TEXT="Phễu | Có nhãn TOFU/MOFU/BOFU trên file dẫn xuất | Có thể thăm dò; rule, version, grain và owner vẫn cần khóa" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CD4186E83F7226B5" TEXT="Sản phẩm | Catalog có 25 listing; Campaign name chỉ gợi ý được một số nhóm/ngành hàng | Chưa phân bổ Ads Cost xuống SP01–SP25" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9E545FBB0E0F7FAB" TEXT="Publisher platform | Không có trong bộ dữ liệu đã kiểm tra | Ba cặp có chiều Nền tảng chưa tính được" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_63AD5E036FB492C5" TEXT="GMV business | Không có | Chưa tính được Business ROAS hoặc Ads Cost/GMV thật" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E91EAF692A11FC0B" TEXT="File Objective demo tháng 04 | 64.834.557 VND, cao hơn preferred Campaign 9.252 VND | Dùng để đọc mapping; chưa dùng làm fact spend chính tháng 04" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_50618CF8C354E266" TEXT="1.3. Phân công vai trò trong bộ tài liệu phân tích Joycat" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C94A7C4DA45B31EA" TEXT="Tài liệu | Câu hỏi tài liệu trả lời | Vai trò trong hệ thống" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_259A1F3BA2223F84" TEXT="KPI v3 hiện hành | Kết quả nào cần đo, bằng KPI nào và mốc tham chiếu nào? | KPI tổng, hợp đồng đo và metric hỗ trợ" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_44ABBD4E862C0320" TEXT="METRIC_TREE.md | Chỉ số được tính thế nào và rẽ tới field gốc nào? | Công thức rẽ nhánh toán học" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_994A4CD4793DB69F" TEXT="CONG_THUC_5_METRICS_JOYCAT_v3.md | Chỉ số này có ý nghĩa gì, đọc trong bối cảnh nào và tư duy phản biện ra sao? | Phương pháp đọc, bối cảnh &amp; tư duy phân tích" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3826C9408BDCA850" TEXT="DATA_MAPPING_COVERAGE_JOYCAT.md (Tài liệu này) | Cần tách theo đầu mục nào, trường raw nào hỗ trợ và dữ liệu đáp ứng tới đâu? | Cầu nối câu hỏi sang dữ liệu, mapping &amp; coverage ETL" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7470A14DF23722FC" TEXT="1.4. Sáu cặp dataset hiện làm được tới đâu?" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5A3B2691F0645E17" TEXT="Cặp | Mức hiện tại" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F6593F6A5654B444" TEXT="Nền tảng × Sản phẩm | Thiếu Publisher platform và Ads → sản phẩm" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_49DB375EA7AA8390" TEXT="Nền tảng × Phễu | Thiếu Publisher platform; Phễu chưa khóa hợp đồng mapping" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CD22D8C0014FB5A8" TEXT="Nền tảng × Campaign objective | Thiếu Publisher platform; Objective human mapping đã có" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DCE3E6E7778A9B59" TEXT="Phễu × Sản phẩm | Thăm dò được ở cấp nhóm/ngành hàng bằng human mapping" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_28B933B3AEFA4FE4" TEXT="Sản phẩm × Campaign objective | Thăm dò được ở cấp nhóm/ngành hàng × Objective suy luận" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_71B3C87B7BBA6CF7" TEXT="Phễu × Campaign objective | Tính được trên file demo bằng hai human mappings; còn cần khóa Phễu và đối soát source" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_814F6292AACD6BEF" TEXT="“Tính được” ở đây nói về cấu trúc Ads Cost. Nó không tự chứng minh hiệu quả, nguyên nhân hoặc Business ROAS." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A18F5F60CC36131A" TEXT="1.5. Bảng từ câu hỏi phân tích đến yêu cầu dữ liệu (4 chiều &amp; 6 cặp)" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_715D948EDBF45A46" TEXT="Phân loại | Câu hỏi phục vụ | Vì sao cần tách | Đầu mục &amp; mức chi tiết | Trường nguồn / Mapping liên quan | Điều kiện nối / tổng hợp cần kiểm tra | Dữ liệu hiện tại hỗ trợ tới đâu | Phần thiếu &amp; Giới hạn kết luận" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A43D310817038C5A" TEXT="Chiều 1: Nền tảng | Quảng cáo Joycat hiển thị ở đâu và từng nơi chi bao nhiêu? | Chi phí hiển thị và hành vi click trên Facebook khác Instagram, Messenger | Facebook, Instagram, Messenger, Audience Network | Cần trường Meta export: publisher_platform, platform_position | Grain phân tách theo platform; tổng spend các platform = Tổng Ads Cost | Chưa hỗ trợ trong 32 file raw | Thiếu trường platform. Không suy đoán platform từ tên Campaign hay CPAS-SHOPEE" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_303F95F2E3A26317" TEXT="Chiều 2: Sản phẩm | Tiền quảng cáo chi cho dòng sản phẩm hay quy cách nào? | Mỗi dòng sản phẩm (Cát sắn, Cát khoáng, Vi sinh) có biên lợi nhuận và nhu cầu khác nhau | 3 cấp: Nhóm sản phẩm (NA, PFX, MNX, Vi sinh) → Listing (SP01–SP25) → SKU | Catalog snapshot 25 listing; tiền tố tên Campaign (NA, PFX, MNX, VI SINH) | 1 Ad có thể quảng cáo nhiều listing (multi-product); không nhân đôi spend khi join | Thăm dò cấp nhóm qua tên Campaign; có catalog 25 listing | Thiếu bảng mapping Ads→Item ID. Chưa phân bổ được spend xuống SP01–SP25" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DA4CDD64640B53D9" TEXT="Chiều 3: Phễu | Ngân sách đang phân bổ bao nhiêu cho nhận biết, hội thoại và chuyển đổi? | Phễu giúp kiểm soát kỳ vọng: không đòi hỏi TOFU sinh đơn ngay, không để BOFU bị đói ngân sách | TOFU (độ phủ/view), MOFU (tương tác/chat), BOFU (chuyển đổi đơn), Shared | Cột Phễu trong file dẫn xuất; tên Campaign có chứa TOFU, MOFU, BOFU | Gắn đúng grain; tổng spend 3 tầng + Shared = Tổng Ads Cost | Thăm dò theo file dẫn xuất (47 MOFU, 27 TOFU, 10 BOFU) | Chưa có quy tắc khóa grain, version và owner duyệt mapping phễu" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1A0F826F55F55690" TEXT="Chiều 4: Objective | Nhóm mục tiêu nào được gán trong mapping, và có cấu hình Meta nào để đối soát? | Kết quả đo lường (Results) mang ý nghĩa hoàn toàn khác nhau tùy mục tiêu | Engagement - Messaging, Post Engagement, Sales - Purchase, Ad Recall | Cột Objective suy luận do Duy gắn; Result indicator trong raw | Không cộng gộp Results khác indicator; giữ nguyên spend dòng không result | Đã có bản làm việc trên 84 Campaign có spend (human mapping) | Raw thiếu Campaign objective gốc. Phải ghi rõ nguồn human-curated" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_196B948023682625" TEXT="Cặp 1: Nền tảng × Sản phẩm | Trên từng nền tảng, tiền chi cho sản phẩm nào? | Đánh giá sản phẩm nào phù hợp bán qua kênh nào (ví dụ Instagram chuộng visual) | Cấp Platform × Cấp nhóm/listing sản phẩm | publisher_platform + Bảng mapping Ads → listing | Join bằng ID text; tổng mọi ô = Tổng Ads Cost | Chưa tính được | Thiếu cả trường platform và khóa mapping Ads → listing" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_038DEDBA25110EDB" TEXT="Cặp 2: Nền tảng × Phễu | Trên từng nền tảng, ngân sách chia cho các tầng phễu ra sao? | Kiểm tra nền tảng nào đóng vai trò kéo phễu đầu, nền tảng nào chốt đơn | Cấp Platform × Tầng phễu (TOFU/MOFU/BOFU) | publisher_platform + Bảng map_funnel | Không suy từ tổng platform và tổng phễu riêng rẽ | Chưa tính được | Thiếu trường platform; phễu chưa khóa hợp đồng mapping" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D778743248B63B64" TEXT="Cặp 3: Nền tảng × Objective | Mỗi nền tảng phục vụ mục tiêu gì chủ yếu? | Kiểm tra xem Meta có phân bổ tin nhắn sang Messenger và post engagement sang Feed không | Cấp Platform × Nhãn Objective suy luận | publisher_platform + Objective suy luận | Giữ metadata version của objective mapping | Chưa tính được | Bị chặn bởi thiếu trường platform" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E9D9859C9A4EA1A7" TEXT="Cặp 4: Phễu × Sản phẩm | Trong từng tầng phễu, tiền chi cho sản phẩm nào? | Xem sản phẩm nào đang được đầu tư làm nhận biết, sản phẩm nào chỉ chạy chốt đơn | Tầng phễu × Nhóm sản phẩm (NA, PFX, MNX, Vi sinh) | Cột Phễu + Tên Campaign có mã sản phẩm | Tổng các ô trong một tầng = Spend của tầng phễu đó | Thăm dò cấp nhóm sản phẩm (9 ô T3, 13 ô T4, 13 ô T5) | Chưa xuống được 25 listing; phụ thuộc human mapping trên tên Campaign" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A8A5D7CC5A22D8B8" TEXT="Cặp 5: Sản phẩm × Objective | Mỗi sản phẩm nhận bao nhiêu ngân sách cho từng mục tiêu? | Đánh giá chiến lược marketing của từng dòng: dòng nào đẩy mạnh chat tư vấn, dòng nào chạy sales | Nhóm sản phẩm × Nhãn Objective suy luận | Mã sản phẩm từ tên Campaign + Objective suy luận | Tổng spend các objective của một nhóm = Spend nhóm sản phẩm đó | Thăm dò cấp nhóm sản phẩm (7 ô T3, 12 ô T4, 16 ô T5) | Dừng ở cấp nhóm; chưa xác minh cho từng listing Shopee cụ thể" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_73DAAB60A7F36BDC" TEXT="Cặp 6: Phễu × Objective | Trong từng tầng phễu, tiền đang phục vụ objective nào? | Đối soát tính hợp lý: vai trò phễu có phù hợp với mục tiêu của case không; không mặc định TOFU hoặc MOFU chỉ được dùng một objective | Tầng phễu × Nhãn Objective suy luận | Cột Phễu + Cột Objective suy luận trên 84 Campaign | Tổng các ô = Tổng spend 84 Campaign có chi phí | Tính được trên file demo (3 ô T3, 4 ô T4, 6 ô T5) | Phụ thuộc hoàn toàn vào 2 cột human mapping; tháng 04 còn lệch 9.252 VND" />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E955C7B512B12083" TEXT="2. Hợp đồng Context và bằng chứng" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_07D6F24209245556" TEXT="2.1. Ba lớp context" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9CEC9CDF73B0C572" TEXT="Lớp | Nội dung Joycat" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3883B7A392E1D77F" TEXT="Objective Context | Xây hệ thống hỗ trợ phân tích marketing đa nguồn, bắt đầu từ Meta Ads Joycat" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D0B43FAB2C24BA07" TEXT="Mong muốn thực tế của phase | Hoàn thiện Context và thiết kế tư duy phân tích marketing Joycat trước ETL" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6EBC8891167AFFC1" TEXT="Current Operating Context | Có Meta Ads export tháng 03–05, file mapping thủ công và catalog; chưa có publisher breakdown, khóa sản phẩm đầy đủ hoặc GMV business" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6392545D0A41601F" TEXT="2.2. Bốn nhãn bằng chứng" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_959D8AEA5C3F4624" TEXT="Nhãn | Cách hiểu" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9AFC0FF91BA5180C" TEXT="Đã xác minh từ nguồn | File/schema/dòng dữ liệu trực tiếp hỗ trợ phát biểu" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2E25C86B2C96020D" TEXT="Owner đã xác nhận | Duy, cậu Sinh hoặc owner nghiệp vụ đã chốt; vẫn khác bằng chứng dữ liệu" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_757C6CDF3452FD7B" TEXT="Suy luận | Có cơ sở hợp lý nhưng cần kiểm tra thêm" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E371522264CA8D2B" TEXT="To be updated | Chưa có nguồn đủ mạnh; phải ghi điều thiếu, owner và ảnh hưởng" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_4D7D8EF3B8C2A888" TEXT="2.3. Ba loại phát biểu trong tài liệu" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0295DB4170D7F87E" TEXT="Để không gây hiểu nhầm cho người đọc và AI kế thừa, tài liệu phân biệt rõ 3 loại phát biểu:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_21274A0839BD0B29" TEXT="Loại 1 — Công thức hoặc cấu trúc mô hình có thể thiết kế trước: Là các công thức toán học, cấu trúc 4 chiều, 6 cặp và schema bảng ETL. Các mục này có thể thiết kế hoàn chỉnh ngay cả khi chưa có dữ liệu." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C9EC903708DB8C1A" TEXT="Loại 2 — Khả năng dữ liệu đã được ghi nhận trong nguồn/audit hiện có: Là các trạng thái số liệu đã qua kiểm tra trực tiếp từ 32 file raw hoặc file demo (ví dụ: tổng spend preferred Campaign, sự tồn tại của 84 Campaign có spend, 25 Item ID trong catalog Shopee)." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B3ADC5BAF2580542" TEXT="Loại 3 — Khả năng chỉ được xác nhận sau khi kiểm định dữ liệu thực tế: Là các giả thuyết cần nguồn mới để mở khóa (ví dụ: chia spend theo Facebook/Instagram chỉ khả thi sau khi export được trường publisher; tính Business ROAS chỉ khả thi sau khi nhận được file đơn hàng business)." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AF0BE92A794973C7" TEXT="2.4. Quy ước đặt tên và giới hạn phát ngôn trong báo cáo tương lai" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E30DF5BC6C1F215E" TEXT="Khi xây dựng báo cáo hoặc tài liệu phân tích về sau, bắt buộc tuân thủ quy tắc phát ngôn:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0AD781597C85C8C1" TEXT="Được phép gọi:" FOLDED="true">
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FDD1480102994F0F" TEXT="“Chi phí quảng cáo phân bổ theo nhóm sản phẩm suy luận (human mapping)”." />
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_530B0EA94E938F90" TEXT="“Tỷ trọng chi phí theo tầng phễu (thăm dò theo nhãn file dẫn xuất)”." />
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3A1E32CD1EC7BE62" TEXT="“Chi phí trên mỗi kết quả quảng cáo Meta (Cost per Result)”." />
        </node>
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D01C9ED2785ED2F2" TEXT="Tuyệt đối chưa được gọi:" FOLDED="true">
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F8A3ADA54AB7F3EE" TEXT="Không gọi chi phí nhóm sản phẩm là “Chi phí thực tế của listing Shopee SP01–SP25” hoặc “Chi phí SKU đã xác minh”." />
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D8272600BB54B01D" TEXT="Không gọi Objective suy luận là “Cấu hình Campaign objective do Meta ghi nhận”." />
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_41C141E47B2202AF" TEXT="Không gọi Purchases conversion value của Meta là “Doanh thu / GMV thực tế của Joycat”." />
          <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6E0F8729B6362F97" TEXT="Khi thiếu GMV business: Không được phát ngôn về “ROAS thực tế của chiến dịch” hay “quảng cáo đang sinh lời bao nhiêu”." />
        </node>
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DB053AE73AD12734" TEXT="2.5. Data gate trước mọi phép so sánh" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F81F470ABCBB8020" TEXT="Chỉ so hai case khi trả lời được:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_05AEA8EFB8BEC423" TEXT="Cùng kỳ, timezone và đơn vị tiền chưa?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6CBF1EBC685117C4" TEXT="Cùng grain chưa? Grain là “một dòng đại diện cho cái gì”: Campaign, Ad set hay Ad trong một kỳ." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0AAAE90C83F4D5DD" TEXT="Nếu dùng Meta Results/Purchases, attribution có giống nhau không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_05C6643C8F521E78" TEXT="Results có cùng Result indicator không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F20F4C1B06FF7F5D" TEXT="Hai case có cùng sản phẩm, nhiệm vụ/objective, phễu và publisher cần kiểm soát không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A25EB298603443E6" TEXT="Nhãn là field gốc hay human mapping? Mapping version nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9B5E6DB671510117" TEXT="Nếu tính Business ROAS, GMV và Ads Cost có cùng phạm vi không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_744D5DFF252ADB56" TEXT="Sau join, số dòng và tổng spend có tăng hoặc mất không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3B47309BE5EDA949" TEXT="Không đạt gate thì gắn Chỉ thăm dò hoặc Chưa so sánh được và nói rõ lý do." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3A0E91C23C8E7E2C" TEXT="3. Kiểm soát Tổng Ads Cost" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8373F7ABBC7557DE" TEXT="3.1. Công thức kiểm soát" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5F4C7B239B6CF445" TEXT="Tổng Ads Cost tháng&#10;= tổng Amount spent (VND) của các dòng Campaign có Campaign name trong tháng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_26B48E3C3121D12D" TEXT="Đường đối soát độc lập:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_16AF68C998C8A60A" TEXT="Tổng Amount spent ở Campaign&#10;≈ Tổng Amount spent ở Ad set&#10;≈ Tổng Amount spent ở Ad" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_00D6B4E8D557A3B6" TEXT="Ba tổng mô tả cùng một khoản tiền ở ba grain. Không cộng Campaign + Ad set + Ad." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9DB24064EFA499A0" TEXT="3.2. Kết quả từ preferred source" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_34B5ACE8A356EC47" TEXT="Tháng | Campaign có spend | Campaign total | Ad set/Ad total | Kết quả" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_921536D78FD89445" TEXT="2026-03 | 18 | 50.195.692 | 50.195.692 | Khớp" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AE6ED26CF779DF24" TEXT="2026-04 | 41 | 64.825.305 | 64.825.345 | Lệch 40 VND; giữ nguyên" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_EB41B001CF3215E4" TEXT="2026-05 | 25 | 63.518.031 | 63.518.031 | Khớp" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6CDB4F585899C3C1" TEXT="Trong preferred Campaign có bốn dòng có spend nhưng thiếu cả Results và Result indicator: tháng 04 có một, tháng 05 có ba. Các dòng này vẫn nằm trong Ads Cost." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AC613C8B9A61ABFC" TEXT="3.3. Chênh lệch file Objective demo tháng 04" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_10AF1B1387790883" TEXT="Kiểm tra | Kết quả" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_160367CE72236E98" TEXT="Preferred Campaign tháng 04 | 64.825.305 VND" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8D061C640350CC79" TEXT="Objective demo tháng 04 | 64.834.557 VND" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A2426597CEDAA3CC" TEXT="Chênh lệch | +9.252 VND" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A05BF4BF5829F76C" TEXT="Chi tiết truy vết:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_06E245B1E277CBAC" TEXT="40/41 tên Campaign trong demo khớp chính xác với preferred source." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E17D1744CBC56A8E" TEXT="Trong 40 dòng khớp tên, 13 dòng có Amount Spent khác; tổng chênh lệch của các dòng này là +7.902 VND." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AB67B33E82601169" TEXT="Demo dòng 63 có Campaign 9/4/2026 - NA - TOFU Test - 1 - Mess -, spend 5.467.562 VND; tên này không tồn tại nguyên văn trong preferred source." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2CFAEC6BFB739E93" TEXT="Preferred source có 9/4/2026 - NA Ver.3 - TOFU Test - NEW 1 - Mess - test Audience 2, spend 5.466.212 VND; tên này không tồn tại nguyên văn trong demo." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0F42D1BDBE919375" TEXT="Phần chênh giữa hai dòng trên là +1.350 VND. 7.902 + 1.350 = 9.252 VND." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A7746389CE1A37F3" TEXT="Kết luận được phép: file demo là nguồn mapping hiện hành, nhưng preferred Campaign mới là số kiểm soát spend đang dùng. Trước ETL production cần xác nhận demo được tạo từ phiên bản export nào hoặc tái tạo mapping trên preferred source." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6D085DB1213C5194" TEXT="4. Chiều Nền tảng" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F452D091A7597B3A" TEXT="4.1. Ý nghĩa và nhóm" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_797BFBB6F66DA649" TEXT="Khái niệm | Nghĩa bằng lời thường | Ví dụ" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_20A311AB97164DF1" TEXT="Publisher platform | Ads thực sự hiển thị ở đâu | Facebook, Instagram, Messenger, Audience Network" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1ED3FD462021AF84" TEXT="Destination | Bấm Ads xong khách được dẫn tới đâu | Messenger, WhatsApp, Shopee, website" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_243F78AA3275F848" TEXT="Sales channel | Doanh nghiệp ghi nhận đơn và GMV ở đâu | Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_21547ED139E3A128" TEXT="Một Ads có thể hiển thị trên Facebook, dẫn khách sang WhatsApp và đơn được ghi tại cửa hàng. Ba tên này không được coi là cùng một chiều." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_54B04697A3943661" TEXT="4.2. Công thức mô hình" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B56653318741E140" TEXT="Tổng Ads Cost&#10;= Ads Cost (Facebook)&#10;+ Ads Cost (Instagram)&#10;+ Ads Cost (Messenger)&#10;+ Ads Cost (Audience Network)&#10;+ Ads Cost (WhatsApp, nếu source trả về như publisher platform)&#10;+ Ads Cost (Nền tảng khác)&#10;+ Ads Cost (Nền tảng chưa xác định)" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_18836F874AC38A8D" TEXT="4.3. Source binding và rule" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_31887DA06E319711" TEXT="Thuộc tính | Quy ước" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1CBF88E38FA3576A" TEXT="File hiện có | Chín preferred workbook Campaign/Ad set/Ad tháng 03–05/2026" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F4375EC92D81990F" TEXT="Sheet | Worksheet" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_629CF6D01B21F319" TEXT="Field cần | Publisher platform; nên lấy thêm Platform position, Impression device" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CB9BA30408756872" TEXT="Grain mong muốn | Campaign hoặc Ad × kỳ × publisher platform × breakdown đi kèm" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E613C4FB5CFF8BE8" TEXT="Khóa | Account ID + object ID dạng text + kỳ + publisher platform + breakdown còn lại" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2C27EC6BE98AB0B8" TEXT="Mapping | Lấy trực tiếp từ export; không suy từ Campaign name, CPAS-SHOPEE hoặc Result indicator" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_88CB4BFC96AEDB60" TEXT="Coverage | Chưa có field Publisher platform trong các workbook đã kiểm tra" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_826C3E67CECC8A4A" TEXT="4.4. Cách phân tích" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E9C029BD0E27026F" TEXT="So platform trong cùng sản phẩm, objective/optimization, phễu, kỳ và attribution. Đọc Spend, CPM, Reach, Frequency, CTR/CPC và Result/Cost per Result đúng loại. Nếu placement hoặc device khác, chênh lệch chưa thể quy riêng cho platform." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_77E030668A700A7A" TEXT="5. Chiều Sản phẩm" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9FA0FBE7D8BDC0C0" TEXT="5.1. Ba cấp không được trộn" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_464F4EB959DEEEF6" TEXT="Cấp | Nghĩa | Dữ liệu hiện có" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A87A80D50133373C" TEXT="Nhóm sản phẩm | Dòng sản phẩm lớn | Có thể suy luận một phần từ Campaign name" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B53A1F9697B4F9E8" TEXT="Listing | Trang bán hàng cụ thể, nhận diện bằng Shopee Item ID | Có snapshot 25 listing" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AB59A8A87F1E97E9" TEXT="SKU/biến thể | Đơn vị bán cụ thể trong hệ thống đơn hàng | Chưa có khóa SKU business" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_48EF9CA576F5B030" TEXT="5.2. Công thức mô hình" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0DBAD6FA63A93BFB" TEXT="Tổng Ads Cost&#10;= Ads Cost (SP01) + Ads Cost (SP02) + ... + Ads Cost (SP25)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Sản phẩm chưa xác định)" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0C8DB5A2E92A9872" TEXT="5.3. Mapping quan sát được" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_51D5650BA96D3F92" TEXT="Tín hiệu trong Campaign name | Mức sâu tối đa | Trạng thái" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2F3604F4B53728D3" TEXT="VI SINH | Nhóm Vi sinh khử mùi | Suy luận; chưa chọn SP01/SP02/SP08" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C6B73403ADD8B283" TEXT="NA | Nhóm Cát Sắn Natural | Suy luận" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DF7DD21E009CB668" TEXT="PFX | Nhóm Cát Mix PerformX | Suy luận" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_056FA60563E378D9" TEXT="MNX | Nhóm Cát Khoáng MineralX | Suy luận" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B2A10A71BDFF2A21" TEXT="CÁT | Ngành hàng cát nói chung | Không đủ chọn Natural/PerformX/MineralX/PowerX/Tofuu.X" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_433DA71691BB4CB1" TEXT="Sale, branding hoặc không có mã | Shared/Unmapped | Không ép xuống sản phẩm" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1864E1A1DD3F339A" TEXT="Các rule này chưa được Duy/cậu Sinh duyệt như mapping sản phẩm chính thức. Snapshot ngày 25/08/2026 không chứng minh listing đã tồn tại hoặc được quảng cáo trong tháng 03–05/2026." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E634BAF0E6F2FE60" TEXT="5.4. Source binding và cách phân tích" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9DC6567E894A0BA8" TEXT="Nguồn catalog: JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx, sheet Danh sách sản phẩm, Item ID ở cột Item ID." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1D059B161067723E" TEXT="Nguồn Ads: preferred Campaign có Campaign name; chưa có Product ID/Item ID/SKU." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CC2A0B30B3D47557" TEXT="Grain ưu tiên cho mapping: Ad × kỳ khi creative quảng cáo sản phẩm cụ thể. Campaign chỉ dùng nếu toàn Campaign có cùng phạm vi sản phẩm." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_320D67731B6DA8AD" TEXT="Một Ad quảng cáo nhiều sản phẩm cần bridge. Giữ Multi-product/Shared cho tới khi có rule phân bổ được owner duyệt." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_224E9F9617322F00" TEXT="Khi phân tích, so cùng nhóm/listing trước; sau đó kiểm soát objective, phễu, publisher, format, kỳ và attribution." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7B2970BC9471400E" TEXT="6. Chiều Phễu" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3DD71BB8B4A35923" TEXT="6.1. Ý nghĩa" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_16A2050EA3F7377E" TEXT="Nhãn | Nhiệm vụ phân tích | Không được mặc định" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_221CF1F344126386" TEXT="TOFU | Phân phối, nhận biết và tạo tín hiệu ban đầu | Mọi post engagement đều chắc chắn là TOFU; CPM phải cao/thấp" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C924E59E25186C3D" TEXT="MOFU | Quan tâm, click, tương tác sâu hoặc messaging | Mọi messaging result đều chắc chắn là MOFU" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DF5EDCE7EA93E28E" TEXT="BOFU | Hành động mua, đơn và GMV | Meta Purchase bằng đơn/GMV business" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7297911C4DB07F0D" TEXT="Mixed/Shared | Một đối tượng phục vụ nhiều tầng | Tự chia đều spend cho ba tầng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DD81BC2DDEEC164E" TEXT="Chưa phân loại | Chưa đủ căn cứ | Loại spend khỏi tổng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E64F96CF499937DC" TEXT="Owner đã xác nhận ở cấp cao: TOFU hướng tới View; MOFU/BOFU hướng tới chuyển đổi. Rule gắn từng Campaign vẫn chưa khóa." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_4557BCE702456B12" TEXT="6.2. Công thức mô hình" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_EB62D0A99A7A77AA" TEXT="Tổng Ads Cost&#10;= Ads Cost (TOFU)&#10;+ Ads Cost (MOFU)&#10;+ Ads Cost (BOFU)&#10;+ Ads Cost (Mixed/Shared Funnel)&#10;+ Ads Cost (Chưa phân loại phễu)" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FC5FD4C800EB4F5D" TEXT="6.3. Source binding và rule" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B04BDFE8E97A5B67" TEXT="File mapping hiện dùng: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx, sheet Campaign_3_tháng, cột Phễu." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_15913435ECB52F9C" TEXT="Grain hiện tại: Campaign name × tháng trong file dẫn xuất." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3A70B2A5758C8AF2" TEXT="Coverage quan sát: 84 Campaign có spend gồm MOFU 47, TOFU 27, BOFU 10." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FC57D30154FFA718" TEXT="Trạng thái: human mapping một phần; chưa có rule, version, người xác nhận và kỳ hiệu lực đầy đủ." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D339FDBE5D5F9BBE" TEXT="Mapping tối thiểu cần giữ: object_level, object_id_text, funnel_stage, mapping_basis, mapping_version, confirmed_by, valid_from, valid_to, review_status." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_495CF45D485CF22D" TEXT="Khi objective, name và vai trò thật xung đột, dùng Mixed/Shared hoặc Chưa phân loại để chờ review." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1468DEF3447FE11C" TEXT="7. Chiều Campaign objective" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_749C76DB109B161C" TEXT="7.1. Bốn lớp phải tách riêng" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F983C5E03357A9AF" TEXT="Lớp | Grain chính | Nó trả lời câu hỏi nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B0D0136AFA0BC045" TEXT="Campaign objective gốc | Campaign | Campaign được tạo với nhóm mục tiêu nào trong Meta?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B1DEF3FF38076E98" TEXT="Optimization/Performance goal | Ad set | Meta đang tối ưu phân phối cho hành động nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_55755066B7056E34" TEXT="Result indicator | Dòng Insights | Results của dòng đang đại diện loại kết quả nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7D2B26E29FF5BA25" TEXT="Objective suy luận | Campaign × kỳ trong file hiện hành | Con người phân nhóm Campaign để ETL/phân tích khi thiếu objective gốc" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_413F346CF1C3F368" TEXT="7.2. Nhãn thực tế trong file demo" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1B5A2954AE1A8D67" TEXT="Engagement - Messaging&#10;Engagement - Post engagement&#10;Sales - Purchase&#10;Sales - Purchase [Suy luận từ tên Campaign]&#10;Awareness - Ad recall&#10;Chưa xác định" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_BF62081DDB6E83F4" TEXT="Số Campaign có spend: 49, 26, 4, 2, 1 và 2; tổng 84." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_36064EFC531F1EBA" TEXT="7.3. Công thức mô hình" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_296D976DD0A5B3B5" TEXT="Tổng Ads Cost&#10;= Ads Cost (Engagement - Messaging)&#10;+ Ads Cost (Engagement - Post engagement)&#10;+ Ads Cost (Sales - Purchase)&#10;+ Ads Cost (Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Awareness - Ad recall)&#10;+ Ads Cost (Objective khác)&#10;+ Ads Cost (Objective chưa xác định)" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8CB0FB26A5421B12" TEXT="7.4. Rule và quyết định của Duy" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1FB9D4BA368C251A" TEXT="Owner đã xác nhận — Duy, 05/09/2026: được dùng Objective suy luận làm human-curated ETL input vì raw thiếu Campaign objective. “Human-curated” nghĩa là nhãn do con người gắn và chịu trách nhiệm review, không phải field Meta tự xuất." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F171494621D82F4D" TEXT="Cơ sở | Objective suy luận" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E225A6B49677EAAE" TEXT="actions:onsite_conversion.messaging_conversation_started_7d | Engagement - Messaging" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_16F1BC9B60D0F54F" TEXT="actions:post_engagement | Engagement - Post engagement" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_23290D7DD4CCED29" TEXT="actions:onsite_conversion.purchase | Sales - Purchase" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_53F9D34A19F5DFDD" TEXT="estimated_ad_recallers | Awareness - Ad recall" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5267FDD8BB05C805" TEXT="Result trống, Campaign name có Doanh số | Sales - Purchase [Suy luận từ tên Campaign]" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DAFDE807009E8350" TEXT="Không đủ tín hiệu | Chưa xác định" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E91D691384158490" TEXT="Thứ tự ưu tiên: manual override được review → Result indicator → Campaign name theo rule → Chưa xác định." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_554BD1AEFA7D3868" TEXT="ETL phải giữ objective_mapped, objective_mapping_basis, objective_mapping_version, mapped_by, mapped_at, review_status. Nếu có objective Meta sau này, lưu riêng thành campaign_objective_meta để đối soát; không ghi đè lịch sử human mapping." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_826B478F5E038BD7" TEXT="8. Sáu cặp: công thức, nguồn và cách đối soát" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F76665488616EB9A" TEXT="Mỗi cặp là một bảng giao giữa hai chiều. Các ô trong một cặp phải không trùng nhau và bao hết spend nhờ Shared/Mixed/Unmapped. Không cộng tổng của sáu cặp với nhau." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2FEE6A7068398FC1" TEXT="8.1. Nền tảng × Sản phẩm" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_BE2D5DF708675899" TEXT="Câu hỏi: trên từng nơi hiển thị, tiền được chi cho sản phẩm nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DD9975C2E9FDCCDF" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, SP01) + Ads Cost (Facebook, SP02) + ... + Ads Cost (Facebook, SP25)&#10;+ Ads Cost (Facebook, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Facebook, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Facebook, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, SP01) + Ads Cost (Instagram, SP02) + ... + Ads Cost (Instagram, SP25)&#10;+ Ads Cost (Instagram, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Instagram, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Instagram, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, SP01) + Ads Cost (Messenger, SP02) + ... + Ads Cost (Messenger, SP25)&#10;+ Ads Cost (Messenger, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Messenger, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Messenger, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, SP01) + ... + Ads Cost (Audience Network, SP25)&#10;+ Ads Cost (Audience Network, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Audience Network, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Audience Network, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, SP01) + ... + Ads Cost (WhatsApp, SP25)&#10;+ Ads Cost (WhatsApp, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (WhatsApp, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (WhatsApp, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Nền tảng khác/chưa xác định)&#10;= Ads Cost (Nền tảng khác/chưa xác định, SP01) + ... + Ads Cost (Nền tảng khác/chưa xác định, SP25)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, Nhóm sản phẩm/shared/unmapped)" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_96A9E201492E0268" TEXT="Cách đọc ngược: Ads Cost (SP01) = Ads Cost (Facebook, SP01) + Ads Cost (Instagram, SP01) + ... + Ads Cost (Nền tảng chưa xác định, SP01)." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_BCC5BA0A1F8A8B94" TEXT="Nguồn cần: publisher breakdown và Ads ID → Item ID/SKU mapping ở grain tương thích. Hiện thiếu cả hai; chưa tính được." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FE8562FC24C51978" TEXT="8.2. Nền tảng × Phễu" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_50B6D87CCCD2850D" TEXT="Câu hỏi: trên từng publisher platform, tiền phục vụ tầng phễu nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F15C08F40704F9AC" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, TOFU) + Ads Cost (Facebook, MOFU) + Ads Cost (Facebook, BOFU)&#10;+ Ads Cost (Facebook, Mixed/Shared Funnel) + Ads Cost (Facebook, Chưa phân loại phễu)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, TOFU) + Ads Cost (Instagram, MOFU) + Ads Cost (Instagram, BOFU)&#10;+ Ads Cost (Instagram, Mixed/Shared Funnel) + Ads Cost (Instagram, Chưa phân loại phễu)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, TOFU) + Ads Cost (Messenger, MOFU) + Ads Cost (Messenger, BOFU)&#10;+ Ads Cost (Messenger, Mixed/Shared Funnel) + Ads Cost (Messenger, Chưa phân loại phễu)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, TOFU) + Ads Cost (Audience Network, MOFU) + Ads Cost (Audience Network, BOFU)&#10;+ Ads Cost (Audience Network, Mixed/Shared Funnel) + Ads Cost (Audience Network, Chưa phân loại phễu)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, TOFU) + Ads Cost (WhatsApp, MOFU) + Ads Cost (WhatsApp, BOFU)&#10;+ Ads Cost (WhatsApp, Mixed/Shared Funnel) + Ads Cost (WhatsApp, Chưa phân loại phễu)&#10;&#10;Ads Cost (Nền tảng khác/chưa xác định)&#10;= Ads Cost (Nền tảng khác/chưa xác định, TOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, MOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, BOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, Mixed/Shared/Chưa phân loại)" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D787FE3B45D6F3F7" TEXT="Cách đọc ngược: Ads Cost (TOFU) = Ads Cost (Facebook, TOFU) + Ads Cost (Instagram, TOFU) + ...." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2BFEE09759D466F7" TEXT="Nguồn cần: publisher breakdown + map_funnel; cùng ID/kỳ/grain. Hiện bị chặn bởi Publisher platform." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_78144DDF5658E3D7" TEXT="8.3. Nền tảng × Campaign objective" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_4673D8D8907AE783" TEXT="Câu hỏi: mỗi publisher platform chi bao nhiêu cho từng nhóm objective?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0FB0E7994B4B2D1C" TEXT="Viết riêng từng nền tảng để ETL không phải suy đoán “P” là gì:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FDED7E60506CAD14" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, Engagement - Messaging)&#10;+ Ads Cost (Facebook, Engagement - Post engagement)&#10;+ Ads Cost (Facebook, Sales - Purchase)&#10;+ Ads Cost (Facebook, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Facebook, Awareness - Ad recall)&#10;+ Ads Cost (Facebook, Objective khác)&#10;+ Ads Cost (Facebook, Objective chưa xác định)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, Engagement - Messaging)&#10;+ Ads Cost (Instagram, Engagement - Post engagement)&#10;+ Ads Cost (Instagram, Sales - Purchase)&#10;+ Ads Cost (Instagram, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Instagram, Awareness - Ad recall)&#10;+ Ads Cost (Instagram, Objective khác)&#10;+ Ads Cost (Instagram, Objective chưa xác định)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, Engagement - Messaging)&#10;+ Ads Cost (Messenger, Engagement - Post engagement)&#10;+ Ads Cost (Messenger, Sales - Purchase)&#10;+ Ads Cost (Messenger, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Messenger, Awareness - Ad recall)&#10;+ Ads Cost (Messenger, Objective khác)&#10;+ Ads Cost (Messenger, Objective chưa xác định)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, Engagement - Messaging)&#10;+ Ads Cost (Audience Network, Engagement - Post engagement)&#10;+ Ads Cost (Audience Network, Sales - Purchase)&#10;+ Ads Cost (Audience Network, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Audience Network, Awareness - Ad recall)&#10;+ Ads Cost (Audience Network, Objective khác)&#10;+ Ads Cost (Audience Network, Objective chưa xác định)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Messaging)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Post engagement)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Awareness - Ad recall)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Objective khác)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Objective chưa xác định)&#10;&#10;Ads Cost (Nền tảng khác)&#10;= Ads Cost (Nền tảng khác, Engagement - Messaging)&#10;+ Ads Cost (Nền tảng khác, Engagement - Post engagement)&#10;+ Ads Cost (Nền tảng khác, Sales - Purchase)&#10;+ Ads Cost (Nền tảng khác, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nền tảng khác, Awareness - Ad recall)&#10;+ Ads Cost (Nền tảng khác, Objective khác)&#10;+ Ads Cost (Nền tảng khác, Objective chưa xác định)&#10;&#10;Ads Cost (Nền tảng chưa xác định)&#10;= Ads Cost (Nền tảng chưa xác định, Engagement - Messaging)&#10;+ Ads Cost (Nền tảng chưa xác định, Engagement - Post engagement)&#10;+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase)&#10;+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nền tảng chưa xác định, Awareness - Ad recall)&#10;+ Ads Cost (Nền tảng chưa xác định, Objective khác)&#10;+ Ads Cost (Nền tảng chưa xác định, Objective chưa xác định)" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8E1CDE515A3ED63A" TEXT="Các block trên là công thức mô hình. Chỉ điền Ads Cost thật khi source trả về đúng publisher_platform; riêng WhatsApp phải được xác nhận là publisher, không lấy destination thay thế." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_18BB3EA9A0D1683A" TEXT="Cách đọc ngược: cộng một objective qua toàn bộ publisher platform. Nguồn cần: publisher breakdown + Objective human mapping. Objective đã có; publisher vẫn thiếu." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F858EC6D00ECBF58" TEXT="8.4. Phễu × Sản phẩm" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FAC72BC6B0F0A3B7" TEXT="Câu hỏi: trong mỗi tầng phễu, tiền được chi cho sản phẩm nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8E313323764293CE" TEXT="Ads Cost (TOFU)&#10;= Ads Cost (TOFU, SP01) + Ads Cost (TOFU, SP02) + ... + Ads Cost (TOFU, SP25)&#10;+ Ads Cost (TOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (TOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (TOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (MOFU)&#10;= Ads Cost (MOFU, SP01) + Ads Cost (MOFU, SP02) + ... + Ads Cost (MOFU, SP25)&#10;+ Ads Cost (MOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (MOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (MOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (BOFU)&#10;= Ads Cost (BOFU, SP01) + Ads Cost (BOFU, SP02) + ... + Ads Cost (BOFU, SP25)&#10;+ Ads Cost (BOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (BOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (BOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Mixed/Shared Funnel)&#10;= Ads Cost (Mixed/Shared Funnel, SP01) + ... + Ads Cost (Mixed/Shared Funnel, SP25)&#10;+ Ads Cost (Mixed/Shared Funnel, Nhóm sản phẩm/shared/unmapped)&#10;&#10;Ads Cost (Chưa phân loại phễu)&#10;= Ads Cost (Chưa phân loại phễu, SP01) + ... + Ads Cost (Chưa phân loại phễu, SP25)&#10;+ Ads Cost (Chưa phân loại phễu, Nhóm sản phẩm/shared/unmapped)" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0F01DCD97FE58025" TEXT="Nguồn hiện tại cho phép thăm dò ở cấp nhóm/ngành hàng vì Phễu và Campaign name nằm cùng dòng. Chưa có bằng chứng cho SP01–SP25." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_735D8C4E7F4511EB" TEXT="8.5. Sản phẩm × Campaign objective" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A359D3684AE86845" TEXT="Câu hỏi: mỗi sản phẩm/nhóm sản phẩm đang nhận spend cho nhiệm vụ nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AF4460883655E6D9" TEXT="Viết đủ 25 listing và ba bucket ngoại lệ để mô hình không làm rơi spend:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1747B3714D07FF73" TEXT="Ads Cost (SP01)&#10;= Ads Cost (SP01, Engagement - Messaging)&#10;+ Ads Cost (SP01, Engagement - Post engagement)&#10;+ Ads Cost (SP01, Sales - Purchase)&#10;+ Ads Cost (SP01, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP01, Awareness - Ad recall)&#10;+ Ads Cost (SP01, Objective khác)&#10;+ Ads Cost (SP01, Objective chưa xác định)&#10;&#10;Ads Cost (SP02)&#10;= Ads Cost (SP02, Engagement - Messaging)&#10;+ Ads Cost (SP02, Engagement - Post engagement)&#10;+ Ads Cost (SP02, Sales - Purchase)&#10;+ Ads Cost (SP02, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP02, Awareness - Ad recall)&#10;+ Ads Cost (SP02, Objective khác)&#10;+ Ads Cost (SP02, Objective chưa xác định)&#10;&#10;Ads Cost (SP03)&#10;= Ads Cost (SP03, Engagement - Messaging)&#10;+ Ads Cost (SP03, Engagement - Post engagement)&#10;+ Ads Cost (SP03, Sales - Purchase)&#10;+ Ads Cost (SP03, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP03, Awareness - Ad recall)&#10;+ Ads Cost (SP03, Objective khác)&#10;+ Ads Cost (SP03, Objective chưa xác định)&#10;&#10;Ads Cost (SP04)&#10;= Ads Cost (SP04, Engagement - Messaging)&#10;+ Ads Cost (SP04, Engagement - Post engagement)&#10;+ Ads Cost (SP04, Sales - Purchase)&#10;+ Ads Cost (SP04, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP04, Awareness - Ad recall)&#10;+ Ads Cost (SP04, Objective khác)&#10;+ Ads Cost (SP04, Objective chưa xác định)&#10;&#10;Ads Cost (SP05)&#10;= Ads Cost (SP05, Engagement - Messaging)&#10;+ Ads Cost (SP05, Engagement - Post engagement)&#10;+ Ads Cost (SP05, Sales - Purchase)&#10;+ Ads Cost (SP05, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP05, Awareness - Ad recall)&#10;+ Ads Cost (SP05, Objective khác)&#10;+ Ads Cost (SP05, Objective chưa xác định)&#10;&#10;Ads Cost (SP06)&#10;= Ads Cost (SP06, Engagement - Messaging)&#10;+ Ads Cost (SP06, Engagement - Post engagement)&#10;+ Ads Cost (SP06, Sales - Purchase)&#10;+ Ads Cost (SP06, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP06, Awareness - Ad recall)&#10;+ Ads Cost (SP06, Objective khác)&#10;+ Ads Cost (SP06, Objective chưa xác định)&#10;&#10;Ads Cost (SP07)&#10;= Ads Cost (SP07, Engagement - Messaging)&#10;+ Ads Cost (SP07, Engagement - Post engagement)&#10;+ Ads Cost (SP07, Sales - Purchase)&#10;+ Ads Cost (SP07, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP07, Awareness - Ad recall)&#10;+ Ads Cost (SP07, Objective khác)&#10;+ Ads Cost (SP07, Objective chưa xác định)&#10;&#10;Ads Cost (SP08)&#10;= Ads Cost (SP08, Engagement - Messaging)&#10;+ Ads Cost (SP08, Engagement - Post engagement)&#10;+ Ads Cost (SP08, Sales - Purchase)&#10;+ Ads Cost (SP08, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP08, Awareness - Ad recall)&#10;+ Ads Cost (SP08, Objective khác)&#10;+ Ads Cost (SP08, Objective chưa xác định)&#10;&#10;Ads Cost (SP09)&#10;= Ads Cost (SP09, Engagement - Messaging)&#10;+ Ads Cost (SP09, Engagement - Post engagement)&#10;+ Ads Cost (SP09, Sales - Purchase)&#10;+ Ads Cost (SP09, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP09, Awareness - Ad recall)&#10;+ Ads Cost (SP09, Objective khác)&#10;+ Ads Cost (SP09, Objective chưa xác định)&#10;&#10;Ads Cost (SP10)&#10;= Ads Cost (SP10, Engagement - Messaging)&#10;+ Ads Cost (SP10, Engagement - Post engagement)&#10;+ Ads Cost (SP10, Sales - Purchase)&#10;+ Ads Cost (SP10, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP10, Awareness - Ad recall)&#10;+ Ads Cost (SP10, Objective khác)&#10;+ Ads Cost (SP10, Objective chưa xác định)&#10;&#10;Ads Cost (SP11)&#10;= Ads Cost (SP11, Engagement - Messaging)&#10;+ Ads Cost (SP11, Engagement - Post engagement)&#10;+ Ads Cost (SP11, Sales - Purchase)&#10;+ Ads Cost (SP11, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP11, Awareness - Ad recall)&#10;+ Ads Cost (SP11, Objective khác)&#10;+ Ads Cost (SP11, Objective chưa xác định)&#10;&#10;Ads Cost (SP12)&#10;= Ads Cost (SP12, Engagement - Messaging)&#10;+ Ads Cost (SP12, Engagement - Post engagement)&#10;+ Ads Cost (SP12, Sales - Purchase)&#10;+ Ads Cost (SP12, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP12, Awareness - Ad recall)&#10;+ Ads Cost (SP12, Objective khác)&#10;+ Ads Cost (SP12, Objective chưa xác định)&#10;&#10;Ads Cost (SP13)&#10;= Ads Cost (SP13, Engagement - Messaging)&#10;+ Ads Cost (SP13, Engagement - Post engagement)&#10;+ Ads Cost (SP13, Sales - Purchase)&#10;+ Ads Cost (SP13, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP13, Awareness - Ad recall)&#10;+ Ads Cost (SP13, Objective khác)&#10;+ Ads Cost (SP13, Objective chưa xác định)&#10;&#10;Ads Cost (SP14)&#10;= Ads Cost (SP14, Engagement - Messaging)&#10;+ Ads Cost (SP14, Engagement - Post engagement)&#10;+ Ads Cost (SP14, Sales - Purchase)&#10;+ Ads Cost (SP14, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP14, Awareness - Ad recall)&#10;+ Ads Cost (SP14, Objective khác)&#10;+ Ads Cost (SP14, Objective chưa xác định)&#10;&#10;Ads Cost (SP15)&#10;= Ads Cost (SP15, Engagement - Messaging)&#10;+ Ads Cost (SP15, Engagement - Post engagement)&#10;+ Ads Cost (SP15, Sales - Purchase)&#10;+ Ads Cost (SP15, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP15, Awareness - Ad recall)&#10;+ Ads Cost (SP15, Objective khác)&#10;+ Ads Cost (SP15, Objective chưa xác định)&#10;&#10;Ads Cost (SP16)&#10;= Ads Cost (SP16, Engagement - Messaging)&#10;+ Ads Cost (SP16, Engagement - Post engagement)&#10;+ Ads Cost (SP16, Sales - Purchase)&#10;+ Ads Cost (SP16, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP16, Awareness - Ad recall)&#10;+ Ads Cost (SP16, Objective khác)&#10;+ Ads Cost (SP16, Objective chưa xác định)&#10;&#10;Ads Cost (SP17)&#10;= Ads Cost (SP17, Engagement - Messaging)&#10;+ Ads Cost (SP17, Engagement - Post engagement)&#10;+ Ads Cost (SP17, Sales - Purchase)&#10;+ Ads Cost (SP17, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP17, Awareness - Ad recall)&#10;+ Ads Cost (SP17, Objective khác)&#10;+ Ads Cost (SP17, Objective chưa xác định)&#10;&#10;Ads Cost (SP18)&#10;= Ads Cost (SP18, Engagement - Messaging)&#10;+ Ads Cost (SP18, Engagement - Post engagement)&#10;+ Ads Cost (SP18, Sales - Purchase)&#10;+ Ads Cost (SP18, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP18, Awareness - Ad recall)&#10;+ Ads Cost (SP18, Objective khác)&#10;+ Ads Cost (SP18, Objective chưa xác định)&#10;&#10;Ads Cost (SP19)&#10;= Ads Cost (SP19, Engagement - Messaging)&#10;+ Ads Cost (SP19, Engagement - Post engagement)&#10;+ Ads Cost (SP19, Sales - Purchase)&#10;+ Ads Cost (SP19, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP19, Awareness - Ad recall)&#10;+ Ads Cost (SP19, Objective khác)&#10;+ Ads Cost (SP19, Objective chưa xác định)&#10;&#10;Ads Cost (SP20)&#10;= Ads Cost (SP20, Engagement - Messaging)&#10;+ Ads Cost (SP20, Engagement - Post engagement)&#10;+ Ads Cost (SP20, Sales - Purchase)&#10;+ Ads Cost (SP20, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP20, Awareness - Ad recall)&#10;+ Ads Cost (SP20, Objective khác)&#10;+ Ads Cost (SP20, Objective chưa xác định)&#10;&#10;Ads Cost (SP21)&#10;= Ads Cost (SP21, Engagement - Messaging)&#10;+ Ads Cost (SP21, Engagement - Post engagement)&#10;+ Ads Cost (SP21, Sales - Purchase)&#10;+ Ads Cost (SP21, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP21, Awareness - Ad recall)&#10;+ Ads Cost (SP21, Objective khác)&#10;+ Ads Cost (SP21, Objective chưa xác định)&#10;&#10;Ads Cost (SP22)&#10;= Ads Cost (SP22, Engagement - Messaging)&#10;+ Ads Cost (SP22, Engagement - Post engagement)&#10;+ Ads Cost (SP22, Sales - Purchase)&#10;+ Ads Cost (SP22, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP22, Awareness - Ad recall)&#10;+ Ads Cost (SP22, Objective khác)&#10;+ Ads Cost (SP22, Objective chưa xác định)&#10;&#10;Ads Cost (SP23)&#10;= Ads Cost (SP23, Engagement - Messaging)&#10;+ Ads Cost (SP23, Engagement - Post engagement)&#10;+ Ads Cost (SP23, Sales - Purchase)&#10;+ Ads Cost (SP23, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP23, Awareness - Ad recall)&#10;+ Ads Cost (SP23, Objective khác)&#10;+ Ads Cost (SP23, Objective chưa xác định)&#10;&#10;Ads Cost (SP24)&#10;= Ads Cost (SP24, Engagement - Messaging)&#10;+ Ads Cost (SP24, Engagement - Post engagement)&#10;+ Ads Cost (SP24, Sales - Purchase)&#10;+ Ads Cost (SP24, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP24, Awareness - Ad recall)&#10;+ Ads Cost (SP24, Objective khác)&#10;+ Ads Cost (SP24, Objective chưa xác định)&#10;&#10;Ads Cost (SP25)&#10;= Ads Cost (SP25, Engagement - Messaging)&#10;+ Ads Cost (SP25, Engagement - Post engagement)&#10;+ Ads Cost (SP25, Sales - Purchase)&#10;+ Ads Cost (SP25, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP25, Awareness - Ad recall)&#10;+ Ads Cost (SP25, Objective khác)&#10;+ Ads Cost (SP25, Objective chưa xác định)&#10;&#10;Ads Cost (Chỉ xác định được nhóm sản phẩm)&#10;= Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Messaging)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Post engagement)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Awareness - Ad recall)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective khác)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective chưa xác định)&#10;&#10;Ads Cost (Nhiều sản phẩm/branding/shared)&#10;= Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Messaging)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Post engagement)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Awareness - Ad recall)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective khác)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective chưa xác định)&#10;&#10;Ads Cost (Sản phẩm chưa xác định)&#10;= Ads Cost (Sản phẩm chưa xác định, Engagement - Messaging)&#10;+ Ads Cost (Sản phẩm chưa xác định, Engagement - Post engagement)&#10;+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase)&#10;+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Sản phẩm chưa xác định, Awareness - Ad recall)&#10;+ Ads Cost (Sản phẩm chưa xác định, Objective khác)&#10;+ Ads Cost (Sản phẩm chưa xác định, Objective chưa xác định)" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_95211C45D1CC4C33" TEXT="Đây là ma trận mô hình. Dataset hiện chưa có khóa Ads → listing nên chưa được điền spend vào SP01–SP25; chỉ có thể thăm dò ở cấp nhóm/ngành hàng theo quy tắc suy luận được ghi riêng." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_03D012986FB8CF50" TEXT="Cách đọc ngược: mỗi Objective bằng tổng các ô của SP01–SP25 và các bucket ngoại lệ. Hiện mới thăm dò được nhóm/ngành hàng × Objective suy luận." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E3FDBEE1BA116F5D" TEXT="8.6. Phễu × Campaign objective" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D5EFCCDFC1BF7892" TEXT="Câu hỏi: trong từng tầng phễu, tiền đang phục vụ nhóm objective nào?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_38889955DC18487F" TEXT="Ads Cost (TOFU)&#10;= Ads Cost (TOFU, Engagement - Messaging)&#10;+ Ads Cost (TOFU, Engagement - Post engagement)&#10;+ Ads Cost (TOFU, Sales - Purchase)&#10;+ Ads Cost (TOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (TOFU, Awareness - Ad recall)&#10;+ Ads Cost (TOFU, Objective khác)&#10;+ Ads Cost (TOFU, Objective chưa xác định)&#10;&#10;Ads Cost (MOFU)&#10;= Ads Cost (MOFU, Engagement - Messaging)&#10;+ Ads Cost (MOFU, Engagement - Post engagement)&#10;+ Ads Cost (MOFU, Sales - Purchase)&#10;+ Ads Cost (MOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (MOFU, Awareness - Ad recall)&#10;+ Ads Cost (MOFU, Objective khác)&#10;+ Ads Cost (MOFU, Objective chưa xác định)&#10;&#10;Ads Cost (BOFU)&#10;= Ads Cost (BOFU, Engagement - Messaging)&#10;+ Ads Cost (BOFU, Engagement - Post engagement)&#10;+ Ads Cost (BOFU, Sales - Purchase)&#10;+ Ads Cost (BOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (BOFU, Awareness - Ad recall)&#10;+ Ads Cost (BOFU, Objective khác)&#10;+ Ads Cost (BOFU, Objective chưa xác định)&#10;&#10;Ads Cost (Mixed/Shared Funnel)&#10;= tổng các Ads Cost (Mixed/Shared Funnel, từng Objective và Objective chưa xác định)&#10;&#10;Ads Cost (Chưa phân loại phễu)&#10;= tổng các Ads Cost (Chưa phân loại phễu, từng Objective và Objective chưa xác định)" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C05FDCBB97841C75" TEXT="Hai chiều đang cùng nằm trong file demo nên có thể tạo bảng thăm dò. Objective được Duy cho phép dùng; Phễu còn cần khóa hợp đồng." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_633DF1BD1BED6505" TEXT="8.7. Kiểm soát chung của sáu cặp" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_67BC599AC4CD304B" TEXT="Với mỗi cặp và từng tháng:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_30B3A073CF6D4089" TEXT="Tổng số dòng nguồn = tổng số dòng ở mọi ô của cặp&#10;Tổng Amount Spent nguồn = tổng Ads Cost ở mọi ô của cặp" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_33E00F058C443EF1" TEXT="Nếu một dòng nối nhiều sản phẩm, phép join có thể nhân spend. Phải giữ Shared hoặc dùng allocation rule có owner duyệt; tổng sau phân bổ vẫn phải quay về tổng trước phân bổ." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6306449CBC441DA6" TEXT="9. Coverage từng tổ hợp đã kiểm tra" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_83F9427D53AD798B" TEXT="Bảng chi tiết 279 dòng nằm tại 02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv. Bảng lưu kỳ, hai giá trị chiều, cấp sản phẩm, số dòng, Ads Cost, source row, mapping, trạng thái, lý do và bước xử lý." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_536A53CA59CCC58A" TEXT="9.1. Ba cặp có Nền tảng" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2A69B39F6833877B" TEXT="Mỗi tháng được ghi Thiếu nguồn/thiếu chiều. Không tạo ô Facebook/Instagram/WhatsApp có spend vì source không có Publisher platform." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3351C48F72CA00BC" TEXT="9.2. Ba cặp có thể thăm dò bằng mapping" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2DE44B1D71E91037" TEXT="Cặp | 2026-03 | 2026-04 | 2026-05 | Đối soát nội bộ với demo" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C98B1982BAFB1841" TEXT="Phễu × Sản phẩm | 9 ô quan sát | 13 ô | 13 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AE34DF129B03438F" TEXT="Sản phẩm × Objective | 7 ô | 12 ô | 16 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_13622A4517764D7A" TEXT="Phễu × Objective | 3 ô | 4 ô | 6 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_ECEC2B92FD404EF4" TEXT="“Ô quan sát” nghĩa là có ít nhất một Campaign được mapping vào tổ hợp. Ô không có dòng được ghi Chưa quan sát trong phạm vi đã kiểm tra và để trống Ads Cost; không đổi thành 0." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B92595BAE51C2C59" TEXT="9.3. Trạng thái coverage dùng cho ETL/report" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6EF403D7AA0DE2DD" TEXT="Trạng thái | Khi dùng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_78573FB19AB4E56E" TEXT="Có dữ liệu và tính được | Hai chiều là source trực tiếp và join đã đối soát" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0F2331D20B72C502" TEXT="Tính được bằng human mapping | Có rule/basis truy vết và owner cho phép dùng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1802C9C0773BC50B" TEXT="Chỉ tính được một phần | Ví dụ chỉ xuống nhóm sản phẩm, chưa xuống listing/SKU" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7D17F5FC21FC5220" TEXT="Chưa map | Có dòng nhưng thiếu nhãn" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_41C07733AF830FA3" TEXT="Thiếu nguồn/thiếu chiều | Không có field cần thiết như Publisher platform" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_81AF1352E808EDDE" TEXT="Không nối được | Có hai nguồn nhưng thiếu khóa/grain tương thích" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_060D3325120FFA85" TEXT="Chưa quan sát tổ hợp | Trong phạm vi đã kiểm tra không có dòng; Ads Cost để trống" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AF86840F2EAE99FD" TEXT="Bằng 0 được nguồn xác nhận | Chỉ dùng khi source bao phủ cả dòng zero và chứng minh giá trị 0" />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E36D645984074780" TEXT="10. Đường phân tích các nhóm metric" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CEFB3A8ED2B48FC0" TEXT="CPM chỉ là một mắt xích. Mỗi nhóm dưới đây phải được đọc theo cùng nguyên tắc: xác định case → chọn nhóm so sánh tương đồng → tính lại từ raw metric → xem nhiều chiều → drill-down → kiểm chứng giả thuyết." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_4F8752D976937A4A" TEXT="10.1. Phân phối: Spend, Impressions, Reach, Frequency, CPM" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_ADD487E617769361" TEXT="CPM = Ads Cost / Impressions × 1.000&#10;Ads Cost = Impressions × CPM / 1.000&#10;Frequency = Impressions / Reach&#10;Ads Cost = Reach × Frequency × CPM / 1.000" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_956022D1A1AC2E7F" TEXT="Câu hỏi: chi phí khác do giá mua hiển thị, số người tiếp cận hay số lần lặp lại?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FB5CE058F8A2BB50" TEXT="So sánh: cùng sản phẩm, objective/optimization, phễu, publisher/placement, format, kỳ và attribution." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_38C93EDDEF14957B" TEXT="Đọc cùng: Spend, Impressions, Reach, Frequency, CPM; thêm CTR/CPC và đúng Result/CPR để biết phân phối có tạo hành động liên quan không." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_944B9C9773DDE9AF" TEXT="Giả thuyết: platform/placement, creative/format, thời gian, cấu hình tối ưu hoặc cơ cấu Campaign khác nhau." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_662DF24B22C9C47A" TEXT="Bằng chứng hỗ trợ: chênh lệch vẫn còn khi các biến so sánh chính tương đồng; drill-down chỉ ra Ad set/Ad cụ thể." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C820721136E75884" TEXT="Bằng chứng phản bác: hai case khác sản phẩm, objective, phễu hoặc publisher; khi đó CPM không được so như cùng nhiệm vụ." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F930B93CC9070582" TEXT="Kết luận được phép: mô tả chênh lệch và nơi phát sinh. Chưa kết luận CPM cao/thấp là tốt/xấu hoặc làm ROAS thay đổi nếu chưa có case và GMV cùng phạm vi." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0A0124182B36F3A9" TEXT="10.2. Click: Clicks, Link Clicks, CTR và CPC" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8309F47A6AB83C4F" TEXT="CTR (all, dạng thập phân) = Clicks (all) / Impressions&#10;CTR (link, dạng thập phân) = Link Clicks / Impressions&#10;CPC (all) = Ads Cost / Clicks (all)&#10;CPC (link) = Ads Cost / Link Clicks&#10;Ads Cost = Clicks (all) × CPC (all)&#10;Ads Cost = Link Clicks × CPC (link)&#10;CPM = CTR (all, dạng thập phân) × CPC (all) × 1.000&#10;CPM = CTR (link, dạng thập phân) × CPC (link) × 1.000" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_EB159A8BF693F388" TEXT="Nếu CTR trong report hiển thị 2%, khi thế vào công thức dùng 0,02, không dùng 2." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_80A90556DF7E03A0" TEXT="Câu hỏi: Ads tạo nhiều click vì hiển thị nhiều, nội dung có sức hút hay loại click đang được đo khác nhau?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_EB1564B862DE493B" TEXT="So sánh: cùng định nghĩa click (all, link, outbound), sản phẩm, objective, phễu, publisher, format và kỳ." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E8D5191E9876627D" TEXT="Đọc cùng: Impressions, CPM, Clicks, Link Clicks, CTR, CPC và landing result nếu có." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_258E1A18CF3F2DCE" TEXT="Giả thuyết: creative/offer, placement, destination hoặc tracking khác." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_19AA2EBE8F66550A" TEXT="Bằng chứng phản bác: CTR all tăng do tương tác không dẫn tới destination; link click không đồng nghĩa landing page load hoặc purchase." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5E8B1023C4208BD8" TEXT="Dataset hiện tại: preferred files chưa có Clicks/Link Clicks/CTR/CPC; đường này đang chờ export bổ sung." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_345DD6301AD077D0" TEXT="10.3. Engagement và video" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_40F6028897841C17" TEXT="Ads Cost của một loại kết quả = Results cùng loại × Cost per Result cùng loại&#10;Cost per Post Engagement = Ads Cost / Post Engagements&#10;Ads Cost của nhóm Post Engagement = Post Engagements × Cost per Post Engagement&#10;&#10;Video completion rate ở mốc k&#10;= Video plays đạt mốc k / Video starts hoặc mẫu số được Meta định nghĩa cho field đó" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B0C18FA188A984E7" TEXT="Câu hỏi: creative nào tạo đúng loại tương tác hoặc mức xem cần cho nhiệm vụ của tầng phễu?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_750AE5F46441385A" TEXT="So sánh: cùng format/video length, sản phẩm, objective, publisher/placement và kỳ." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6F8011FCA4D860CD" TEXT="Đọc cùng: Spend, Impressions, Reach, CPM, Post Engagements/CPR, video plays và milestones khi có." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AFC3B6520D84C288" TEXT="Giới hạn: Results = post_engagement chỉ cộng khi Result indicator giống nhau. Bộ preferred chưa có các mốc video chi tiết." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0831A53A9A94AFC5" TEXT="Không biến nhiều engagement/view thành kết luận người đó đã nhắn hoặc mua nếu thiếu khóa hành trình." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0D594BB7A2973508" TEXT="10.4. Messaging" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FD5E0195DE2743CC" TEXT="Cost per Messaging Conversation&#10;= Ads Cost / Messaging Conversations Started&#10;&#10;Cost per New Messaging Contact&#10;= Ads Cost / New Messaging Contacts&#10;&#10;Tỷ số New Contact trên Conversation&#10;= New Messaging Contacts / Messaging Conversations Started" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7A1B836B94913715" TEXT="Câu hỏi: spend tạo được bao nhiêu cuộc hội thoại, bao nhiêu liên hệ mới và chất lượng hội thoại có phù hợp không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E2CC136B5E2E4D24" TEXT="So sánh: cùng product scope, Engagement - Messaging, phễu, publisher/destination, kỳ và attribution." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_507EB2EBE48BA6A3" TEXT="Đọc cùng: Spend, CPM, CTR/CPC nếu có, Messaging Conversations Started, New Messaging Contacts và hai cost metric." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1A67498F330E0231" TEXT="Giả thuyết: phân phối, nội dung, lời kêu gọi, destination hoặc cách đo conversation khác." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_982E1BA2377FDA64" TEXT="Bằng chứng phản bác: conversation rẻ nhưng tỷ lệ liên hệ mới thấp, chất lượng lead thấp hoặc không nối được đơn business." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DD4C2E52FDB2DF14" TEXT="New Contacts / Conversations là tỷ số tổng hợp. Chỉ gọi là conversion của cùng hành trình khi định nghĩa và khóa theo dõi hỗ trợ." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6354B2AFD7219167" TEXT="10.5. Purchase, Orders và business outcome" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_81E93C7626E299A3" TEXT="Cost per Meta Purchase = Ads Cost / Meta-attributed Purchases&#10;Cost per Order Created = Ads Cost / Orders Created do Meta ghi nhận&#10;Cost per Order Dispatched = Ads Cost / Orders Dispatched do Meta ghi nhận&#10;&#10;Business ROAS = GMV business / Ads Cost cùng phạm vi&#10;Ads Cost / GMV = Ads Cost / GMV business × 100%" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_14B1B6DDF5F7706D" TEXT="Câu hỏi: event cuối phễu Meta có khớp đơn, trạng thái giao và GMV do doanh nghiệp ghi nhận không?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_4DEAFC48C4651C24" TEXT="So sánh: cùng sales channel, sản phẩm/SKU, kỳ, attribution, rule hoàn/hủy, voucher và shipping." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A6B85DF9AC1F4E93" TEXT="Đọc cùng: Meta Purchase/Orders, cost tương ứng, đơn business, đơn hoàn/hủy, GMV và AOV nếu định nghĩa đã khóa." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3F78F3651511B6B7" TEXT="Giả thuyết: tracking, chất lượng lead, khả năng chốt, giá/ưu đãi, tồn kho hoặc vận hành đơn." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CF60880213357E0F" TEXT="Bằng chứng phản bác: Meta Purchase/value khác dữ liệu order/GMV business hoặc attribution khác." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D9A9BC049579102F" TEXT="Hiện chưa có GMV business nên chưa kết luận Business ROAS." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5C7D5F53686D465C" TEXT="11. Quan hệ toán học và giới hạn diễn giải" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_73F71ACD59504866" TEXT="Ví dụ:" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_00705AAEED6C6282" TEXT="Ads Cost = Impressions × CPM / 1.000&#10;Business ROAS = GMV / Ads Cost&#10;&#10;Business ROAS&#10;= GMV × 1.000 / (Impressions × CPM)" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A7A09779A246BECB" TEXT="Công thức chỉ cho biết quan hệ khi giữ các biến còn lại không đổi. Trong dữ liệu thật, GMV, Impressions, sản phẩm, objective, phễu, publisher và creative có thể cùng thay đổi." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B8BABC45436386A1" TEXT="Không được ghi kết luận vô điều kiện như:" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7C1B431C6A910562" TEXT="CPM cao nên ROAS giảm." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_842B416574DCEFEC" TEXT="CTR cao chứng minh GMV tốt." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_410A049312CDA521" TEXT="CPC hoặc CPR thấp thì nên tăng ngân sách." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_BFD767646AF9531F" TEXT="TOFU phải có CPM đắt hơn BOFU." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0784C78E89A2BE32" TEXT="Frequency cao chứng minh audience mệt mỏi." />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0673EB5B214E578A" TEXT="Nếu chưa có khóa người dùng/event xuyên bước, Link Clicks → Messaging → Purchase là đường phân tích quy trình; các tỷ số giữa bước chỉ là tỷ số tổng hợp, chưa phải cohort conversion." />
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DF05D2EA3384F76E" TEXT="12. Funnel, drill-down và đường tới recommendation" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_925E7A72CC203458" TEXT="12.1. Đường funnel/journey" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_239EB3BA8ED652E0" TEXT="TOFU: phân phối và tín hiệu ban đầu&#10;→ MOFU: click, tương tác sâu hoặc conversation&#10;→ BOFU: Meta Purchase/Orders&#10;→ đơn business&#10;→ GMV business" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7C04B8D900F8A0BD" TEXT="Mũi tên mô tả thứ tự cần kiểm tra. Nó không tự chứng minh quan hệ nhân quả hoặc cùng một nhóm người đi xuyên suốt." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_599EE824223EF899" TEXT="12.2. Drill-down khi phát hiện chênh lệch" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_12B8DA98D7EF695B" TEXT="Campaign&#10;→ Ad set: optimization goal, audience, budget/bid, placement, delivery&#10;→ Ad: creative, format, message, sản phẩm quảng cáo" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E006102014EC235A" TEXT="Chỉ drill-down khi có ID nguyên vẹn và quan hệ cấp cha–con đúng. Nếu chỉ có tên, kết quả là thăm dò và phải kiểm tra duplicate." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A6142AD97B6D1612" TEXT="12.3. Mẫu quyết định trước recommendation" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_BA0B9369487FF59F" TEXT="Mô tả vấn đề và số liệu quan sát được." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FFA670F91A221CC1" TEXT="Khóa phạm vi: kỳ, grain, sản phẩm, objective/optimization, phễu, publisher và attribution." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A2FB2483D4FC07D3" TEXT="Chọn nhóm so sánh tương đồng." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CC6BEB8935E74BA3" TEXT="Tính lại metric từ tổng tử số và mẫu số." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D38C4044997E7B59" TEXT="Đi sâu Campaign → Ad set → Ad để tìm nơi tạo chênh lệch." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_90737F08749336A2" TEXT="Viết nhiều giả thuyết; với mỗi giả thuyết nêu bằng chứng hỗ trợ và bằng chứng có thể bác bỏ." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E3C8400C1868AE32" TEXT="Chỉ khi đủ bằng chứng mới viết hành động hoặc test: owner, phạm vi, chỉ số theo dõi, thời gian, tiêu chí giữ/sửa/dừng." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A03754044789FFF1" TEXT="13. Hợp đồng ETL, modeling và report" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DFD620E3D3D68F61" TEXT="13.1. Các bảng tối thiểu" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_02E36C5C86282D36" TEXT="Bảng | Một dòng đại diện cho gì? | Vai trò" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DAD79FB778F87ECC" TEXT="fact_ads_spend_campaign_period | Một Campaign trong một kỳ | Số kiểm soát spend và raw metrics" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CC537548DDDA57D2" TEXT="dim_campaign_config | Một version cấu hình/mapping của Campaign | Name, objective Meta, Objective suy luận và metadata" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_37FA4278FCAE06B0" TEXT="dim_adset_config | Một Ad set trong thời gian hiệu lực | Optimization goal, destination, bid/budget" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_92EA9F57DFAA480B" TEXT="map_funnel | Một object được gắn một trạng thái phễu trong thời gian hiệu lực | Human mapping Phễu" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FB052AE6579C73ED" TEXT="bridge_ad_product | Một quan hệ Ad ↔ Item/SKU | Mapping sản phẩm và rule phân bổ nếu many-to-many" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_75743C071986AECA" TEXT="fact_ads_spend_publisher | Một object × kỳ × publisher breakdown | Ba cặp có Nền tảng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_356C698D1EEB94D6" TEXT="fact_business_order_gmv | Một order/order line theo rule business | Đơn, trạng thái, sản phẩm, channel và GMV" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_68D5072DF11C8B09" TEXT="13.2. Kiểm tra join bắt buộc" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_99E9D97857B9EFF5" TEXT="ID phải là text nguyên vẹn; ID đã scientific/làm tròn không được sửa bằng đoán hậu tố." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9B00349C77ED1015" TEXT="Ghi cardinality dự kiến và thực tế: một–một, nhiều–một hoặc nhiều–nhiều." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_944CEEDD37F32672" TEXT="So số dòng, tổng spend, orphan, duplicate và conflict trước/sau join." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9D1CF0342B454161" TEXT="Giữ Shared/Unmapped trong tổng." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_445517DBB718BE05" TEXT="Khi một Ad nối nhiều sản phẩm, không nhân spend; dùng allocation rule có owner hoặc giữ Shared." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7F705995FD242F90" TEXT="CPM/CPC/CPR/ROAS tổng phải tính lại từ tổng tử số và mẫu số." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0C16F18B1BAABD10" TEXT="Reach không cộng tùy tiện qua các nhóm có thể trùng người." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CF6DDFD5E85CECDC" TEXT="Results chỉ cộng khi cùng Result indicator và attribution." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1CF314D154587AB7" TEXT="13.3. Report được phép hiển thị theo coverage hiện tại" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6665D22EBFE2D3B2" TEXT="Phần | Có thể hiển thị | Chưa được ghi như fact" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_00216FDA98AAB03E" TEXT="Objective | Spend/metrics theo Objective suy luận, kèm human mapping | Objective gốc Meta đã xác minh" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E48DBF988EE880B3" TEXT="Phễu | Thăm dò TOFU/MOFU/BOFU theo file hiện hành | Mapping phễu đã được owner duyệt hoàn toàn" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_53917EEE674F3781" TEXT="Sản phẩm | Spend theo nhóm/ngành hàng suy luận | Spend của từng SP01–SP25" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A841E9E5724D2D39" TEXT="Nền tảng | Danh sách dimension cần có | Spend Facebook/Instagram/WhatsApp từ dataset hiện tại" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AE6FFB12678C685A" TEXT="Business | Khoảng trống source và công thức | Business ROAS/Ads Cost-GMV thực tế" />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_4C1F073595C925F6" TEXT="14. Ví dụ xuyên suốt bằng Campaign thật" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5591270B1614CFB0" TEXT="14.1. Dòng nguồn" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1E86C2839611AE17" TEXT="Preferred source: CPAS-SHOPEE-Campaigns-1-Mar-2026-31-Mar-2026.xlsx, sheet Worksheet, dòng 15." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5F0FCFA65732F7AA" TEXT="Mapping source: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx, sheet Campaign_3_tháng, dòng 6." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_38421E2E578F8BA3" TEXT="Campaign: 10/11/2025 - MOF - TESTING A/B - 1% - CÁT." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1AB6F2D17BA54A0E" TEXT="Kỳ: 2026-03." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E609FB8B311ACD11" TEXT="Amount Spent: 6.639.470 VND." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B8AF5501CC42435D" TEXT="Impressions: 67.455; Reach: 23.122." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FBADCFEC3FC8F807" TEXT="Results: 96; Result indicator: actions:onsite_conversion.messaging_conversation_started_7d." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0EDEBC0C76A85114" TEXT="Cost per Result: 69.161,14583 VND; attribution: 7-day click or 1-day view." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_7597808DA95416E8" TEXT="14.2. Mapping và trạng thái bằng chứng" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A9FD0560EBB84696" TEXT="Objective suy luận = Engagement - Messaging, basis là Result indicator. Duy cho phép dùng kiểu mapping này trong ETL." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C299F146A2571D46" TEXT="Phễu = MOFU từ file dẫn xuất. Đây là human mapping chưa khóa đủ rule/version/owner." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5D079346D740ECFF" TEXT="Sản phẩm = Cát nói chung, vì tên chỉ có CÁT; không đủ chọn nhóm hoặc SP01–SP25." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B33DDEFEAA2AC348" TEXT="Publisher platform = chưa có." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2D955C33AD9117F9" TEXT="Campaign này đi vào ba ô có thể thăm dò:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_514795430CB81FD1" TEXT="Ads Cost (MOFU, Engagement - Messaging)&#10;Ads Cost (MOFU, Cát nói chung)&#10;Ads Cost (Cát nói chung, Engagement - Messaging)" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_128FDE80669B6F06" TEXT="14.3. Metric tính được" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C9D60622DFA281E1" TEXT="CPM = 6.639.470 / 67.455 × 1.000 ≈ 98.427 VND&#10;Frequency = 67.455 / 23.122 ≈ 2,92&#10;Ads Cost kiểm tra = 96 × 69.161,14583 ≈ 6.639.470 VND" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B67EE57EE2C16191" TEXT="14.4. Chọn nhóm so sánh và đặt câu hỏi" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E28F84FC20C4A2BB" TEXT="Candidate gần nhất trong cùng tháng là Campaign 10/11/2025 - MOF - TESTING A/B - GỐC - CÁT, preferred source dòng 39, demo dòng 7. Nó cùng MOFU, cùng Objective suy luận, cùng ngành hàng cát, cùng Result indicator và attribution; có Spend 6.370.694 VND, 129.733 Impressions, Reach 56.830, Results 86 và Cost per Result 74.077,83721 VND." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E9A7A9B4E47A7B1F" TEXT="Case 1% có CPM cao hơn nhưng Cost per Result thấp hơn candidate GỐC. Điều này chỉ tạo câu hỏi:" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_216B9B928EF4C21F" TEXT="Khác biệt đến từ phân phối, audience/optimization ở Ad set, creative ở Ad, hay hai Campaign thực ra quảng cáo các sản phẩm/offer khác nhau?" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_8EC1535C422EDD88" TEXT="Muốn trả lời phải drill-down bằng ID nguyên vẹn và kiểm tra cấu hình/creative. Chưa có GMV nên không được kết luận ROAS hoặc đề xuất tăng ngân sách." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F424740C168DC8A7" TEXT="14.5. Cách Duy trình bày lại" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E8045B1EE42B4DB6" TEXT="“Con lấy một Campaign thật, kiểm tra spend và metric ở source, rồi gắn Objective, Phễu và sản phẩm theo đúng mức bằng chứng. Campaign này chỉ map được tới ngành hàng cát, chưa tới sản phẩm cụ thể và chưa có platform. Con chọn một Campaign gần giống để so. CPM và Cost per Result đi khác chiều nên con chưa phán Campaign nào tốt; con cần xuống Ad set/Ad và thêm dữ liệu business trước khi recommendation.”" />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2A4EC7527BBDE6A1" TEXT="15. Nguồn, phần còn thiếu và kiểm định" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_EF13D84AF97380C2" TEXT="15.1. Nguồn hiện hành" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_482AC28F7450164B" TEXT="Raw: 01_inputs\joycat\raw; 32 workbook .xlsx và một archive; không có CSV đã bung." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_63F90D2E1AB9D848" TEXT="Preferred source: chín workbook Campaign/Ad set/Ad tháng 03–05/2026." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9629E9A3A74C30E4" TEXT="Human mapping: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_2CF54FD1A164985E" TEXT="Catalog: JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_711A2C6063D81283" TEXT="Coverage audit chi tiết: 02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_76E2340AB4D26962" TEXT="Coverage audit summary: 02_work\joycat\coverage_audit\coverage_audit_summary.json." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CBD93D3A0DE34310" TEXT="Bản trước khi gộp: 02_work\joycat\archive\2026-09-05_context_logic_mapping_before_merge." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F79EA13121980496" TEXT="15.2. Owner cần xác nhận" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AFA826CA59D874A0" TEXT="Cần xác nhận | Owner/nguồn | Ảnh hưởng" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D97AF306E74F52D3" TEXT="Preferred candidate có phải source chính thức? | Cậu Sinh/người chuẩn bị data | Khóa lineage và số kiểm soát" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B726F3999E1EB34B" TEXT="Objective mapping version và reviewer | Duy/cậu Sinh | Cho phép ETL lặp lại và audit override" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_49562B962CB56CF2" TEXT="Rule/grain/version/owner Phễu | Người tạo mapping | Xác nhận ba cặp có Phễu" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B5741F2684376ECA" TEXT="Mã nhóm sản phẩm và xử lý multi-product | Owner Campaign/sản phẩm | Nâng coverage từ inference tới mapping duyệt" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_672C353D5ED1CDA6" TEXT="Publisher breakdown và ID text nguyên vẹn | Người export Meta | Mở ba cặp Nền tảng và drill-down" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0458D92903A6EE26" TEXT="Định nghĩa GMV, kỳ, sales channel, hoàn/hủy, voucher, shipping | Owner business data | Mở Business ROAS" />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6FC009174553EAF9" TEXT="Nguồn tạo file Objective demo tháng 04 | Người tạo file demo | Giải thích chênh 9.252 VND" />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_CA5797B9692949EA" TEXT="15.3. Nội dung khôi phục từ bản cũ" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_DD94440AE3DB8C45" TEXT="Campaign → Ad set → Ad." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_239151514AE11FE9" TEXT="Nhiệm vụ TOFU/MOFU/BOFU và các metric cần đọc." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0DE872155FAB05D8" TEXT="Cách chọn case so sánh." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3547E5B103085DC9" TEXT="Giả thuyết phải có bằng chứng hỗ trợ và phản bác." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FB16E21C76B1B3F2" TEXT="Điều kiện chuyển sang ETL/report." />
      </node>
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_B7C067AE0756CFA5" TEXT="15.4. Kiểm định" FOLDED="true">
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_10131979F9D82B4E" TEXT="Markdown và mindmap phải có cùng 16 nhánh chính." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0CA345E66F79AE5E" TEXT="Mindmap phải có đủ sáu cặp và công thức đầy đủ tên đại lượng." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C17CCF12FAA0AF3E" TEXT="XML parse được và ID không trùng chỉ là kiểm tra cấu trúc; việc mở/hiển thị trên Lark hoặc MindManager cần Duy kiểm tra trên ứng dụng." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_970B727A9DD9B0BC" TEXT="Coverage ba cặp không có Nền tảng phải ghi thiếu chiều; không tạo spend giả." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_07F759844F648712" TEXT="Coverage ba cặp còn lại phải giữ đủ dòng và spend của file demo, đồng thời ghi rõ demo tháng 04 chưa khớp preferred." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_02E559ECE814A70E" TEXT="Không có kết luận CPM/CTR/CPC/CPR tác động ROAS vô điều kiện." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0433BFBCCE6EFA07" TEXT="Không dùng Meta Purchase Conversion Value thay GMV business." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_70A43F7492826C5B" TEXT="Không cộng Campaign, Ad set và Ad; không cộng sáu cách phân rã." />
        <node ID="DATA_MAPPING_COVERAGE_JOYCAT_D41BD86DEB0527BA" TEXT="Không phân tích audience size trong phiên bản này." />
      </node>
    </node>
    <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FA6956829A51DE00" TEXT="16. Phụ lục — 25 listing Joycat" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_E9BAA5A03BBD4A3E" TEXT="Mã | Nhóm | Quy cách | Item ID" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_46AC46BD40E1F6D9" TEXT="SP01 | Vi sinh khử mùi | Combo xịt và bột | 54652253159" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_67D1FCB53781A53D" TEXT="SP02 | Vi sinh khử mùi | 1 túi 75g | 44502278009" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_10C6A0726721844F" TEXT="SP03 | Cát Sắn Natural | Combo 3 túi | 53301517532" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5CC7B3049AADF952" TEXT="SP04 | Cát Sắn Natural | 1 túi 2,5kg / 6L | 41659422198" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_9E4059F5E9D3877B" TEXT="SP05 | Cát Mix PerformX | Combo 3 túi | 47303410867" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C152C6C6100978A6" TEXT="SP06 | Cát Mix PerformX | 1 túi 2,5kg / 6L | 43727202767" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_1057B08F0A3DD0FA" TEXT="SP07 | Cát Sắn Natural | Combo 2 túi | 43026477525" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_AFC6E97C77968E25" TEXT="SP08 | Vi sinh khử mùi | 1 chai 450ml | 48902263316" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_64FE2068D2A4518F" TEXT="SP09 | Cát Khoáng MineralX | 1 túi 3,5kg / 8L | 44908677009" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_29B545737E1659E8" TEXT="SP10 | Cát Khoáng MineralX | Combo 2 túi | 53758652941" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A13994E250AFF3C0" TEXT="SP11 | Cát Sắn Natural | 1 thùng | 54401512661" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_3986F1114582103F" TEXT="SP12 | Cát Mix PerformX | Combo 2 túi | 54153386367" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_C0A695B77D276711" TEXT="SP13 | Cát Đậu Nành Mix Khoáng PowerX | 1 túi 2,5kg / 6L | 40981732711" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_0E0F5B4581684538" TEXT="SP14 | Cát Sắn Mix Đậu Nành Tofuu.X | 1 túi 2,5kg / 6L | 54812261805" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_16C996D2DAFA5AA4" TEXT="SP15 | Cát Khoáng MineralX | Combo 4 túi | 52008652913" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_79A10F87EECD9A42" TEXT="SP16 | Cát Mix PerformX | 1 thùng | 43227384196" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_6ACE4BA135F31D51" TEXT="SP17 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 3 túi | 55712258330" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_A6686FF97F6B3D3A" TEXT="SP18 | Cát Khoáng MineralX | Combo 3 túi | 48458681913" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_68379E2EF74ACE6C" TEXT="SP19 | Cát Đậu Nành Mix Khoáng PowerX | Combo 2 túi | 48762287172" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_209623C202082C0E" TEXT="SP20 | Cát Đậu Nành Mix Khoáng PowerX | Combo 3 túi | 52462262098" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_35325480489AA8E6" TEXT="SP21 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 2 túi | 52712266855" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_ABF4BD6AEB249D6F" TEXT="SP22 | Cát Đậu Nành Mix Khoáng PowerX | Combo 6 túi | 46362295656" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_07EBB7CE539A9D13" TEXT="SP23 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 6 túi | 40481736189" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_5EA2C1C4D8BA87E8" TEXT="SP24 | Cát Mix PerformX | 1 túi 4,5kg; bán hết ở snapshot | 27144047088" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_FA8C35943271D606" TEXT="SP25 | Cát Sắn Natural | 1 túi 4,5kg; bán hết ở snapshot | 54104795820" />
      <node ID="DATA_MAPPING_COVERAGE_JOYCAT_F01065DE658689AB" TEXT="Danh mục là snapshot ngày 25/08/2026; không phải bằng chứng lịch sử chạy Ads tháng 03–05/2026." />
    </node>
    <node ID="JC_REVIEW_20260908_NAV" TEXT="MỞ TÀI LIỆU LIÊN QUAN" FOLDED="true">
      <node ID="JC_REVIEW_20260908_LINK_KPI" TEXT="KPI v3 — định nghĩa, mốc tham chiếu, owner và giới hạn" LINK="Ad_Cost_GMV_all_platform%20v3.md" />
      <node ID="JC_REVIEW_20260908_LINK_CASE" TEXT="Context Joycat — mục tiêu, facts, nguồn" LINK="../../01_inputs/joycat/context.md" />
      <node ID="JC_REVIEW_20260908_LINK_INTENT" TEXT="Current Intent — phạm vi đang được phép làm" LINK="../../context/CURRENT_INTENT.md" />
      <node ID="JC_REVIEW_20260908_LINK_DICT" TEXT="Data dictionary — định nghĩa trường ở input" LINK="../../01_inputs/joycat/DATA_DICTIONARY_JOYCAT.md" />
      <node ID="JC_REVIEW_20260908_LINK_METRIC" TEXT="Metric Tree — công thức rẽ xuống input" LINK="METRIC_TREE.md" />
      <node ID="JC_REVIEW_20260908_LINK_FORMULA" TEXT="Bộ 5 Metrics — công thức và bối cảnh đọc" LINK="CONG_THUC_5_METRICS_JOYCAT_v3.md" />
      <node ID="JC_REVIEW_20260908_LINK_MAP" TEXT="Mapping/Coverage — nguồn, phép nối, cặp nào làm được" LINK="DATA_MAPPING_COVERAGE_JOYCAT.md" />
    </node>
  </node>
</map>