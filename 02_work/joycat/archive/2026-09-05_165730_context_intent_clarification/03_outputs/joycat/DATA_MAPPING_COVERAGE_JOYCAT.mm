<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="DATAMAP_DC76E9F0C0006E8F" TEXT="JOYCAT — Data Mapping &amp; Coverage cho Ads Cost" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="DATAMAP_124F801B449AF725" TEXT="1. Đọc nhanh cho Duy và cậu Sinh" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_A888E1567AD879C8" TEXT="1.1. Tài liệu này giúp làm gì?" FOLDED="true">
        <node ID="DATAMAP_DF411241E07BCFA5" TEXT="Tài liệu này nối liền toàn bộ đường làm việc:" />
        <node ID="DATAMAP_FCF0273B47935159" TEXT="Mục tiêu phân tích&#10;→ KPI cần lượng hóa&#10;→ công thức Metric Tree&#10;→ bốn chiều và sáu cặp phân tích&#10;→ nguồn dữ liệu và mapping&#10;→ phần dataset tính được hoặc còn thiếu&#10;→ phép so sánh&#10;→ giả thuyết và bằng chứng&#10;→ recommendation khi đủ điều kiện" />
        <node ID="DATAMAP_A7FAC02EF00C59B3" TEXT="Nói đơn giản: trước khi hỏi “Campaign nào tốt?”, ta phải biết đang so cùng sản phẩm, cùng nhiệm vụ, cùng tầng phễu, cùng nơi hiển thị và cùng kỳ hay chưa. Sau đó mới đọc các chỉ số liên quan, đi sâu từ Campaign xuống Ad set và Ad, rồi kiểm tra cách giải thích nào phù hợp với dữ liệu." />
      </node>
      <node ID="DATAMAP_97A037B3EC85D544" TEXT="1.2. Kết quả quan trọng nhất" FOLDED="true">
        <node ID="DATAMAP_A6CE461EB325B79F" TEXT="Nội dung | Kết quả hiện tại | Ý nghĩa với bước sau" />
        <node ID="DATAMAP_083D1CB67730A8F6" TEXT="Tổng Ads Cost trong preferred Campaign | Tháng 03: 50.195.692; tháng 04: 64.825.305; tháng 05: 63.518.031 VND | Có thể làm số kiểm soát tại grain Campaign × tháng" />
        <node ID="DATAMAP_91F5743C340B4E4E" TEXT="Objective suy luận | 84 Campaign có spend; Duy xác nhận cho phép dùng làm human mapping | ETL được dùng nhưng phải giữ basis, version, người gắn và trạng thái review" />
        <node ID="DATAMAP_3600C43CA4082C1A" TEXT="Phễu | Có nhãn TOFU/MOFU/BOFU trên file dẫn xuất | Có thể thăm dò; rule, version, grain và owner vẫn cần khóa" />
        <node ID="DATAMAP_C9A2246BE4369E1D" TEXT="Sản phẩm | Catalog có 25 listing; Campaign name chỉ gợi ý được một số nhóm/ngành hàng | Chưa phân bổ Ads Cost xuống SP01–SP25" />
        <node ID="DATAMAP_94150666AFC865DB" TEXT="Publisher platform | Không có trong bộ dữ liệu đã kiểm tra | Ba cặp có chiều Nền tảng chưa tính được" />
        <node ID="DATAMAP_BEBA4430D55DDAED" TEXT="GMV business | Không có | Chưa tính được Business ROAS hoặc Ads Cost/GMV thật" />
        <node ID="DATAMAP_54D46802B8D0E0C1" TEXT="File Objective demo tháng 04 | 64.834.557 VND, cao hơn preferred Campaign 9.252 VND | Dùng để đọc mapping; chưa dùng làm fact spend chính tháng 04" />
      </node>
      <node ID="DATAMAP_F9095945C25245E4" TEXT="1.3. Ba Tree giữ ba vai trò riêng" FOLDED="true">
        <node ID="DATAMAP_7ECFF20C71D5742A" TEXT="Tree | Câu hỏi nó trả lời | Ví dụ" />
        <node ID="DATAMAP_D73EF96798D293C8" TEXT="KPI Tree | Cần lượng hóa những chỉ số nào? | Ads Cost, CPM, CPC, Cost per Messaging Conversation, Purchase" />
        <node ID="DATAMAP_20AF44A7946A27F7" TEXT="Metric Tree | Chỉ số được tính thế nào và rẽ tới field nào? | CPM = Amount Spent / Impressions × 1.000" />
        <node ID="DATAMAP_D4BC099B62876ACF" TEXT="Logic Tree | Khi phân tích một case, phải kiểm tra và so sánh theo đường nào? | Chọn đúng chiều → qua data gate → đọc nhóm metric → drill-down → kiểm chứng giả thuyết" />
      </node>
      <node ID="DATAMAP_670BEFCFDF026380" TEXT="1.4. Sáu cặp dataset hiện làm được tới đâu?" FOLDED="true">
        <node ID="DATAMAP_6B57F3EDFE01B760" TEXT="Cặp | Mức hiện tại" />
        <node ID="DATAMAP_BEB194285B02815E" TEXT="Nền tảng × Sản phẩm | Thiếu Publisher platform và Ads → sản phẩm" />
        <node ID="DATAMAP_9FBF1FEDBF55C45D" TEXT="Nền tảng × Phễu | Thiếu Publisher platform; Phễu chưa khóa hợp đồng mapping" />
        <node ID="DATAMAP_399405CC286B3BDC" TEXT="Nền tảng × Campaign objective | Thiếu Publisher platform; Objective human mapping đã có" />
        <node ID="DATAMAP_F142DEC2626A1AAD" TEXT="Phễu × Sản phẩm | Thăm dò được ở cấp nhóm/ngành hàng bằng human mapping" />
        <node ID="DATAMAP_AAB438A40AFC2E01" TEXT="Sản phẩm × Campaign objective | Thăm dò được ở cấp nhóm/ngành hàng × Objective suy luận" />
        <node ID="DATAMAP_5A617F9C2AE65AD4" TEXT="Phễu × Campaign objective | Tính được trên file demo bằng hai human mappings; còn cần khóa Phễu và đối soát source" />
        <node ID="DATAMAP_A42BB5C93A703213" TEXT="“Tính được” ở đây nói về cấu trúc Ads Cost. Nó không tự chứng minh hiệu quả, nguyên nhân hoặc Business ROAS." />
      </node>
    </node>
    <node ID="DATAMAP_BEA7E6D12999C34A" TEXT="2. Hợp đồng Context và bằng chứng" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_39A7EDED9D33BEA1" TEXT="2.1. Ba lớp context" FOLDED="true">
        <node ID="DATAMAP_FAE7EDDC9E8F4775" TEXT="Lớp | Nội dung Joycat" />
        <node ID="DATAMAP_9ABD96FA5C7CF1B2" TEXT="Objective Context | Xây hệ thống hỗ trợ phân tích marketing đa nguồn, bắt đầu từ Meta Ads Joycat" />
        <node ID="DATAMAP_BE61F50B3AF53A50" TEXT="Mong muốn thực tế của phase | Hoàn thiện Context và Logic Tree đủ rõ để review và chuẩn bị ETL/modeling" />
        <node ID="DATAMAP_1D641762894269D4" TEXT="Current Operating Context | Có Meta Ads export tháng 03–05, file mapping thủ công và catalog; chưa có publisher breakdown, khóa sản phẩm đầy đủ hoặc GMV business" />
      </node>
      <node ID="DATAMAP_67DED9E9A8B86FCD" TEXT="2.2. Bốn nhãn bằng chứng" FOLDED="true">
        <node ID="DATAMAP_AF987F2AD853B061" TEXT="Nhãn | Cách hiểu" />
        <node ID="DATAMAP_D89334F7BFFA8CA1" TEXT="Đã xác minh từ nguồn | File/schema/dòng dữ liệu trực tiếp hỗ trợ phát biểu" />
        <node ID="DATAMAP_8DE98B3226176F7A" TEXT="Owner đã xác nhận | Duy, cậu Sinh hoặc owner nghiệp vụ đã chốt; vẫn khác bằng chứng dữ liệu" />
        <node ID="DATAMAP_065A4FE341370BE1" TEXT="Suy luận | Có cơ sở hợp lý nhưng cần kiểm tra thêm" />
        <node ID="DATAMAP_861D7DA7DC6BA8DC" TEXT="To be updated | Chưa có nguồn đủ mạnh; phải ghi điều thiếu, owner và ảnh hưởng" />
      </node>
      <node ID="DATAMAP_89A53FC7C7CD43D7" TEXT="2.3. Data gate trước mọi phép so sánh" FOLDED="true">
        <node ID="DATAMAP_A30A66EC0E58104C" TEXT="Chỉ so hai case khi trả lời được:" />
        <node ID="DATAMAP_B002C23599AEE91D" TEXT="Cùng kỳ, timezone và đơn vị tiền chưa?" />
        <node ID="DATAMAP_776B628B396BEBFB" TEXT="Cùng grain chưa? Grain là “một dòng đại diện cho cái gì”: Campaign, Ad set hay Ad trong một kỳ." />
        <node ID="DATAMAP_845391435D89AA62" TEXT="Nếu dùng Meta Results/Purchases, attribution có giống nhau không?" />
        <node ID="DATAMAP_1BBE919E339388F7" TEXT="Results có cùng Result indicator không?" />
        <node ID="DATAMAP_C8719C35C4A76CD6" TEXT="Hai case có cùng sản phẩm, nhiệm vụ/objective, phễu và publisher cần kiểm soát không?" />
        <node ID="DATAMAP_5E808B6A1080B1FE" TEXT="Nhãn là field gốc hay human mapping? Mapping version nào?" />
        <node ID="DATAMAP_D24CB374729E3074" TEXT="Nếu tính Business ROAS, GMV và Ads Cost có cùng phạm vi không?" />
        <node ID="DATAMAP_1027EAD04814EA36" TEXT="Sau join, số dòng và tổng spend có tăng hoặc mất không?" />
        <node ID="DATAMAP_D71CB516A5B3C47A" TEXT="Không đạt gate thì gắn Chỉ thăm dò hoặc Chưa so sánh được và nói rõ lý do." />
      </node>
    </node>
    <node ID="DATAMAP_2618F9B488C2068D" TEXT="3. Kiểm soát Tổng Ads Cost" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_52D1920B8379A471" TEXT="3.1. Công thức kiểm soát" FOLDED="true">
        <node ID="DATAMAP_0452530A8377C43D" TEXT="Tổng Ads Cost tháng&#10;= tổng Amount spent (VND) của các dòng Campaign có Campaign name trong tháng" />
        <node ID="DATAMAP_CDF35D6ABD1FEE24" TEXT="Đường đối soát độc lập:" />
        <node ID="DATAMAP_A889C839EA445CC2" TEXT="Tổng Amount spent ở Campaign&#10;≈ Tổng Amount spent ở Ad set&#10;≈ Tổng Amount spent ở Ad" />
        <node ID="DATAMAP_7CAE66A1A8C831CE" TEXT="Ba tổng mô tả cùng một khoản tiền ở ba grain. Không cộng Campaign + Ad set + Ad." />
      </node>
      <node ID="DATAMAP_1BF2D0189ED28CCD" TEXT="3.2. Kết quả từ preferred source" FOLDED="true">
        <node ID="DATAMAP_7F8C14A1E4724958" TEXT="Tháng | Campaign có spend | Campaign total | Ad set/Ad total | Kết quả" />
        <node ID="DATAMAP_A5A8989FF95F06E0" TEXT="2026-03 | 18 | 50.195.692 | 50.195.692 | Khớp" />
        <node ID="DATAMAP_7D3E90F042C2AAF2" TEXT="2026-04 | 41 | 64.825.305 | 64.825.345 | Lệch 40 VND; giữ nguyên" />
        <node ID="DATAMAP_69F0E56DAFDE27AD" TEXT="2026-05 | 25 | 63.518.031 | 63.518.031 | Khớp" />
        <node ID="DATAMAP_29829AE5779CEC3A" TEXT="Trong preferred Campaign có bốn dòng có spend nhưng thiếu cả Results và Result indicator: tháng 04 có một, tháng 05 có ba. Các dòng này vẫn nằm trong Ads Cost." />
      </node>
      <node ID="DATAMAP_6B5AD222372C173F" TEXT="3.3. Chênh lệch file Objective demo tháng 04" FOLDED="true">
        <node ID="DATAMAP_C7934FCFE1650EE8" TEXT="Kiểm tra | Kết quả" />
        <node ID="DATAMAP_9C294EE0DDE853E2" TEXT="Preferred Campaign tháng 04 | 64.825.305 VND" />
        <node ID="DATAMAP_9D242D2F3F844FA7" TEXT="Objective demo tháng 04 | 64.834.557 VND" />
        <node ID="DATAMAP_24AE25F6C3BDB040" TEXT="Chênh lệch | +9.252 VND" />
        <node ID="DATAMAP_7D66AF1F8944D72A" TEXT="Chi tiết truy vết:" />
        <node ID="DATAMAP_49FE50EB2D9020E6" TEXT="40/41 tên Campaign trong demo khớp chính xác với preferred source." />
        <node ID="DATAMAP_E38E449DB3288952" TEXT="Trong 40 dòng khớp tên, 13 dòng có Amount Spent khác; tổng chênh lệch của các dòng này là +7.902 VND." />
        <node ID="DATAMAP_A739EB1B21EE5336" TEXT="Demo dòng 63 có Campaign 9/4/2026 - NA - TOFU Test - 1 - Mess -, spend 5.467.562 VND; tên này không tồn tại nguyên văn trong preferred source." />
        <node ID="DATAMAP_DBA11D8EBA716A22" TEXT="Preferred source có 9/4/2026 - NA Ver.3 - TOFU Test - NEW 1 - Mess - test Audience 2, spend 5.466.212 VND; tên này không tồn tại nguyên văn trong demo." />
        <node ID="DATAMAP_45304A8B8BDE8AC1" TEXT="Phần chênh giữa hai dòng trên là +1.350 VND. 7.902 + 1.350 = 9.252 VND." />
        <node ID="DATAMAP_1C0EB5C673B2ECFB" TEXT="Kết luận được phép: file demo là nguồn mapping hiện hành, nhưng preferred Campaign mới là số kiểm soát spend đang dùng. Trước ETL production cần xác nhận demo được tạo từ phiên bản export nào hoặc tái tạo mapping trên preferred source." />
      </node>
    </node>
    <node ID="DATAMAP_A6B84D5C1B58C11B" TEXT="4. Chiều Nền tảng" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_5481713706F2976B" TEXT="4.1. Ý nghĩa và nhóm" FOLDED="true">
        <node ID="DATAMAP_CF60B5BE5363E9E7" TEXT="Khái niệm | Nghĩa bằng lời thường | Ví dụ" />
        <node ID="DATAMAP_A86ABEDBC3DB8E7D" TEXT="Publisher platform | Ads thực sự hiển thị ở đâu | Facebook, Instagram, Messenger, Audience Network" />
        <node ID="DATAMAP_9A0C68C93235249E" TEXT="Destination | Bấm Ads xong khách được dẫn tới đâu | Messenger, WhatsApp, Shopee, website" />
        <node ID="DATAMAP_0ED8CC140E10BADB" TEXT="Sales channel | Doanh nghiệp ghi nhận đơn và GMV ở đâu | Shopee, TikTok, Facebook/Messenger, cửa hàng, B2B" />
        <node ID="DATAMAP_A3A47B56B59A9B4D" TEXT="Một Ads có thể hiển thị trên Facebook, dẫn khách sang WhatsApp và đơn được ghi tại cửa hàng. Ba tên này không được coi là cùng một chiều." />
      </node>
      <node ID="DATAMAP_5F99B93BC2CF2D24" TEXT="4.2. Công thức mô hình" FOLDED="true">
        <node ID="DATAMAP_F2707450FC465DE7" TEXT="Tổng Ads Cost&#10;= Ads Cost (Facebook)&#10;+ Ads Cost (Instagram)&#10;+ Ads Cost (Messenger)&#10;+ Ads Cost (Audience Network)&#10;+ Ads Cost (WhatsApp, nếu source trả về như publisher platform)&#10;+ Ads Cost (Nền tảng khác)&#10;+ Ads Cost (Nền tảng chưa xác định)" />
      </node>
      <node ID="DATAMAP_F700D38C1099E044" TEXT="4.3. Source binding và rule" FOLDED="true">
        <node ID="DATAMAP_9849323582B525C7" TEXT="Thuộc tính | Quy ước" />
        <node ID="DATAMAP_014CEDA9F3E868E1" TEXT="File hiện có | Chín preferred workbook Campaign/Ad set/Ad tháng 03–05/2026" />
        <node ID="DATAMAP_E6EEA6DF55C8E8D1" TEXT="Sheet | Worksheet" />
        <node ID="DATAMAP_3DDF9CC49AAD03F1" TEXT="Field cần | Publisher platform; nên lấy thêm Platform position, Impression device" />
        <node ID="DATAMAP_7269FE5904FA5F63" TEXT="Grain mong muốn | Campaign hoặc Ad × kỳ × publisher platform × breakdown đi kèm" />
        <node ID="DATAMAP_113041534023DCB3" TEXT="Khóa | Account ID + object ID dạng text + kỳ + publisher platform + breakdown còn lại" />
        <node ID="DATAMAP_43EB18DAF649D0DF" TEXT="Mapping | Lấy trực tiếp từ export; không suy từ Campaign name, CPAS-SHOPEE hoặc Result indicator" />
        <node ID="DATAMAP_CBE7CC6B0AE6A7AC" TEXT="Coverage | Chưa có field Publisher platform trong các workbook đã kiểm tra" />
      </node>
      <node ID="DATAMAP_3CA67A3C9812CDD7" TEXT="4.4. Cách phân tích" FOLDED="true">
        <node ID="DATAMAP_A89A11C0B8F9682B" TEXT="So platform trong cùng sản phẩm, objective/optimization, phễu, kỳ và attribution. Đọc Spend, CPM, Reach, Frequency, CTR/CPC và Result/Cost per Result đúng loại. Nếu placement hoặc device khác, chênh lệch chưa thể quy riêng cho platform." />
      </node>
    </node>
    <node ID="DATAMAP_41A9FC6555972AC8" TEXT="5. Chiều Sản phẩm" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_70062530E99DFB78" TEXT="5.1. Ba cấp không được trộn" FOLDED="true">
        <node ID="DATAMAP_93BCAD794D73FE63" TEXT="Cấp | Nghĩa | Dữ liệu hiện có" />
        <node ID="DATAMAP_49D91BFC3B27DF2D" TEXT="Nhóm sản phẩm | Dòng sản phẩm lớn | Có thể suy luận một phần từ Campaign name" />
        <node ID="DATAMAP_0294D623DDE3AF4F" TEXT="Listing | Trang bán hàng cụ thể, nhận diện bằng Shopee Item ID | Có snapshot 25 listing" />
        <node ID="DATAMAP_EFE41FFFBED88460" TEXT="SKU/biến thể | Đơn vị bán cụ thể trong hệ thống đơn hàng | Chưa có khóa SKU business" />
      </node>
      <node ID="DATAMAP_DC4D6490A768F70F" TEXT="5.2. Công thức mô hình" FOLDED="true">
        <node ID="DATAMAP_7EF6715D069FC1A5" TEXT="Tổng Ads Cost&#10;= Ads Cost (SP01) + Ads Cost (SP02) + ... + Ads Cost (SP25)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Sản phẩm chưa xác định)" />
      </node>
      <node ID="DATAMAP_ADA4B13EF869358D" TEXT="5.3. Mapping quan sát được" FOLDED="true">
        <node ID="DATAMAP_27099E3C49A2E654" TEXT="Tín hiệu trong Campaign name | Mức sâu tối đa | Trạng thái" />
        <node ID="DATAMAP_EBC258A67315DFA1" TEXT="VI SINH | Nhóm Vi sinh khử mùi | Suy luận; chưa chọn SP01/SP02/SP08" />
        <node ID="DATAMAP_96DDA326EEF5FED8" TEXT="NA | Nhóm Cát Sắn Natural | Suy luận" />
        <node ID="DATAMAP_0CBF5A85781B359F" TEXT="PFX | Nhóm Cát Mix PerformX | Suy luận" />
        <node ID="DATAMAP_FDE8F5F639E75BDE" TEXT="MNX | Nhóm Cát Khoáng MineralX | Suy luận" />
        <node ID="DATAMAP_DB4C6A91BC8472C3" TEXT="CÁT | Ngành hàng cát nói chung | Không đủ chọn Natural/PerformX/MineralX/PowerX/Tofuu.X" />
        <node ID="DATAMAP_46198FFCF5D80578" TEXT="Sale, branding hoặc không có mã | Shared/Unmapped | Không ép xuống sản phẩm" />
        <node ID="DATAMAP_057493C774B02E18" TEXT="Các rule này chưa được Duy/cậu Sinh duyệt như mapping sản phẩm chính thức. Snapshot ngày 25/08/2026 không chứng minh listing đã tồn tại hoặc được quảng cáo trong tháng 03–05/2026." />
      </node>
      <node ID="DATAMAP_81EA16766A31E530" TEXT="5.4. Source binding và cách phân tích" FOLDED="true">
        <node ID="DATAMAP_6E9D018C1D8BE2A3" TEXT="Nguồn catalog: JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx, sheet Danh sách sản phẩm, Item ID ở cột Item ID." />
        <node ID="DATAMAP_736CA91C0CABA016" TEXT="Nguồn Ads: preferred Campaign có Campaign name; chưa có Product ID/Item ID/SKU." />
        <node ID="DATAMAP_45CF8E1D76DD8990" TEXT="Grain ưu tiên cho mapping: Ad × kỳ khi creative quảng cáo sản phẩm cụ thể. Campaign chỉ dùng nếu toàn Campaign có cùng phạm vi sản phẩm." />
        <node ID="DATAMAP_CA4E8B1A1D7DE33F" TEXT="Một Ad quảng cáo nhiều sản phẩm cần bridge. Giữ Multi-product/Shared cho tới khi có rule phân bổ được owner duyệt." />
        <node ID="DATAMAP_68A81D2E0AC081D9" TEXT="Khi phân tích, so cùng nhóm/listing trước; sau đó kiểm soát objective, phễu, publisher, format, kỳ và attribution." />
      </node>
    </node>
    <node ID="DATAMAP_AB64C7A6668E8F9A" TEXT="6. Chiều Phễu" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_B7578FEB3F7239C1" TEXT="6.1. Ý nghĩa" FOLDED="true">
        <node ID="DATAMAP_F8F8661DE6060A96" TEXT="Nhãn | Nhiệm vụ phân tích | Không được mặc định" />
        <node ID="DATAMAP_A971D2899293258D" TEXT="TOFU | Phân phối, nhận biết và tạo tín hiệu ban đầu | Mọi post engagement đều chắc chắn là TOFU; CPM phải cao/thấp" />
        <node ID="DATAMAP_03A07D2DC0B93EB0" TEXT="MOFU | Quan tâm, click, tương tác sâu hoặc messaging | Mọi messaging result đều chắc chắn là MOFU" />
        <node ID="DATAMAP_4D25D75A84875631" TEXT="BOFU | Hành động mua, đơn và GMV | Meta Purchase bằng đơn/GMV business" />
        <node ID="DATAMAP_79B29499075B79E6" TEXT="Mixed/Shared | Một đối tượng phục vụ nhiều tầng | Tự chia đều spend cho ba tầng" />
        <node ID="DATAMAP_40C6215AB9FC63B9" TEXT="Chưa phân loại | Chưa đủ căn cứ | Loại spend khỏi tổng" />
        <node ID="DATAMAP_B7695F0BF19BB5AB" TEXT="Owner đã xác nhận ở cấp cao: TOFU hướng tới View; MOFU/BOFU hướng tới chuyển đổi. Rule gắn từng Campaign vẫn chưa khóa." />
      </node>
      <node ID="DATAMAP_315B7997C066D090" TEXT="6.2. Công thức mô hình" FOLDED="true">
        <node ID="DATAMAP_62933F9222D84B70" TEXT="Tổng Ads Cost&#10;= Ads Cost (TOFU)&#10;+ Ads Cost (MOFU)&#10;+ Ads Cost (BOFU)&#10;+ Ads Cost (Mixed/Shared Funnel)&#10;+ Ads Cost (Chưa phân loại phễu)" />
      </node>
      <node ID="DATAMAP_44FE80DE45BB683C" TEXT="6.3. Source binding và rule" FOLDED="true">
        <node ID="DATAMAP_E82A0AF36C9DF208" TEXT="File mapping hiện dùng: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx, sheet Campaign_3_tháng, cột Phễu." />
        <node ID="DATAMAP_381B41DEC72EA4C1" TEXT="Grain hiện tại: Campaign name × tháng trong file dẫn xuất." />
        <node ID="DATAMAP_BB7D0F2D7749C092" TEXT="Coverage quan sát: 84 Campaign có spend gồm MOFU 47, TOFU 27, BOFU 10." />
        <node ID="DATAMAP_BFAF65EE9BDDA28C" TEXT="Trạng thái: human mapping một phần; chưa có rule, version, người xác nhận và kỳ hiệu lực đầy đủ." />
        <node ID="DATAMAP_E693D0DC19459392" TEXT="Mapping tối thiểu cần giữ: object_level, object_id_text, funnel_stage, mapping_basis, mapping_version, confirmed_by, valid_from, valid_to, review_status." />
        <node ID="DATAMAP_E60531D025183EDB" TEXT="Khi objective, name và vai trò thật xung đột, dùng Mixed/Shared hoặc Chưa phân loại để chờ review." />
      </node>
    </node>
    <node ID="DATAMAP_E67F2D2CBE974D2B" TEXT="7. Chiều Campaign objective" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_DAD81FA2F77E79D4" TEXT="7.1. Bốn lớp phải tách riêng" FOLDED="true">
        <node ID="DATAMAP_5E7990676E63E702" TEXT="Lớp | Grain chính | Nó trả lời câu hỏi nào?" />
        <node ID="DATAMAP_1267450675309CEE" TEXT="Campaign objective gốc | Campaign | Campaign được tạo với nhóm mục tiêu nào trong Meta?" />
        <node ID="DATAMAP_83302886D14C3278" TEXT="Optimization/Performance goal | Ad set | Meta đang tối ưu phân phối cho hành động nào?" />
        <node ID="DATAMAP_9C830D838EBBC9F5" TEXT="Result indicator | Dòng Insights | Results của dòng đang đại diện loại kết quả nào?" />
        <node ID="DATAMAP_6E7A8173D2DC5BBE" TEXT="Objective suy luận | Campaign × kỳ trong file hiện hành | Con người phân nhóm Campaign để ETL/phân tích khi thiếu objective gốc" />
      </node>
      <node ID="DATAMAP_2494F8343D22CDB0" TEXT="7.2. Nhãn thực tế trong file demo" FOLDED="true">
        <node ID="DATAMAP_76498BF2BA0604B4" TEXT="Engagement - Messaging&#10;Engagement - Post engagement&#10;Sales - Purchase&#10;Sales - Purchase [Suy luận từ tên Campaign]&#10;Awareness - Ad recall&#10;Chưa xác định" />
        <node ID="DATAMAP_07FA528ADC15196C" TEXT="Số Campaign có spend: 49, 26, 4, 2, 1 và 2; tổng 84." />
      </node>
      <node ID="DATAMAP_D5E5D03262B4D2A9" TEXT="7.3. Công thức mô hình" FOLDED="true">
        <node ID="DATAMAP_01D939B9D5996066" TEXT="Tổng Ads Cost&#10;= Ads Cost (Engagement - Messaging)&#10;+ Ads Cost (Engagement - Post engagement)&#10;+ Ads Cost (Sales - Purchase)&#10;+ Ads Cost (Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Awareness - Ad recall)&#10;+ Ads Cost (Objective khác)&#10;+ Ads Cost (Objective chưa xác định)" />
      </node>
      <node ID="DATAMAP_05798F62AACC5FC4" TEXT="7.4. Rule và quyết định của Duy" FOLDED="true">
        <node ID="DATAMAP_DA0708FE6F0559DB" TEXT="Owner đã xác nhận — Duy, 05/09/2026: được dùng Objective suy luận làm human-curated ETL input vì raw thiếu Campaign objective. “Human-curated” nghĩa là nhãn do con người gắn và chịu trách nhiệm review, không phải field Meta tự xuất." />
        <node ID="DATAMAP_F3481D1509BCB5FB" TEXT="Cơ sở | Objective suy luận" />
        <node ID="DATAMAP_83927C055074CCA9" TEXT="actions:onsite_conversion.messaging_conversation_started_7d | Engagement - Messaging" />
        <node ID="DATAMAP_A76008C84CC2A9A1" TEXT="actions:post_engagement | Engagement - Post engagement" />
        <node ID="DATAMAP_4A7D57EB538BE226" TEXT="actions:onsite_conversion.purchase | Sales - Purchase" />
        <node ID="DATAMAP_E2E6C54754B863A6" TEXT="estimated_ad_recallers | Awareness - Ad recall" />
        <node ID="DATAMAP_FD0362C3F097D992" TEXT="Result trống, Campaign name có Doanh số | Sales - Purchase [Suy luận từ tên Campaign]" />
        <node ID="DATAMAP_8E5A1CE61C563C35" TEXT="Không đủ tín hiệu | Chưa xác định" />
        <node ID="DATAMAP_304BFED18AFA8635" TEXT="Thứ tự ưu tiên: manual override được review → Result indicator → Campaign name theo rule → Chưa xác định." />
        <node ID="DATAMAP_CB1B221F6D20F4BB" TEXT="ETL phải giữ objective_mapped, objective_mapping_basis, objective_mapping_version, mapped_by, mapped_at, review_status. Nếu có objective Meta sau này, lưu riêng thành campaign_objective_meta để đối soát; không ghi đè lịch sử human mapping." />
      </node>
    </node>
    <node ID="DATAMAP_8BB7B9FEE7349EC1" TEXT="8. Sáu cặp: công thức, nguồn và cách đối soát" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_E1503D43C854F223" TEXT="Mỗi cặp là một bảng giao giữa hai chiều. Các ô trong một cặp phải không trùng nhau và bao hết spend nhờ Shared/Mixed/Unmapped. Không cộng tổng của sáu cặp với nhau." />
      <node ID="DATAMAP_67CFD8B471CCBD85" TEXT="8.1. Nền tảng × Sản phẩm" FOLDED="true">
        <node ID="DATAMAP_6E04FBD0971C280F" TEXT="Câu hỏi: trên từng nơi hiển thị, tiền được chi cho sản phẩm nào?" />
        <node ID="DATAMAP_EF047D6A5CC94302" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, SP01) + Ads Cost (Facebook, SP02) + ... + Ads Cost (Facebook, SP25)&#10;+ Ads Cost (Facebook, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Facebook, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Facebook, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, SP01) + Ads Cost (Instagram, SP02) + ... + Ads Cost (Instagram, SP25)&#10;+ Ads Cost (Instagram, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Instagram, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Instagram, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, SP01) + Ads Cost (Messenger, SP02) + ... + Ads Cost (Messenger, SP25)&#10;+ Ads Cost (Messenger, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Messenger, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Messenger, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, SP01) + ... + Ads Cost (Audience Network, SP25)&#10;+ Ads Cost (Audience Network, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (Audience Network, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (Audience Network, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, SP01) + ... + Ads Cost (WhatsApp, SP25)&#10;+ Ads Cost (WhatsApp, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (WhatsApp, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (WhatsApp, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Nền tảng khác/chưa xác định)&#10;= Ads Cost (Nền tảng khác/chưa xác định, SP01) + ... + Ads Cost (Nền tảng khác/chưa xác định, SP25)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, Nhóm sản phẩm/shared/unmapped)" />
        <node ID="DATAMAP_3385063D224AD4B2" TEXT="Cách đọc ngược: Ads Cost (SP01) = Ads Cost (Facebook, SP01) + Ads Cost (Instagram, SP01) + ... + Ads Cost (Nền tảng chưa xác định, SP01)." />
        <node ID="DATAMAP_DBDC0895EE2E7E7B" TEXT="Nguồn cần: publisher breakdown và Ads ID → Item ID/SKU mapping ở grain tương thích. Hiện thiếu cả hai; chưa tính được." />
      </node>
      <node ID="DATAMAP_DC167F973F95AFAF" TEXT="8.2. Nền tảng × Phễu" FOLDED="true">
        <node ID="DATAMAP_756044E01CDD8582" TEXT="Câu hỏi: trên từng publisher platform, tiền phục vụ tầng phễu nào?" />
        <node ID="DATAMAP_5623322A87296F86" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, TOFU) + Ads Cost (Facebook, MOFU) + Ads Cost (Facebook, BOFU)&#10;+ Ads Cost (Facebook, Mixed/Shared Funnel) + Ads Cost (Facebook, Chưa phân loại phễu)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, TOFU) + Ads Cost (Instagram, MOFU) + Ads Cost (Instagram, BOFU)&#10;+ Ads Cost (Instagram, Mixed/Shared Funnel) + Ads Cost (Instagram, Chưa phân loại phễu)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, TOFU) + Ads Cost (Messenger, MOFU) + Ads Cost (Messenger, BOFU)&#10;+ Ads Cost (Messenger, Mixed/Shared Funnel) + Ads Cost (Messenger, Chưa phân loại phễu)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, TOFU) + Ads Cost (Audience Network, MOFU) + Ads Cost (Audience Network, BOFU)&#10;+ Ads Cost (Audience Network, Mixed/Shared Funnel) + Ads Cost (Audience Network, Chưa phân loại phễu)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, TOFU) + Ads Cost (WhatsApp, MOFU) + Ads Cost (WhatsApp, BOFU)&#10;+ Ads Cost (WhatsApp, Mixed/Shared Funnel) + Ads Cost (WhatsApp, Chưa phân loại phễu)&#10;&#10;Ads Cost (Nền tảng khác/chưa xác định)&#10;= Ads Cost (Nền tảng khác/chưa xác định, TOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, MOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, BOFU)&#10;+ Ads Cost (Nền tảng khác/chưa xác định, Mixed/Shared/Chưa phân loại)" />
        <node ID="DATAMAP_C3A8402EDABA7C55" TEXT="Cách đọc ngược: Ads Cost (TOFU) = Ads Cost (Facebook, TOFU) + Ads Cost (Instagram, TOFU) + ...." />
        <node ID="DATAMAP_DD2CACA48DEF14B1" TEXT="Nguồn cần: publisher breakdown + map_funnel; cùng ID/kỳ/grain. Hiện bị chặn bởi Publisher platform." />
      </node>
      <node ID="DATAMAP_2FADC64B42D9216F" TEXT="8.3. Nền tảng × Campaign objective" FOLDED="true">
        <node ID="DATAMAP_1B02D5B7D742F86B" TEXT="Câu hỏi: mỗi publisher platform chi bao nhiêu cho từng nhóm objective?" />
        <node ID="DATAMAP_220523A80749C4D0" TEXT="Viết riêng từng nền tảng để ETL không phải suy đoán “P” là gì:" />
        <node ID="DATAMAP_A1B9E7D280E9B0A2" TEXT="Ads Cost (Facebook)&#10;= Ads Cost (Facebook, Engagement - Messaging)&#10;+ Ads Cost (Facebook, Engagement - Post engagement)&#10;+ Ads Cost (Facebook, Sales - Purchase)&#10;+ Ads Cost (Facebook, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Facebook, Awareness - Ad recall)&#10;+ Ads Cost (Facebook, Objective khác)&#10;+ Ads Cost (Facebook, Objective chưa xác định)&#10;&#10;Ads Cost (Instagram)&#10;= Ads Cost (Instagram, Engagement - Messaging)&#10;+ Ads Cost (Instagram, Engagement - Post engagement)&#10;+ Ads Cost (Instagram, Sales - Purchase)&#10;+ Ads Cost (Instagram, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Instagram, Awareness - Ad recall)&#10;+ Ads Cost (Instagram, Objective khác)&#10;+ Ads Cost (Instagram, Objective chưa xác định)&#10;&#10;Ads Cost (Messenger)&#10;= Ads Cost (Messenger, Engagement - Messaging)&#10;+ Ads Cost (Messenger, Engagement - Post engagement)&#10;+ Ads Cost (Messenger, Sales - Purchase)&#10;+ Ads Cost (Messenger, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Messenger, Awareness - Ad recall)&#10;+ Ads Cost (Messenger, Objective khác)&#10;+ Ads Cost (Messenger, Objective chưa xác định)&#10;&#10;Ads Cost (Audience Network)&#10;= Ads Cost (Audience Network, Engagement - Messaging)&#10;+ Ads Cost (Audience Network, Engagement - Post engagement)&#10;+ Ads Cost (Audience Network, Sales - Purchase)&#10;+ Ads Cost (Audience Network, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Audience Network, Awareness - Ad recall)&#10;+ Ads Cost (Audience Network, Objective khác)&#10;+ Ads Cost (Audience Network, Objective chưa xác định)&#10;&#10;Ads Cost (WhatsApp, nếu là publisher platform)&#10;= Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Messaging)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Engagement - Post engagement)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Awareness - Ad recall)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Objective khác)&#10;+ Ads Cost (WhatsApp, nếu là publisher platform, Objective chưa xác định)&#10;&#10;Ads Cost (Nền tảng khác)&#10;= Ads Cost (Nền tảng khác, Engagement - Messaging)&#10;+ Ads Cost (Nền tảng khác, Engagement - Post engagement)&#10;+ Ads Cost (Nền tảng khác, Sales - Purchase)&#10;+ Ads Cost (Nền tảng khác, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nền tảng khác, Awareness - Ad recall)&#10;+ Ads Cost (Nền tảng khác, Objective khác)&#10;+ Ads Cost (Nền tảng khác, Objective chưa xác định)&#10;&#10;Ads Cost (Nền tảng chưa xác định)&#10;= Ads Cost (Nền tảng chưa xác định, Engagement - Messaging)&#10;+ Ads Cost (Nền tảng chưa xác định, Engagement - Post engagement)&#10;+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase)&#10;+ Ads Cost (Nền tảng chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nền tảng chưa xác định, Awareness - Ad recall)&#10;+ Ads Cost (Nền tảng chưa xác định, Objective khác)&#10;+ Ads Cost (Nền tảng chưa xác định, Objective chưa xác định)" />
        <node ID="DATAMAP_FC05F907A8A89A52" TEXT="Các block trên là công thức mô hình. Chỉ điền Ads Cost thật khi source trả về đúng publisher_platform; riêng WhatsApp phải được xác nhận là publisher, không lấy destination thay thế." />
        <node ID="DATAMAP_3F3355FDA0DDD71D" TEXT="Cách đọc ngược: cộng một objective qua toàn bộ publisher platform. Nguồn cần: publisher breakdown + Objective human mapping. Objective đã có; publisher vẫn thiếu." />
      </node>
      <node ID="DATAMAP_F5F8143B86F20487" TEXT="8.4. Phễu × Sản phẩm" FOLDED="true">
        <node ID="DATAMAP_5C4FC91EE9A47E58" TEXT="Câu hỏi: trong mỗi tầng phễu, tiền được chi cho sản phẩm nào?" />
        <node ID="DATAMAP_252ED24D99339A81" TEXT="Ads Cost (TOFU)&#10;= Ads Cost (TOFU, SP01) + Ads Cost (TOFU, SP02) + ... + Ads Cost (TOFU, SP25)&#10;+ Ads Cost (TOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (TOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (TOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (MOFU)&#10;= Ads Cost (MOFU, SP01) + Ads Cost (MOFU, SP02) + ... + Ads Cost (MOFU, SP25)&#10;+ Ads Cost (MOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (MOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (MOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (BOFU)&#10;= Ads Cost (BOFU, SP01) + Ads Cost (BOFU, SP02) + ... + Ads Cost (BOFU, SP25)&#10;+ Ads Cost (BOFU, Chỉ xác định được nhóm sản phẩm)&#10;+ Ads Cost (BOFU, Nhiều sản phẩm/branding/shared)&#10;+ Ads Cost (BOFU, Sản phẩm chưa xác định)&#10;&#10;Ads Cost (Mixed/Shared Funnel)&#10;= Ads Cost (Mixed/Shared Funnel, SP01) + ... + Ads Cost (Mixed/Shared Funnel, SP25)&#10;+ Ads Cost (Mixed/Shared Funnel, Nhóm sản phẩm/shared/unmapped)&#10;&#10;Ads Cost (Chưa phân loại phễu)&#10;= Ads Cost (Chưa phân loại phễu, SP01) + ... + Ads Cost (Chưa phân loại phễu, SP25)&#10;+ Ads Cost (Chưa phân loại phễu, Nhóm sản phẩm/shared/unmapped)" />
        <node ID="DATAMAP_2645CFFDC02308AB" TEXT="Nguồn hiện tại cho phép thăm dò ở cấp nhóm/ngành hàng vì Phễu và Campaign name nằm cùng dòng. Chưa có bằng chứng cho SP01–SP25." />
      </node>
      <node ID="DATAMAP_8A41C423CB52C011" TEXT="8.5. Sản phẩm × Campaign objective" FOLDED="true">
        <node ID="DATAMAP_0846365A94649AD1" TEXT="Câu hỏi: mỗi sản phẩm/nhóm sản phẩm đang nhận spend cho nhiệm vụ nào?" />
        <node ID="DATAMAP_6B3038F4C3433DB4" TEXT="Viết đủ 25 listing và ba bucket ngoại lệ để mô hình không làm rơi spend:" />
        <node ID="DATAMAP_1354698B2F4F74BE" TEXT="Ads Cost (SP01)&#10;= Ads Cost (SP01, Engagement - Messaging)&#10;+ Ads Cost (SP01, Engagement - Post engagement)&#10;+ Ads Cost (SP01, Sales - Purchase)&#10;+ Ads Cost (SP01, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP01, Awareness - Ad recall)&#10;+ Ads Cost (SP01, Objective khác)&#10;+ Ads Cost (SP01, Objective chưa xác định)&#10;&#10;Ads Cost (SP02)&#10;= Ads Cost (SP02, Engagement - Messaging)&#10;+ Ads Cost (SP02, Engagement - Post engagement)&#10;+ Ads Cost (SP02, Sales - Purchase)&#10;+ Ads Cost (SP02, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP02, Awareness - Ad recall)&#10;+ Ads Cost (SP02, Objective khác)&#10;+ Ads Cost (SP02, Objective chưa xác định)&#10;&#10;Ads Cost (SP03)&#10;= Ads Cost (SP03, Engagement - Messaging)&#10;+ Ads Cost (SP03, Engagement - Post engagement)&#10;+ Ads Cost (SP03, Sales - Purchase)&#10;+ Ads Cost (SP03, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP03, Awareness - Ad recall)&#10;+ Ads Cost (SP03, Objective khác)&#10;+ Ads Cost (SP03, Objective chưa xác định)&#10;&#10;Ads Cost (SP04)&#10;= Ads Cost (SP04, Engagement - Messaging)&#10;+ Ads Cost (SP04, Engagement - Post engagement)&#10;+ Ads Cost (SP04, Sales - Purchase)&#10;+ Ads Cost (SP04, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP04, Awareness - Ad recall)&#10;+ Ads Cost (SP04, Objective khác)&#10;+ Ads Cost (SP04, Objective chưa xác định)&#10;&#10;Ads Cost (SP05)&#10;= Ads Cost (SP05, Engagement - Messaging)&#10;+ Ads Cost (SP05, Engagement - Post engagement)&#10;+ Ads Cost (SP05, Sales - Purchase)&#10;+ Ads Cost (SP05, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP05, Awareness - Ad recall)&#10;+ Ads Cost (SP05, Objective khác)&#10;+ Ads Cost (SP05, Objective chưa xác định)&#10;&#10;Ads Cost (SP06)&#10;= Ads Cost (SP06, Engagement - Messaging)&#10;+ Ads Cost (SP06, Engagement - Post engagement)&#10;+ Ads Cost (SP06, Sales - Purchase)&#10;+ Ads Cost (SP06, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP06, Awareness - Ad recall)&#10;+ Ads Cost (SP06, Objective khác)&#10;+ Ads Cost (SP06, Objective chưa xác định)&#10;&#10;Ads Cost (SP07)&#10;= Ads Cost (SP07, Engagement - Messaging)&#10;+ Ads Cost (SP07, Engagement - Post engagement)&#10;+ Ads Cost (SP07, Sales - Purchase)&#10;+ Ads Cost (SP07, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP07, Awareness - Ad recall)&#10;+ Ads Cost (SP07, Objective khác)&#10;+ Ads Cost (SP07, Objective chưa xác định)&#10;&#10;Ads Cost (SP08)&#10;= Ads Cost (SP08, Engagement - Messaging)&#10;+ Ads Cost (SP08, Engagement - Post engagement)&#10;+ Ads Cost (SP08, Sales - Purchase)&#10;+ Ads Cost (SP08, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP08, Awareness - Ad recall)&#10;+ Ads Cost (SP08, Objective khác)&#10;+ Ads Cost (SP08, Objective chưa xác định)&#10;&#10;Ads Cost (SP09)&#10;= Ads Cost (SP09, Engagement - Messaging)&#10;+ Ads Cost (SP09, Engagement - Post engagement)&#10;+ Ads Cost (SP09, Sales - Purchase)&#10;+ Ads Cost (SP09, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP09, Awareness - Ad recall)&#10;+ Ads Cost (SP09, Objective khác)&#10;+ Ads Cost (SP09, Objective chưa xác định)&#10;&#10;Ads Cost (SP10)&#10;= Ads Cost (SP10, Engagement - Messaging)&#10;+ Ads Cost (SP10, Engagement - Post engagement)&#10;+ Ads Cost (SP10, Sales - Purchase)&#10;+ Ads Cost (SP10, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP10, Awareness - Ad recall)&#10;+ Ads Cost (SP10, Objective khác)&#10;+ Ads Cost (SP10, Objective chưa xác định)&#10;&#10;Ads Cost (SP11)&#10;= Ads Cost (SP11, Engagement - Messaging)&#10;+ Ads Cost (SP11, Engagement - Post engagement)&#10;+ Ads Cost (SP11, Sales - Purchase)&#10;+ Ads Cost (SP11, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP11, Awareness - Ad recall)&#10;+ Ads Cost (SP11, Objective khác)&#10;+ Ads Cost (SP11, Objective chưa xác định)&#10;&#10;Ads Cost (SP12)&#10;= Ads Cost (SP12, Engagement - Messaging)&#10;+ Ads Cost (SP12, Engagement - Post engagement)&#10;+ Ads Cost (SP12, Sales - Purchase)&#10;+ Ads Cost (SP12, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP12, Awareness - Ad recall)&#10;+ Ads Cost (SP12, Objective khác)&#10;+ Ads Cost (SP12, Objective chưa xác định)&#10;&#10;Ads Cost (SP13)&#10;= Ads Cost (SP13, Engagement - Messaging)&#10;+ Ads Cost (SP13, Engagement - Post engagement)&#10;+ Ads Cost (SP13, Sales - Purchase)&#10;+ Ads Cost (SP13, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP13, Awareness - Ad recall)&#10;+ Ads Cost (SP13, Objective khác)&#10;+ Ads Cost (SP13, Objective chưa xác định)&#10;&#10;Ads Cost (SP14)&#10;= Ads Cost (SP14, Engagement - Messaging)&#10;+ Ads Cost (SP14, Engagement - Post engagement)&#10;+ Ads Cost (SP14, Sales - Purchase)&#10;+ Ads Cost (SP14, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP14, Awareness - Ad recall)&#10;+ Ads Cost (SP14, Objective khác)&#10;+ Ads Cost (SP14, Objective chưa xác định)&#10;&#10;Ads Cost (SP15)&#10;= Ads Cost (SP15, Engagement - Messaging)&#10;+ Ads Cost (SP15, Engagement - Post engagement)&#10;+ Ads Cost (SP15, Sales - Purchase)&#10;+ Ads Cost (SP15, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP15, Awareness - Ad recall)&#10;+ Ads Cost (SP15, Objective khác)&#10;+ Ads Cost (SP15, Objective chưa xác định)&#10;&#10;Ads Cost (SP16)&#10;= Ads Cost (SP16, Engagement - Messaging)&#10;+ Ads Cost (SP16, Engagement - Post engagement)&#10;+ Ads Cost (SP16, Sales - Purchase)&#10;+ Ads Cost (SP16, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP16, Awareness - Ad recall)&#10;+ Ads Cost (SP16, Objective khác)&#10;+ Ads Cost (SP16, Objective chưa xác định)&#10;&#10;Ads Cost (SP17)&#10;= Ads Cost (SP17, Engagement - Messaging)&#10;+ Ads Cost (SP17, Engagement - Post engagement)&#10;+ Ads Cost (SP17, Sales - Purchase)&#10;+ Ads Cost (SP17, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP17, Awareness - Ad recall)&#10;+ Ads Cost (SP17, Objective khác)&#10;+ Ads Cost (SP17, Objective chưa xác định)&#10;&#10;Ads Cost (SP18)&#10;= Ads Cost (SP18, Engagement - Messaging)&#10;+ Ads Cost (SP18, Engagement - Post engagement)&#10;+ Ads Cost (SP18, Sales - Purchase)&#10;+ Ads Cost (SP18, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP18, Awareness - Ad recall)&#10;+ Ads Cost (SP18, Objective khác)&#10;+ Ads Cost (SP18, Objective chưa xác định)&#10;&#10;Ads Cost (SP19)&#10;= Ads Cost (SP19, Engagement - Messaging)&#10;+ Ads Cost (SP19, Engagement - Post engagement)&#10;+ Ads Cost (SP19, Sales - Purchase)&#10;+ Ads Cost (SP19, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP19, Awareness - Ad recall)&#10;+ Ads Cost (SP19, Objective khác)&#10;+ Ads Cost (SP19, Objective chưa xác định)&#10;&#10;Ads Cost (SP20)&#10;= Ads Cost (SP20, Engagement - Messaging)&#10;+ Ads Cost (SP20, Engagement - Post engagement)&#10;+ Ads Cost (SP20, Sales - Purchase)&#10;+ Ads Cost (SP20, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP20, Awareness - Ad recall)&#10;+ Ads Cost (SP20, Objective khác)&#10;+ Ads Cost (SP20, Objective chưa xác định)&#10;&#10;Ads Cost (SP21)&#10;= Ads Cost (SP21, Engagement - Messaging)&#10;+ Ads Cost (SP21, Engagement - Post engagement)&#10;+ Ads Cost (SP21, Sales - Purchase)&#10;+ Ads Cost (SP21, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP21, Awareness - Ad recall)&#10;+ Ads Cost (SP21, Objective khác)&#10;+ Ads Cost (SP21, Objective chưa xác định)&#10;&#10;Ads Cost (SP22)&#10;= Ads Cost (SP22, Engagement - Messaging)&#10;+ Ads Cost (SP22, Engagement - Post engagement)&#10;+ Ads Cost (SP22, Sales - Purchase)&#10;+ Ads Cost (SP22, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP22, Awareness - Ad recall)&#10;+ Ads Cost (SP22, Objective khác)&#10;+ Ads Cost (SP22, Objective chưa xác định)&#10;&#10;Ads Cost (SP23)&#10;= Ads Cost (SP23, Engagement - Messaging)&#10;+ Ads Cost (SP23, Engagement - Post engagement)&#10;+ Ads Cost (SP23, Sales - Purchase)&#10;+ Ads Cost (SP23, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP23, Awareness - Ad recall)&#10;+ Ads Cost (SP23, Objective khác)&#10;+ Ads Cost (SP23, Objective chưa xác định)&#10;&#10;Ads Cost (SP24)&#10;= Ads Cost (SP24, Engagement - Messaging)&#10;+ Ads Cost (SP24, Engagement - Post engagement)&#10;+ Ads Cost (SP24, Sales - Purchase)&#10;+ Ads Cost (SP24, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP24, Awareness - Ad recall)&#10;+ Ads Cost (SP24, Objective khác)&#10;+ Ads Cost (SP24, Objective chưa xác định)&#10;&#10;Ads Cost (SP25)&#10;= Ads Cost (SP25, Engagement - Messaging)&#10;+ Ads Cost (SP25, Engagement - Post engagement)&#10;+ Ads Cost (SP25, Sales - Purchase)&#10;+ Ads Cost (SP25, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (SP25, Awareness - Ad recall)&#10;+ Ads Cost (SP25, Objective khác)&#10;+ Ads Cost (SP25, Objective chưa xác định)&#10;&#10;Ads Cost (Chỉ xác định được nhóm sản phẩm)&#10;= Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Messaging)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Engagement - Post engagement)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Awareness - Ad recall)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective khác)&#10;+ Ads Cost (Chỉ xác định được nhóm sản phẩm, Objective chưa xác định)&#10;&#10;Ads Cost (Nhiều sản phẩm/branding/shared)&#10;= Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Messaging)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Engagement - Post engagement)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Awareness - Ad recall)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective khác)&#10;+ Ads Cost (Nhiều sản phẩm/branding/shared, Objective chưa xác định)&#10;&#10;Ads Cost (Sản phẩm chưa xác định)&#10;= Ads Cost (Sản phẩm chưa xác định, Engagement - Messaging)&#10;+ Ads Cost (Sản phẩm chưa xác định, Engagement - Post engagement)&#10;+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase)&#10;+ Ads Cost (Sản phẩm chưa xác định, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (Sản phẩm chưa xác định, Awareness - Ad recall)&#10;+ Ads Cost (Sản phẩm chưa xác định, Objective khác)&#10;+ Ads Cost (Sản phẩm chưa xác định, Objective chưa xác định)" />
        <node ID="DATAMAP_1CCA59701AD2D42B" TEXT="Đây là ma trận mô hình. Dataset hiện chưa có khóa Ads → listing nên chưa được điền spend vào SP01–SP25; chỉ có thể thăm dò ở cấp nhóm/ngành hàng theo quy tắc suy luận được ghi riêng." />
        <node ID="DATAMAP_E63C7586089D4C89" TEXT="Cách đọc ngược: mỗi Objective bằng tổng các ô của SP01–SP25 và các bucket ngoại lệ. Hiện mới thăm dò được nhóm/ngành hàng × Objective suy luận." />
      </node>
      <node ID="DATAMAP_1BE1CCD81F15F9B8" TEXT="8.6. Phễu × Campaign objective" FOLDED="true">
        <node ID="DATAMAP_3C89A2D05C668BBC" TEXT="Câu hỏi: trong từng tầng phễu, tiền đang phục vụ nhóm objective nào?" />
        <node ID="DATAMAP_4AFA500A10D72247" TEXT="Ads Cost (TOFU)&#10;= Ads Cost (TOFU, Engagement - Messaging)&#10;+ Ads Cost (TOFU, Engagement - Post engagement)&#10;+ Ads Cost (TOFU, Sales - Purchase)&#10;+ Ads Cost (TOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (TOFU, Awareness - Ad recall)&#10;+ Ads Cost (TOFU, Objective khác)&#10;+ Ads Cost (TOFU, Objective chưa xác định)&#10;&#10;Ads Cost (MOFU)&#10;= Ads Cost (MOFU, Engagement - Messaging)&#10;+ Ads Cost (MOFU, Engagement - Post engagement)&#10;+ Ads Cost (MOFU, Sales - Purchase)&#10;+ Ads Cost (MOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (MOFU, Awareness - Ad recall)&#10;+ Ads Cost (MOFU, Objective khác)&#10;+ Ads Cost (MOFU, Objective chưa xác định)&#10;&#10;Ads Cost (BOFU)&#10;= Ads Cost (BOFU, Engagement - Messaging)&#10;+ Ads Cost (BOFU, Engagement - Post engagement)&#10;+ Ads Cost (BOFU, Sales - Purchase)&#10;+ Ads Cost (BOFU, Sales - Purchase [Suy luận từ tên Campaign])&#10;+ Ads Cost (BOFU, Awareness - Ad recall)&#10;+ Ads Cost (BOFU, Objective khác)&#10;+ Ads Cost (BOFU, Objective chưa xác định)&#10;&#10;Ads Cost (Mixed/Shared Funnel)&#10;= tổng các Ads Cost (Mixed/Shared Funnel, từng Objective và Objective chưa xác định)&#10;&#10;Ads Cost (Chưa phân loại phễu)&#10;= tổng các Ads Cost (Chưa phân loại phễu, từng Objective và Objective chưa xác định)" />
        <node ID="DATAMAP_E5B6438721AD8CAC" TEXT="Hai chiều đang cùng nằm trong file demo nên có thể tạo bảng thăm dò. Objective được Duy cho phép dùng; Phễu còn cần khóa hợp đồng." />
      </node>
      <node ID="DATAMAP_01934773B7B07E28" TEXT="8.7. Kiểm soát chung của sáu cặp" FOLDED="true">
        <node ID="DATAMAP_3314A34EABBB0092" TEXT="Với mỗi cặp và từng tháng:" />
        <node ID="DATAMAP_FCB27E62676B8BAB" TEXT="Tổng số dòng nguồn = tổng số dòng ở mọi ô của cặp&#10;Tổng Amount Spent nguồn = tổng Ads Cost ở mọi ô của cặp" />
        <node ID="DATAMAP_D9A9953AACA1F853" TEXT="Nếu một dòng nối nhiều sản phẩm, phép join có thể nhân spend. Phải giữ Shared hoặc dùng allocation rule có owner duyệt; tổng sau phân bổ vẫn phải quay về tổng trước phân bổ." />
      </node>
    </node>
    <node ID="DATAMAP_B1DBBAB5BE718B4D" TEXT="9. Coverage từng tổ hợp đã kiểm tra" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_97256A8723DD5BB9" TEXT="Bảng chi tiết 279 dòng nằm tại 02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv. Bảng lưu kỳ, hai giá trị chiều, cấp sản phẩm, số dòng, Ads Cost, source row, mapping, trạng thái, lý do và bước xử lý." />
      <node ID="DATAMAP_166FCE9C1D2FCD24" TEXT="9.1. Ba cặp có Nền tảng" FOLDED="true">
        <node ID="DATAMAP_9236CB6D4BCB3F99" TEXT="Mỗi tháng được ghi Thiếu nguồn/thiếu chiều. Không tạo ô Facebook/Instagram/WhatsApp có spend vì source không có Publisher platform." />
      </node>
      <node ID="DATAMAP_27D84C22D10DEE2F" TEXT="9.2. Ba cặp có thể thăm dò bằng mapping" FOLDED="true">
        <node ID="DATAMAP_4AA9B0962C89383D" TEXT="Cặp | 2026-03 | 2026-04 | 2026-05 | Đối soát nội bộ với demo" />
        <node ID="DATAMAP_FADACE3C4E28081D" TEXT="Phễu × Sản phẩm | 9 ô quan sát | 13 ô | 13 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="DATAMAP_FAAF804C3B173DA3" TEXT="Sản phẩm × Objective | 7 ô | 12 ô | 16 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="DATAMAP_F3EE744FCB2676EB" TEXT="Phễu × Objective | 3 ô | 4 ô | 6 ô | Giữ đủ 18/41/25 dòng và toàn bộ spend demo" />
        <node ID="DATAMAP_1E07B87A7094E45C" TEXT="“Ô quan sát” nghĩa là có ít nhất một Campaign được mapping vào tổ hợp. Ô không có dòng được ghi Chưa quan sát trong phạm vi đã kiểm tra và để trống Ads Cost; không đổi thành 0." />
      </node>
      <node ID="DATAMAP_76BB9132EC58EDE8" TEXT="9.3. Trạng thái coverage dùng cho ETL/report" FOLDED="true">
        <node ID="DATAMAP_1C6BC9F5354F8EF2" TEXT="Trạng thái | Khi dùng" />
        <node ID="DATAMAP_B102E9B562402790" TEXT="Có dữ liệu và tính được | Hai chiều là source trực tiếp và join đã đối soát" />
        <node ID="DATAMAP_312FA52A4F476C6B" TEXT="Tính được bằng human mapping | Có rule/basis truy vết và owner cho phép dùng" />
        <node ID="DATAMAP_633B8230A7054B13" TEXT="Chỉ tính được một phần | Ví dụ chỉ xuống nhóm sản phẩm, chưa xuống listing/SKU" />
        <node ID="DATAMAP_69C95B7DA7E45062" TEXT="Chưa map | Có dòng nhưng thiếu nhãn" />
        <node ID="DATAMAP_F16226587DD598A6" TEXT="Thiếu nguồn/thiếu chiều | Không có field cần thiết như Publisher platform" />
        <node ID="DATAMAP_7BBC44431B4EA111" TEXT="Không nối được | Có hai nguồn nhưng thiếu khóa/grain tương thích" />
        <node ID="DATAMAP_871864DF2FD0202A" TEXT="Chưa quan sát tổ hợp | Trong phạm vi đã kiểm tra không có dòng; Ads Cost để trống" />
        <node ID="DATAMAP_33434773A786170D" TEXT="Bằng 0 được nguồn xác nhận | Chỉ dùng khi source bao phủ cả dòng zero và chứng minh giá trị 0" />
      </node>
    </node>
    <node ID="DATAMAP_3E89C563DBA22A1F" TEXT="10. Đường phân tích các nhóm metric" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_72A0AEA7D7A0AA39" TEXT="CPM chỉ là một mắt xích. Mỗi nhóm dưới đây phải được đọc theo cùng nguyên tắc: xác định case → chọn nhóm so sánh tương đồng → tính lại từ raw metric → xem nhiều chiều → drill-down → kiểm chứng giả thuyết." />
      <node ID="DATAMAP_3C450A2433FA84F1" TEXT="10.1. Phân phối: Spend, Impressions, Reach, Frequency, CPM" FOLDED="true">
        <node ID="DATAMAP_3F5A750C3C115B10" TEXT="CPM = Ads Cost / Impressions × 1.000&#10;Ads Cost = Impressions × CPM / 1.000&#10;Frequency = Impressions / Reach&#10;Ads Cost = Reach × Frequency × CPM / 1.000" />
        <node ID="DATAMAP_1C64AB1FC14CCB70" TEXT="Câu hỏi: chi phí khác do giá mua hiển thị, số người tiếp cận hay số lần lặp lại?" />
        <node ID="DATAMAP_5AAE26BC78125CC6" TEXT="So sánh: cùng sản phẩm, objective/optimization, phễu, publisher/placement, format, kỳ và attribution." />
        <node ID="DATAMAP_34B0F7EDFA94977E" TEXT="Đọc cùng: Spend, Impressions, Reach, Frequency, CPM; thêm CTR/CPC và đúng Result/CPR để biết phân phối có tạo hành động liên quan không." />
        <node ID="DATAMAP_2D7FFBEF00EBC98A" TEXT="Giả thuyết: platform/placement, creative/format, thời gian, cấu hình tối ưu hoặc cơ cấu Campaign khác nhau." />
        <node ID="DATAMAP_A5BE2C989CE02383" TEXT="Bằng chứng hỗ trợ: chênh lệch vẫn còn khi các biến so sánh chính tương đồng; drill-down chỉ ra Ad set/Ad cụ thể." />
        <node ID="DATAMAP_053C27CD778F4C34" TEXT="Bằng chứng phản bác: hai case khác sản phẩm, objective, phễu hoặc publisher; khi đó CPM không được so như cùng nhiệm vụ." />
        <node ID="DATAMAP_D706EBD4C5D0616D" TEXT="Kết luận được phép: mô tả chênh lệch và nơi phát sinh. Chưa kết luận CPM cao/thấp là tốt/xấu hoặc làm ROAS thay đổi nếu chưa có case và GMV cùng phạm vi." />
      </node>
      <node ID="DATAMAP_C938864830C93FF2" TEXT="10.2. Click: Clicks, Link Clicks, CTR và CPC" FOLDED="true">
        <node ID="DATAMAP_7C592D3ADF5DA481" TEXT="CTR (all, dạng thập phân) = Clicks (all) / Impressions&#10;CTR (link, dạng thập phân) = Link Clicks / Impressions&#10;CPC (all) = Ads Cost / Clicks (all)&#10;CPC (link) = Ads Cost / Link Clicks&#10;Ads Cost = Clicks (all) × CPC (all)&#10;Ads Cost = Link Clicks × CPC (link)&#10;CPM = CTR (all, dạng thập phân) × CPC (all) × 1.000&#10;CPM = CTR (link, dạng thập phân) × CPC (link) × 1.000" />
        <node ID="DATAMAP_5F2000BB3EC19D8E" TEXT="Nếu CTR trong report hiển thị 2%, khi thế vào công thức dùng 0,02, không dùng 2." />
        <node ID="DATAMAP_455488159E7D8BCC" TEXT="Câu hỏi: Ads tạo nhiều click vì hiển thị nhiều, nội dung có sức hút hay loại click đang được đo khác nhau?" />
        <node ID="DATAMAP_FE7B92E511990F9C" TEXT="So sánh: cùng định nghĩa click (all, link, outbound), sản phẩm, objective, phễu, publisher, format và kỳ." />
        <node ID="DATAMAP_4CC86D3ABF600723" TEXT="Đọc cùng: Impressions, CPM, Clicks, Link Clicks, CTR, CPC và landing result nếu có." />
        <node ID="DATAMAP_B03B7CE779D85E82" TEXT="Giả thuyết: creative/offer, placement, destination hoặc tracking khác." />
        <node ID="DATAMAP_5EE304CB223CAD6D" TEXT="Bằng chứng phản bác: CTR all tăng do tương tác không dẫn tới destination; link click không đồng nghĩa landing page load hoặc purchase." />
        <node ID="DATAMAP_D2DD855A7B0D1D5C" TEXT="Dataset hiện tại: preferred files chưa có Clicks/Link Clicks/CTR/CPC; đường này đang chờ export bổ sung." />
      </node>
      <node ID="DATAMAP_A053F65C85B3052A" TEXT="10.3. Engagement và video" FOLDED="true">
        <node ID="DATAMAP_7AB38477CD5649CE" TEXT="Ads Cost của một loại kết quả = Results cùng loại × Cost per Result cùng loại&#10;Cost per Post Engagement = Ads Cost / Post Engagements&#10;Ads Cost của nhóm Post Engagement = Post Engagements × Cost per Post Engagement&#10;&#10;Video completion rate ở mốc k&#10;= Video plays đạt mốc k / Video starts hoặc mẫu số được Meta định nghĩa cho field đó" />
        <node ID="DATAMAP_ED03E971B7088199" TEXT="Câu hỏi: creative nào tạo đúng loại tương tác hoặc mức xem cần cho nhiệm vụ của tầng phễu?" />
        <node ID="DATAMAP_E084C26BE8329284" TEXT="So sánh: cùng format/video length, sản phẩm, objective, publisher/placement và kỳ." />
        <node ID="DATAMAP_1DB5C22A0D27C02F" TEXT="Đọc cùng: Spend, Impressions, Reach, CPM, Post Engagements/CPR, video plays và milestones khi có." />
        <node ID="DATAMAP_4AD574F86B77D4A1" TEXT="Giới hạn: Results = post_engagement chỉ cộng khi Result indicator giống nhau. Bộ preferred chưa có các mốc video chi tiết." />
        <node ID="DATAMAP_7D28BFF60A2CBB95" TEXT="Không biến nhiều engagement/view thành kết luận người đó đã nhắn hoặc mua nếu thiếu khóa hành trình." />
      </node>
      <node ID="DATAMAP_F2ACD6F751C0A23B" TEXT="10.4. Messaging" FOLDED="true">
        <node ID="DATAMAP_6E9A4661B52B0C2E" TEXT="Cost per Messaging Conversation&#10;= Ads Cost / Messaging Conversations Started&#10;&#10;Cost per New Messaging Contact&#10;= Ads Cost / New Messaging Contacts&#10;&#10;Tỷ số New Contact trên Conversation&#10;= New Messaging Contacts / Messaging Conversations Started" />
        <node ID="DATAMAP_BF4E8F1A15431D24" TEXT="Câu hỏi: spend tạo được bao nhiêu cuộc hội thoại, bao nhiêu liên hệ mới và chất lượng hội thoại có phù hợp không?" />
        <node ID="DATAMAP_1363348D0ABB94FF" TEXT="So sánh: cùng product scope, Engagement - Messaging, phễu, publisher/destination, kỳ và attribution." />
        <node ID="DATAMAP_BA252C92F0D7942E" TEXT="Đọc cùng: Spend, CPM, CTR/CPC nếu có, Messaging Conversations Started, New Messaging Contacts và hai cost metric." />
        <node ID="DATAMAP_7BE42C9DDA8EB4DB" TEXT="Giả thuyết: phân phối, nội dung, lời kêu gọi, destination hoặc cách đo conversation khác." />
        <node ID="DATAMAP_C2A663711C3886F5" TEXT="Bằng chứng phản bác: conversation rẻ nhưng tỷ lệ liên hệ mới thấp, chất lượng lead thấp hoặc không nối được đơn business." />
        <node ID="DATAMAP_9AC505AF973B0D7D" TEXT="New Contacts / Conversations là tỷ số tổng hợp. Chỉ gọi là conversion của cùng hành trình khi định nghĩa và khóa theo dõi hỗ trợ." />
      </node>
      <node ID="DATAMAP_8D0AC311E3656B53" TEXT="10.5. Purchase, Orders và business outcome" FOLDED="true">
        <node ID="DATAMAP_DAC1D73E49BCED60" TEXT="Cost per Meta Purchase = Ads Cost / Meta-attributed Purchases&#10;Cost per Order Created = Ads Cost / Orders Created do Meta ghi nhận&#10;Cost per Order Dispatched = Ads Cost / Orders Dispatched do Meta ghi nhận&#10;&#10;Business ROAS = GMV business / Ads Cost cùng phạm vi&#10;Ads Cost / GMV = Ads Cost / GMV business × 100%" />
        <node ID="DATAMAP_AFD53255CF64CB95" TEXT="Câu hỏi: event cuối phễu Meta có khớp đơn, trạng thái giao và GMV do doanh nghiệp ghi nhận không?" />
        <node ID="DATAMAP_53DA24B36B2E4609" TEXT="So sánh: cùng sales channel, sản phẩm/SKU, kỳ, attribution, rule hoàn/hủy, voucher và shipping." />
        <node ID="DATAMAP_73E13EFFF090D23D" TEXT="Đọc cùng: Meta Purchase/Orders, cost tương ứng, đơn business, đơn hoàn/hủy, GMV và AOV nếu định nghĩa đã khóa." />
        <node ID="DATAMAP_232AAA9FD8120025" TEXT="Giả thuyết: tracking, chất lượng lead, khả năng chốt, giá/ưu đãi, tồn kho hoặc vận hành đơn." />
        <node ID="DATAMAP_8B986971366EDA9D" TEXT="Bằng chứng phản bác: Meta Purchase/value khác dữ liệu order/GMV business hoặc attribution khác." />
        <node ID="DATAMAP_F42564FD5F8C75ED" TEXT="Hiện chưa có GMV business nên chưa kết luận Business ROAS." />
      </node>
    </node>
    <node ID="DATAMAP_8FE8ADFABBB0716C" TEXT="11. Quan hệ toán học và giới hạn diễn giải" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_EEF9355044AED0FD" TEXT="Ví dụ:" />
      <node ID="DATAMAP_B5AB1D87D13816B9" TEXT="Ads Cost = Impressions × CPM / 1.000&#10;Business ROAS = GMV / Ads Cost&#10;&#10;Business ROAS&#10;= GMV × 1.000 / (Impressions × CPM)" />
      <node ID="DATAMAP_8D5C7811D94B46CE" TEXT="Công thức chỉ cho biết quan hệ khi giữ các biến còn lại không đổi. Trong dữ liệu thật, GMV, Impressions, sản phẩm, objective, phễu, publisher và creative có thể cùng thay đổi." />
      <node ID="DATAMAP_127927041EAFBFB1" TEXT="Không được ghi kết luận vô điều kiện như:" />
      <node ID="DATAMAP_1BC519F7D4733806" TEXT="CPM cao nên ROAS giảm." />
      <node ID="DATAMAP_725898C375A760A4" TEXT="CTR cao chứng minh GMV tốt." />
      <node ID="DATAMAP_19AF0B9F71AA40E4" TEXT="CPC hoặc CPR thấp thì nên tăng ngân sách." />
      <node ID="DATAMAP_339928C0D447F80C" TEXT="TOFU phải có CPM đắt hơn BOFU." />
      <node ID="DATAMAP_26D3473DE33F21E6" TEXT="Frequency cao chứng minh audience mệt mỏi." />
      <node ID="DATAMAP_7FB34AD1C9968DD2" TEXT="Nếu chưa có khóa người dùng/event xuyên bước, Link Clicks → Messaging → Purchase là đường phân tích quy trình; các tỷ số giữa bước chỉ là tỷ số tổng hợp, chưa phải cohort conversion." />
    </node>
    <node ID="DATAMAP_B4943C945EC005BC" TEXT="12. Funnel, drill-down và đường tới recommendation" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_84CFA25FD42A61F0" TEXT="12.1. Đường funnel/journey" FOLDED="true">
        <node ID="DATAMAP_7C4728BE87412F16" TEXT="TOFU: phân phối và tín hiệu ban đầu&#10;→ MOFU: click, tương tác sâu hoặc conversation&#10;→ BOFU: Meta Purchase/Orders&#10;→ đơn business&#10;→ GMV business" />
        <node ID="DATAMAP_BDDFA15F0C8B6058" TEXT="Mũi tên mô tả thứ tự cần kiểm tra. Nó không tự chứng minh quan hệ nhân quả hoặc cùng một nhóm người đi xuyên suốt." />
      </node>
      <node ID="DATAMAP_EE92AA44CE750430" TEXT="12.2. Drill-down khi phát hiện chênh lệch" FOLDED="true">
        <node ID="DATAMAP_4FBFF631151C44D8" TEXT="Campaign&#10;→ Ad set: optimization goal, audience, budget/bid, placement, delivery&#10;→ Ad: creative, format, message, sản phẩm quảng cáo" />
        <node ID="DATAMAP_37B1B5227F6671C5" TEXT="Chỉ drill-down khi có ID nguyên vẹn và quan hệ cấp cha–con đúng. Nếu chỉ có tên, kết quả là thăm dò và phải kiểm tra duplicate." />
      </node>
      <node ID="DATAMAP_DD56DC36D9ECA368" TEXT="12.3. Mẫu quyết định trước recommendation" FOLDED="true">
        <node ID="DATAMAP_78AF4C814D6CCEAE" TEXT="Mô tả vấn đề và số liệu quan sát được." />
        <node ID="DATAMAP_4D807BFDAC5AEE1B" TEXT="Khóa phạm vi: kỳ, grain, sản phẩm, objective/optimization, phễu, publisher và attribution." />
        <node ID="DATAMAP_4283134B0152BC17" TEXT="Chọn nhóm so sánh tương đồng." />
        <node ID="DATAMAP_A4C2271F3CCC2A02" TEXT="Tính lại metric từ tổng tử số và mẫu số." />
        <node ID="DATAMAP_652CDDE1A3484FEA" TEXT="Đi sâu Campaign → Ad set → Ad để tìm nơi tạo chênh lệch." />
        <node ID="DATAMAP_9ED0C4792A01D6D4" TEXT="Viết nhiều giả thuyết; với mỗi giả thuyết nêu bằng chứng hỗ trợ và bằng chứng có thể bác bỏ." />
        <node ID="DATAMAP_9BAE290B68B9B3AA" TEXT="Chỉ khi đủ bằng chứng mới viết hành động hoặc test: owner, phạm vi, chỉ số theo dõi, thời gian, tiêu chí giữ/sửa/dừng." />
      </node>
    </node>
    <node ID="DATAMAP_9414B9106E636114" TEXT="13. Hợp đồng ETL, modeling và report" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_F353DB059004C94F" TEXT="13.1. Các bảng tối thiểu" FOLDED="true">
        <node ID="DATAMAP_E58ED7DE99F42FAB" TEXT="Bảng | Một dòng đại diện cho gì? | Vai trò" />
        <node ID="DATAMAP_BE34384233D26698" TEXT="fact_ads_spend_campaign_period | Một Campaign trong một kỳ | Số kiểm soát spend và raw metrics" />
        <node ID="DATAMAP_548A2B9DE08BBBC4" TEXT="dim_campaign_config | Một version cấu hình/mapping của Campaign | Name, objective Meta, Objective suy luận và metadata" />
        <node ID="DATAMAP_3F830911EE73A992" TEXT="dim_adset_config | Một Ad set trong thời gian hiệu lực | Optimization goal, destination, bid/budget" />
        <node ID="DATAMAP_280380F6F7DE076A" TEXT="map_funnel | Một object được gắn một trạng thái phễu trong thời gian hiệu lực | Human mapping Phễu" />
        <node ID="DATAMAP_901115AF4E319571" TEXT="bridge_ad_product | Một quan hệ Ad ↔ Item/SKU | Mapping sản phẩm và rule phân bổ nếu many-to-many" />
        <node ID="DATAMAP_A018F9C7DF9C8799" TEXT="fact_ads_spend_publisher | Một object × kỳ × publisher breakdown | Ba cặp có Nền tảng" />
        <node ID="DATAMAP_40771F97360C5206" TEXT="fact_business_order_gmv | Một order/order line theo rule business | Đơn, trạng thái, sản phẩm, channel và GMV" />
      </node>
      <node ID="DATAMAP_1203AFE184DF9A12" TEXT="13.2. Kiểm tra join bắt buộc" FOLDED="true">
        <node ID="DATAMAP_C5BB2115F7C325B4" TEXT="ID phải là text nguyên vẹn; ID đã scientific/làm tròn không được sửa bằng đoán hậu tố." />
        <node ID="DATAMAP_1B5967B783D4EBEC" TEXT="Ghi cardinality dự kiến và thực tế: một–một, nhiều–một hoặc nhiều–nhiều." />
        <node ID="DATAMAP_0ED994CA8C985A63" TEXT="So số dòng, tổng spend, orphan, duplicate và conflict trước/sau join." />
        <node ID="DATAMAP_3883AFA007DAF593" TEXT="Giữ Shared/Unmapped trong tổng." />
        <node ID="DATAMAP_15BA22016729073C" TEXT="Khi một Ad nối nhiều sản phẩm, không nhân spend; dùng allocation rule có owner hoặc giữ Shared." />
        <node ID="DATAMAP_32664917225B8E93" TEXT="CPM/CPC/CPR/ROAS tổng phải tính lại từ tổng tử số và mẫu số." />
        <node ID="DATAMAP_8356883565C4531F" TEXT="Reach không cộng tùy tiện qua các nhóm có thể trùng người." />
        <node ID="DATAMAP_0B8AB4DE7D9710A8" TEXT="Results chỉ cộng khi cùng Result indicator và attribution." />
      </node>
      <node ID="DATAMAP_51E9DB7BD1590CD6" TEXT="13.3. Report được phép hiển thị theo coverage hiện tại" FOLDED="true">
        <node ID="DATAMAP_BE79928EA080F2AE" TEXT="Phần | Có thể hiển thị | Chưa được ghi như fact" />
        <node ID="DATAMAP_393AD11B01A05B63" TEXT="Objective | Spend/metrics theo Objective suy luận, kèm human mapping | Objective gốc Meta đã xác minh" />
        <node ID="DATAMAP_2D9AFB890A028816" TEXT="Phễu | Thăm dò TOFU/MOFU/BOFU theo file hiện hành | Mapping phễu đã được owner duyệt hoàn toàn" />
        <node ID="DATAMAP_ECD058B9A4D92315" TEXT="Sản phẩm | Spend theo nhóm/ngành hàng suy luận | Spend của từng SP01–SP25" />
        <node ID="DATAMAP_567FC46965F0AED5" TEXT="Nền tảng | Danh sách dimension cần có | Spend Facebook/Instagram/WhatsApp từ dataset hiện tại" />
        <node ID="DATAMAP_3C81A0FA421A8CB2" TEXT="Business | Khoảng trống source và công thức | Business ROAS/Ads Cost-GMV thực tế" />
      </node>
    </node>
    <node ID="DATAMAP_F18602303A1F2971" TEXT="14. Ví dụ xuyên suốt bằng Campaign thật" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_D6E481EBF3DF159C" TEXT="14.1. Dòng nguồn" FOLDED="true">
        <node ID="DATAMAP_3D243639CF976B82" TEXT="Preferred source: CPAS-SHOPEE-Campaigns-1-Mar-2026-31-Mar-2026.xlsx, sheet Worksheet, dòng 15." />
        <node ID="DATAMAP_DA848CB7A6E5C3BF" TEXT="Mapping source: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx, sheet Campaign_3_tháng, dòng 6." />
        <node ID="DATAMAP_964D523C6A2CBD22" TEXT="Campaign: 10/11/2025 - MOF - TESTING A/B - 1% - CÁT." />
        <node ID="DATAMAP_0C48D6258626A392" TEXT="Kỳ: 2026-03." />
        <node ID="DATAMAP_11A6ADAF277B7B83" TEXT="Amount Spent: 6.639.470 VND." />
        <node ID="DATAMAP_3A22F0D829EE7F62" TEXT="Impressions: 67.455; Reach: 23.122." />
        <node ID="DATAMAP_1826D098E2593DCB" TEXT="Results: 96; Result indicator: actions:onsite_conversion.messaging_conversation_started_7d." />
        <node ID="DATAMAP_96902DCC3949C75B" TEXT="Cost per Result: 69.161,14583 VND; attribution: 7-day click or 1-day view." />
      </node>
      <node ID="DATAMAP_5725F44D55E0B623" TEXT="14.2. Mapping và trạng thái bằng chứng" FOLDED="true">
        <node ID="DATAMAP_1E9E3F480151222F" TEXT="Objective suy luận = Engagement - Messaging, basis là Result indicator. Duy cho phép dùng kiểu mapping này trong ETL." />
        <node ID="DATAMAP_B9DF47D4018AC02A" TEXT="Phễu = MOFU từ file dẫn xuất. Đây là human mapping chưa khóa đủ rule/version/owner." />
        <node ID="DATAMAP_56BE14491F4D1F41" TEXT="Sản phẩm = Cát nói chung, vì tên chỉ có CÁT; không đủ chọn nhóm hoặc SP01–SP25." />
        <node ID="DATAMAP_8C505FAD49063295" TEXT="Publisher platform = chưa có." />
        <node ID="DATAMAP_84403A0C10AE9821" TEXT="Campaign này đi vào ba ô có thể thăm dò:" />
        <node ID="DATAMAP_8DC249A79FE7AAAD" TEXT="Ads Cost (MOFU, Engagement - Messaging)&#10;Ads Cost (MOFU, Cát nói chung)&#10;Ads Cost (Cát nói chung, Engagement - Messaging)" />
      </node>
      <node ID="DATAMAP_DD0D7C997EF830F6" TEXT="14.3. Metric tính được" FOLDED="true">
        <node ID="DATAMAP_0169E2317B6BA55B" TEXT="CPM = 6.639.470 / 67.455 × 1.000 ≈ 98.427 VND&#10;Frequency = 67.455 / 23.122 ≈ 2,92&#10;Ads Cost kiểm tra = 96 × 69.161,14583 ≈ 6.639.470 VND" />
      </node>
      <node ID="DATAMAP_1AB5B6D10C3E564A" TEXT="14.4. Chọn nhóm so sánh và đặt câu hỏi" FOLDED="true">
        <node ID="DATAMAP_A6EB5A8C17AC8CCE" TEXT="Candidate gần nhất trong cùng tháng là Campaign 10/11/2025 - MOF - TESTING A/B - GỐC - CÁT, preferred source dòng 39, demo dòng 7. Nó cùng MOFU, cùng Objective suy luận, cùng ngành hàng cát, cùng Result indicator và attribution; có Spend 6.370.694 VND, 129.733 Impressions, Reach 56.830, Results 86 và Cost per Result 74.077,83721 VND." />
        <node ID="DATAMAP_7A9FF256F94F5059" TEXT="Case 1% có CPM cao hơn nhưng Cost per Result thấp hơn candidate GỐC. Điều này chỉ tạo câu hỏi:" />
        <node ID="DATAMAP_43D95A8CC4A09514" TEXT="Khác biệt đến từ phân phối, audience/optimization ở Ad set, creative ở Ad, hay hai Campaign thực ra quảng cáo các sản phẩm/offer khác nhau?" />
        <node ID="DATAMAP_6164CB33AAC019F8" TEXT="Muốn trả lời phải drill-down bằng ID nguyên vẹn và kiểm tra cấu hình/creative. Chưa có GMV nên không được kết luận ROAS hoặc đề xuất tăng ngân sách." />
      </node>
      <node ID="DATAMAP_43CE753F45C716B1" TEXT="14.5. Cách Duy trình bày lại" FOLDED="true">
        <node ID="DATAMAP_671DBE1670495B11" TEXT="“Con lấy một Campaign thật, kiểm tra spend và metric ở source, rồi gắn Objective, Phễu và sản phẩm theo đúng mức bằng chứng. Campaign này chỉ map được tới ngành hàng cát, chưa tới sản phẩm cụ thể và chưa có platform. Con chọn một Campaign gần giống để so. CPM và Cost per Result đi khác chiều nên con chưa phán Campaign nào tốt; con cần xuống Ad set/Ad và thêm dữ liệu business trước khi recommendation.”" />
      </node>
    </node>
    <node ID="DATAMAP_3DF19805230EC5F9" TEXT="15. Nguồn, phần còn thiếu và kiểm định" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_04657DF70648AF86" TEXT="15.1. Nguồn hiện hành" FOLDED="true">
        <node ID="DATAMAP_DD7235970F5F7A8E" TEXT="Raw: 01_inputs\joycat\raw; 32 workbook .xlsx và một archive; không có CSV đã bung." />
        <node ID="DATAMAP_936B641EF255F8EE" TEXT="Preferred source: chín workbook Campaign/Ad set/Ad tháng 03–05/2026." />
        <node ID="DATAMAP_8327BC2E6C705D2B" TEXT="Human mapping: JOYCAT_CAMPAIGN_3_THANG_CO_CHI_PHI_OBJECTIVE_DEMO.xlsx." />
        <node ID="DATAMAP_44C96033394D6762" TEXT="Catalog: JOYCAT_SHOPEE_PRODUCTS_2026-08-25.xlsx." />
        <node ID="DATAMAP_72B9F015023C34FC" TEXT="Coverage audit chi tiết: 02_work\joycat\coverage_audit\coverage_6_pairs_detail.csv." />
        <node ID="DATAMAP_7D00FA2FEBA431E0" TEXT="Coverage audit summary: 02_work\joycat\coverage_audit\coverage_audit_summary.json." />
        <node ID="DATAMAP_39E1870B855BE38A" TEXT="Bản trước khi gộp: 02_work\joycat\archive\2026-09-05_context_logic_mapping_before_merge." />
      </node>
      <node ID="DATAMAP_2DD3911F84380EE0" TEXT="15.2. Owner cần xác nhận" FOLDED="true">
        <node ID="DATAMAP_DC6D78B087B56279" TEXT="Cần xác nhận | Owner/nguồn | Ảnh hưởng" />
        <node ID="DATAMAP_9A6A5CA0A5A3328C" TEXT="Preferred candidate có phải source chính thức? | Cậu Sinh/người chuẩn bị data | Khóa lineage và số kiểm soát" />
        <node ID="DATAMAP_CEA1DEA30F3EA1D9" TEXT="Objective mapping version và reviewer | Duy/cậu Sinh | Cho phép ETL lặp lại và audit override" />
        <node ID="DATAMAP_E883169F4976F566" TEXT="Rule/grain/version/owner Phễu | Người tạo mapping | Xác nhận ba cặp có Phễu" />
        <node ID="DATAMAP_84839FAAC868AC39" TEXT="Mã nhóm sản phẩm và xử lý multi-product | Owner Campaign/sản phẩm | Nâng coverage từ inference tới mapping duyệt" />
        <node ID="DATAMAP_658AC3B5135A18D4" TEXT="Publisher breakdown và ID text nguyên vẹn | Người export Meta | Mở ba cặp Nền tảng và drill-down" />
        <node ID="DATAMAP_E32A41C0846D46FD" TEXT="Định nghĩa GMV, kỳ, sales channel, hoàn/hủy, voucher, shipping | Owner business data | Mở Business ROAS" />
        <node ID="DATAMAP_BB1CF3202441B0E3" TEXT="Nguồn tạo file Objective demo tháng 04 | Người tạo file demo | Giải thích chênh 9.252 VND" />
      </node>
      <node ID="DATAMAP_6105DC194C8FE728" TEXT="15.3. Nội dung khôi phục từ bản cũ" FOLDED="true">
        <node ID="DATAMAP_069B5835E5938007" TEXT="Campaign → Ad set → Ad." />
        <node ID="DATAMAP_53223D4E18205C64" TEXT="Nhiệm vụ TOFU/MOFU/BOFU và các metric cần đọc." />
        <node ID="DATAMAP_5BA76011626DD0B8" TEXT="Cách chọn case so sánh." />
        <node ID="DATAMAP_85D7A782CF6A10B8" TEXT="Giả thuyết phải có bằng chứng hỗ trợ và phản bác." />
        <node ID="DATAMAP_246256489D08C24D" TEXT="Điều kiện chuyển sang ETL/report." />
      </node>
      <node ID="DATAMAP_4C54A70A653B74C3" TEXT="15.4. Kiểm định" FOLDED="true">
        <node ID="DATAMAP_983D5E0467AC0CB3" TEXT="Markdown và mindmap phải có cùng 16 nhánh chính." />
        <node ID="DATAMAP_FF98A9595F6545F9" TEXT="Mindmap phải có đủ sáu cặp và công thức đầy đủ tên đại lượng." />
        <node ID="DATAMAP_A39DC4D9D35BB216" TEXT="XML parse được và ID không trùng chỉ là kiểm tra cấu trúc; việc mở/hiển thị trên Lark hoặc MindManager cần Duy kiểm tra trên ứng dụng." />
        <node ID="DATAMAP_4A58C8975013F818" TEXT="Coverage ba cặp không có Nền tảng phải ghi thiếu chiều; không tạo spend giả." />
        <node ID="DATAMAP_259F0A014564878D" TEXT="Coverage ba cặp còn lại phải giữ đủ dòng và spend của file demo, đồng thời ghi rõ demo tháng 04 chưa khớp preferred." />
        <node ID="DATAMAP_A653A54DAF7CF043" TEXT="Không có kết luận CPM/CTR/CPC/CPR tác động ROAS vô điều kiện." />
        <node ID="DATAMAP_828EED006B315150" TEXT="Không dùng Meta Purchase Conversion Value thay GMV business." />
        <node ID="DATAMAP_2BB233001DF73C62" TEXT="Không cộng Campaign, Ad set và Ad; không cộng sáu cách phân rã." />
        <node ID="DATAMAP_00EDAF7791A7618D" TEXT="Không phân tích audience size trong phiên bản này." />
      </node>
    </node>
    <node ID="DATAMAP_DB3DF3BE9DF9B0A0" TEXT="16. Phụ lục — 25 listing Joycat" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="DATAMAP_204CEE76B9F2B7BB" TEXT="Mã | Nhóm | Quy cách | Item ID" />
      <node ID="DATAMAP_F6665F48F835A061" TEXT="SP01 | Vi sinh khử mùi | Combo xịt và bột | 54652253159" />
      <node ID="DATAMAP_EA028F2E200B9B9C" TEXT="SP02 | Vi sinh khử mùi | 1 túi 75g | 44502278009" />
      <node ID="DATAMAP_D265B10F98382000" TEXT="SP03 | Cát Sắn Natural | Combo 3 túi | 53301517532" />
      <node ID="DATAMAP_AC33DE82FA868779" TEXT="SP04 | Cát Sắn Natural | 1 túi 2,5kg / 6L | 41659422198" />
      <node ID="DATAMAP_AA8FE7016997499E" TEXT="SP05 | Cát Mix PerformX | Combo 3 túi | 47303410867" />
      <node ID="DATAMAP_1277580B4B6B4036" TEXT="SP06 | Cát Mix PerformX | 1 túi 2,5kg / 6L | 43727202767" />
      <node ID="DATAMAP_01DB0A4D8DB691DC" TEXT="SP07 | Cát Sắn Natural | Combo 2 túi | 43026477525" />
      <node ID="DATAMAP_088455AB9D272A0A" TEXT="SP08 | Vi sinh khử mùi | 1 chai 450ml | 48902263316" />
      <node ID="DATAMAP_06859EA7C35363DC" TEXT="SP09 | Cát Khoáng MineralX | 1 túi 3,5kg / 8L | 44908677009" />
      <node ID="DATAMAP_EC65E1FFB46F4E8B" TEXT="SP10 | Cát Khoáng MineralX | Combo 2 túi | 53758652941" />
      <node ID="DATAMAP_F5F08A93FD3DF1D0" TEXT="SP11 | Cát Sắn Natural | 1 thùng | 54401512661" />
      <node ID="DATAMAP_276D3C92E83BB62D" TEXT="SP12 | Cát Mix PerformX | Combo 2 túi | 54153386367" />
      <node ID="DATAMAP_4199C20CDAEE1969" TEXT="SP13 | Cát Đậu Nành Mix Khoáng PowerX | 1 túi 2,5kg / 6L | 40981732711" />
      <node ID="DATAMAP_DAC79C4693D392EC" TEXT="SP14 | Cát Sắn Mix Đậu Nành Tofuu.X | 1 túi 2,5kg / 6L | 54812261805" />
      <node ID="DATAMAP_0D3B00134745D00D" TEXT="SP15 | Cát Khoáng MineralX | Combo 4 túi | 52008652913" />
      <node ID="DATAMAP_32D04527788150C4" TEXT="SP16 | Cát Mix PerformX | 1 thùng | 43227384196" />
      <node ID="DATAMAP_1CF80E4361611532" TEXT="SP17 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 3 túi | 55712258330" />
      <node ID="DATAMAP_79CE6EA184CE7C07" TEXT="SP18 | Cát Khoáng MineralX | Combo 3 túi | 48458681913" />
      <node ID="DATAMAP_35D3A214FC66173E" TEXT="SP19 | Cát Đậu Nành Mix Khoáng PowerX | Combo 2 túi | 48762287172" />
      <node ID="DATAMAP_9D32C38D8277B141" TEXT="SP20 | Cát Đậu Nành Mix Khoáng PowerX | Combo 3 túi | 52462262098" />
      <node ID="DATAMAP_234CFB5B2B6CA4FE" TEXT="SP21 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 2 túi | 52712266855" />
      <node ID="DATAMAP_05DD615F13BD1689" TEXT="SP22 | Cát Đậu Nành Mix Khoáng PowerX | Combo 6 túi | 46362295656" />
      <node ID="DATAMAP_4B3D8FE2F86B74DF" TEXT="SP23 | Cát Sắn Mix Đậu Nành Tofuu.X | Combo 6 túi | 40481736189" />
      <node ID="DATAMAP_01C4DA39801356F8" TEXT="SP24 | Cát Mix PerformX | 1 túi 4,5kg; bán hết ở snapshot | 27144047088" />
      <node ID="DATAMAP_E8C65F60F9F4C450" TEXT="SP25 | Cát Sắn Natural | 1 túi 4,5kg; bán hết ở snapshot | 54104795820" />
      <node ID="DATAMAP_05F3B0D023672BB2" TEXT="Danh mục là snapshot ngày 25/08/2026; không phải bằng chứng lịch sử chạy Ads tháng 03–05/2026." />
    </node>
  </node>
</map>