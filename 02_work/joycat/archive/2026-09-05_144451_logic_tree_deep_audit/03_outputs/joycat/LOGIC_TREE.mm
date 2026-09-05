<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="LOGICV2_DC76E9F0C0006E" TEXT="JOYCAT — LOGIC TREE HỢP NHẤT | ADS COST VÀ BUSINESS ROAS — v2.0" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="LOGICV2_61824C1EA11E51" TEXT="1. ĐỌC NHANH CHO DUY VÀ CẬU SINH" FOLDED="true" COLOR="#1F4E79">
      <node ID="LOGICV2_583CE89403BC41" TEXT="Đích: biết phân tích gì, chia theo đầu mục nào, lấy dữ liệu ở đâu và dataset làm được tới đâu" />
      <node ID="LOGICV2_8FCE9B81195DDF" TEXT="Business ROAS = GMV business cùng phạm vi, cùng kỳ / Ads Cost cùng phạm vi, cùng kỳ" />
      <node ID="LOGICV2_42363B11B5034E" TEXT="Không dùng Purchases conversion value của Meta thay GMV business" />
      <node ID="LOGICV2_8804C17315F6B9" TEXT="Ba Tree" FOLDED="true">
        <node ID="LOGICV2_DF88B522F966C9" TEXT="KPI Tree = cần lượng hóa chỉ số gì" />
        <node ID="LOGICV2_E4125121739B2F" TEXT="Metric Tree = công thức tới raw field hoặc điểm dừng" />
        <node ID="LOGICV2_EF8C3DDD516C19" TEXT="Logic Tree = đường đi câu hỏi, phép so sánh và bằng chứng" />
      </node>
      <node ID="LOGICV2_EA96EF63617E0A" TEXT="Bốn chiều" FOLDED="true">
        <node ID="LOGICV2_B344495E96F230" TEXT="Nền tảng" />
        <node ID="LOGICV2_C5659DAB1991B3" TEXT="Sản phẩm" />
        <node ID="LOGICV2_DB235DE2E059D4" TEXT="Phễu" />
        <node ID="LOGICV2_992CDABE9BED50" TEXT="Campaign objective" />
      </node>
      <node ID="LOGICV2_FB894A257779F6" TEXT="Trạng thái" FOLDED="true">
        <node ID="LOGICV2_229EDD85DE4D42" TEXT="Tổng Campaign/tháng: đã đối soát" />
        <node ID="LOGICV2_B32530D1870563" TEXT="Objective suy luận: Duy xác nhận dùng cho ETL" />
        <node ID="LOGICV2_2DCDFC853C7952" TEXT="Phễu và sản phẩm: mapping một phần" />
        <node ID="LOGICV2_353EB05393FF46" TEXT="Publisher platform và GMV business: chưa có" />
        <node ID="LOGICV2_8B145122E45163" TEXT="Chưa tuyên bố ETL production sẵn sàng" />
      </node>
    </node>
    <node ID="LOGICV2_01960CA318A060" TEXT="2. HỢP ĐỒNG KIỂM SOÁT" FOLDED="true" COLOR="#548235">
      <node ID="LOGICV2_6919829221E572" TEXT="Tổng Ads Cost tháng = tổng Amount spent (VND) của các Campaign có tên" />
      <node ID="LOGICV2_72094E4B7A6DDB" TEXT="Đối soát: Tổng Campaign ≈ Tổng Ad set ≈ Tổng Ad; không cộng ba tổng" />
      <node ID="LOGICV2_35DCEC96EEDA1C" TEXT="03/2026 = 50.195.692 VND; 04/2026 = 64.825.305 VND; 05/2026 = 63.518.031 VND" />
      <node ID="LOGICV2_ABA4FFE6B94CF9" TEXT="Tháng 04 lệch 40 VND so với Ad set/Ad; giữ nguyên sai lệch nguồn" />
      <node ID="LOGICV2_F1F030E1D81080" TEXT="Bốn Campaign có spend nhưng không có Results vẫn giữ trong tổng" />
      <node ID="LOGICV2_6B54DEAF4AACDC" TEXT="Data gate" FOLDED="true">
        <node ID="LOGICV2_B9A09C4BD57C33" TEXT="Cùng kỳ, timezone, currency và grain" />
        <node ID="LOGICV2_924B0591684A65" TEXT="Cùng attribution và Result indicator khi dùng Results" />
        <node ID="LOGICV2_2E8C2ADB1F3100" TEXT="Chiều có source/mapping và version rõ" />
        <node ID="LOGICV2_E3A277C93EA637" TEXT="GMV cùng phạm vi Ads Cost" />
        <node ID="LOGICV2_B3E735F3B722BB" TEXT="Join không tăng số tiền sai" />
        <node ID="LOGICV2_394377E6F7733C" TEXT="Không đạt → Chỉ thăm dò hoặc Chưa so sánh được" />
      </node>
    </node>
    <node ID="LOGICV2_8DB9914DCD51BB" TEXT="3. CHIỀU NỀN TẢNG" FOLDED="true" COLOR="#2F5597">
      <node ID="LOGICV2_10314F3FDBA790" TEXT="Ba khái niệm" FOLDED="true">
        <node ID="LOGICV2_7A48DC48FDEC01" TEXT="Publisher platform = nơi Ads hiển thị" />
        <node ID="LOGICV2_B640B2F8722407" TEXT="Destination = nơi khách được dẫn tới" />
        <node ID="LOGICV2_ACBDEB9906684C" TEXT="Sales channel = nơi business ghi nhận đơn và GMV" />
      </node>
      <node ID="LOGICV2_49BEBD9AD8D363" TEXT="Tổng Ads Cost = Facebook + Instagram + Messenger + Audience Network + WhatsApp nếu là publisher thật + Nền tảng khác + Unknown/Unmapped" />
      <node ID="LOGICV2_381B0BE475C0CC" TEXT="Field cần: Publisher platform; có thể thêm Platform position và Impression device" />
      <node ID="LOGICV2_DF9A747656F0D6" TEXT="Không suy platform từ Campaign name, CPAS-SHOPEE hoặc Result indicator" />
      <node ID="LOGICV2_01726E48E6F376" TEXT="Hiện thiếu publisher/destination trong 32 workbook raw → ba cặp có Nền tảng bị chặn" />
      <node ID="LOGICV2_8547BF89D854E9" TEXT="Đường phân tích" FOLDED="true">
        <node ID="LOGICV2_1A58A673C1AB99" TEXT="So spend và tỷ trọng platform" />
        <node ID="LOGICV2_EC7A9A777681F5" TEXT="Kiểm soát sản phẩm, objective, phễu, kỳ và attribution" />
        <node ID="LOGICV2_BEF103AD205705" TEXT="Đọc CPM, Reach, Frequency, CTR/CPC và Result đúng loại" />
        <node ID="LOGICV2_40DC711C99B163" TEXT="Kiểm tra placement/device trước khi quy nguyên nhân cho platform" />
      </node>
    </node>
    <node ID="LOGICV2_B214F78017A43A" TEXT="4. CHIỀU SẢN PHẨM" FOLDED="true" COLOR="#7030A0">
      <node ID="LOGICV2_3A10ABFF04A725" TEXT="Ba cấp: Nhóm sản phẩm ≠ Listing/Item ID ≠ SKU/biến thể" />
      <node ID="LOGICV2_FA18D10C2B6A46" TEXT="Tổng Ads Cost = SP01 + SP02 + ... + SP25 + Product group only + Multi-product/Shared + Unmapped" />
      <node ID="LOGICV2_350C548B66449D" TEXT="Gợi ý từ Campaign name — chưa phải mapping được duyệt" FOLDED="true">
        <node ID="LOGICV2_179732F8099A91" TEXT="VI SINH → nhóm Vi sinh khử mùi" />
        <node ID="LOGICV2_A37D8062EDBB6D" TEXT="NA → nhóm Cát Sắn Natural" />
        <node ID="LOGICV2_5FE30FCA60037C" TEXT="PFX → nhóm Cát Mix PerformX" />
        <node ID="LOGICV2_5A93D878F42234" TEXT="MNX → nhóm Cát Khoáng MineralX" />
        <node ID="LOGICV2_3FD1B862932176" TEXT="CÁT → ngành hàng cát nói chung" />
        <node ID="LOGICV2_711E929B4C9A63" TEXT="Sale/Branding/không có mã → Shared/Unmapped" />
      </node>
      <node ID="LOGICV2_ED15B69903B6EA" TEXT="Không chia đều spend; không phân bổ theo GMV khi chưa có owner duyệt" />
      <node ID="LOGICV2_44DD803ACDC3EC" TEXT="Catalog có 25 listing; chưa có khóa Ads → Item ID/SKU" />
      <node ID="LOGICV2_FF7BF34AB374CF" TEXT="Catalog tháng 08 không chứng minh lịch sử chạy Ads tháng 03–05" />
      <node ID="LOGICV2_1B1A9299D3BA3D" TEXT="Đường phân tích" FOLDED="true">
        <node ID="LOGICV2_6B70F70CF6BFE7" TEXT="Sản phẩm nào nhận spend" />
        <node ID="LOGICV2_38495257A85DB0" TEXT="So cùng sản phẩm qua objective, phễu, platform, format và kỳ" />
        <node ID="LOGICV2_4EF9E6DA5F42C1" TEXT="Kiểm tra Campaign nhiều sản phẩm/branding" />
        <node ID="LOGICV2_30EB84F198F28F" TEXT="GMV/AOV chỉ dùng khi cùng Item/SKU và rule hoàn hủy" />
      </node>
    </node>
    <node ID="LOGICV2_E37766BF5E80FE" TEXT="5. CHIỀU PHỄU" FOLDED="true" COLOR="#8064A2">
      <node ID="LOGICV2_CB12D8404DCB45" TEXT="Tổng Ads Cost = TOFU + MOFU + BOFU + Mixed/Shared + Chưa phân loại" />
      <node ID="LOGICV2_9D8F65B60B1D71" TEXT="TOFU = phân phối, nhận biết, tạo tín hiệu/tệp ban đầu" />
      <node ID="LOGICV2_DDF0A43EADF86A" TEXT="MOFU = quan tâm, click, tương tác sâu, messaging" />
      <node ID="LOGICV2_E44F6FC044977C" TEXT="BOFU = hành động mua, đơn và GMV" />
      <node ID="LOGICV2_285C406AF41805" TEXT="84 Campaign có spend: MOFU 47; TOFU 27; BOFU 10" />
      <node ID="LOGICV2_76A9696D136E2C" TEXT="Phễu là human mapping; còn thiếu grain, basis, version, owner và hiệu lực đầy đủ" />
      <node ID="LOGICV2_8F37B15D967F14" TEXT="Không mặc định CPM TOFU đắt/BOFU rẻ hoặc tầng nào ROAS cao" />
    </node>
    <node ID="LOGICV2_435C8748217125" TEXT="6. CHIỀU CAMPAIGN OBJECTIVE" FOLDED="true" COLOR="#C65911">
      <node ID="LOGICV2_FD0A6753A7B556" TEXT="Ba lớp" FOLDED="true">
        <node ID="LOGICV2_E264DF3FF56585" TEXT="Campaign objective = cấu hình mục tiêu ở Campaign" />
        <node ID="LOGICV2_1907D2B94C55F0" TEXT="Optimization/Performance goal = hành động Meta tối ưu ở Ad set" />
        <node ID="LOGICV2_C2A9A895261356" TEXT="Result indicator = Results trong report đang đại diện loại gì" />
      </node>
      <node ID="LOGICV2_CB3F1305CADB82" TEXT="Tổng Ads Cost = Engagement-Messaging + Engagement-Post engagement + Sales-Purchase + Awareness-Ad recall + Objective khác + Chưa xác định" />
      <node ID="LOGICV2_58E49C7CF3EFC1" TEXT="Objective suy luận — human-curated ETL input" FOLDED="true">
        <node ID="LOGICV2_D409655AC32B98" TEXT="Duy xác nhận dùng cho ETL vì raw thiếu Objective" />
        <node ID="LOGICV2_2608C7FE79DB99" TEXT="Không giả thành field Meta gốc" />
        <node ID="LOGICV2_B46FA833777417" TEXT="Meta objective nếu có sau lưu riêng để đối soát" />
        <node ID="LOGICV2_80B3E29DE15CAB" TEXT="Giữ rule, version, basis, mapped_by, mapped_at và review_status" />
      </node>
      <node ID="LOGICV2_DF65585644BA54" TEXT="Rule hiện dùng" FOLDED="true">
        <node ID="LOGICV2_DED7DD8AD7AFEE" TEXT="messaging_conversation_started_7d → Engagement - Messaging" />
        <node ID="LOGICV2_0576828707BEF9" TEXT="post_engagement → Engagement - Post engagement" />
        <node ID="LOGICV2_3205900DBC0464" TEXT="purchase → Sales - Purchase" />
        <node ID="LOGICV2_64F89AEBC92FA5" TEXT="estimated_ad_recallers → Awareness - Ad recall" />
        <node ID="LOGICV2_B19839761C8421" TEXT="Result trống + tên có Doanh số → Sales - Purchase suy từ tên" />
        <node ID="LOGICV2_7DF2595A47EEFE" TEXT="Thiếu tín hiệu → Chưa xác định" />
      </node>
      <node ID="LOGICV2_5FF7A327FF77C4" TEXT="Coverage 84 Campaign: 49 Messaging; 26 Post engagement; 4 Purchase; 2 Sales theo tên; 1 Ad recall; 2 chưa xác định" />
    </node>
    <node ID="LOGICV2_E20BB427370DE3" TEXT="7. SÁU CẶP — CÔNG THỨC VÀ COVERAGE" FOLDED="true" COLOR="#5B9BD5">
      <node ID="LOGICV2_751A3EB743BAC7" TEXT="Cặp 1 — Nền tảng × Sản phẩm" FOLDED="true">
        <node ID="LOGICV2_A5761756B81A30" TEXT="Câu hỏi: Mỗi platform chi bao nhiêu cho từng sản phẩm?" />
        <node ID="LOGICV2_098E3125159416" TEXT="Ads Cost (Facebook) = Ads Cost (Facebook, SP01) + ... + Ads Cost (Facebook, SP25) + Product group only + Multi-product/Shared + Unmapped" />
        <node ID="LOGICV2_65ED4FA2E5DFB5" TEXT="Nguồn: Publisher platform + Ads ID→Item/SKU" />
        <node ID="LOGICV2_D81A248639FA4F" TEXT="Coverage: chưa tính — thiếu cả Publisher và Ads→product" />
        <node ID="LOGICV2_162726621D203E" TEXT="Kiểm soát: tổng mọi ô phải về Tổng Ads Cost" />
      </node>
      <node ID="LOGICV2_1D7F14C73FA4DB" TEXT="Cặp 2 — Nền tảng × Phễu" FOLDED="true">
        <node ID="LOGICV2_5B649A898E687C" TEXT="Câu hỏi: Mỗi platform chi bao nhiêu cho TOFU/MOFU/BOFU?" />
        <node ID="LOGICV2_C9DACEFA654160" TEXT="Ads Cost (Facebook) = Ads Cost (Facebook, TOFU) + Ads Cost (Facebook, MOFU) + Ads Cost (Facebook, BOFU) + Mixed/Unmapped" />
        <node ID="LOGICV2_69D8F5329AA7A0" TEXT="Nguồn: Publisher platform + map_funnel" />
        <node ID="LOGICV2_31CB53DA44CF76" TEXT="Coverage: chưa tính — thiếu Publisher; Phễu còn cần khóa hợp đồng" />
      </node>
      <node ID="LOGICV2_2D333613ABA90D" TEXT="Cặp 3 — Nền tảng × Objective" FOLDED="true">
        <node ID="LOGICV2_2FFFF3ADC0CC33" TEXT="Câu hỏi: Mỗi platform chi bao nhiêu cho từng objective?" />
        <node ID="LOGICV2_7C1EACFD6D7AEF" TEXT="Ads Cost (Facebook) = Facebook Messaging + Facebook Post engagement + Facebook Sales + Facebook Awareness + Other/Unmapped" />
        <node ID="LOGICV2_034A36E82228B2" TEXT="Nguồn: Publisher platform + Objective suy luận" />
        <node ID="LOGICV2_D180E20C3B7DE6" TEXT="Coverage: bị chặn bởi Publisher; Objective human mapping đã dùng được" />
      </node>
      <node ID="LOGICV2_B45B07CB5B1055" TEXT="Cặp 4 — Phễu × Sản phẩm" FOLDED="true">
        <node ID="LOGICV2_40161913305D89" TEXT="Câu hỏi: Trong mỗi tầng phễu, tiền chi cho sản phẩm nào?" />
        <node ID="LOGICV2_21EEB4AD61A377" TEXT="Ads Cost (TOFU) = Ads Cost (TOFU, SP01) + ... + Ads Cost (TOFU, SP25) + Product group only/Multi-product/Unmapped" />
        <node ID="LOGICV2_44EEBD4155EF80" TEXT="Trình bày ba block TOFU, MOFU, BOFU; cộng thêm Mixed/Unmapped" />
        <node ID="LOGICV2_39C9F24FC4E681" TEXT="Coverage: thăm dò ở cấp nhóm sản phẩm; chưa xuống 25 listing" />
      </node>
      <node ID="LOGICV2_C93D35C8570695" TEXT="Cặp 5 — Sản phẩm × Objective" FOLDED="true">
        <node ID="LOGICV2_1B8A975242BA59" TEXT="Câu hỏi: Mỗi sản phẩm chi bao nhiêu cho từng objective?" />
        <node ID="LOGICV2_20BAF252E0FCD5" TEXT="Ads Cost (SP01) = SP01 Messaging + SP01 Post engagement + SP01 Sales + SP01 Awareness + Other/Unmapped" />
        <node ID="LOGICV2_2B2A5286653A27" TEXT="Nguồn: Ads→product + Objective suy luận" />
        <node ID="LOGICV2_8A8B1CCBB997DB" TEXT="Coverage: nhóm sản phẩm × Objective human mapping; chưa xác minh SP01–SP25" />
      </node>
      <node ID="LOGICV2_25327DB69A1C97" TEXT="Cặp 6 — Phễu × Objective" FOLDED="true">
        <node ID="LOGICV2_527650C94468B0" TEXT="Câu hỏi: Trong từng tầng phễu, tiền phục vụ objective nào?" />
        <node ID="LOGICV2_5BDA60E27B0390" TEXT="Ads Cost (TOFU) = TOFU Messaging + TOFU Post engagement + TOFU Sales + TOFU Awareness + Other/Unmapped" />
        <node ID="LOGICV2_4BE3F5A4A7B87A" TEXT="Nguồn: Phễu + Objective suy luận trên 84 Campaign" />
        <node ID="LOGICV2_AA7AD5E298B85E" TEXT="Coverage: ETL/EDA human mapping được; cần khóa hợp đồng Phễu" />
      </node>
      <node ID="LOGICV2_CE1BA9DD9BB698" TEXT="Không cộng sáu cặp với nhau; chúng là sáu cách đọc cùng một Tổng Ads Cost" />
      <node ID="LOGICV2_1CDD9BD9A7DE1C" TEXT="Hai tổng riêng không suy ra phần giao hai chiều" />
    </node>
    <node ID="LOGICV2_7DA6B283CA1888" TEXT="8. ĐƯỜNG ĐI FUNNEL/JOURNEY" FOLDED="true" COLOR="#2F5597">
      <node ID="LOGICV2_F79433A4504E3B" TEXT="TOFU" FOLDED="true">
        <node ID="LOGICV2_D789F9E6F2B4A1" TEXT="Câu hỏi: phân phối đúng phạm vi và tạo tín hiệu chưa?" />
        <node ID="LOGICV2_8324D83A0199A4" TEXT="Metrics: Spend, Impressions, Reach, Frequency, CPM, video/engagement result" />
        <node ID="LOGICV2_857121BBF7B268" TEXT="So cùng sản phẩm, objective, platform, format, kỳ, attribution" />
        <node ID="LOGICV2_33C113C96F53E9" TEXT="Giả thuyết: audience, creative, placement, thời gian, optimization" />
      </node>
      <node ID="LOGICV2_BD56E3613D4CFA" TEXT="MOFU" FOLDED="true">
        <node ID="LOGICV2_B0BBD65496F54E" TEXT="Câu hỏi: tín hiệu có thành click, tương tác sâu hoặc conversation chưa?" />
        <node ID="LOGICV2_D01DF4B523B851" TEXT="Metrics: Clicks, Link Clicks, CTR, CPC, Messaging, New Contact, CPR" />
        <node ID="LOGICV2_74F98F42DBAA36" TEXT="Không so post engagement và messaging như cùng result" />
        <node ID="LOGICV2_2BFFA237A542F7" TEXT="Mess rẻ chưa chứng minh Purchase/GMV tốt" />
      </node>
      <node ID="LOGICV2_0FAB73A3FE51A0" TEXT="BOFU" FOLDED="true">
        <node ID="LOGICV2_394C431CE93FA8" TEXT="Câu hỏi: tín hiệu cuối phễu có thành đơn business và GMV không?" />
        <node ID="LOGICV2_153C6D2FC3B231" TEXT="Metrics: Meta Purchase/Orders; đơn business, hoàn hủy, GMV, AOV" />
        <node ID="LOGICV2_F06FA55E68C19B" TEXT="So cùng sales channel, sản phẩm, kỳ, attribution và rule GMV" />
        <node ID="LOGICV2_8B2E237397EFE8" TEXT="Meta Purchase/value không thay đơn và GMV business" />
      </node>
      <node ID="LOGICV2_A01D5AF07B3E8A" TEXT="Impression → Click → Messaging → Purchase → Order → GMV là đường phân tích; không gọi là cùng cohort nếu thiếu tracking key" />
    </node>
    <node ID="LOGICV2_5BAEB77D179F65" TEXT="9. CÔNG THỨC HỖ TRỢ ĐỌC METRICS" FOLDED="true" COLOR="#8064A2">
      <node ID="LOGICV2_CCDCB23FC75E5B" TEXT="Ads Cost = Amount Spent" />
      <node ID="LOGICV2_DA645ECAA876AD" TEXT="Ads Cost = Impressions × CPM / 1.000" />
      <node ID="LOGICV2_EEED2E67C4A9EA" TEXT="Ads Cost = Reach × Frequency × CPM / 1.000" />
      <node ID="LOGICV2_8003D25E92C875" TEXT="Ads Cost = Clicks (all) × CPC (all)" />
      <node ID="LOGICV2_9D5D5C14091748" TEXT="Ads Cost = Link Clicks × CPC (link)" />
      <node ID="LOGICV2_D66081AB971D4C" TEXT="Ads Cost = Results cùng loại × Cost per Result cùng loại" />
      <node ID="LOGICV2_8045945A64C314" TEXT="Business ROAS = GMV business / Ads Cost" />
      <node ID="LOGICV2_E2543175A852B3" TEXT="Các công thức là nhiều cách biểu diễn cùng spend; không cộng chúng" />
      <node ID="LOGICV2_7DC7C94197CC9C" TEXT="Thuận/nghịch phải ghi biến giữ nguyên; ROAS tăng/giảm chỉ kết luận trong từng case" />
    </node>
    <node ID="LOGICV2_42941B77980929" TEXT="10. THIẾT KẾ ETL TỐI THIỂU" FOLDED="true" COLOR="#548235">
      <node ID="LOGICV2_E4C2537BC4C51C" TEXT="Bảng" FOLDED="true">
        <node ID="LOGICV2_D96CE2FFA5E6E9" TEXT="fact_ads_spend_campaign_period" />
        <node ID="LOGICV2_883DB63F96E77C" TEXT="dim_campaign_config" />
        <node ID="LOGICV2_34BDE7E5E4C92B" TEXT="dim_adset_config" />
        <node ID="LOGICV2_20BA2175DAEFC3" TEXT="map_funnel" />
        <node ID="LOGICV2_5C782941E229E3" TEXT="bridge_ad_product" />
        <node ID="LOGICV2_64BD2DCC3FE50D" TEXT="fact_ads_spend_publisher" />
        <node ID="LOGICV2_C6A3E8E57CED99" TEXT="fact_business_order_gmv" />
      </node>
      <node ID="LOGICV2_CB57FFA2AA6CD9" TEXT="Metadata mapping" FOLDED="true">
        <node ID="LOGICV2_7583B2B1176417" TEXT="object_level + object_id_text + mapped_value" />
        <node ID="LOGICV2_1A95FFFC8D8530" TEXT="mapping_basis + mapping_version" />
        <node ID="LOGICV2_56478808CBD422" TEXT="mapped_by/confirmed_by + mapped_at" />
        <node ID="LOGICV2_8908A6CA1B5BF6" TEXT="valid_from + valid_to + review_status + source" />
      </node>
      <node ID="LOGICV2_6148E10938A354" TEXT="Kiểm tra join" FOLDED="true">
        <node ID="LOGICV2_FAFBFA41F7F7E5" TEXT="ID text nguyên vẹn và grain tương thích" />
        <node ID="LOGICV2_E14C17D6B8F18B" TEXT="Cardinality, row count, orphan, duplicate và conflict" />
        <node ID="LOGICV2_2AF9211EFC888F" TEXT="Tổng Amount Spent trước/sau join không tăng sai" />
        <node ID="LOGICV2_7B0F7DC1750A8F" TEXT="Shared/Unmapped vẫn giữ" />
        <node ID="LOGICV2_208E84CE45832D" TEXT="Many-to-many product không nhân spend" />
      </node>
      <node ID="LOGICV2_8E456C00E26A85" TEXT="Aggregate" FOLDED="true">
        <node ID="LOGICV2_B716730A549EF7" TEXT="Ads Cost cộng đúng một grain" />
        <node ID="LOGICV2_7689571CCDA4FE" TEXT="CPM/CPC/CPR/ROAS tính lại từ tổng tử số và mẫu số" />
        <node ID="LOGICV2_FDB6DF7283444E" TEXT="Reach không cộng tùy tiện" />
        <node ID="LOGICV2_68FFE05A77032A" TEXT="Results chỉ cộng cùng indicator/attribution" />
      </node>
    </node>
    <node ID="LOGICV2_95AEF540947F19" TEXT="11. AUDIT DATASET VÀ GAP" FOLDED="true" COLOR="#C65911">
      <node ID="LOGICV2_F775074AE66C6A" TEXT="Raw: 32 XLSX + một archive; không có CSV đã bung" />
      <node ID="LOGICV2_8F1CC6EC2A5BD1" TEXT="Preferred candidate: 9 file Campaign/Ad set/Ad tháng 03–05/2026" />
      <node ID="LOGICV2_1BE0E47D14C460" TEXT="Schema: Campaign 23; Ad set 27; Ad 30 cột; 21 metrics chung" />
      <node ID="LOGICV2_5F2B4BDC9617E1" TEXT="Cột riêng theo grain" FOLDED="true">
        <node ID="LOGICV2_4C454C7F50BB7F" TEXT="Campaign: name, delivery" />
        <node ID="LOGICV2_430090AD24F62B" TEXT="Ad set: name, delivery, starts, bid, bid type, last significant edit" />
        <node ID="LOGICV2_1BFC091FABAEDA" TEXT="Ad: name, delivery, bid, edit, quality/engagement/conversion rankings, ad set name" />
      </node>
      <node ID="LOGICV2_913E749DA1E930" TEXT="Thiếu/không ổn định: ID text, Clicks, Link Clicks, Objective/Optimization, Destination, Publisher, Product/SKU, Funnel contract, video metrics và GMV" />
      <node ID="LOGICV2_35B2D878DC519B" TEXT="P0 nên export" FOLDED="true">
        <node ID="LOGICV2_B00C234513E744" TEXT="ID/name ba cấp dạng text + date/kỳ" />
        <node ID="LOGICV2_506EE4353627D6" TEXT="Objective, Optimization, Conversion location, Destination, attribution và cấu hình bid/budget" />
        <node ID="LOGICV2_57BA04A94B0F9E" TEXT="Spend, Impressions, Reach, Clicks, Link clicks, Outbound clicks, Results + indicator" />
        <node ID="LOGICV2_325004BBBF2E39" TEXT="Messaging, Purchases, Orders và conversion events được tracking" />
      </node>
      <node ID="LOGICV2_C065C3C7E91302" TEXT="P1 breakdown riêng" FOLDED="true">
        <node ID="LOGICV2_D1E9A849BE626E" TEXT="Publisher platform + placement + device" />
        <node ID="LOGICV2_118CA452228D26" TEXT="Engagement + video milestones" />
        <node ID="LOGICV2_4925885F24D605" TEXT="Age/Gender/Region chỉ khi câu hỏi cần" />
      </node>
      <node ID="LOGICV2_B324004557FB70" TEXT="Business source riêng: Order, channel, Item/SKU, status, hoàn hủy, voucher, shipping rule và GMV" />
      <node ID="LOGICV2_3FCEDC3FC579AD" TEXT="ID đã scientific/làm tròn không khôi phục được bằng đổi format hoặc thay hậu tố" />
      <node ID="LOGICV2_D6E8BB492DFA3C" TEXT="Cần CSV gốc nén ZIP hoặc XLSX tạo ID dạng text ngay từ nguồn" />
    </node>
    <node ID="LOGICV2_6F3262CE2F6FEF" TEXT="12. OWNER CẦN XÁC NHẬN" FOLDED="true" COLOR="#7F6000">
      <node ID="LOGICV2_6EFF97EE0A44F0" TEXT="OBJ-01 — version Objective suy luận, override và reviewer — Duy/cậu Sinh" />
      <node ID="LOGICV2_901DF50F88745B" TEXT="FUN-01 — grain, rule, version, owner và hiệu lực Phễu" />
      <node ID="LOGICV2_BDE2C5273169BA" TEXT="PROD-01 — mã nhóm sản phẩm và xử lý multi-product" />
      <node ID="LOGICV2_7E8962481977DB" TEXT="PLT-01 — publisher breakdown và grain export" />
      <node ID="LOGICV2_511E8BD59A5A00" TEXT="ID-01 — ID nguyên vẹn dạng text" />
      <node ID="LOGICV2_50C22538EEA3B7" TEXT="GMV-01 — định nghĩa/kỳ/channel/hoàn hủy/voucher/shipping" />
    </node>
    <node ID="LOGICV2_9150D98BA9EF7A" TEXT="13. PHỤ LỤC — 25 LISTING" FOLDED="true" COLOR="#7030A0">
      <node ID="LOGICV2_0213185EF79A75" TEXT="SP01 | Vi sinh khử mùi | Combo xịt và bột | Item 54652253159" />
      <node ID="LOGICV2_2AA09AD839905C" TEXT="SP02 | Vi sinh khử mùi | 1 túi 75g | Item 44502278009" />
      <node ID="LOGICV2_4CBE45D4CD4B62" TEXT="SP03 | Cát Sắn Natural | Combo 3 túi | Item 53301517532" />
      <node ID="LOGICV2_59457ED7C161A5" TEXT="SP04 | Cát Sắn Natural | 1 túi 2,5kg / 6L | Item 41659422198" />
      <node ID="LOGICV2_4F2C489669D6B5" TEXT="SP05 | Cát Mix PerformX | Combo 3 túi | Item 47303410867" />
      <node ID="LOGICV2_9E069FC9B199DD" TEXT="SP06 | Cát Mix PerformX | 1 túi 2,5kg / 6L | Item 43727202767" />
      <node ID="LOGICV2_AAF0E2F18C4B4D" TEXT="SP07 | Cát Sắn Natural | Combo 2 túi | Item 43026477525" />
      <node ID="LOGICV2_18BD09F4793E3C" TEXT="SP08 | Vi sinh khử mùi | 1 chai 450ml | Item 48902263316" />
      <node ID="LOGICV2_3490F1D20177E1" TEXT="SP09 | Cát Khoáng MineralX | 1 túi 3,5kg / 8L | Item 44908677009" />
      <node ID="LOGICV2_E5C66CA3A97F61" TEXT="SP10 | Cát Khoáng MineralX | Combo 2 túi | Item 53758652941" />
      <node ID="LOGICV2_AA1C7850E9C73B" TEXT="SP11 | Cát Sắn Natural | 1 thùng | Item 54401512661" />
      <node ID="LOGICV2_C985D1B4BB0431" TEXT="SP12 | Cát Mix PerformX | Combo 2 túi | Item 54153386367" />
      <node ID="LOGICV2_1E54A6B301961C" TEXT="SP13 | Cát Đậu Nành Mix Khoáng PowerX | 1 túi 2,5kg / 6L | Item 40981732711" />
      <node ID="LOGICV2_03BF370D868A41" TEXT="SP14 | Cát Sắn Mix Đậu Nành Tofuu.X | 1 túi 2,5kg / 6L | Item 54812261805" />
      <node ID="LOGICV2_BE159D12E23F84" TEXT="SP15 | Cát Khoáng MineralX | Combo 4 túi | Item 52008652913" />
      <node ID="LOGICV2_6F2B83B88D8CDA" TEXT="SP16 | Cát Mix PerformX | 1 thùng | Item 43227384196" />
      <node ID="LOGICV2_7F86F4188CF3A6" TEXT="SP17 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 3 túi | Item 55712258330" />
      <node ID="LOGICV2_7F45FA2D90EEDF" TEXT="SP18 | Cát Khoáng MineralX | Combo 3 túi | Item 48458681913" />
      <node ID="LOGICV2_E813536D5A7F88" TEXT="SP19 | Cát Đậu Nành Mix Khoáng PowerX | Combo 2 túi | Item 48762287172" />
      <node ID="LOGICV2_D0B5950B393F1F" TEXT="SP20 | Cát Đậu Nành Mix Khoáng PowerX | Combo 3 túi | Item 52462262098" />
      <node ID="LOGICV2_AF3E316003CA3E" TEXT="SP21 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 2 túi | Item 52712266855" />
      <node ID="LOGICV2_A50DCEAC9694DD" TEXT="SP22 | Cát Đậu Nành Mix Khoáng PowerX | Combo 6 túi | Item 46362295656" />
      <node ID="LOGICV2_CC36719C0197E0" TEXT="SP23 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 6 túi | Item 40481736189" />
      <node ID="LOGICV2_573B7C86C007B3" TEXT="SP24 | Cát Mix PerformX | 1 túi 4,5kg; bán hết ở snapshot | Item 27144047088" />
      <node ID="LOGICV2_5E988C7FBF370D" TEXT="SP25 | Cát Sắn Natural | 1 túi 4,5kg; bán hết ở snapshot | Item 54104795820" />
      <node ID="LOGICV2_27CE3DD3BD0554" TEXT="Nguồn: catalog snapshot 25/08/2026; không chứng minh lịch sử Ads 03–05/2026" />
    </node>
    <node ID="LOGICV2_A35B28B5917C8D" TEXT="14. CHANGELOG VÀ KIỂM ĐỊNH" FOLDED="true" COLOR="#1F4E79">
      <node ID="LOGICV2_11FDEA181E6D1A" TEXT="Đã nhập định nghĩa bốn chiều, sáu cặp, coverage, audit schema, ETL contract và decision Objective suy luận" />
      <node ID="LOGICV2_3C2AEC52F5DC8F" TEXT="KPI Tree, Metric Tree và bộ 5 công thức v3 giữ vai trò riêng" />
      <node ID="LOGICV2_11DD366135C021" TEXT="AHP, catalog Excel và META_ALL_METRICS không nhập vào Logic Tree" />
      <node ID="LOGICV2_A0F1F736B9A80B" TEXT="MD/MM phải có cùng 14 nhánh chính; chi tiết MM được thu gọn" />
      <node ID="LOGICV2_6C7919E324D36C" TEXT="XML hợp lệ và ID không trùng chưa đồng nghĩa đã mở thử trên Lark/MindManager" />
      <node ID="LOGICV2_056428D9BBC19B" TEXT="Gộp tài liệu xong không đồng nghĩa dữ liệu/mapping đã đủ cho ETL production" />
    </node>
    <node ID="LOGICV2_3211F5ADA77F5C" TEXT="15. BẢN NÓI NGẮN ĐỂ DUY TRÌNH BÀY" FOLDED="true" COLOR="#548235">
      <node ID="LOGICV2_E5255CE2E132AC" TEXT="Đối soát tổng chi phí ở cấp Campaign trước" />
      <node ID="LOGICV2_A5E519BEF67AEF" TEXT="Đọc cùng khoản chi qua Nền tảng, Sản phẩm, Phễu và Objective" />
      <node ID="LOGICV2_D00FFA7F0CAF0E" TEXT="Chỉ tính sáu cặp khi cùng grain hoặc join bằng ID nguyên vẹn mà không tăng spend" />
      <node ID="LOGICV2_8872C419924B2B" TEXT="Objective suy luận do Duy map là input ETL human-curated; phải giữ rule/version" />
      <node ID="LOGICV2_D9503219A65792" TEXT="Thiếu Publisher, Ads→25 listing và GMV business nên chưa gọi ETL hoàn toàn sẵn sàng hoặc kết luận ROAS" />
    </node>
  </node>
</map>