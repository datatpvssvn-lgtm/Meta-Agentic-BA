<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_DC76E9F0C0006E8F" TEXT="JOYCAT — Công thức 5 nhóm Metrics và Phương pháp đọc chỉ số" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_ABF365ABA3869BDE" TEXT="Liên kết trong bộ Joycat" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C42E658C41B28210" TEXT="Context Joycat · Current Intent · Dictionary đầu vào · KPI v3 · Metric Tree · Bộ 5 Metrics · Mapping/Coverage." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_277EEFBD585C0E73" TEXT="Định nghĩa trường chuẩn đặt tại Dictionary; file này dùng các định nghĩa đó theo vai trò riêng. Cập nhật liên kết và phân vai ngày 08/09/2026; không xác nhận lại toàn bộ raw data." />
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7C701676407EC7C3" TEXT="1. Vai trò trong công việc hiện tại" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CD83B07A73C41209" TEXT="Tài liệu này là một nửa của bộ logic phân tích marketing Joycat (đóng vai trò phương pháp tư duy, bối cảnh đọc và công thức toán học)." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_087C27209EDA7263" TEXT="Tài liệu này phải được đọc song hành cùng DATA_MAPPING_COVERAGE_JOYCAT.md (tài liệu quy định bốn chiều, sáu cặp, mapping và khả năng đáp ứng của dữ liệu thực tế)." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_44BF9272EECC6735" TEXT="Tài liệu này cho biết: *“Khi có câu hỏi, cần dùng công thức nào, đọc cùng chỉ số nào và tư duy phản biện theo những góc nhìn nào?”*" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_303723E9A9C3FC8C" TEXT="Tài liệu Data Mapping &amp; Coverage cho biết: *“Để trả lời câu hỏi đó, dataset hiện có những trường nào, mapping ra sao, phần nào làm được ngay và phần nào còn thiếu?”*" />
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_321A851181F44213" TEXT="2. Quy ước chung" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9398E5D38C334C9F" TEXT="Ký hiệu | Ý nghĩa" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_26849B5FE9060F47" TEXT="CTR, Rate | Dùng dạng thập phân: 2% = 0,02" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_684635631D4BA49E" TEXT="r | Một Result indicator cụ thể, ví dụ Messaging Conversation hoặc Meta Purchase event" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_76500A9E1CABCC3C" TEXT="Ads Cost | Amount Spent cùng phạm vi và cùng kỳ" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_348A9D6B90C0A64B" TEXT="GMV | GMV business cùng phạm vi và cùng kỳ với Ads Cost" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_13314B74F9EE4665" TEXT="AOV_business | GMV_business / business_orders_eligible" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_39F643C6F6CFFBB8" TEXT="Quan hệ thuận/nghịch | Quan hệ toán học logic khi các biến còn lại trong công thức được giữ nguyên" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8516C383F3FB3585" TEXT="Mỗi dòng công thức | Một cách biểu diễn tương đương; không cộng các dòng lại" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D32125029ECA7C38" TEXT="Business ROAS = GMV / Ads Cost&#10;Business ROAS = GMV / Amount Spent" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B8007C46A0F20174" TEXT="Lưu ý cốt lõi: GMV trong tài liệu này là GMV business do doanh nghiệp ghi nhận. Tuyệt đối không lấy giá trị chuyển đổi do Meta attribution ghi nhận (Purchases conversion value) để thay thế cho GMV business." />
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_337150C2734665ED" TEXT="3. Từ công thức toán học đến câu hỏi phân tích" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8F56EE25522A1DF6" TEXT="Để không rơi vào cái bẫy nhìn một con số rồi kết luận vội vã, người phân tích phải phân biệt rõ 4 tầng nhận thức:" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CEE939F14205C554" TEXT="Tầng 1: Quan hệ toán học và điều kiện sử dụng (Logic đại số)&#10;   ↓&#10;Tầng 2: Khác biệt quan sát được trong dữ liệu (Hiện tượng)&#10;   ↓&#10;Tầng 3: Giả thuyết giải thích sự khác biệt (Cơ chế có thể xảy ra)&#10;   ↓&#10;Tầng 4: Bằng chứng cần kiểm tra trước khi kết luận (Dữ liệu xác nhận/bác bỏ)" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_36FEE7DA870607B7" TEXT="Quan hệ toán học và điều kiện sử dụng:" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_754493F347C6715D" TEXT="Các công thức thuận/nghịch là đẳng thức toán học chính xác với điều kiện giả định *ceteris paribus* (các yếu tố khác giữ nguyên)." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7B153D15366373CA" TEXT="Không xóa bỏ các quan hệ toán học này vì chúng là nền tảng phân rã; nhưng không được nhầm lẫn quan hệ toán học có điều kiện với kết luận nguyên nhân trong thực tế." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E9A2F4A16141C1A6" TEXT="Biến bị triệt tiêu đại số không đồng nghĩa với việc không có vai trò:" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3D1B054AC2705D65" TEXT="Khi rút gọn công thức ROAS, biến Impressions có thể bị triệt tiêu ở cả tử và mẫu. Điều này chỉ có nghĩa là tỷ số ROAS không phụ thuộc trực tiếp vào độ lớn tuyệt đối của Impression nếu các tỷ lệ chuyển đổi giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7D8D23DD15C7B2D4" TEXT="Nhưng tuyệt đối không coi đây là bằng chứng rằng Impression không có vai trò nhân quả. Không có Impressions trong phạm vi phân phối đó thì không có Reach của chính phạm vi đó; không được suy ra rằng không có đơn business từ kênh khác." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E85AB2FDE23AA8F1" TEXT="Tỷ số tổng hợp không tự đồng nghĩa với hành trình người dùng (Cohort Conversion):" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_FCA1B6CC8293CA4A" TEXT="Khi lấy Tổng Purchases / Tổng Link Clicks trong một tháng, con số này là một tỷ số tổng hợp cùng phạm vi thời gian." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_216E83FA92E394A8" TEXT="Chưa được gọi đây là &quot;tỷ lệ chuyển đổi của cùng một đoàn hệ người dùng&quot; nếu hệ thống chưa có tracking ID định danh người dùng xuyên suốt từ click đến mua hàng." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_EB890F29632D8ED9" TEXT="Phân biệt rạch ròi Meta Purchases và Business Orders:" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_05FF0FC4889B84C8" TEXT="Purchases trong báo cáo Meta là số lượng sự kiện chuyển đổi được Meta phân bổ (attribution) theo cửa sổ thiết lập (ví dụ 7-day click, 1-day view)." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CBBF393CF0CB3D00" TEXT="Orders của doanh nghiệp là đơn hàng thực tế phát sinh trên hệ thống bán hàng (Shopee, TikTok, Website, POS), có tính đến việc hủy đơn, hoàn hàng, trùng đơn. Không bao giờ đồng nhất hai đại lượng này." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6AC11E3F22309F52" TEXT="4. Cách chọn góc nhìn và nhóm so sánh tương đồng" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_76D484E06D973515" TEXT="Không đọc CPM, CTR, CPC, Mess, Purchase hoặc ROAS đứng một mình. Phân tích chỉ có giá trị khi đặt vào một case cụ thể và so sánh với nhóm đối chứng phù hợp." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_054DC0FB48ED87C2" TEXT="4.1. Xác định phạm vi từ input trước khi so sánh" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3C581B674AE6B74E" TEXT="Đọc Data dictionary Joycat để hiểu từng trường và cách chọn case. Phần định nghĩa trường được quản lý ở input, không lặp lại ở bộ công thức." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_80F18EE4632FA21A" TEXT="Ở đây chỉ thực hiện: chọn câu hỏi và KPI → chọn phạm vi dữ liệu → chọn nhóm so sánh → kiểm tra nguồn theo Mapping/Coverage. Không bắt buộc mọi case có đủ mọi dimension; thiếu trường nào chỉ chặn câu hỏi cần trường đó." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7EB469CD6332D031" TEXT="4.2. Nguyên tắc so sánh đối chứng" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E5F8BA148F6D0AEC" TEXT="Chiều muốn so sánh thì phải khác nhau, các chiều còn lại phải kiểm soát:" FOLDED="true">
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_FE49267AB36708CA" TEXT="Khi muốn so sánh hiệu quả giữa 2 sản phẩm (ví dụ Cát Sắn NA vs Cát Khoáng MNX), chiều Sản phẩm đương nhiên khác nhau." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7F260D906FD10BEC" TEXT="Nhưng để phép so sánh có ý nghĩa, ta phải kiểm soát để các chiều còn lại tương đồng nhất có thể: cùng nền tảng Facebook, cùng mục tiêu Messaging, cùng kỳ tháng 04, cùng loại định dạng." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_DB932CC45C354748" TEXT="Nếu hai chiến dịch khác nhau ở cả Sản phẩm, cả Objective, cả Format và chạy ở hai tháng khác nhau, ta không thể quy chênh lệch hiệu quả cho riêng yếu tố sản phẩm." />
        </node>
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_706C5B803BE457F5" TEXT="Không máy móc nhân mọi metric với mọi chiều:" FOLDED="true">
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0C604A3DB4DC50CF" TEXT="Không ép mọi nhánh quảng cáo phân phối nhận biết phải lập tức giải trình Business ROAS. Mỗi nhánh đảm nhiệm một vai trò trong phễu." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_607CD62866FBFA00" TEXT="Các chiến dịch TOFU tập trung vào độ phủ chất lượng (Reach, CPM, Video View)." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_EE76D4370A0B18E7" TEXT="Các chiến dịch MOFU tập trung vào tương tác sâu và hội thoại (CTR, Messaging, Cost per Mess)." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_AE9D61DEC56445D1" TEXT="Các chiến dịch BOFU mới trực tiếp tối ưu cho hành động mua hàng (Cost per Purchase, ROAS)." />
        </node>
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_944100FC09AD0EDB" TEXT="Không ép mọi khách hàng đi qua cùng một chuỗi hành trình tuần tự:" FOLDED="true">
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0BCE9827F8163F39" TEXT="Chuỗi Impression → Click → Mess → Purchase là một khung tư duy phân tích, không phải là con đường duy nhất của mọi khách hàng." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B31F0573B642807E" TEXT="Có khách hàng thấy quảng cáo nhận biết trên Facebook (Impression), không bấm vào quảng cáo nhưng sau đó tự mở app Shopee tìm kiếm thương hiệu Joycat để mua hàng trực tiếp." />
        </node>
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5FA4A0E2A2C6952F" TEXT="Kết luận được phép khi thiếu thông tin:" FOLDED="true">
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4CC443C7AE673DFD" TEXT="Khi chưa có Publisher platform: Chỉ được kết luận về tổng hiệu quả trên toàn bộ vị trí Meta, không suy diễn cho riêng Instagram hay Facebook." />
          <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E1336E19ADDB7ED5" TEXT="Khi chưa có GMV business: Chỉ được mô tả chỉ số phân phối/kết quả Meta trong scope có dữ liệu; muốn đánh giá rẻ/đắt hoặc tối ưu vẫn cần nhóm so sánh và bằng chứng, tuyệt đối không kết luận chiến dịch đó &quot;tạo ra lợi nhuận cao hay thấp&quot;." />
        </node>
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5F4DCF5AF4992154" TEXT="5. Hai minh họa phương pháp tư duy (Không dùng số liệu)" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4015E475EB4E0066" TEXT="Lưu ý: Hai trường hợp dưới đây là ví dụ minh họa về phương pháp tư duy phân tích, không phải là kết luận hay số liệu thực tế của Joycat." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_FB375DE3AA7D584C" TEXT="Minh họa 1: Đọc CPM trong bối cảnh nhiệm vụ quảng cáo" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_BBC40C4C61C8256F" TEXT="Khi quan sát thấy Campaign A có CPM cao gấp đôi Campaign B, người phân tích chưa được phép vội kết luận &quot;Campaign A chạy kém và lãng phí tiền&quot;." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B207B16112B333FA" TEXT="Câu hỏi đúng cần đặt ra: Campaign A và B đang phục vụ nhiệm vụ gì và nhắm vào ai?" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_F400188CEC8DCCE8" TEXT="Phân tích bối cảnh: Nếu Campaign A đang nhắm vào tệp Lookalike 1% của những người mua hàng thường xuyên (tệp đối tượng hẹp, giá thầu đấu giá cao vì nhiều nhà quảng cáo cùng tranh chấp, nhưng tệp khách có túi tiền tốt và tỷ lệ chuyển đổi cao), việc CPM cao là cơ chế phân phối hoàn toàn hợp lý." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E2C367CDFC517DCF" TEXT="Bằng chứng cần kiểm tra: Kiểm tra xem tỷ lệ chuyển đổi ra đơn và giá trị đơn hàng (AOV_business) của Campaign A có đủ cao để bù đắp chi phí CPM cao đó hay không. Nếu Cost per Purchase cuối cùng của Campaign A vẫn thấp hơn và ROAS tốt hơn, thì Campaign A là một chiến dịch hiệu quả dù CPM rất cao." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C99B2EEBC9A39CF7" TEXT="Ngược lại: Nếu một chiến dịch Awareness với mục tiêu tiếp cận rộng (Broad) mà CPM lại tăng vọt bất thường, đó mới là hiện tượng cảnh báo (creative bị nhàm chán, cạnh tranh phiên đấu giá tăng đột biến hoặc tần suất phân phối bị lặp quá nhiều)." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5B7C42BBFA75953A" TEXT="Minh họa 2: Đánh giá chất lượng Messaging và ý nghĩa của CTR" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C8F4C12B56AFB54B" TEXT="Khi thấy một mẫu quảng cáo có CTR (tỷ lệ nhấp) rất cao và Cost per Messaging Conversation (chi phí trên mỗi tin nhắn) cực kỳ rẻ, người phân tích không được vội mừng rằng quảng cáo &quot;thành công rực rỡ&quot;." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B49EBD0251E42571" TEXT="Câu hỏi đúng cần đặt ra: Những người bấm vào nhắn tin đó có phải là khách hàng tiềm năng thực sự hay chỉ là tò mò / bấm nhầm?" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6B7BF6A4FF196130" TEXT="Phân tích bối cảnh: Một creative giật tít, gây sốc hoặc hứa hẹn ưu đãi không có thật có thể thu hút lượng click khổng lồ và kéo theo hàng trăm tin nhắn với chi phí rất rẻ. Nhưng khi đội ngũ bán hàng tiếp nhận, khách hàng có thể chỉ hỏi bâng quơ hoặc lập tức rời đi vì thất vọng." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3451E66A7F9762AB" TEXT="Bằng chứng cần kiểm tra: Đọc chỉ số chi phí tin nhắn cùng với các chỉ số tiếp theo: Tỷ lệ khách phản hồi lại (Messaging Replied), Tỷ lệ nhắn tin chuyển thành đơn (Mess → Order), và Doanh thu thực tế tạo ra từ kênh chat." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6F4E0C8174FDCCF3" TEXT="Nguyên tắc: Một chỉ số trung gian (CTR, Clicks, Tin nhắn) có rẻ đến đâu cũng không có giá trị nếu chất lượng đầu ra cuối cùng của hành trình không được bảo đảm." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2CCBC530C73EA1FA" TEXT="6. Các góc độ phân tích chi tiết" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_341D3D6C9F18279D" TEXT="Góc độ | Cần tách cụ thể | Câu hỏi cần trả lời" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8258882272AE650F" TEXT="Sản phẩm | Từng sản phẩm, nhóm sản phẩm, combo hoặc quảng cáo nhiều sản phẩm | Cùng loại Campaign, metric của sản phẩm nào khác biệt?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_95B7148CFBF0269B" TEXT="Campaign objective | Awareness, Engagement - Post Engagement, Engagement - Messaging, Sales - Purchase và Objective khác | Campaign đang yêu cầu Meta tìm loại kết quả nào?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_91F67F0483031DEE" TEXT="Cấu hình tối ưu | Campaign objective, Performance goal/Optimization goal và Result indicator | Metric đang đọc có đúng với mục tiêu và loại result của Campaign không?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D1E06E457A7C8BEC" TEXT="Phễu | TOFU, MOFU, BOFU và Shared/Mixed Funnel | Metric đang nằm ở tầng nào và có đang bị so sai tầng không?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9C98CA88BEB07D83" TEXT="Customer journey | Hiển thị → tiếp cận → click → nhắn tin → purchase → GMV | Điểm nào trong hành trình đang giữ hoặc làm mất kết quả?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_77C75E3AB4B2CE6D" TEXT="Nền tảng và điểm đến | Facebook, Instagram, Messenger/WhatsApp, website, Shopee hoặc kênh khác | Quảng cáo hiển thị ở đâu, khách được dẫn tới đâu và GMV được ghi nhận ở đâu?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_860CBBD22855C164" TEXT="Cấp quảng cáo | Campaign, Ad set và Ad | Chênh lệch xuất hiện ở chiến dịch, audience hay creative?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_193F087549162807" TEXT="Audience | Broad, Interest, Lookalike, Retargeting và nhóm khác | Giá phân phối và chất lượng hành động khác nhau thế nào giữa các tệp?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D93EBFD79123FF42" TEXT="Creative và phân phối | Video, ảnh, nội dung, placement và định dạng | Khác biệt đến từ nội dung hay vị trí phân phối?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0D36F832DA38B466" TEXT="Thời gian | Ngày, tuần, tháng, mùa sale và giai đoạn learning | Kết quả có ổn định hay chỉ xuất hiện trong một thời điểm?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B08CA3B691E0E4C1" TEXT="Nguồn dữ liệu | Meta delivery, Meta-attributed result và dữ liệu đơn hàng/GMV business | Các metrics có cùng kỳ, scope, grain và attribution không?" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_541B42237EC3F59A" TEXT="Funnel và journey dùng để đặt metric vào đúng vị trí" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D780F4BE1F5EEB02" TEXT="Vị trí phân tích | Metrics thường cần đọc | Chưa được phép kết luận" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E12571660F067517" TEXT="TOFU — phân phối và nhận biết | Impressions, Reach, Frequency, CPM, video views, estimated ad recall | Không mặc định CPM TOFU phải thấp hoặc cao hơn tầng khác" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_57424884BB7218F2" TEXT="MOFU — quan tâm và hành động trung gian | Clicks, Link Clicks, CTR, CPC, Post Engagements, Messaging Conversations Started, Cost per Messaging Conversation | Không mặc định click hoặc mess tốt sẽ tạo ra Purchase" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9FC6CAB235344932" TEXT="BOFU — hành động gần doanh thu | Purchases, Cost per Purchase, Orders, AOV_business, GMV và Business ROAS | Không dùng Meta-attributed Purchase hoặc value thay cho đơn và GMV business" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3E0C5DA97B1D409D" TEXT="Việc xếp metric vào TOFU, MOFU hoặc BOFU phục vụ cách đọc journey. Nó không tạo ra quy luật cố định rằng metric của tầng sau phải rẻ hơn tầng trước." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_88A0B85ACEEE33C6" TEXT="Bảng vai trò toán học — chưa phải kết luận case" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_15CBADAA7324EFBD" TEXT="Metric | Vai trò trong công thức ROAS | Cách đọc đúng" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_BBDAD400B1F68073" TEXT="CPM | Nằm ở mẫu số của góc nhìn Impression | Quan hệ nghịch chỉ khi Business Order Rate trên Impression và AOV_business giữ nguyên" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CEBE4D048A40AE9E" TEXT="CTR (link) | Nằm ở tử số của công thức toàn journey | Quan hệ thuận chỉ khi CPM, các tỷ lệ phía sau và AOV_business giữ nguyên" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E48EC0A89BF6673B" TEXT="CPC (link) | Nằm ở mẫu số của góc nhìn Click | Quan hệ nghịch chỉ khi Business Orders per Link Click và AOV_business giữ nguyên" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2A5BBF3DB7680A8B" TEXT="Tỷ lệ Link Click → Mess | Nằm ở tử số của nhánh Click → Mess | Quan hệ thuận chỉ khi các thành phần còn lại giữ nguyên" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B67418F3C38F9746" TEXT="Tỷ lệ Mess → Business Order | Nằm ở tử số của góc nhìn Mess | Quan hệ thuận chỉ khi Cost per Messaging Conversation và AOV_business giữ nguyên" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_DDF7AF837BAAC745" TEXT="AOV_business | Nằm ở tử số của các công thức ROAS | Quan hệ thuận chỉ khi chi phí và tỷ lệ còn lại giữ nguyên" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2100070508259A85" TEXT="Impressions | Có trong GMV và Ads Cost trước khi rút gọn | Quan hệ gián tiếp/phụ thuộc điều kiện; bị triệt tiêu khi thế đầy đủ công thức" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_51915CD3560D44FC" TEXT="Reach | Nối với Impressions qua Frequency | Quan hệ gián tiếp/phụ thuộc điều kiện; phải đọc cùng Frequency và CPM" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A057F7771F99A1C2" TEXT="Frequency | Nối Reach với Impressions | Không có quan hệ thuận hoặc nghịch cố định nếu chưa biết các biến khác" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_F085ECDC03966602" TEXT="Ví dụ: dữ liệu có thể xuất hiện case CPM TOFU cao hơn CPM BOFU, cũng có thể ngược lại. Chỉ được so sau khi tách đúng sản phẩm, objective, nền tảng, audience, thời gian, placement và attribution. Sau đó mới kiểm tra CTR, CPC, Messaging, Purchase, GMV và ROAS của chính các case đó." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A735880AFC08FD3D" TEXT="Trình tự phân tích một case" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_41B32C4B0CFFCF72" TEXT="Chọn đúng lát cắt cần so sánh." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9FA4CE4029470649" TEXT="Tính lại các metrics từ tổng tử số và tổng mẫu số trong lát cắt đó." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_F6607AB27E8430D2" TEXT="Đặt từng metric vào đúng vị trí của funnel/customer journey." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_944EEA4424763504" TEXT="So sánh với một case tương đồng hoặc với chính case đó ở kỳ khác." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C45DC0F9452498D1" TEXT="Xác định quan hệ toán học nào đang áp dụng và biến nào không được giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B456CD8A14A2E0DE" TEXT="Dùng dữ liệu để mô tả hiện tượng; chưa gọi đó là nguyên nhân nếu chưa có kiểm chứng." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D4F3A5D6B38206E8" TEXT="Công thức toàn phễu" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4BA6B06291382D69" TEXT="Business ROAS&#10;= CTR (link)&#10;× Tỷ lệ Link Click → Mess&#10;× Tỷ lệ Mess → Business Order&#10;× AOV_business&#10;× 1.000&#10;/ CPM" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_F16214F438709F6A" TEXT="Quan hệ toán học:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A169E4A57322F332" TEXT="Thuận với CTR (link), Tỷ lệ Link Click → Mess, Tỷ lệ Mess → Business Order và AOV_business khi các biến còn lại giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_1FCF54916AF9FDC2" TEXT="Nghịch với CPM khi các biến còn lại giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_70F28E318C25F38A" TEXT="Chưa kết luận ROAS của một Campaign trước khi thay dữ liệu của Campaign đó vào công thức." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_64BBE881C3017C2D" TEXT="7. Năm nhóm Metrics chi tiết" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3B7061BBB2705291" TEXT="7.1. Impressions&#10;Impressions = Reach × Frequency&#10;Impressions = Amount Spent × 1.000 / CPM&#10;Impressions = Clicks (all) / CTR (all)&#10;Impressions = Link Clicks / CTR (link)&#10;Impressions = Messaging Conversations Started / Messaging Conversation Rate&#10;Impressions = New Messaging Contacts / New Messaging Contact Rate trên Impression&#10;Impressions = business_orders_eligible / Business Order Rate trên Impression&#10;Impressions = Results (r) / Result Rate (r)" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_55CD3D1638B33ACC" TEXT="Liên hệ với Business ROAS" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_BE879DFE1D367D23" TEXT="GMV_business = Impressions × Business Order Rate trên Impression × AOV_business&#10;Ads Cost = Impressions × CPM / 1.000" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_1EC597E4FE64C9EF" TEXT="Thế vào công thức ROAS:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A9737CFD8B002796" TEXT="Business ROAS&#10;= Business Order Rate trên Impression × AOV_business × 1.000 / CPM" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7426349F8DEE66E1" TEXT="Impressions bị triệt tiêu. Vì vậy, Impressions có quan hệ gián tiếp/phụ thuộc điều kiện với ROAS, không mang một chiều thuận hoặc nghịch cố định." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A38F6560511E4881" TEXT="7.2. Reach" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_02D77F30A9EF1205" TEXT="Reach = Impressions / Frequency&#10;Reach = Amount Spent × 1.000 / (CPM × Frequency)&#10;Reach = Clicks (all) / (CTR (all) × Frequency)&#10;Reach = Link Clicks / (CTR (link) × Frequency)&#10;Reach = Messaging Conversations Started / (Messaging Conversation Rate × Frequency)&#10;Reach = New Messaging Contacts / (New Messaging Contact Rate trên Impression × Frequency)&#10;Reach = business_orders_eligible / (Business Order Rate trên Impression × Frequency)&#10;Reach = Results (r) / (Result Rate (r) × Frequency)&#10;Reach = Amount Spent × 1.000 / Cost per 1.000 People Reached" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_973112B1CCD6FA2C" TEXT="Liên hệ với Business ROAS" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B0301F98008496AF" TEXT="Impressions = Reach × Frequency&#10;&#10;GMV&#10;= Reach&#10;× Frequency&#10;× Business Order Rate trên Impression&#10;× AOV_business&#10;&#10;Ads Cost&#10;= Reach&#10;× Frequency&#10;× CPM&#10;/ 1.000" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_106EAE0E81D6CD74" TEXT="Thế vào công thức ROAS:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_727AC19619D1AF78" TEXT="Business ROAS&#10;= Business Order Rate trên Impression × AOV_business × 1.000 / CPM" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_19AC3D92CF08F556" TEXT="Reach và Frequency đều bị triệt tiêu. Hai metrics này có quan hệ gián tiếp/phụ thuộc điều kiện với ROAS." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CEACDE5F9C5AF0F3" TEXT="7.3. Click" FOLDED="true" COLOR="#548235">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_BB26116BE994F215" TEXT="7.3.1. Clicks (all)" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5280314EC32A6AC6" TEXT="Clicks (all) = Impressions × CTR (all)&#10;Clicks (all) = Amount Spent / CPC (all)&#10;CTR (all) = Clicks (all) / Impressions&#10;CPC (all) = Amount Spent / Clicks (all)&#10;CPM = CTR (all) × CPC (all) × 1.000" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D199B058047E75B5" TEXT="7.3.2. Link Clicks" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_13C40DCC30484C9B" TEXT="Link Clicks = Impressions × CTR (link)&#10;Link Clicks = Amount Spent / CPC (link)&#10;Link Clicks = Clicks (all) × Tỷ trọng Link Click&#10;Link Clicks = Messaging Conversations Started / Tỷ lệ Link Click → Mess&#10;Link Clicks = business_orders_eligible / Business Orders per Link Click&#10;CTR (link) = Link Clicks / Impressions&#10;CPC (link) = Amount Spent / Link Clicks&#10;CPM = CTR (link) × CPC (link) × 1.000" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8B8703F1E0C7CA3F" TEXT="7.3.3. Các tỷ lệ Click" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_F02AA60043524622" TEXT="Tỷ trọng Link Click = Link Clicks / Clicks (all)&#10;Business Orders per Link Click = business_orders_eligible / Link Clicks" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A4AA60415174C468" TEXT="Liên hệ với Business ROAS" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5D6BCC09069401BA" TEXT="GMV_business = Link Clicks × Business Orders per Link Click × AOV_business&#10;Ads Cost = Link Clicks × CPC (link)" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_638537C11668BAEA" TEXT="Thế vào công thức ROAS:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_733135E7CAC4370A" TEXT="Business ROAS&#10;= Business Orders per Link Click × AOV_business / CPC (link)" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5178291841233BAE" TEXT="Quan hệ toán học:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_68A7ABA89D50A830" TEXT="Thuận với Business Orders per Link Click và AOV_business khi biến còn lại giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0586FB2A31FD31B9" TEXT="Nghịch với CPC (link) khi các biến còn lại giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_583C51AEE1007E57" TEXT="Link Clicks có quan hệ gián tiếp/phụ thuộc điều kiện vì bị triệt tiêu khỏi công thức sau khi thế." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_37CFFDE012B90A49" TEXT="7.4. Mess — Messaging" FOLDED="true" COLOR="#2F5597">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_411212369DA5DD8E" TEXT="7.4.1. Messaging Conversations Started" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A259ACE2D21E99EE" TEXT="Messaging Conversations Started&#10;= Amount Spent / Cost per Messaging Conversation&#10;&#10;Messaging Conversations Started&#10;= Impressions × Messaging Conversation Rate&#10;&#10;Messaging Conversations Started&#10;= Link Clicks × Tỷ lệ Link Click → Mess&#10;&#10;Messaging Conversations Started&#10;= New Messaging Contacts / New Contact Rate trên Mess&#10;&#10;Messaging Conversations Started&#10;= business_orders_eligible / Tỷ lệ Mess → Business Order" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C9A6510500BF6F20" TEXT="7.4.2. Các tỷ lệ và chi phí Messaging" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0C62034065EC6F91" TEXT="Messaging Conversation Rate&#10;= Messaging Conversations Started / Impressions&#10;&#10;Tỷ lệ Link Click → Mess&#10;= Messaging Conversations Started / Link Clicks&#10;&#10;Cost per Messaging Conversation&#10;= Amount Spent / Messaging Conversations Started&#10;&#10;Cost per Messaging Conversation&#10;= CPM / (Messaging Conversation Rate × 1.000)&#10;&#10;Cost per Messaging Conversation&#10;= CPC (link) / Tỷ lệ Link Click → Mess" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2AAB5A5BF64FD08F" TEXT="7.4.3. New Messaging Contacts" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CA0E179B44065C4E" TEXT="New Messaging Contacts&#10;= Amount Spent / Cost per New Messaging Contact&#10;&#10;New Messaging Contacts&#10;= Messaging Conversations Started × New Contact Rate trên Mess&#10;&#10;New Contact Rate trên Mess&#10;= New Messaging Contacts / Messaging Conversations Started&#10;&#10;Cost per New Messaging Contact&#10;= Amount Spent / New Messaging Contacts&#10;&#10;Cost per New Messaging Contact&#10;= Cost per Messaging Conversation / New Contact Rate trên Mess" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_DAC7552DA676BE9D" TEXT="Liên hệ với Business ROAS" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3CB12DF4FD1D84C7" TEXT="GMV_business&#10;= Messaging Conversations Started&#10;× Tỷ lệ Mess → Business Order&#10;× AOV_business&#10;&#10;Ads Cost&#10;= Messaging Conversations Started&#10;× Cost per Messaging Conversation" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_81D92E822B565006" TEXT="Thế vào công thức ROAS:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_FDE842EFBF3E39C3" TEXT="Business ROAS&#10;= Tỷ lệ Mess → Business Order&#10;× AOV_business&#10;/ Cost per Messaging Conversation" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7FBF77AE383A1E6E" TEXT="Quan hệ toán học:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_41A0BCEA9AFA7AF3" TEXT="Thuận với Tỷ lệ Mess → Business Order và AOV_business khi biến còn lại giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0C3FF6C086BB5559" TEXT="Nghịch với Cost per Messaging Conversation khi các biến còn lại giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8D46787B6D5804C6" TEXT="Messaging Conversations Started có quan hệ gián tiếp/phụ thuộc điều kiện vì bị triệt tiêu sau khi thế." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_065907A2450CC55C" TEXT="7.5. Purchase Meta và đơn business" FOLDED="true" COLOR="#7030A0">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_DDB7FA5933C4E4BB" TEXT="7.5.1. Purchase event do Meta quy gán" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_26CCEF3EC9828605" TEXT="meta_purchases_attributed = Meta export field Purchases cùng scope, period và attribution&#10;Cost per Meta-attributed Purchase = Ads Cost cùng scope / meta_purchases_attributed&#10;business_orders_eligible dùng nguồn business riêng; không thay bằng Meta Purchase" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_23170A87912B55CF" TEXT="7.5.2. Đơn business và các tỷ lệ cầu nối" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C0A4E4A87DCB9ADA" TEXT="Business Order Rate trên Impression = business_orders_eligible / Impressions&#10;Business Orders per Link Click = business_orders_eligible / Link Clicks&#10;Tỷ lệ Mess → Business Order = business_orders_eligible / Messaging Conversations Started&#10;Cost per Business Order = Ads Cost / business_orders_eligible&#10;Chỉ gọi là conversion khi có bridge cùng population; nếu chưa có thì là tỷ số tổng hợp" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_24EBDBEE70764E78" TEXT="7.5.3. GMV, AOV_business và Business ROAS" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_04D0A2F1A7F7F170" TEXT="GMV_business = business_orders_eligible × AOV_business&#10;AOV_business = GMV_business / business_orders_eligible&#10;Business ROAS = GMV_business / Amount Spent" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_66F123DCE4D2F523" TEXT="Thế GMV_business = business_orders_eligible × AOV_business và Amount Spent = business_orders_eligible × Cost per Business Order:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A766EBD2C58EFBEB" TEXT="Business ROAS = AOV_business / Cost per Business Order" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8B792AC4BB6450FD" TEXT="Quan hệ toán học:" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E7DDEBF1E7B36266" TEXT="Thuận với AOV_business khi Cost per Business Order giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2348F0DA2C6ECEB9" TEXT="Nghịch với Cost per Business Order khi AOV_business giữ nguyên." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A3C768EF77108DCA" TEXT="business_orders_eligible bị triệt tiêu đại số; không vì vậy mà Meta Purchase thành đơn business." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_74A327BAB1BEB4B3" TEXT="Điều kiện: business_orders_eligible, AOV_business và GMV_business thuộc cùng tập đơn, kỳ và phạm vi." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_272830A7A4AE93BE" TEXT="8. CPM — CPC — CTR" FOLDED="true" COLOR="#8064A2">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_869573262AB8C7AB" TEXT="Theo Clicks (all)" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C0FD8419373797C9" TEXT="CPM = CPC (all) × CTR (all) × 1.000&#10;CPC (all) = CPM / (CTR (all) × 1.000)&#10;CTR (all) = CPM / (CPC (all) × 1.000)" />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_87846567732088A0" TEXT="Theo Link Clicks" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6D6D7BC0C8C92B5A" TEXT="CPM = CPC (link) × CTR (link) × 1.000&#10;CPC (link) = CPM / (CTR (link) × 1.000)&#10;CTR (link) = CPM / (CPC (link) × 1.000)" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2FD004B5A07DC155" TEXT="Các công thức trên là đẳng thức. Không kết luận một metric tạo ra metric khác nếu chưa xác định biến nào được giữ nguyên và biến nào thực tế thay đổi trong case." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_96FC095425DEB1D3" TEXT="9. Bốn góc nhìn toán học của Business ROAS" FOLDED="true" COLOR="#C65911">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_AEDDA557950A0500" TEXT="Góc nhìn Impression" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_AC18FC514EB963C1" TEXT="Business ROAS&#10;= Business Order Rate trên Impression × AOV_business × 1.000 / CPM" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_DDB4602A166015D5" TEXT="Thuận với Business Order Rate trên Impression và AOV_business." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_65B540506DE87797" TEXT="Nghịch với CPM." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E9473E68266B2F26" TEXT="Điều kiện: các biến còn lại giữ nguyên." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_54F723BBB4E59E62" TEXT="Góc nhìn Click" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D6F4873BABB31B38" TEXT="Business ROAS&#10;= Business Orders per Link Click × AOV_business / CPC (link)" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6EA7AAE33C971C6B" TEXT="Thuận với Business Orders per Link Click và AOV_business." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7D1155CAB9AC76DC" TEXT="Nghịch với CPC (link)." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4BAE42EFF1456AC6" TEXT="Điều kiện: các biến còn lại giữ nguyên." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_681D075126DB8C37" TEXT="Góc nhìn Mess" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_27B3B9CDF524F9B9" TEXT="Business ROAS&#10;= Tỷ lệ Mess → Business Order × AOV_business / Cost per Messaging Conversation" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9C634F551062B15B" TEXT="Thuận với Tỷ lệ Mess → Business Order và AOV_business." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_AA67B94DE5BDF2D7" TEXT="Nghịch với Cost per Messaging Conversation." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_BAC9E5A5164F4349" TEXT="Điều kiện: các biến còn lại giữ nguyên." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5383530CA306F8A1" TEXT="Góc nhìn Purchase" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8D60A9EC1B39A386" TEXT="Business ROAS = AOV_business / Cost per Business Order" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_632FEE531DF08A65" TEXT="Thuận với AOV_business." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4FA0FDA2B9980C81" TEXT="Nghịch với Cost per Purchase." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D742D063B6582934" TEXT="Điều kiện: biến còn lại giữ nguyên." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_51C46792D63223E7" TEXT="10. Campaign objective — Ngữ cảnh để chọn đúng công thức" FOLDED="true" COLOR="#5B9BD5">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_21B2E6B5C3D5504F" TEXT="Ba lớp không được trộn" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_59479F913FD57EED" TEXT="Campaign objective&#10;→ Performance goal / Optimization goal&#10;→ Result indicator trong báo cáo&#10;→ Metric cần đọc" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_29924FC5A42B5D4D" TEXT="Lớp | Ý nghĩa" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_BF1AF102DF7C0831" TEXT="Campaign objective | Mục tiêu kinh doanh được chọn ở cấp Campaign" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_1816F3CE7F7C3D1E" TEXT="Performance goal / Optimization goal | Hành động Meta được yêu cầu tối ưu ở cấp Ad set" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_FAC2D59E34D84235" TEXT="Result indicator | Loại kết quả được hiển thị trong báo cáo" />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3E2A8897B4A6499A" TEXT="Một Result indicator có thể gợi ý Campaign objective nhưng không đủ để xác nhận objective thật." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_44576A4159E53E15" TEXT="Awareness" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A68FEE9B1D6E2571" TEXT="Mục đích: làm nhiều người biết hoặc nhớ quảng cáo." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3FE54231791C1D7D" TEXT="Performance goal có thể gặp: Reach, Impressions, Ad Recall Lift." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_7198773218B851B1" TEXT="Metrics cần đọc: Reach, Impressions, Frequency, CPM, Estimated Ad Recallers và Cost per Estimated Ad Recall Result." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_835209BD0C63109D" TEXT="Result indicator đã quan sát trong dữ liệu Joycat: estimated_ad_recallers." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_10574D5F267ACEED" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9FFBC91B092816D9" TEXT="Traffic" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4B8DA6653E278D9C" TEXT="Mục đích: đưa người dùng tới một điểm đến." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6B9C025642A760D3" TEXT="Performance goal có thể gặp: Link Clicks hoặc Landing Page Views." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_93AFF98F84E9086E" TEXT="Metrics cần đọc: Link Clicks, CTR (link), CPC (link), Landing Page Views và Cost per Landing Page View." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_857066006E89B103" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A0472E01321835FB" TEXT="Engagement — Messaging" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_23582B3F3F5DD4CE" TEXT="Mục đích: tạo cuộc hội thoại và liên hệ nhắn tin." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_08DE794C8A6F1C7F" TEXT="Performance goal có thể gặp: Conversations hoặc messaging-related conversion." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_13B484B0A6F636E9" TEXT="Metrics cần đọc: Messaging Conversations Started, New Messaging Contacts, Cost per Messaging Conversation và Cost per New Messaging Contact." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D672638ACDE1CFC0" TEXT="Result indicator đã quan sát trong dữ liệu Joycat: actions:onsite_conversion.messaging_conversation_started_7d." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4BF29FA7C45AE721" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc Tỷ lệ Mess → Business Order và AOV_business." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_52D756A9FAC08A89" TEXT="Engagement — Post Engagement" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C8939392E338824B" TEXT="Mục đích: tạo tương tác với nội dung." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D728E3555549F098" TEXT="Performance goal có thể gặp: Post Engagement." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A05977E118F79132" TEXT="Metrics cần đọc: Post Engagements, Cost per Post Engagement và các interaction metrics nếu được export." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_3E5575A266CB5D05" TEXT="Result indicator đã quan sát trong dữ liệu Joycat: actions:post_engagement." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_A3DBD27B87C2247E" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C5A613BBEFE75DB0" TEXT="Engagement — Video Views" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_04F1B7F6221BC1B7" TEXT="Mục đích: tạo lượt xem video theo performance goal đã chọn." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_4DFF57C91328A496" TEXT="Performance goal có thể gặp: ThruPlay hoặc video views." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_93AA6AFDE461BC8D" TEXT="Metrics cần đọc: Video Plays, 3-second Video Plays, ThruPlays, Cost per ThruPlay và tỷ lệ xem video." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_1AA3759865B5197A" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc điều kiện." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_784DDFF25D98CAB5" TEXT="Leads" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9C1633C6CB450EDE" TEXT="Mục đích: thu thông tin của người quan tâm." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_75A1BE2C88219E27" TEXT="Performance goal có thể gặp: Leads, Quality Leads hoặc conversion qua form, website hay messaging." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_48CDCB548536A0CC" TEXT="Metrics cần đọc: Leads, Cost per Lead và Tỷ lệ Lead → Purchase nếu có nguồn business." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E848A9D32646B9AC" TEXT="Quan hệ với Business ROAS: gián tiếp/phụ thuộc tỷ lệ chốt và AOV_business." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C852444365B10B88" TEXT="App Promotion" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_E4C3866636B3CE5A" TEXT="Mục đích: tạo lượt cài đặt hoặc hành động trong ứng dụng." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_8E34F1112E42F656" TEXT="Performance goal có thể gặp: App Installs, App Events hoặc Value." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6E87EF9B1FACE7C0" TEXT="Metrics cần đọc: App Installs, Cost per App Install và các in-app events/value." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_81AD49FA69F03874" TEXT="Quan hệ với Business ROAS: phụ thuộc doanh thu ứng dụng và phạm vi GMV." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D7C2A4D598250F76" TEXT="Sales" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_61B32200CFDD743C" TEXT="Mục đích: tạo Purchase hoặc conversion gần doanh thu." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_28C8A7F1F01FCF80" TEXT="Performance goal có thể gặp: Conversions, Value hoặc Messaging Purchase Conversion." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_F8E9540380699B18" TEXT="Metrics cần đọc: Purchases, Cost per Purchase, Orders Created, Orders Dispatched, Add to Cart và Initiate Checkout." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_934E091393578DBB" TEXT="Result indicator đã quan sát trong dữ liệu Joycat: actions:onsite_conversion.purchase." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6ADD54486666A117" TEXT="Business ROAS vẫn dùng GMV business; Meta-attributed Purchase chỉ là dữ liệu đo lường quảng cáo." />
      </node>
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_5DD4D1906D1A6CEC" TEXT="Cách AI đọc một Campaign" FOLDED="true">
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_D0EA8C2C9771575F" TEXT="Đọc Campaign objective thật." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_66D35181597BE46C" TEXT="Đọc Performance goal hoặc Optimization goal thật." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_426322D32703B22F" TEXT="Đọc Result indicator và metric thực tế." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C72383F6211813A4" TEXT="Chọn đúng nhóm công thức trong tài liệu." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_11E2E6F2B7B06822" TEXT="Kiểm tra cùng kỳ, cùng scope và cùng attribution." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_31A1EBC35FC04295" TEXT="Đặt dữ liệu của case vào công thức rồi mới phân tích." />
        <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_9A68E3149BEF59A0" TEXT="Nếu thiếu Campaign objective thật, chỉ được ghi Suy luận từ Result indicator; không ghi Đã xác minh." />
      </node>
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_FA027ADBC6CC3AC6" TEXT="11. Sơ đồ công thức tổng quát" FOLDED="true" COLOR="#7F6000">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_2044208CF0579A54" TEXT="Amount Spent&#10;    tính Impressions: × 1.000 / CPM&#10;Impressions&#10;    tính Link Clicks: × CTR (link)&#10;Link Clicks&#10;    tính Messaging Conversations Started: × Tỷ lệ Link Click → Mess&#10;Messaging Conversations Started&#10;    tính Purchases: × Tỷ lệ Mess → Business Order&#10;Purchases&#10;    tính GMV: × AOV_business&#10;GMV&#10;    tính Business ROAS: / Amount Spent&#10;Business ROAS" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_01AD42507807CA60" TEXT="Sơ đồ trên là chuỗi đẳng thức dùng để biến đổi công thức. Nó chưa phải kết luận nguyên nhân và chưa nói ROAS của một case theo chiều nào." />
    </node>
    <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_41D577C338EEC1A5" TEXT="12. Điều kiện trước khi phân tích từng case" FOLDED="true" COLOR="#1F4E79">
      <font BOLD="true" SIZE="14" />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_B432B65D74B35F3F" TEXT="GMV và Amount Spent phải cùng kỳ và cùng phạm vi." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_6F7CFD8C5767961A" TEXT="business_orders_eligible, AOV_business và GMV_business phải thuộc cùng tập đơn business." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0BB7D2B32414F754" TEXT="Meta-attributed results phải giữ nguyên attribution khi so sánh." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_C5025803F420C6DC" TEXT="Không lấy trung bình CPM, CPC, Cost per Result hoặc ROAS theo từng dòng." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_CC0CFDA407B66062" TEXT="Không trộn dữ liệu Campaign, Ad set và Ad khi cộng tổng." />
      <node ID="CONG_THUC_5_METRICS_JOYCAT_v3_0D6C1C80F003D9DD" TEXT="Chỉ kết luận sau khi xác định biến nào giữ nguyên, biến nào thay đổi và dữ liệu có đủ để kiểm tra hay không." />
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
