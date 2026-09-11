<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="METRIC_TREE_DC76E9F0C0006E8F" TEXT="Metric Tree Joycat — rẽ tới dữ liệu gốc" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="METRIC_TREE_ABF365ABA3869BDE" TEXT="Liên kết trong bộ Joycat" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_C42E658C41B28210" TEXT="Context Joycat · Current Intent · Dictionary đầu vào · KPI v3 · Metric Tree · Bộ 5 Metrics · Mapping/Coverage." />
      <node ID="METRIC_TREE_277EEFBD585C0E73" TEXT="Định nghĩa trường chuẩn đặt tại Dictionary; file này dùng các định nghĩa đó theo vai trò riêng. Cập nhật liên kết và phân vai ngày 08/09/2026; không xác nhận lại toàn bộ raw data." />
    </node>
    <node ID="METRIC_TREE_21A06D83E4A92D93" TEXT="1. Metric Tree này trả lời gì?" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_48CE60AB219E3E72" TEXT="Mỗi KPI trong KPI v3 hiện hành được tính từ những đại lượng nào, các đại lượng đó lấy từ đâu và phải dừng phân rã tại điểm nào?" />
      <node ID="METRIC_TREE_7C990957FEAD0365" TEXT="Metric Tree chỉ thể hiện quan hệ tính toán. Đường đi Impression → Click → Mess → Purchase không nằm trong Tree này vì đó là quan hệ quy trình, không phải đẳng thức toán học." />
    </node>
    <node ID="METRIC_TREE_A5BD6C5A930C4459" TEXT="2. Quy tắc rẽ và quy tắc dừng" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_41B2597E3D786628" TEXT="Mỗi KPI được rẽ thành tử số, mẫu số, phép toán và điều kiện đo. Tiếp tục rẽ cho tới khi node lá thuộc một trong bốn loại:" />
      <node ID="METRIC_TREE_E73C02A3B9272CF1" TEXT="Nhãn node lá | Nghĩa | Cách xử lý" />
      <node ID="METRIC_TREE_B56A42D29F2315D4" TEXT="[Meta export trực tiếp — DỪNG] | Field đã có trực tiếp trong export Joycat | Không rẽ thành hành vi phễu; chỉ ghi định nghĩa, kỳ, cấp và attribution" />
      <node ID="METRIC_TREE_7DE9EB6F380F2B98" TEXT="[Business source trực tiếp — DỪNG] | Field lấy trực tiếp từ nguồn bán hàng/doanh nghiệp | Không thay bằng metric Meta" />
      <node ID="METRIC_TREE_AFB93B4BCF9198A8" TEXT="[Hằng số — DỪNG] | Số cố định trong công thức như 1.000 hoặc 100% | Không rẽ tiếp" />
      <node ID="METRIC_TREE_5561C60BE633A523" TEXT="[Chưa có dữ liệu — To be updated — DỪNG] | Metric cần thiết nhưng workspace chưa có nguồn | Giữ node, ghi owner và ảnh hưởng; không tự ước lượng" />
      <node ID="METRIC_TREE_B985E27F255D2763" TEXT="Các cột cost hoặc ROAS do Meta tính sẵn chỉ dùng để đối soát. Công thức chính luôn được tính lại từ tổng tử số và tổng mẫu số." />
    </node>
    <node ID="METRIC_TREE_01FCCBD484575B79" TEXT="3. Metric Tree chính" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_5E7E1FEE6D2E4A99" TEXT="flowchart LR&#10;    ROOT[&quot;KPI GỐC&lt;br/&gt;Ads Cost / GMV all platform&quot;]&#10;&#10;    ROOT --&gt; AC[&quot;ADS COST TRONG KỲ&quot;]&#10;    AC --&gt; AC_SUM[&quot;SUM Amount Spent của Campaign&quot;]&#10;    AC_SUM --&gt; AC_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    ROOT --&gt; GMV[&quot;GMV ALL PLATFORM CÙNG KỲ&quot;]&#10;    GMV --&gt; G_SHOPEE[&quot;GMV Shopee&lt;br/&gt;Chưa có dữ liệu — DỪNG&quot;]&#10;    GMV --&gt; G_TIKTOK[&quot;GMV TikTok&lt;br/&gt;Chưa có dữ liệu — DỪNG&quot;]&#10;    GMV --&gt; G_FB[&quot;GMV Facebook hoặc Messenger&lt;br/&gt;Chưa có business data — DỪNG&quot;]&#10;    GMV --&gt; G_STORE[&quot;GMV cửa hàng trực tiếp&lt;br/&gt;Chưa có dữ liệu — DỪNG&quot;]&#10;    GMV --&gt; G_OTHER[&quot;GMV kênh khác&lt;br/&gt;Chưa có dữ liệu — DỪNG&quot;]&#10;&#10;    AC --&gt; CPM[&quot;CPM&quot;]&#10;    CPM --&gt; CPM_SPEND[&quot;SUM Amount Spent&quot;]&#10;    CPM_SPEND --&gt; CPM_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPM --&gt; CPM_IMP[&quot;SUM Impressions&quot;]&#10;    CPM_IMP --&gt; CPM_IMP_RAW[&quot;Impressions&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPM --&gt; CPM_1000[&quot;1.000&lt;br/&gt;Hằng số — DỪNG&quot;]&#10;&#10;    AC --&gt; CPC_LINK[&quot;CPC LINK&quot;]&#10;    CPC_LINK --&gt; CPCL_SPEND[&quot;SUM Amount Spent&quot;]&#10;    CPCL_SPEND --&gt; CPCL_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPC_LINK --&gt; CPCL_CLICK[&quot;SUM Link Clicks&quot;]&#10;    CPCL_CLICK --&gt; CPCL_CLICK_RAW[&quot;Link clicks&lt;br/&gt;Preferred candidate chưa có — DỪNG&quot;]&#10;&#10;    AC --&gt; CPC_ALL[&quot;CPC ALL&quot;]&#10;    CPC_ALL --&gt; CPCA_SPEND[&quot;SUM Amount Spent&quot;]&#10;    CPCA_SPEND --&gt; CPCA_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPC_ALL --&gt; CPCA_CLICK[&quot;SUM Clicks all&quot;]&#10;    CPCA_CLICK --&gt; CPCA_CLICK_RAW[&quot;Clicks all&lt;br/&gt;Preferred candidate chưa có — DỪNG&quot;]&#10;&#10;    AC --&gt; CPR_TYPES[&quot;COST PER RESULT THEO TỪNG LOẠI&quot;]&#10;&#10;    CPR_TYPES --&gt; CPMC[&quot;MESSAGING RESULT&quot;]&#10;    CPMC --&gt; CPMC_SPEND[&quot;SUM Amount Spent của dòng messaging&quot;]&#10;    CPMC_SPEND --&gt; CPMC_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPMC --&gt; CPMC_MESS[&quot;SUM Messaging Conversations Started&quot;]&#10;    CPMC_MESS --&gt; CPMC_MESS_RAW[&quot;Messaging conversations started&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    CPR_TYPES --&gt; CPE[&quot;POST ENGAGEMENT RESULT&quot;]&#10;    CPE --&gt; CPE_SPEND[&quot;SUM Amount Spent của dòng post engagement&quot;]&#10;    CPE_SPEND --&gt; CPE_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPE --&gt; CPE_RESULT[&quot;SUM Results với indicator post_engagement&quot;]&#10;    CPE_RESULT --&gt; CPE_RESULT_RAW[&quot;Results&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    CPR_TYPES --&gt; CPP[&quot;COST PER RESULT — PURCHASE INDICATOR&quot;]&#10;    CPP --&gt; CPP_SPEND[&quot;SUM Amount Spent của dòng purchase indicator&quot;]&#10;    CPP_SPEND --&gt; CPP_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPP --&gt; CPP_PURCHASE[&quot;SUM Results hoặc Purchase event cùng indicator&quot;]&#10;    CPP_PURCHASE --&gt; CPP_PURCHASE_RAW[&quot;Purchases&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    CPR_TYPES --&gt; CP_RECALL[&quot;ESTIMATED AD RECALL RESULT&quot;]&#10;    CP_RECALL --&gt; CP_RECALL_SPEND[&quot;SUM Amount Spent của dòng ad recall&quot;]&#10;    CP_RECALL_SPEND --&gt; CP_RECALL_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CP_RECALL --&gt; CP_RECALL_RESULTS[&quot;SUM Results với indicator estimated_ad_recallers&quot;]&#10;    CP_RECALL_RESULTS --&gt; CP_RECALL_RESULTS_RAW[&quot;Results&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    CPR_TYPES --&gt; CPR_UNKNOWN[&quot;RESULT CHƯA XÁC ĐỊNH&quot;]&#10;    CPR_UNKNOWN --&gt; CPR_SPEND[&quot;SUM Amount Spent trong cùng Result indicator&quot;]&#10;    CPR_SPEND --&gt; CPR_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPR_UNKNOWN --&gt; CPR_RESULT[&quot;SUM Results trong cùng Result indicator&quot;]&#10;    CPR_RESULT --&gt; CPR_RESULT_RAW[&quot;Results&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    AC --&gt; CPNC[&quot;COST PER NEW MESSAGING CONTACT&quot;]&#10;    CPNC --&gt; CPNC_SPEND[&quot;SUM Amount Spent&quot;]&#10;    CPNC_SPEND --&gt; CPNC_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPNC --&gt; CPNC_CONTACT[&quot;SUM New Messaging Contacts&quot;]&#10;    CPNC_CONTACT --&gt; CPNC_CONTACT_RAW[&quot;New messaging contacts&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    AC --&gt; CPOC[&quot;COST PER ORDER CREATED META&quot;]&#10;    CPOC --&gt; CPOC_SPEND[&quot;SUM Amount Spent&quot;]&#10;    CPOC_SPEND --&gt; CPOC_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPOC --&gt; CPOC_ORDER[&quot;SUM Orders Created&quot;]&#10;    CPOC_ORDER --&gt; CPOC_ORDER_RAW[&quot;Orders created do Meta ghi nhận&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    AC --&gt; CPOD[&quot;COST PER ORDER DISPATCHED META&quot;]&#10;    CPOD --&gt; CPOD_SPEND[&quot;SUM Amount Spent&quot;]&#10;    CPOD_SPEND --&gt; CPOD_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    CPOD --&gt; CPOD_ORDER[&quot;SUM Orders Dispatched&quot;]&#10;    CPOD_ORDER --&gt; CPOD_ORDER_RAW[&quot;Orders dispatched do Meta ghi nhận&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;&#10;    AC --&gt; ROAS[&quot;PURCHASE ROAS META&quot;]&#10;    ROAS --&gt; ROAS_VALUE[&quot;SUM Purchases Conversion Value&quot;]&#10;    ROAS_VALUE --&gt; ROAS_VALUE_RAW[&quot;Purchases conversion value&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]&#10;    ROAS --&gt; ROAS_SPEND[&quot;SUM Amount Spent&quot;]&#10;    ROAS_SPEND --&gt; ROAS_SPEND_RAW[&quot;Amount spent VND&lt;br/&gt;Meta export trực tiếp — DỪNG&quot;]" />
      <node ID="METRIC_TREE_7A7BEED63BB9A4C8" TEXT="Cách map các lát cắt Ads Cost trong KPI v4" FOLDED="true">
        <node ID="METRIC_TREE_903ED7876E295F3A" TEXT="Ads Cost theo một chiều&#10;= SUM Amount Spent sau khi lọc theo Nền tảng hoặc Sản phẩm hoặc Phễu hoặc Objective&#10;&#10;Ads Cost theo cặp 2&#10;= SUM Amount Spent sau khi lọc đồng thời theo 2 điều kiện&#10;&#10;Ads Cost theo cặp 3&#10;= SUM Amount Spent sau khi lọc đồng thời theo 3 điều kiện" />
        <node ID="METRIC_TREE_1B652209A72AE6F8" TEXT="Ví dụ:" />
        <node ID="METRIC_TREE_4CE97C83EF97AF37" TEXT="AS Facebook (SP1)&#10;= SUM Amount Spent khi Nền tảng = Facebook và Sản phẩm = SP1&#10;&#10;AS Facebook (TOFU, SP1)&#10;= SUM Amount Spent khi Nền tảng = Facebook, Phễu = TOFU và Sản phẩm = SP1" />
        <node ID="METRIC_TREE_6776DF74802B2A79" TEXT="Nền tảng, Sản phẩm, Phễu và Objective là điều kiện lọc hoặc mapping; field tiền cuối cùng vẫn là Amount spent (VND). Không cộng kết quả một chiều, cặp 2 và cặp 3 với nhau." />
      </node>
    </node>
    <node ID="METRIC_TREE_AA5FE911AD7F29A4" TEXT="4. Công thức và điểm dừng của từng KPI" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_BCB9C14DA4D802EB" TEXT="KPI | Công thức tính lại | Node lá trực tiếp | Đơn vị | Trạng thái | Cột Meta dùng đối soát" />
      <node ID="METRIC_TREE_789C7A212792C397" TEXT="Ads Cost / GMV all platform | Ads Cost / GMV all platform × 100% | Amount Spent; GMV từng kênh | VND/VND → % | Chưa sẵn có GMV | Không có" />
      <node ID="METRIC_TREE_682DC460934EA9A8" TEXT="Ads Cost | SUM Amount Spent tại Campaign | Amount spent (VND) | VND | Sẵn có | Không cần" />
      <node ID="METRIC_TREE_C39328E853BCFF5E" TEXT="CPM | SUM Amount Spent / SUM Impressions × 1.000 | Amount spent (VND); Impressions; hằng số 1.000 | VND/1.000 impressions | Sẵn có | Không có trong preferred candidate hiện dùng" />
      <node ID="METRIC_TREE_50579A116A8B31B1" TEXT="CPC link | SUM Amount Spent / SUM Link Clicks | Amount spent (VND); Link clicks | VND/link click | Chưa sẵn có Clicks | Chưa có" />
      <node ID="METRIC_TREE_CA3E73737C526BE0" TEXT="CPC all | SUM Amount Spent / SUM Clicks (all) | Amount spent (VND); Clicks (all) | VND/click | Chưa sẵn có Clicks | Chưa có" />
      <node ID="METRIC_TREE_877C8BE375E73C27" TEXT="Cost per Messaging Result | SUM Amount Spent của dòng messaging / SUM Messaging Conversations Started | Amount spent (VND); Messaging conversations started; Result indicator | VND/conversation | Sẵn có | Cost per messaging conversation started (VND)" />
      <node ID="METRIC_TREE_30719B5101D2E557" TEXT="Cost per Post Engagement Result | SUM Amount Spent của dòng post engagement / SUM Results cùng indicator | Amount spent (VND); Results; Result indicator | VND/engagement | Sẵn có có điều kiện | Cost per results trong đúng nhóm indicator" />
      <node ID="METRIC_TREE_0905BA4E74707D85" TEXT="Cost per Result — Purchase indicator | SUM Amount Spent của dòng purchase indicator indicator / SUM Results cùng indicator | Amount spent; Results; Result indicator | Không phải Cost per Meta-attributed Purchase toàn scope" />
      <node ID="METRIC_TREE_META_PURCHASE_COST" TEXT="Cost per Meta-attributed Purchase — toàn scope | SUM Amount Spent toàn scope / SUM meta_purchases_attributed cùng scope và attribution" />
      <node ID="METRIC_TREE_BUSINESS_ORDER_COST" TEXT="Cost per Business Order | Ads Cost / business_orders_eligible | Chưa có business source — DỪNG" />
      <node ID="METRIC_TREE_A82B2FC8FBDED98C" TEXT="Cost per Estimated Ad Recall Result | SUM Amount Spent của dòng ad recall / SUM Results cùng indicator | Amount spent (VND); Results; Result indicator | VND/estimated ad recaller | Sẵn có có điều kiện | Cost per results trong đúng nhóm indicator" />
      <node ID="METRIC_TREE_4C606A717C496B67" TEXT="Cost per Result chưa xác định | SUM Amount Spent / SUM Results trong cùng Result indicator | Amount spent (VND); Results; Result indicator | VND/result | Sẵn có có điều kiện | Cost per results trong đúng nhóm indicator" />
      <node ID="METRIC_TREE_ECB91F157F0FCC6B" TEXT="Cost per New Messaging Contact | SUM Amount Spent / SUM New Messaging Contacts | Amount spent (VND); New messaging contacts | VND/contact | Sẵn có | Cost per new messaging contact (VND)" />
      <node ID="METRIC_TREE_BE3E3284FCC1D5E4" TEXT="Cost per Order Created Meta | SUM Amount Spent / SUM Orders Created | Amount spent (VND); Orders created | VND/Meta order event | Sẵn có một phần | Không có" />
      <node ID="METRIC_TREE_4E06186F48CAE35B" TEXT="Cost per Order Dispatched Meta | SUM Amount Spent / SUM Orders Dispatched | Amount spent (VND); Orders dispatched | VND/Meta order event | Sẵn có một phần | Không có" />
      <node ID="METRIC_TREE_24FC92CE1E8766D5" TEXT="Purchase ROAS Meta | SUM Purchases Conversion Value / SUM Amount Spent | Purchases conversion value; Amount spent (VND) | VND/VND → lần | Sẵn có | Purchase ROAS (return on ad spend)" />
      <node ID="METRIC_TREE_7E6BCD8343069A46" TEXT="GMV all platform | GMV Shopee + TikTok + Facebook/Messenger + cửa hàng + kênh khác | GMV từng kênh | VND | Chưa sẵn có | Không có" />
    </node>
    <node ID="METRIC_TREE_57275DB3AD34A74E" TEXT="5. Giải thích điểm dừng quan trọng" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_7F6C87CC8E038500" TEXT="Messaging Conversations Started" FOLDED="true">
        <node ID="METRIC_TREE_E97435862031BAFE" TEXT="Cost per Messaging Conversation&#10;├── SUM Amount Spent&#10;│   └── Amount spent (VND) [Meta export trực tiếp — DỪNG]&#10;└── SUM Messaging Conversations Started&#10;    └── Messaging conversations started [Meta export trực tiếp — DỪNG]" />
        <node ID="METRIC_TREE_40536D903CCFEE60" TEXT="Messaging conversations started là số Meta Accounts bắt đầu cuộc hội thoại sau ít nhất 7 ngày không hoạt động, được Meta attribution cho quảng cáo. Workspace chỉ có con số Meta tổng hợp, không có event log bên dưới, nên không thể rẽ toán học sâu hơn." />
        <node ID="METRIC_TREE_D9655C6CD34C4A6D" TEXT="Khi Result indicator = actions:onsite_conversion.messaging_conversation_started_7d, Results có thể khớp với Messaging conversations started. Khi indicator là post_engagement hoặc event khác, hai field không đại diện cùng một kết quả và không được thay thế cho nhau." />
      </node>
      <node ID="METRIC_TREE_2A79FAF1DD267DE4" TEXT="Purchases, Orders Created và Orders Dispatched" FOLDED="true">
        <node ID="METRIC_TREE_4D9F431261C04E47" TEXT="Ba field này là event Meta xuất trực tiếp nên Metric Tree dừng tại đó. Không nối toán học:" />
        <node ID="METRIC_TREE_5B0745BDFDC87DCE" TEXT="meta_purchases_attributed → Orders Created → Orders Dispatched" />
        <node ID="METRIC_TREE_5F8881E252210D21" TEXT="Trong raw có trường hợp Orders Dispatched &gt; Orders Created, vì vậy ba field phải giữ độc lập cho tới khi owner tracking xác nhận định nghĩa và coverage." />
      </node>
      <node ID="METRIC_TREE_70240EDEBC124916" TEXT="GMV từng kênh" FOLDED="true">
        <node ID="METRIC_TREE_F0C27C280E7B99EA" TEXT="Metric Tree dừng ở GMV Shopee, TikTok, Facebook/Messenger, cửa hàng và kênh khác vì chưa có nguồn cũng như quy tắc hoàn/hủy, voucher và thời điểm ghi nhận. Không tự rẽ thành Số đơn × Giá trị đơn trung bình khi định nghĩa tập đơn chưa được khóa." />
      </node>
    </node>
    <node ID="METRIC_TREE_84BF6BD206A3A7BA" TEXT="6. Công thức kiểm tra chéo" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_F805CC78F1EC6687" TEXT="Các công thức này dùng để kiểm tra quan hệ giữa metric, không tạo thêm nhánh chính để tránh vòng lặp:" />
      <node ID="METRIC_TREE_DA9198F73AF2A65F" TEXT="CTR link = Link Clicks / Impressions&#10;&#10;Result rate = Results / Impressions&#10;&#10;Tỷ lệ Link Click → Messaging Conversation&#10;= Messaging Conversations Started / Link Clicks&#10;&#10;Tỷ lệ New Contact trên Conversation&#10;= New Messaging Contacts / Messaging Conversations Started&#10;&#10;CPC link&#10;= CPM / (1.000 × CTR link)&#10;&#10;Cost per Result&#10;= CPM / (1.000 × Result rate)&#10;&#10;Cost per Messaging Conversation&#10;= CPC link / Tỷ lệ Link Click → Messaging Conversation&#10;&#10;Cost per New Messaging Contact&#10;= Cost per Messaging Conversation / Tỷ lệ New Contact trên Conversation" />
      <node ID="METRIC_TREE_D5617DCB474FF06C" TEXT="Nếu tỷ lệ được hiển thị là phần trăm, phải đổi về số thập phân trước khi thay vào công thức: 2% = 0,02." />
      <node ID="METRIC_TREE_1DD5CD2F6E65E137" TEXT="Các công thức dùng Click chỉ kích hoạt sau khi có Link clicks hoặc Clicks (all) cùng kỳ, cấp và attribution." />
    </node>
    <node ID="METRIC_TREE_F6D1A924D4399AC1" TEXT="7. Hợp đồng tổng hợp dữ liệu" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_F449DEC7834106F2" TEXT="Không lấy trung bình metric tỷ lệ hoặc chi phí" FOLDED="true">
        <node ID="METRIC_TREE_C480DFDBBC32A093" TEXT="CPM tổng&#10;= SUM Amount Spent / SUM Impressions × 1.000&#10;&#10;CPR tổng&#10;= SUM Amount Spent / SUM Results&#10;&#10;Purchase ROAS tổng&#10;= SUM Purchases Conversion Value / SUM Amount Spent" />
        <node ID="METRIC_TREE_16170AB23CA485E3" TEXT="Không dùng AVERAGE(CPM), AVERAGE(CPR) hoặc AVERAGE(ROAS) giữa các Campaign." />
      </node>
      <node ID="METRIC_TREE_FCE294459DD53DBF" TEXT="Cấp dữ liệu" FOLDED="true">
        <node ID="METRIC_TREE_BBEFA0D13D25F8BD" TEXT="Cấp tổng hợp chính: Campaign." />
        <node ID="METRIC_TREE_7C4AF15E6D3C0D12" TEXT="Ad set và Ad chỉ dùng để đi sâu hoặc đối soát." />
        <node ID="METRIC_TREE_710F613206ED1ABF" TEXT="Không cộng Amount Spent của Campaign + Ad set + Ad." />
        <node ID="METRIC_TREE_66B74AF1000DEC12" TEXT="Có thể dùng dòng tổng Meta hoặc tổng các dòng Campaign, nhưng không dùng đồng thời cả hai." />
      </node>
      <node ID="METRIC_TREE_63773BBC6855FA43" TEXT="Điều kiện so sánh" FOLDED="true">
        <node ID="METRIC_TREE_AEBFF8B725F2F4E6" TEXT="Mọi tử số và mẫu số phải cùng:" />
        <node ID="METRIC_TREE_6CCDB455E8C1FA95" TEXT="kỳ báo cáo;" />
        <node ID="METRIC_TREE_FF5696298FB4698D" TEXT="cấp Campaign, Ad set hoặc Ad;" />
        <node ID="METRIC_TREE_B2662F84F70E4477" TEXT="attribution setting;" />
        <node ID="METRIC_TREE_1DEB637A02951F8E" TEXT="phạm vi dòng;" />
        <node ID="METRIC_TREE_416219BB9A797F67" TEXT="đơn vị tiền;" />
        <node ID="METRIC_TREE_7289B7304A90C3E0" TEXT="Result indicator nếu công thức sử dụng Results." />
      </node>
    </node>
    <node ID="METRIC_TREE_33FAF07496A3A477" TEXT="8. Nguồn và trạng thái dữ liệu" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_DFF79075D135FD4B" TEXT="Chín file 01_inputs/joycat/raw/meta_ads/preferred_candidate có ba cấp Campaign, Ad set và Ad cho tháng 03–05/2026." />
      <node ID="METRIC_TREE_F95ACBBA03720D59" TEXT="Field cần dùng | Có trong preferred candidate? | Điểm dừng" />
      <node ID="METRIC_TREE_B8046B82288DC6EB" TEXT="Amount spent (VND) | Có | Meta export trực tiếp" />
      <node ID="METRIC_TREE_49431FD449F6D464" TEXT="Impressions | Có | Meta export trực tiếp" />
      <node ID="METRIC_TREE_00B33EBC66D983D6" TEXT="Results | Có | Meta export trực tiếp; phải đi cùng indicator" />
      <node ID="METRIC_TREE_CE84C95AA66A8891" TEXT="Result indicator | Có | Meta export trực tiếp; điều kiện đo" />
      <node ID="METRIC_TREE_3844EF636D0050B0" TEXT="Purchases | Có | Meta export trực tiếp; event attribution" />
      <node ID="METRIC_TREE_C2BF354CE0CA9767" TEXT="Purchases conversion value | Có | Meta export trực tiếp; không phải GMV" />
      <node ID="METRIC_TREE_76725FDF082CD566" TEXT="Purchase ROAS | Có | Cột đối soát" />
      <node ID="METRIC_TREE_42C6B303DDB46E37" TEXT="New messaging contacts | Có | Meta export trực tiếp" />
      <node ID="METRIC_TREE_71E22A56B03568EC" TEXT="Messaging conversations started | Có | Meta export trực tiếp" />
      <node ID="METRIC_TREE_0C1CD1F8EC065FC7" TEXT="Orders created | Có | Meta export trực tiếp; coverage chưa xác nhận" />
      <node ID="METRIC_TREE_2371A2F3A1224540" TEXT="Orders dispatched | Có | Meta export trực tiếp; coverage chưa xác nhận" />
      <node ID="METRIC_TREE_D257B964947730BB" TEXT="Clicks (all) | Không | To be updated" />
      <node ID="METRIC_TREE_AC9631C277B05DF8" TEXT="Link clicks | Không | To be updated" />
      <node ID="METRIC_TREE_5B70686DC0C3B206" TEXT="GMV từng kênh | Không | To be updated từ business source" />
    </node>
    <node ID="METRIC_TREE_A438EC8F2A853F2F" TEXT="9. Kiểm định Metric Tree v3" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_3641949C0BDB19CA" TEXT="Kiểm tra | Kết quả" />
      <node ID="METRIC_TREE_F53BB63EFDFFAA2A" TEXT="Các KPI cần tính trong KPI v4 có công thức và điểm dừng | Đạt" />
      <node ID="METRIC_TREE_4D8B252E09FDB119" TEXT="Mọi nhánh được rẽ tới field trực tiếp, hằng số hoặc điểm thiếu dữ liệu | Đạt" />
      <node ID="METRIC_TREE_C286D04E40B2BF67" TEXT="Messaging Conversations Started có nguồn và lý do dừng | Đạt" />
      <node ID="METRIC_TREE_6E722B74D8EC1B99" TEXT="Không biến phễu Impression → Click → Mess → Purchase thành công thức | Đạt" />
      <node ID="METRIC_TREE_DE77FBD437F05C61" TEXT="Không lấy trung bình CPM, CPR hoặc ROAS theo dòng | Đạt" />
      <node ID="METRIC_TREE_F7802B000BE95071" TEXT="Không cộng chéo Campaign, Ad set và Ad | Đạt" />
      <node ID="METRIC_TREE_34E5A1CC7C0C3627" TEXT="CPC link và CPC all được tách riêng | Đạt" />
      <node ID="METRIC_TREE_0D584EC97AC21A25" TEXT="Cost per Result được tách theo Messaging, Post Engagement, Purchase, Estimated Ad Recall và nhóm chưa xác định | Đạt" />
      <node ID="METRIC_TREE_D051DDBA91763946" TEXT="Các lát cắt một chiều, cặp 2 và cặp 3 đều dừng tại Amount spent, không bị cộng trùng | Đạt" />
      <node ID="METRIC_TREE_926228AF0B8B1CFE" TEXT="Meta event/value không bị gọi là đơn hoặc GMV business | Đạt" />
      <node ID="METRIC_TREE_C51B2155343EDC0F" TEXT="GMV thiếu vẫn được giữ trong Tree | Đạt" />
    </node>
    <node ID="METRIC_TREE_1F5D08752BC03880" TEXT="10. To be updated" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_8BDAF8280C83136A" TEXT="Clicks cho CPC" FOLDED="true">
        <node ID="METRIC_TREE_6DF57B02157138B3" TEXT="Trạng thái: To be updated Thiếu: Link clicks và/hoặc Clicks (all) cùng kỳ, cùng cấp và attribution. Owner/nguồn xác nhận: Meta Ads export hoặc người chuẩn bị dataset. Ảnh hưởng: Chưa tính được CPC và các công thức kiểm tra sử dụng Clicks. Câu hỏi tiếp theo: Có thể export thêm Link clicks, Clicks (all), CTR link và CTR all cho tháng 03–05/2026 không?" />
      </node>
      <node ID="METRIC_TREE_D05DD754D208D71A" TEXT="GMV all platform" FOLDED="true">
        <node ID="METRIC_TREE_F1CCED69F0C4F295" TEXT="Trạng thái: To be updated Thiếu: GMV từng kênh cùng kỳ và quy tắc hoàn/hủy, voucher, phí, thời điểm ghi nhận. Owner/nguồn xác nhận: Joycat, người phụ trách dữ liệu hoặc cậu Sinh. Ảnh hưởng: Chặn việc tính KPI gốc Ads Cost / GMV all platform. Câu hỏi tiếp theo: GMV all platform gồm chính xác kênh nào và sử dụng giá trị trước hay sau hoàn/hủy?" />
      </node>
      <node ID="METRIC_TREE_6BE471FEFB131411" TEXT="Ý nghĩa Orders Created và Orders Dispatched" FOLDED="true">
        <node ID="METRIC_TREE_0661C263AA9BC7AD" TEXT="Trạng thái: To be updated Thiếu: Nguồn event, định nghĩa nghiệp vụ và coverage của hai field. Owner/nguồn xác nhận: Người phụ trách tracking hoặc dữ liệu Joycat. Ảnh hưởng: Chưa được coi đây là đơn tạo/giao thực tế của doanh nghiệp. Câu hỏi tiếp theo: Hai event này do Shopee/CPAS, Pixel, CAPI hay nguồn nào gửi về Meta?" />
      </node>
    </node>
    <node ID="METRIC_TREE_BFB0F2087B2AD0B1" TEXT="11. Bản nói ngắn cho Duy" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="METRIC_TREE_65C80D81E08590A4" TEXT="Metric Tree v3 lấy từng KPI trong v4 rồi rẽ công thức cho đến field gốc. CPC all và CPC link tách riêng vì khác mẫu số. Cost per Result cũng tách theo từng Result indicator; không cộng Messaging, Post Engagement, Purchase và Ad Recall với nhau. Các lát cắt Nền tảng, Sản phẩm, Phễu và Objective chỉ là điều kiện lọc trước khi cộng Amount Spent. Metric Tree không rẽ Impression → Click → Mess → Purchase vì đó là đường phân tích của Logic Tree." />
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
