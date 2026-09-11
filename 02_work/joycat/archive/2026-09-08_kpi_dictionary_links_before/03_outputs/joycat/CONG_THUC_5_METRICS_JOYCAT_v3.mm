<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="jm5v3-0001" TEXT="JOYCAT — CÔNG THỨC 5 NHÓM METRICS v3" STYLE="bubble">
    <node ID="jm5v3-0002" TEXT="CÔNG THỨC GỐC" STYLE="bubble" POSITION="left">
      <node ID="jm5v3-0003" TEXT="Business ROAS = GMV / Ads Cost" STYLE="fork" />
      <node ID="jm5v3-0004" TEXT="Ads Cost = Amount Spent" STYLE="fork" />
      <node ID="jm5v3-0005" TEXT="GMV = GMV business cùng phạm vi, cùng kỳ với Ads Cost" STYLE="fork" />
      <node ID="jm5v3-0006" TEXT="GMV trong Tree là GMV business; không lấy giá trị chuyển đổi do Meta attribution làm GMV" STYLE="fork" />
    </node>

    <node ID="jm5v3-0100" TEXT="1. IMPRESSIONS" STYLE="bubble" POSITION="left">
      <node ID="jm5v3-0101" TEXT="Impressions = Reach × Frequency" STYLE="fork" />
      <node ID="jm5v3-0102" TEXT="Impressions = Amount Spent × 1.000 / CPM" STYLE="fork" />
      <node ID="jm5v3-0103" TEXT="Impressions = Clicks (all) / CTR (all)" STYLE="fork" />
      <node ID="jm5v3-0104" TEXT="Impressions = Link Clicks / CTR (link)" STYLE="fork" />
      <node ID="jm5v3-0105" TEXT="Impressions = Messaging Conversations Started / Messaging Conversation Rate" STYLE="fork" />
      <node ID="jm5v3-0106" TEXT="Impressions = New Messaging Contacts / New Messaging Contact Rate trên Impression" STYLE="fork" />
      <node ID="jm5v3-0107" TEXT="Impressions = Purchases / Purchase Rate trên Impression" STYLE="fork" />
      <node ID="jm5v3-0108" TEXT="Impressions = Results (r) / Result Rate (r)" STYLE="fork" />
    </node>

    <node ID="jm5v3-0200" TEXT="2. REACH" STYLE="bubble" POSITION="left">
      <node ID="jm5v3-0201" TEXT="Reach = Impressions / Frequency" STYLE="fork" />
      <node ID="jm5v3-0202" TEXT="Reach = Amount Spent × 1.000 / (CPM × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0203" TEXT="Reach = Clicks (all) / (CTR (all) × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0204" TEXT="Reach = Link Clicks / (CTR (link) × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0205" TEXT="Reach = Messaging Conversations Started / (Messaging Conversation Rate × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0206" TEXT="Reach = New Messaging Contacts / (New Messaging Contact Rate trên Impression × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0207" TEXT="Reach = Purchases / (Purchase Rate trên Impression × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0208" TEXT="Reach = Results (r) / (Result Rate (r) × Frequency)" STYLE="fork" />
      <node ID="jm5v3-0209" TEXT="Reach = Amount Spent × 1.000 / Cost per 1.000 People Reached" STYLE="fork" />
    </node>

    <node ID="jm5v3-0300" TEXT="3. CLICK" STYLE="bubble" POSITION="right">
      <node ID="jm5v3-0310" TEXT="CLICKS (ALL)" STYLE="fork">
        <node ID="jm5v3-0311" TEXT="Clicks (all) = Impressions × CTR (all)" STYLE="fork" />
        <node ID="jm5v3-0312" TEXT="Clicks (all) = Amount Spent / CPC (all)" STYLE="fork" />
        <node ID="jm5v3-0313" TEXT="CTR (all) = Clicks (all) / Impressions" STYLE="fork" />
        <node ID="jm5v3-0314" TEXT="CPC (all) = Amount Spent / Clicks (all)" STYLE="fork" />
        <node ID="jm5v3-0315" TEXT="CPM = CTR (all) × CPC (all) × 1.000" STYLE="fork" />
      </node>
      <node ID="jm5v3-0320" TEXT="LINK CLICKS" STYLE="fork">
        <node ID="jm5v3-0321" TEXT="Link Clicks = Impressions × CTR (link)" STYLE="fork" />
        <node ID="jm5v3-0322" TEXT="Link Clicks = Amount Spent / CPC (link)" STYLE="fork" />
        <node ID="jm5v3-0323" TEXT="Link Clicks = Clicks (all) × Tỷ trọng Link Click" STYLE="fork" />
        <node ID="jm5v3-0324" TEXT="Link Clicks = Messaging Conversations Started / Tỷ lệ Link Click → Mess" STYLE="fork" />
        <node ID="jm5v3-0325" TEXT="Link Clicks = Purchases / Purchases per Link Click" STYLE="fork" />
        <node ID="jm5v3-0326" TEXT="CTR (link) = Link Clicks / Impressions" STYLE="fork" />
        <node ID="jm5v3-0327" TEXT="CPC (link) = Amount Spent / Link Clicks" STYLE="fork" />
        <node ID="jm5v3-0328" TEXT="CPM = CTR (link) × CPC (link) × 1.000" STYLE="fork" />
      </node>
      <node ID="jm5v3-0330" TEXT="Tỷ trọng Link Click = Link Clicks / Clicks (all)" STYLE="fork" />
      <node ID="jm5v3-0331" TEXT="Purchases per Link Click = Purchases / Link Clicks" STYLE="fork" />
    </node>

    <node ID="jm5v3-0400" TEXT="4. MESS" STYLE="bubble" POSITION="right">
      <node ID="jm5v3-0401" TEXT="Messaging Conversations Started = Amount Spent / Cost per Messaging Conversation" STYLE="fork" />
      <node ID="jm5v3-0402" TEXT="Messaging Conversations Started = Impressions × Messaging Conversation Rate" STYLE="fork" />
      <node ID="jm5v3-0403" TEXT="Messaging Conversations Started = Link Clicks × Tỷ lệ Link Click → Mess" STYLE="fork" />
      <node ID="jm5v3-0404" TEXT="Messaging Conversations Started = New Messaging Contacts / New Contact Rate trên Mess" STYLE="fork" />
      <node ID="jm5v3-0405" TEXT="Messaging Conversations Started = Purchases / Tỷ lệ Mess → Purchase" STYLE="fork" />
      <node ID="jm5v3-0406" TEXT="Messaging Conversation Rate = Messaging Conversations Started / Impressions" STYLE="fork" />
      <node ID="jm5v3-0407" TEXT="Tỷ lệ Link Click → Mess = Messaging Conversations Started / Link Clicks" STYLE="fork" />
      <node ID="jm5v3-0408" TEXT="Cost per Messaging Conversation = Amount Spent / Messaging Conversations Started" STYLE="fork" />
      <node ID="jm5v3-0409" TEXT="Cost per Messaging Conversation = CPM / (Messaging Conversation Rate × 1.000)" STYLE="fork" />
      <node ID="jm5v3-0410" TEXT="Cost per Messaging Conversation = CPC (link) / Tỷ lệ Link Click → Mess" STYLE="fork" />
      <node ID="jm5v3-0411" TEXT="New Messaging Contacts = Amount Spent / Cost per New Messaging Contact" STYLE="fork" />
      <node ID="jm5v3-0412" TEXT="New Messaging Contacts = Messaging Conversations Started × New Contact Rate trên Mess" STYLE="fork" />
      <node ID="jm5v3-0413" TEXT="New Contact Rate trên Mess = New Messaging Contacts / Messaging Conversations Started" STYLE="fork" />
      <node ID="jm5v3-0414" TEXT="Cost per New Messaging Contact = Amount Spent / New Messaging Contacts" STYLE="fork" />
      <node ID="jm5v3-0415" TEXT="Cost per New Messaging Contact = Cost per Messaging Conversation / New Contact Rate trên Mess" STYLE="fork" />
    </node>

    <node ID="jm5v3-0500" TEXT="5. PURCHASE" STYLE="bubble" POSITION="right">
      <node ID="jm5v3-0501" TEXT="Purchases = Amount Spent / Cost per Purchase" STYLE="fork" />
      <node ID="jm5v3-0502" TEXT="Purchases = Impressions × Purchase Rate trên Impression" STYLE="fork" />
      <node ID="jm5v3-0503" TEXT="Purchases = Link Clicks × Purchases per Link Click" STYLE="fork" />
      <node ID="jm5v3-0504" TEXT="Purchases = Messaging Conversations Started × Tỷ lệ Mess → Purchase" STYLE="fork" />
      <node ID="jm5v3-0505" TEXT="Purchases = GMV / AOV" STYLE="fork" />
      <node ID="jm5v3-0506" TEXT="Purchase Rate trên Impression = Purchases / Impressions" STYLE="fork" />
      <node ID="jm5v3-0507" TEXT="Purchases per Link Click = Purchases / Link Clicks" STYLE="fork" />
      <node ID="jm5v3-0508" TEXT="Tỷ lệ Mess → Purchase = Purchases / Messaging Conversations Started" STYLE="fork" />
      <node ID="jm5v3-0509" TEXT="Cost per Purchase = Amount Spent / Purchases" STYLE="fork" />
      <node ID="jm5v3-0510" TEXT="Cost per Purchase = CPM / (Purchase Rate trên Impression × 1.000)" STYLE="fork" />
      <node ID="jm5v3-0511" TEXT="Cost per Purchase = CPC (link) / Purchases per Link Click" STYLE="fork" />
      <node ID="jm5v3-0512" TEXT="Cost per Purchase = Cost per Messaging Conversation / Tỷ lệ Mess → Purchase" STYLE="fork" />
      <node ID="jm5v3-0513" TEXT="GMV = Purchases × AOV" STYLE="fork" />
      <node ID="jm5v3-0514" TEXT="AOV = GMV / Purchases" STYLE="fork" />
      <node ID="jm5v3-0515" TEXT="Business ROAS = GMV / Amount Spent" STYLE="fork" />
      <node ID="jm5v3-0516" TEXT="Điều kiện: Purchases, AOV và GMV phải cùng phạm vi business" STYLE="fork" />
    </node>

    <node ID="jm5v3-0550" TEXT="6. CPM — CPC — CTR" STYLE="bubble" POSITION="left">
      <node ID="jm5v3-0551" TEXT="CPM = CPC (all) × CTR (all) × 1.000" STYLE="fork" />
      <node ID="jm5v3-0552" TEXT="CPC (all) = CPM / (CTR (all) × 1.000)" STYLE="fork" />
      <node ID="jm5v3-0553" TEXT="CTR (all) = CPM / (CPC (all) × 1.000)" STYLE="fork" />
      <node ID="jm5v3-0554" TEXT="CPM = CPC (link) × CTR (link) × 1.000" STYLE="fork" />
      <node ID="jm5v3-0555" TEXT="CPC (link) = CPM / (CTR (link) × 1.000)" STYLE="fork" />
      <node ID="jm5v3-0556" TEXT="CTR (link) = CPM / (CPC (link) × 1.000)" STYLE="fork" />
    </node>

    <node ID="jm5v3-0700" TEXT="7. QUAN HỆ TOÁN HỌC VỚI BUSINESS ROAS" STYLE="bubble" POSITION="left">
      <node ID="jm5v3-0701" TEXT="Gốc: Business ROAS = GMV / Amount Spent" STYLE="fork" />
      <node ID="jm5v3-0710" TEXT="GÓC NHÌN IMPRESSION" STYLE="fork">
        <node ID="jm5v3-0711" TEXT="Business ROAS = Purchase Rate trên Impression × AOV × 1.000 / CPM" STYLE="fork" />
        <node ID="jm5v3-0712" TEXT="Quan hệ thuận: ROAS với Purchase Rate trên Impression, khi AOV và CPM giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0713" TEXT="Quan hệ thuận: ROAS với AOV, khi Purchase Rate và CPM giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0714" TEXT="Quan hệ nghịch: ROAS với CPM, khi Purchase Rate và AOV giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0715" TEXT="Impressions: quan hệ gián tiếp/phụ thuộc điều kiện; bị triệt tiêu khỏi công thức ROAS sau khi thế" STYLE="fork" />
      </node>
      <node ID="jm5v3-0720" TEXT="GÓC NHÌN CLICK" STYLE="fork">
        <node ID="jm5v3-0721" TEXT="Business ROAS = Purchases per Link Click × AOV / CPC (link)" STYLE="fork" />
        <node ID="jm5v3-0722" TEXT="Quan hệ thuận: ROAS với Purchases per Link Click, khi AOV và CPC giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0723" TEXT="Quan hệ thuận: ROAS với AOV, khi Purchases per Link Click và CPC giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0724" TEXT="Quan hệ nghịch: ROAS với CPC (link), khi Purchases per Link Click và AOV giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0725" TEXT="Link Clicks: quan hệ gián tiếp/phụ thuộc điều kiện; bị triệt tiêu khỏi công thức ROAS sau khi thế" STYLE="fork" />
      </node>
      <node ID="jm5v3-0730" TEXT="GÓC NHÌN MESS" STYLE="fork">
        <node ID="jm5v3-0731" TEXT="Business ROAS = Tỷ lệ Mess → Purchase × AOV / Cost per Messaging Conversation" STYLE="fork" />
        <node ID="jm5v3-0732" TEXT="Quan hệ thuận: ROAS với Tỷ lệ Mess → Purchase, khi AOV và Cost per Mess giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0733" TEXT="Quan hệ thuận: ROAS với AOV, khi Tỷ lệ Mess → Purchase và Cost per Mess giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0734" TEXT="Quan hệ nghịch: ROAS với Cost per Messaging Conversation, khi Tỷ lệ Mess → Purchase và AOV giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0735" TEXT="Messaging Conversations Started: quan hệ gián tiếp/phụ thuộc điều kiện; bị triệt tiêu khỏi công thức ROAS sau khi thế" STYLE="fork" />
      </node>
      <node ID="jm5v3-0740" TEXT="GÓC NHÌN PURCHASE" STYLE="fork">
        <node ID="jm5v3-0741" TEXT="Business ROAS = AOV / Cost per Purchase" STYLE="fork" />
        <node ID="jm5v3-0742" TEXT="Quan hệ thuận: ROAS với AOV, khi Cost per Purchase giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0743" TEXT="Quan hệ nghịch: ROAS với Cost per Purchase, khi AOV giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0744" TEXT="Purchases: quan hệ gián tiếp/phụ thuộc điều kiện; bị triệt tiêu khỏi công thức ROAS sau khi thế" STYLE="fork" />
      </node>
      <node ID="jm5v3-0750" TEXT="NGUYÊN TẮC ĐỌC" STYLE="fork">
        <node ID="jm5v3-0751" TEXT="Thuận/nghịch chỉ là quan hệ toán học khi các biến còn lại giữ nguyên" STYLE="fork" />
        <node ID="jm5v3-0752" TEXT="Không kết luận ROAS tốt/xấu hoặc thay đổi theo chiều nào trước khi đặt số của từng case" STYLE="fork" />
        <node ID="jm5v3-0753" TEXT="Tương quan quan sát trong dữ liệu không tự chứng minh quan hệ nhân quả" STYLE="fork" />
      </node>
    </node>

    <node ID="jm5v3-0800" TEXT="8. CAMPAIGN OBJECTIVE — NGỮ CẢNH ĐỂ AI CHỌN ĐÚNG METRIC" STYLE="bubble" POSITION="right">
      <node ID="jm5v3-0801" TEXT="BA LỚP KHÔNG ĐƯỢC TRỘN" STYLE="fork">
        <node ID="jm5v3-0802" TEXT="Campaign objective = mục tiêu kinh doanh cấp Campaign" STYLE="fork" />
        <node ID="jm5v3-0803" TEXT="Performance goal / Optimization goal = hành động Meta tối ưu ở cấp Ad set" STYLE="fork" />
        <node ID="jm5v3-0804" TEXT="Result indicator = loại kết quả được hiển thị trong báo cáo" STYLE="fork" />
        <node ID="jm5v3-0805" TEXT="Một Result indicator có thể gợi ý Objective nhưng không đủ để xác nhận Objective" STYLE="fork" />
      </node>

      <node ID="jm5v3-0810" TEXT="AWARENESS" STYLE="fork">
        <node ID="jm5v3-0811" TEXT="Mục đích: làm nhiều người biết/nhớ quảng cáo" STYLE="fork" />
        <node ID="jm5v3-0812" TEXT="Performance goal có thể gặp: Reach; Impressions; Ad Recall Lift" STYLE="fork" />
        <node ID="jm5v3-0813" TEXT="Metric chính: Reach; Impressions; Frequency; CPM; Estimated Ad Recallers; Cost per Estimated Ad Recall Result" STYLE="fork" />
        <node ID="jm5v3-0814" TEXT="Result indicator Joycat quan sát: estimated_ad_recallers" STYLE="fork" />
        <node ID="jm5v3-0815" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện" STYLE="fork" />
      </node>

      <node ID="jm5v3-0820" TEXT="TRAFFIC" STYLE="fork">
        <node ID="jm5v3-0821" TEXT="Mục đích: đưa người dùng tới một điểm đến" STYLE="fork" />
        <node ID="jm5v3-0822" TEXT="Performance goal có thể gặp: Link Clicks; Landing Page Views" STYLE="fork" />
        <node ID="jm5v3-0823" TEXT="Metric chính: Link Clicks; CTR (link); CPC (link); Landing Page Views; Cost per Landing Page View" STYLE="fork" />
        <node ID="jm5v3-0824" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện" STYLE="fork" />
      </node>

      <node ID="jm5v3-0830" TEXT="ENGAGEMENT" STYLE="fork">
        <node ID="jm5v3-0831" TEXT="ENGAGEMENT — MESSAGING" STYLE="fork">
          <node ID="jm5v3-0832" TEXT="Mục đích: tạo cuộc hội thoại và liên hệ nhắn tin" STYLE="fork" />
          <node ID="jm5v3-0833" TEXT="Performance goal có thể gặp: Conversations; Messaging-related conversion" STYLE="fork" />
          <node ID="jm5v3-0834" TEXT="Metric chính: Messaging Conversations Started; New Messaging Contacts; Cost per Messaging Conversation; Cost per New Messaging Contact" STYLE="fork" />
          <node ID="jm5v3-0835" TEXT="Result indicator Joycat quan sát: actions:onsite_conversion.messaging_conversation_started_7d" STYLE="fork" />
          <node ID="jm5v3-0836" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc Tỷ lệ Mess → Purchase và AOV" STYLE="fork" />
        </node>
        <node ID="jm5v3-0840" TEXT="ENGAGEMENT — POST ENGAGEMENT" STYLE="fork">
          <node ID="jm5v3-0841" TEXT="Mục đích: tạo tương tác với nội dung" STYLE="fork" />
          <node ID="jm5v3-0842" TEXT="Performance goal có thể gặp: Post Engagement" STYLE="fork" />
          <node ID="jm5v3-0843" TEXT="Metric chính: Post Engagements; Cost per Post Engagement; reactions/comments/shares nếu export" STYLE="fork" />
          <node ID="jm5v3-0844" TEXT="Result indicator Joycat quan sát: actions:post_engagement" STYLE="fork" />
          <node ID="jm5v3-0845" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện" STYLE="fork" />
        </node>
        <node ID="jm5v3-0850" TEXT="ENGAGEMENT — VIDEO VIEWS" STYLE="fork">
          <node ID="jm5v3-0851" TEXT="Mục đích: tạo lượt xem video theo performance goal đã chọn" STYLE="fork" />
          <node ID="jm5v3-0852" TEXT="Performance goal có thể gặp: ThruPlay; video views" STYLE="fork" />
          <node ID="jm5v3-0853" TEXT="Metric chính: Video Plays; 3-second Video Plays; ThruPlays; Cost per ThruPlay; tỷ lệ xem video" STYLE="fork" />
          <node ID="jm5v3-0854" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện" STYLE="fork" />
        </node>
      </node>

      <node ID="jm5v3-0860" TEXT="LEADS" STYLE="fork">
        <node ID="jm5v3-0861" TEXT="Mục đích: thu thông tin người quan tâm" STYLE="fork" />
        <node ID="jm5v3-0862" TEXT="Performance goal có thể gặp: Leads; Quality Leads; conversion tại form/website/messaging" STYLE="fork" />
        <node ID="jm5v3-0863" TEXT="Metric chính: Leads; Cost per Lead; tỷ lệ Lead → Purchase nếu có nguồn business" STYLE="fork" />
        <node ID="jm5v3-0864" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc tỷ lệ chốt và AOV" STYLE="fork" />
      </node>

      <node ID="jm5v3-0870" TEXT="APP PROMOTION" STYLE="fork">
        <node ID="jm5v3-0871" TEXT="Mục đích: cài đặt hoặc hành động trong ứng dụng" STYLE="fork" />
        <node ID="jm5v3-0872" TEXT="Performance goal có thể gặp: App Installs; App Events; Value" STYLE="fork" />
        <node ID="jm5v3-0873" TEXT="Metric chính: App Installs; Cost per App Install; in-app events/value" STYLE="fork" />
        <node ID="jm5v3-0874" TEXT="Quan hệ với Business ROAS: phụ thuộc doanh thu ứng dụng và phạm vi GMV" STYLE="fork" />
      </node>

      <node ID="jm5v3-0880" TEXT="SALES" STYLE="fork">
        <node ID="jm5v3-0881" TEXT="Mục đích: tạo Purchase hoặc conversion gần doanh thu" STYLE="fork" />
        <node ID="jm5v3-0882" TEXT="Performance goal có thể gặp: Conversions; Value; Messaging Purchase Conversion" STYLE="fork" />
        <node ID="jm5v3-0883" TEXT="Metric chính: Purchases; Cost per Purchase; Orders Created; Orders Dispatched; Add to Cart; Initiate Checkout" STYLE="fork" />
        <node ID="jm5v3-0884" TEXT="Result indicator Joycat quan sát: actions:onsite_conversion.purchase" STYLE="fork" />
        <node ID="jm5v3-0885" TEXT="Business ROAS vẫn dùng GMV business; Meta-attributed Purchase chỉ là dữ liệu đo lường quảng cáo" STYLE="fork" />
      </node>

      <node ID="jm5v3-0890" TEXT="CÁCH AI ĐỌC MỘT CAMPAIGN" STYLE="fork">
        <node ID="jm5v3-0891" TEXT="Bước 1: đọc Campaign objective thật" STYLE="fork" />
        <node ID="jm5v3-0892" TEXT="Bước 2: đọc Performance goal / Optimization goal thật" STYLE="fork" />
        <node ID="jm5v3-0893" TEXT="Bước 3: đọc Result indicator và metric thực tế" STYLE="fork" />
        <node ID="jm5v3-0894" TEXT="Bước 4: chọn đúng nhóm công thức trong 5 nhóm metrics" STYLE="fork" />
        <node ID="jm5v3-0895" TEXT="Bước 5: đặt số của case rồi mới phân tích ROAS" STYLE="fork" />
        <node ID="jm5v3-0896" TEXT="Nếu thiếu Objective thật: chỉ ghi Suy luận từ Result indicator, không ghi Đã xác minh" STYLE="fork" />
      </node>
    </node>

    <node ID="jm5v3-0600" TEXT="QUY ƯỚC" STYLE="bubble" POSITION="left">
      <node ID="jm5v3-0601" TEXT="CTR và Rate dùng dạng thập phân: 2% = 0,02" STYLE="fork" />
      <node ID="jm5v3-0602" TEXT="r = một Result indicator cụ thể" STYLE="fork" />
      <node ID="jm5v3-0603" TEXT="Mỗi dòng là một công thức tương đương; không cộng các dòng" STYLE="fork" />
      <node ID="jm5v3-0604" TEXT="AOV = GMV / Purchases trong cùng phạm vi business" STYLE="fork" />
      <node ID="jm5v3-0605" TEXT="Thuận/nghịch chỉ đúng khi các biến còn lại được giữ nguyên" STYLE="fork" />
      <node ID="jm5v3-0606" TEXT="File chỉ mô tả công thức và quan hệ; chưa kết luận case Joycat" STYLE="fork" />
    </node>
  <node ID="jm5v3-0900" TEXT="PHƯƠNG PHÁP TƯ DUY &amp; CHỌN NHÓM SO SÁNH (v4.0)" POSITION="right"><node ID="jm5v3-0901" TEXT="1. Vai trò: Một nửa bộ logic; đọc song hành cùng DATA_MAPPING_COVERAGE_JOYCAT" /><node ID="jm5v3-0902" TEXT="2. Bốn tầng nhận thức: Toán học &amp; điều kiện → Khác biệt quan sát → Giả thuyết → Bằng chứng" /><node ID="jm5v3-0903" TEXT="3. Biến triệt tiêu đại số không chứng minh vai trò nhân quả (Impression vẫn là điều kiện tiên quyết)" /><node ID="jm5v3-0904" TEXT="4. Tỷ số tổng hợp không tự đồng nghĩa với conversion của cùng hành trình (Cohort)" /><node ID="jm5v3-0905" TEXT="5. Phân biệt rạch ròi: Meta Purchases (quy gán) vs Business Orders (đơn thực tế sau hủy/hoàn)" /><node ID="jm5v3-0906" TEXT="6. Nguyên tắc so sánh: Chiều muốn so thì khác nhau, các chiều còn lại phải kiểm soát tương đồng" /><node ID="jm5v3-0907" TEXT="7. Không máy móc nhân mọi metric với mọi chiều; không ép mọi nhánh phải giải trình ROAS" /><node ID="jm5v3-0908" TEXT="8. Minh họa 1: Đọc CPM theo nhiệm vụ quảng cáo (LAL hẹp CPM cao là bình thường nếu AOV/CVR bù đắp)" /><node ID="jm5v3-0909" TEXT="9. Minh họa 2: CTR cao và Mess rẻ chưa chắc tốt nếu chất lượng chuyển đổi đơn cuối phễu kém" /></node></node>
</map>