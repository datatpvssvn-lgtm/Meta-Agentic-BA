<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="ROOT" TEXT="META — All Metrics Catalog">
    <node ID="SOURCE" TEXT="Nguồn: all metrics meta.xlsx | 395 cột duy nhất" STYLE="bubble" POSITION="left" />
    <node ID="NOTE" TEXT="Cost per ... là góc nhìn hiệu quả của Amount Spent; không cộng các cost metric với nhau" STYLE="bubble" POSITION="left" />
    <node ID="G1" TEXT="I. Dimension, định danh và cấu hình (không phải metric công thức) (50)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G1_1" TEXT="Campaign name" STYLE="fork" FOLDED="true">
        <node ID="G1_1_MEANING" TEXT="Hiểu: Tên Campaign do người chạy đặt." STYLE="fork" FOLDED="true" />
        <node ID="G1_1_USE" TEXT="Dùng: Đọc cách họ tổ chức hoặc đặt nhãn chiến dịch." STYLE="fork" FOLDED="true" />
        <node ID="G1_1_NOTE" TEXT="Lưu ý: Tên chỉ là nhãn, không tự chứng minh objective/phễu." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_2" TEXT="Ad set name" STYLE="fork" FOLDED="true">
        <node ID="G1_2_MEANING" TEXT="Hiểu: Tên Ad set do người chạy đặt." STYLE="fork" FOLDED="true" />
        <node ID="G1_2_USE" TEXT="Dùng: Đọc nhanh nhóm audience hoặc test." STYLE="fork" FOLDED="true" />
        <node ID="G1_2_NOTE" TEXT="Lưu ý: Tên không phải business fact." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_3" TEXT="Ad name" STYLE="fork" FOLDED="true">
        <node ID="G1_3_MEANING" TEXT="Hiểu: Tên Ad do người chạy đặt." STYLE="fork" FOLDED="true" />
        <node ID="G1_3_USE" TEXT="Dùng: Đọc nhanh creative hoặc test variant." STYLE="fork" FOLDED="true" />
        <node ID="G1_3_NOTE" TEXT="Lưu ý: Có thể trùng; ID là khóa chắc chắn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_4" TEXT="Page name" STYLE="fork" FOLDED="true">
        <node ID="G1_4_MEANING" TEXT="Hiểu: Tên Facebook Page." STYLE="fork" FOLDED="true" />
        <node ID="G1_4_USE" TEXT="Dùng: Đọc báo cáo dễ hiểu." STYLE="fork" FOLDED="true" />
        <node ID="G1_4_NOTE" TEXT="Lưu ý: Tên Page có thể đổi." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_5" TEXT="Objective" STYLE="fork" FOLDED="true">
        <node ID="G1_5_MEANING" TEXT="Hiểu: Mục tiêu Campaign Meta theo đuổi." STYLE="fork" FOLDED="true" />
        <node ID="G1_5_USE" TEXT="Dùng: Giải thích vì sao Results có thể là message, click hoặc purchase." STYLE="fork" FOLDED="true" />
        <node ID="G1_5_NOTE" TEXT="Lưu ý: Không tự bảo đảm kết quả business xảy ra." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_6" TEXT="Day" STYLE="fork" FOLDED="true">
        <node ID="G1_6_MEANING" TEXT="Hiểu: Ngày của dòng báo cáo khi export theo ngày." STYLE="fork" FOLDED="true" />
        <node ID="G1_6_USE" TEXT="Dùng: Theo dõi biến động theo ngày hoặc sale day." STYLE="fork" FOLDED="true" />
        <node ID="G1_6_NOTE" TEXT="Lưu ý: Chỉ kết luận theo ngày khi export có grain ngày." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_7" TEXT="Ads" STYLE="fork" FOLDED="true">
        <node ID="G1_7_MEANING" TEXT="Hiểu: Cột đối tượng quảng cáo theo layout export." STYLE="fork" FOLDED="true" />
        <node ID="G1_7_USE" TEXT="Dùng: Chỉ dùng làm nhãn nhận diện khi có giá trị." STYLE="fork" FOLDED="true" />
        <node ID="G1_7_NOTE" TEXT="Lưu ý: To be updated: cần xác nhận nó khác Ad name ở đâu." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_8" TEXT="Delivery status" STYLE="fork" FOLDED="true">
        <node ID="G1_8_MEANING" TEXT="Hiểu: Trạng thái delivery của dòng đang xem." STYLE="fork" FOLDED="true" />
        <node ID="G1_8_USE" TEXT="Dùng: Tách hiệu quả thấp với trường hợp không phân phối." STYLE="fork" FOLDED="true" />
        <node ID="G1_8_NOTE" TEXT="Lưu ý: Trạng thái có thể khác ở từng cấp." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_9" TEXT="Delivery level" STYLE="fork" FOLDED="true">
        <node ID="G1_9_MEANING" TEXT="Hiểu: Cấp xuất báo cáo: Campaign, Ad set hoặc Ad." STYLE="fork" FOLDED="true" />
        <node ID="G1_9_USE" TEXT="Dùng: Xác định grain của từng dòng trước khi cộng/tính." STYLE="fork" FOLDED="true" />
        <node ID="G1_9_NOTE" TEXT="Lưu ý: Không cộng chéo ba cấp dữ liệu." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_10" TEXT="Starts" STYLE="fork" FOLDED="true">
        <node ID="G1_10_MEANING" TEXT="Hiểu: Ngày được lên lịch bắt đầu chạy." STYLE="fork" FOLDED="true" />
        <node ID="G1_10_USE" TEXT="Dùng: Đọc thời điểm cấu hình dự kiến bắt đầu." STYLE="fork" FOLDED="true" />
        <node ID="G1_10_NOTE" TEXT="Lưu ý: Không bảo đảm quảng cáo đã delivery ngay ngày đó." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_11" TEXT="Ends" STYLE="fork" FOLDED="true">
        <node ID="G1_11_MEANING" TEXT="Hiểu: Ngày được lên lịch kết thúc, hoặc Ongoing." STYLE="fork" FOLDED="true" />
        <node ID="G1_11_USE" TEXT="Dùng: Đọc lịch chạy dự kiến." STYLE="fork" FOLDED="true" />
        <node ID="G1_11_NOTE" TEXT="Lưu ý: Không phải chắc chắn ngày có spend cuối cùng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_12" TEXT="Attribution setting" STYLE="fork" FOLDED="true">
        <node ID="G1_12_MEANING" TEXT="Hiểu: Cửa sổ/quy tắc Meta ghi công conversion cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_12_USE" TEXT="Dùng: So sánh conversion hoặc ROAS đúng ngữ cảnh." STYLE="fork" FOLDED="true" />
        <node ID="G1_12_NOTE" TEXT="Lưu ý: Attribution không phải doanh thu business tuyệt đối." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_13" TEXT="Ad delivery" STYLE="fork" FOLDED="true">
        <node ID="G1_13_MEANING" TEXT="Hiểu: Trạng thái delivery ở cấp Ad." STYLE="fork" FOLDED="true" />
        <node ID="G1_13_USE" TEXT="Dùng: Kiểm tra creative, approval và delivery của Ad." STYLE="fork" FOLDED="true" />
        <node ID="G1_13_NOTE" TEXT="Lưu ý: Cần xem cùng status Campaign và Ad set." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_14" TEXT="Ad set delivery" STYLE="fork" FOLDED="true">
        <node ID="G1_14_MEANING" TEXT="Hiểu: Trạng thái delivery ở cấp Ad set." STYLE="fork" FOLDED="true" />
        <node ID="G1_14_USE" TEXT="Dùng: Kiểm tra audience, budget, schedule hoặc learning." STYLE="fork" FOLDED="true" />
        <node ID="G1_14_NOTE" TEXT="Lưu ý: Không suy ra trạng thái từng Ad." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_15" TEXT="Campaign delivery" STYLE="fork" FOLDED="true">
        <node ID="G1_15_MEANING" TEXT="Hiểu: Trạng thái delivery ở cấp Campaign." STYLE="fork" FOLDED="true" />
        <node ID="G1_15_USE" TEXT="Dùng: Khoanh vùng lỗi/trạng thái cấp Campaign." STYLE="fork" FOLDED="true" />
        <node ID="G1_15_NOTE" TEXT="Lưu ý: Campaign active vẫn có thể có Ad set/Ad không chạy." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_17" TEXT="Performance goal" STYLE="fork" FOLDED="true">
        <node ID="G1_17_MEANING" TEXT="Hiểu: Kết quả/hành động Meta cố gắng tối ưu phân phối." STYLE="fork" FOLDED="true" />
        <node ID="G1_17_USE" TEXT="Dùng: Đọc đúng Result indicator và Cost per Result." STYLE="fork" FOLDED="true" />
        <node ID="G1_17_NOTE" TEXT="Lưu ý: Có thể chi tiết hơn Objective." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_18" TEXT="Account ID" STYLE="fork" FOLDED="true">
        <node ID="G1_18_MEANING" TEXT="Hiểu: Mã duy nhất của tài khoản quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_18_USE" TEXT="Dùng: Phân biệt hoặc nối dữ liệu giữa nhiều ad account." STYLE="fork" FOLDED="true" />
        <node ID="G1_18_NOTE" TEXT="Lưu ý: Không phải Page ID hay Business ID." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_19" TEXT="Account name" STYLE="fork" FOLDED="true">
        <node ID="G1_19_MEANING" TEXT="Hiểu: Tên tài khoản quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_19_USE" TEXT="Dùng: Đọc nhanh nguồn dữ liệu." STYLE="fork" FOLDED="true" />
        <node ID="G1_19_NOTE" TEXT="Lưu ý: Tên có thể đổi; dùng Account ID để nối dữ liệu." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_20" TEXT="Ad ID" STYLE="fork" FOLDED="true">
        <node ID="G1_20_MEANING" TEXT="Hiểu: Mã duy nhất của Ad." STYLE="fork" FOLDED="true" />
        <node ID="G1_20_USE" TEXT="Dùng: Nối hiệu quả với đúng creative." STYLE="fork" FOLDED="true" />
        <node ID="G1_20_NOTE" TEXT="Lưu ý: Dùng khi tìm đúng mẫu quảng cáo." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_21" TEXT="Ad set budget" STYLE="fork" FOLDED="true">
        <node ID="G1_21_MEANING" TEXT="Hiểu: Ngân sách cấu hình ở Ad set." STYLE="fork" FOLDED="true" />
        <node ID="G1_21_USE" TEXT="Dùng: Kiểm tra cách chia ngân sách xuống nhóm audience." STYLE="fork" FOLDED="true" />
        <node ID="G1_21_NOTE" TEXT="Lưu ý: Không phải Amount Spent; có thể trống khi dùng Campaign budget." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_22" TEXT="Ad set budget type" STYLE="fork" FOLDED="true">
        <node ID="G1_22_MEANING" TEXT="Hiểu: Loại ngân sách Ad set: Daily hoặc Lifetime." STYLE="fork" FOLDED="true" />
        <node ID="G1_22_USE" TEXT="Dùng: Hiểu đơn vị ngân sách cấu hình." STYLE="fork" FOLDED="true" />
        <node ID="G1_22_NOTE" TEXT="Lưu ý: Không cộng ngân sách Campaign và Ad set." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_23" TEXT="Ad set ID" STYLE="fork" FOLDED="true">
        <node ID="G1_23_MEANING" TEXT="Hiểu: Mã duy nhất của Ad set." STYLE="fork" FOLDED="true" />
        <node ID="G1_23_USE" TEXT="Dùng: Nối audience, placement, budget và delivery." STYLE="fork" FOLDED="true" />
        <node ID="G1_23_NOTE" TEXT="Lưu ý: Không cộng Amount Spent Campaign với Ad set." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_24" TEXT="Campaign budget" STYLE="fork" FOLDED="true">
        <node ID="G1_24_MEANING" TEXT="Hiểu: Ngân sách cấu hình ở Campaign." STYLE="fork" FOLDED="true" />
        <node ID="G1_24_USE" TEXT="Dùng: Biết ngân sách được quản lý ở đâu." STYLE="fork" FOLDED="true" />
        <node ID="G1_24_NOTE" TEXT="Lưu ý: Là mức đặt, không phải chi tiêu thực tế." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_25" TEXT="Campaign budget type" STYLE="fork" FOLDED="true">
        <node ID="G1_25_MEANING" TEXT="Hiểu: Loại ngân sách Campaign: Daily hoặc Lifetime." STYLE="fork" FOLDED="true" />
        <node ID="G1_25_USE" TEXT="Dùng: Hiểu cadence phân bổ ngân sách." STYLE="fork" FOLDED="true" />
        <node ID="G1_25_NOTE" TEXT="Lưu ý: Đọc cùng Campaign budget." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_26" TEXT="Campaign ID" STYLE="fork" FOLDED="true">
        <node ID="G1_26_MEANING" TEXT="Hiểu: Mã duy nhất của Campaign." STYLE="fork" FOLDED="true" />
        <node ID="G1_26_USE" TEXT="Dùng: Nối Campaign với Ad set và Ad." STYLE="fork" FOLDED="true" />
        <node ID="G1_26_NOTE" TEXT="Lưu ý: Dùng ID thay vì tên khi cần nối dữ liệu." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_27" TEXT="Body (ad settings)" STYLE="fork" FOLDED="true">
        <node ID="G1_27_MEANING" TEXT="Hiểu: Nội dung chính/caption của quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_27_USE" TEXT="Dùng: So sánh message, offer và creative angle." STYLE="fork" FOLDED="true" />
        <node ID="G1_27_NOTE" TEXT="Lưu ý: Có thể hiển thị khác tùy placement." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_28" TEXT="Preview link" STYLE="fork" FOLDED="true">
        <node ID="G1_28_MEANING" TEXT="Hiểu: Link xem trước quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_28_USE" TEXT="Dùng: Review đúng creative cần phân tích." STYLE="fork" FOLDED="true" />
        <node ID="G1_28_NOTE" TEXT="Lưu ý: Không phải destination URL hay metric performance." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_29" TEXT="Link (ad settings)" STYLE="fork" FOLDED="true">
        <node ID="G1_29_MEANING" TEXT="Hiểu: Link trong cấu hình quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_29_USE" TEXT="Dùng: Kiểm tra khách được dẫn đến đâu." STYLE="fork" FOLDED="true" />
        <node ID="G1_29_NOTE" TEXT="Lưu ý: Có thể redirect; đối chiếu CTA và destination thực tế." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_30" TEXT="Currency" STYLE="fork" FOLDED="true">
        <node ID="G1_30_MEANING" TEXT="Hiểu: Đồng tiền Meta dùng trong report." STYLE="fork" FOLDED="true" />
        <node ID="G1_30_USE" TEXT="Dùng: Đọc đúng spend, cost metric và conversion value." STYLE="fork" FOLDED="true" />
        <node ID="G1_30_NOTE" TEXT="Lưu ý: Phải khớp đơn vị khi đối soát nguồn khác." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_31" TEXT="Time zone" STYLE="fork" FOLDED="true">
        <node ID="G1_31_MEANING" TEXT="Hiểu: Múi giờ của account/report." STYLE="fork" FOLDED="true" />
        <node ID="G1_31_USE" TEXT="Dùng: Chốt ngày và kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_31_NOTE" TEXT="Lưu ý: Lệch múi giờ có thể làm lệch doanh thu theo ngày." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_32" TEXT="Description" STYLE="fork" FOLDED="true">
        <node ID="G1_32_MEANING" TEXT="Hiểu: Dòng mô tả phụ của quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_32_USE" TEXT="Dùng: Đọc thông điệp phụ." STYLE="fork" FOLDED="true" />
        <node ID="G1_32_NOTE" TEXT="Lưu ý: Có thể không hiện ở mọi placement." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_33" TEXT="headline" STYLE="fork" FOLDED="true">
        <node ID="G1_33_MEANING" TEXT="Hiểu: Tiêu đề quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_33_USE" TEXT="Dùng: So sánh hook hoặc offer ngắn." STYLE="fork" FOLDED="true" />
        <node ID="G1_33_NOTE" TEXT="Lưu ý: Có thể không hiện ở mọi placement." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_34" TEXT="Website URL" STYLE="fork" FOLDED="true">
        <node ID="G1_34_MEANING" TEXT="Hiểu: URL website trong cấu hình quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_34_USE" TEXT="Dùng: Phân biệt website với Messenger, Shop hoặc sàn." STYLE="fork" FOLDED="true" />
        <node ID="G1_34_NOTE" TEXT="Lưu ý: Không chứng minh khách đã vào hoặc đã mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_35" TEXT="call_to_action_type" STYLE="fork" FOLDED="true">
        <node ID="G1_35_MEANING" TEXT="Hiểu: Nút kêu gọi hành động, như SHOP_NOW hoặc MESSAGE_PAGE." STYLE="fork" FOLDED="true" />
        <node ID="G1_35_USE" TEXT="Dùng: Hiểu hành động Meta mời khách làm." STYLE="fork" FOLDED="true" />
        <node ID="G1_35_NOTE" TEXT="Lưu ý: CTA không chứng minh hành động đã xảy ra." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_36" TEXT="Image hash" STYLE="fork" FOLDED="true">
        <node ID="G1_36_MEANING" TEXT="Hiểu: Mã kỹ thuật nhận diện asset ảnh." STYLE="fork" FOLDED="true" />
        <node ID="G1_36_USE" TEXT="Dùng: Nối cùng một ảnh giữa các Ad." STYLE="fork" FOLDED="true" />
        <node ID="G1_36_NOTE" TEXT="Lưu ý: Không phải tên ảnh dễ đọc." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_37" TEXT="Video ID" STYLE="fork" FOLDED="true">
        <node ID="G1_37_MEANING" TEXT="Hiểu: Mã kỹ thuật video asset." STYLE="fork" FOLDED="true" />
        <node ID="G1_37_USE" TEXT="Dùng: Nối hoặc xác định đúng video creative." STYLE="fork" FOLDED="true" />
        <node ID="G1_37_NOTE" TEXT="Lưu ý: Không phải metric view/completion." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_38" TEXT="Image name" STYLE="fork" FOLDED="true">
        <node ID="G1_38_MEANING" TEXT="Hiểu: Tên asset ảnh nếu có." STYLE="fork" FOLDED="true" />
        <node ID="G1_38_USE" TEXT="Dùng: Review creative nhanh hơn Image hash." STYLE="fork" FOLDED="true" />
        <node ID="G1_38_NOTE" TEXT="Lưu ý: Có thể trống hoặc đặt tên không chuẩn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_39" TEXT="URL parameters" STYLE="fork" FOLDED="true">
        <node ID="G1_39_MEANING" TEXT="Hiểu: Tham số URL, thường là UTM hoặc biến động." STYLE="fork" FOLDED="true" />
        <node ID="G1_39_USE" TEXT="Dùng: Nối traffic Meta với analytics website nếu được giữ lại." STYLE="fork" FOLDED="true" />
        <node ID="G1_39_NOTE" TEXT="Lưu ý: UTM hỏng/thiếu thì khó nối session hoặc đơn hàng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_40" TEXT="Included custom audiences" STYLE="fork" FOLDED="true">
        <node ID="G1_40_MEANING" TEXT="Hiểu: Custom Audience được chọn để target." STYLE="fork" FOLDED="true" />
        <node ID="G1_40_USE" TEXT="Dùng: Biết một phần nguồn retargeting/customer list/LAL seed." STYLE="fork" FOLDED="true" />
        <node ID="G1_40_NOTE" TEXT="Lưu ý: Chưa cho thấy exclusion, expansion hay targeting rule." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_41" TEXT="Buying type" STYLE="fork" FOLDED="true">
        <node ID="G1_41_MEANING" TEXT="Hiểu: Cách mua inventory quảng cáo, thường là AUCTION." STYLE="fork" FOLDED="true" />
        <node ID="G1_41_USE" TEXT="Dùng: Hiểu nền tảng phân phối và bidding." STYLE="fork" FOLDED="true" />
        <node ID="G1_41_NOTE" TEXT="Lưu ý: Không phải bid thực tế hay Amount Spent." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_42" TEXT="Page ID" STYLE="fork" FOLDED="true">
        <node ID="G1_42_MEANING" TEXT="Hiểu: Mã duy nhất của Facebook Page." STYLE="fork" FOLDED="true" />
        <node ID="G1_42_USE" TEXT="Dùng: Phân biệt các Page hiển thị/quản lý quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_42_NOTE" TEXT="Lưu ý: Không phải Ad ID." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_43" TEXT="Reporting starts" STYLE="fork" FOLDED="true">
        <node ID="G1_43_MEANING" TEXT="Hiểu: Ngày đầu của kỳ report Meta tổng hợp." STYLE="fork" FOLDED="true" />
        <node ID="G1_43_USE" TEXT="Dùng: Xác định period của số liệu." STYLE="fork" FOLDED="true" />
        <node ID="G1_43_NOTE" TEXT="Lưu ý: Phải khớp kỳ khi sau này đối soát GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_44" TEXT="Reporting ends" STYLE="fork" FOLDED="true">
        <node ID="G1_44_MEANING" TEXT="Hiểu: Ngày cuối của kỳ report Meta tổng hợp." STYLE="fork" FOLDED="true" />
        <node ID="G1_44_USE" TEXT="Dùng: Xác định period của số liệu." STYLE="fork" FOLDED="true" />
        <node ID="G1_44_NOTE" TEXT="Lưu ý: Phải khớp kỳ khi sau này đối soát GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_33" TEXT="Excluded custom audiences" STYLE="fork" FOLDED="true">
        <node ID="G2_33_WHAT" TEXT="Hiểu: Tệp Custom Audience bị loại trừ khỏi target." STYLE="fork" FOLDED="true" />
        <node ID="G2_33_USE" TEXT="Dùng: Đọc rule loại trừ của setup audience." STYLE="fork" FOLDED="true" />
        <node ID="G2_33_LIMIT" TEXT="Lưu ý: Có tệp bị loại trừ không chứng minh rule đó đã chạy đúng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_34" TEXT="Bid" STYLE="fork" FOLDED="true">
        <node ID="G2_34_WHAT" TEXT="Hiểu: Giá bid cấu hình cho ad set/campaign nếu loại mua bán cho phép." STYLE="fork" FOLDED="true" />
        <node ID="G2_34_USE" TEXT="Dùng: Đọc cách họ kiểm soát auction." STYLE="fork" FOLDED="true" />
        <node ID="G2_34_LIMIT" TEXT="Lưu ý: Bid không phải Amount Spent và có thể trống." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_35" TEXT="Bid type" STYLE="fork" FOLDED="true">
        <node ID="G2_35_WHAT" TEXT="Hiểu: Kiểu bid Meta đang dùng." STYLE="fork" FOLDED="true" />
        <node ID="G2_35_USE" TEXT="Dùng: Đọc cách campaign tham gia auction." STYLE="fork" FOLDED="true" />
        <node ID="G2_35_LIMIT" TEXT="Lưu ý: Cần đọc cùng Optimization và Performance goal." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_36" TEXT="Results (initial)" STYLE="fork" FOLDED="true">
        <node ID="G2_36_WHAT" TEXT="Hiểu: Giá trị Results ban đầu theo layout export." STYLE="fork" FOLDED="true" />
        <node ID="G2_36_USE" TEXT="Dùng: Đối chiếu khi report có nhiều cách hiển thị Results." STYLE="fork" FOLDED="true" />
        <node ID="G2_36_LIMIT" TEXT="Lưu ý: Vẫn phải đọc cùng Result indicator." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_20" TEXT="Video name" STYLE="fork" FOLDED="true">
        <node ID="G6_20_WHAT" TEXT="Hiểu: Tên video được gắn trong quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_20_USE" TEXT="Dùng: Lọc và so sánh hiệu quả giữa các video creative." STYLE="fork" FOLDED="true" />
        <node ID="G6_20_LIMIT" TEXT="Lưu ý: Tên có thể trùng hoặc đổi; dùng Video ID khi cần nối dữ liệu chắc chắn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_1" TEXT="Result type" STYLE="fork" FOLDED="true">
        <node ID="G3_1_WHAT" TEXT="Hiểu: Loại kết quả Meta ghi nhận." STYLE="fork" FOLDED="true" />
        <node ID="G3_1_USE" TEXT="Dùng: Xác định Results đang đại diện cho hành động nào." STYLE="fork" FOLDED="true" />
        <node ID="G3_1_LIMIT" TEXT="Lưu ý: Không tự là đơn hàng business." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_4" TEXT="Result value type" STYLE="fork" FOLDED="true">
        <node ID="G3_4_WHAT" TEXT="Hiểu: Kiểu value được Meta gắn với Results." STYLE="fork" FOLDED="true" />
        <node ID="G3_4_USE" TEXT="Dùng: Đọc đúng ý nghĩa khi Result có value." STYLE="fork" FOLDED="true" />
        <node ID="G3_4_LIMIT" TEXT="Lưu ý: Không dùng thay GMV/revenue nếu chưa đối soát." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G2" TEXT="A. Phân phối, nhận biết và auction efficiency (17)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G2_1" TEXT="Reach" STYLE="fork" FOLDED="true">
        <node ID="G2_1_WHAT" TEXT="Reach là số Meta Accounts đã thấy quảng cáo ít nhất một lần." STYLE="fork" FOLDED="true" />
        <node ID="G2_1_USE" TEXT="Metric này dùng để đọc độ phủ của quảng cáo tới tệp người dùng khác nhau." STYLE="fork" FOLDED="true" />
        <node ID="G2_1_LIMIT" TEXT="Reach = Số Meta Accounts duy nhất thấy quảng cáo ít nhất một lần." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_2" TEXT="Frequency" STYLE="fork" FOLDED="true">
        <node ID="G2_2_WHAT" TEXT="Frequency là số lần trung bình một Meta Account trong Reach đã thấy quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_2_USE" TEXT="Metric này dùng để kiểm tra tệp có đang thấy quảng cáo lặp lại quá nhiều hay không." STYLE="fork" FOLDED="true" />
        <node ID="G2_2_LIMIT" TEXT="Frequency = Impressions / Reach." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_3" TEXT="Results" STYLE="fork" FOLDED="true">
        <node ID="G2_3_WHAT" TEXT="Results là số kết quả Meta ghi nhận theo mục tiêu hoặc performance goal của quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_3_USE" TEXT="Metric này chỉ có nghĩa khi đọc cùng Result indicator để biết Meta đang gọi result là gì." STYLE="fork" FOLDED="true" />
        <node ID="G2_3_LIMIT" TEXT="Results không tự đồng nghĩa đơn hàng thật hoặc GMV business." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_4" TEXT="Amount spent (VND)" STYLE="fork" FOLDED="true">
        <node ID="G2_4_WHAT" TEXT="Amount Spent là tổng tiền Meta đã chi trong kỳ báo cáo, đơn vị VND." STYLE="fork" FOLDED="true" />
        <node ID="G2_4_USE" TEXT="Đây là chi phí gốc để nhìn Ads Cost và tính các cost metric khác." STYLE="fork" FOLDED="true" />
        <node ID="G2_4_LIMIT" TEXT="Amount Spent không được cộng chéo giữa Campaign, Ad set và Ad." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_5" TEXT="Cost per result" STYLE="fork" FOLDED="true">
        <node ID="G2_5_WHAT" TEXT="Cost per result là chi phí trung bình để Meta ghi nhận một lượt result, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_5_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_5_LIMIT" TEXT="Cost per result = Amount Spent / result." STYLE="fork" FOLDED="true" />
        <node ID="G2_5_HIGH" TEXT="Khi cao, có thể do: CPM cao; quảng cáo tạo ít result trên mỗi impression; audience chưa đúng nhu cầu; creative hoặc ưu đãi chưa đủ thuyết phục; điểm đến có ma sát; hoặc Result indicator đang là một hành động khó. Đây là giả thuyết, phải đọc cùng Result indicator, CPM và result rate." STYLE="fork" FOLDED="true" />
        <node ID="G2_5_LOW" TEXT="Khi thấp, có thể do: giá mua hiển thị thấp; quảng cáo tạo nhiều result trên mỗi impression; audience có tín hiệu nhu cầu; creative, ưu đãi và CTA phù hợp; hoặc Meta đang tối ưu tốt cho đúng event. CPR thấp chưa tự nói result có chất lượng hay tạo đơn thật." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_6" TEXT="CPM (cost per 1,000 impressions)" STYLE="fork" FOLDED="true">
        <node ID="G2_6_WHAT" TEXT="CPM là chi phí trung bình để quảng cáo có 1.000 impressions." STYLE="fork" FOLDED="true" />
        <node ID="G2_6_USE" TEXT="Metric này dùng để đọc giá mua hiển thị trong auction Meta." STYLE="fork" FOLDED="true" />
        <node ID="G2_6_LIMIT" TEXT="CPM = Amount Spent / Impressions × 1.000." STYLE="fork" FOLDED="true" />
        <node ID="G2_6_HIGH" TEXT="Khi cao, có thể do: nhiều advertiser tranh cùng audience; audience hẹp, cao cấp hoặc có giá trị; đúng mùa sale, ngày lễ hay kỳ cạnh tranh mạnh; placement khan hiếm; mục tiêu tối ưu khó; hoặc Meta đánh giá xác suất hành động/chất lượng quảng cáo chưa đủ tốt. CPM cao không tự đồng nghĩa ads tệ nếu CTR hoặc result rate đủ cao." STYLE="fork" FOLDED="true" />
        <node ID="G2_6_LOW" TEXT="Khi thấp, có thể do: audience rộng; ít cạnh tranh; placement có inventory rẻ; thời điểm nhu cầu quảng cáo thấp; hoặc Meta tìm được nhiều cơ hội hiển thị. CPM thấp không tự đồng nghĩa hiệu quả nếu người xem không click, không nhắn hoặc không chuyển đổi." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_7" TEXT="Views" STYLE="fork" FOLDED="true">
        <node ID="G2_7_WHAT" TEXT="Views là số lượt xem theo định nghĩa của layout report đang export." STYLE="fork" FOLDED="true" />
        <node ID="G2_7_USE" TEXT="Metric này cần đọc cùng tên field liên quan vì Views có thể khác Video plays hoặc Content views." STYLE="fork" FOLDED="true" />
        <node ID="G2_7_LIMIT" TEXT="Không dùng Views để kết luận người dùng đã mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_8" TEXT="Gross impressions (includes invalid impressions from non-human traffic)" STYLE="fork" FOLDED="true">
        <node ID="G2_8_WHAT" TEXT="Gross impressions là tổng impressions, bao gồm cả lượt Meta xác định là invalid/non-human traffic." STYLE="fork" FOLDED="true" />
        <node ID="G2_8_USE" TEXT="Metric này chỉ dùng khi cần đối chiếu số gross của report." STYLE="fork" FOLDED="true" />
        <node ID="G2_8_LIMIT" TEXT="Không thay Gross impressions cho Impressions chuẩn khi phân tích người dùng thật." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_9" TEXT="Auto-refresh impressions" STYLE="fork" FOLDED="true">
        <node ID="G2_9_WHAT" TEXT="Auto-refresh impressions là impressions phát sinh khi placement tự tải lại quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_9_USE" TEXT="Metric này giúp tách nguồn hiển thị trong những report cần soi delivery." STYLE="fork" FOLDED="true" />
        <node ID="G2_9_LIMIT" TEXT="Nó không cho biết người dùng có chú ý tới quảng cáo hay không." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_10" TEXT="Cost per 1,000 Meta accounts reached" STYLE="fork" FOLDED="true">
        <node ID="G2_10_WHAT" TEXT="Cost per 1,000 Meta accounts reached là chi phí trung bình để Meta ghi nhận một lượt 1,000 Meta accounts reached, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_10_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_10_LIMIT" TEXT="Cost per 1,000 Meta accounts reached = Amount Spent / 1,000 Meta accounts reached × 1.000." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_11" TEXT="Quality ranking" STYLE="fork" FOLDED="true">
        <node ID="G2_11_WHAT" TEXT="Quality ranking là xếp hạng chất lượng quảng cáo so với quảng cáo cạnh tranh cùng tệp." STYLE="fork" FOLDED="true" />
        <node ID="G2_11_USE" TEXT="Metric này gợi ý creative có bị Meta đánh giá thấp về chất lượng hay không." STYLE="fork" FOLDED="true" />
        <node ID="G2_11_LIMIT" TEXT="Đây là ranking tương đối, không phải điểm tuyệt đối hoặc nguyên nhân gốc." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_12" TEXT="Engagement rate ranking" STYLE="fork" FOLDED="true">
        <node ID="G2_12_WHAT" TEXT="Engagement rate ranking là xếp hạng tỷ lệ tương tác dự kiến so với quảng cáo cạnh tranh cùng tệp." STYLE="fork" FOLDED="true" />
        <node ID="G2_12_USE" TEXT="Metric này gợi ý quảng cáo có đủ thu hút người xem trong auction hay không." STYLE="fork" FOLDED="true" />
        <node ID="G2_12_LIMIT" TEXT="Nó không phải tỷ lệ tương tác thực tế và không phải kết quả business." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_13" TEXT="Conversion rate ranking" STYLE="fork" FOLDED="true">
        <node ID="G2_13_WHAT" TEXT="Conversion rate ranking là xếp hạng tỷ lệ chuyển đổi dự kiến so với quảng cáo cạnh tranh cùng tệp." STYLE="fork" FOLDED="true" />
        <node ID="G2_13_USE" TEXT="Metric này gợi ý khả năng conversion của quảng cáo trong auction Meta." STYLE="fork" FOLDED="true" />
        <node ID="G2_13_LIMIT" TEXT="Nó không phải conversion rate business; event tối ưu quyết định ý nghĩa của ranking." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_18" TEXT="Cost per unique click (all)" STYLE="fork" FOLDED="true">
        <node ID="G2_18_WHAT" TEXT="Cost per unique click (all) là chi phí trung bình để Meta ghi nhận một lượt một tài khoản Meta nhấp ít nhất một lần, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_18_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_18_LIMIT" TEXT="Cost per unique click (all) = Amount Spent / Unique clicks (all)." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_19" TEXT="Estimated ad recall lift (people)" STYLE="fork" FOLDED="true">
        <node ID="G2_19_WHAT" TEXT="Estimated ad recall lift (people) là số người Meta ước tính có thêm khả năng nhớ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_19_USE" TEXT="Metric này phục vụ campaign tối ưu cho ad recall hoặc nhận biết." STYLE="fork" FOLDED="true" />
        <node ID="G2_19_LIMIT" TEXT="Đây là estimate theo mô hình Meta, không phải khảo sát toàn bộ khách hàng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_20" TEXT="Estimated ad recall lift rate" STYLE="fork" FOLDED="true">
        <node ID="G2_20_WHAT" TEXT="Estimated ad recall lift rate là tỷ lệ Meta ước tính tăng khả năng nhớ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_20_USE" TEXT="Metric này dùng để đọc hiệu quả nhận biết khi campaign có mục tiêu phù hợp." STYLE="fork" FOLDED="true" />
        <node ID="G2_20_LIMIT" TEXT="Nó không cho biết khách có ý định mua hay không." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_21" TEXT="Cost per ad recall lift" STYLE="fork" FOLDED="true">
        <node ID="G2_21_WHAT" TEXT="Cost per ad recall lift là chi phí trung bình để Meta ghi nhận một lượt ad recall lift, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_21_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_21_LIMIT" TEXT="Cost per ad recall lift = Amount Spent / ad recall lift." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G3" TEXT="F. Conversion, thương mại và giá trị Meta ghi nhận (69)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G3_2" TEXT="Result rate" STYLE="fork" FOLDED="true">
        <node ID="G3_2_WHAT" TEXT="Result rate là số lượt người dùng result rate, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_2_USE" TEXT="Metric này đếm các event Result rate được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_2_LIMIT" TEXT="Result rate = Tổng số event Result rate được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_3" TEXT="Average purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_3_WHAT" TEXT="Average purchases conversion value là tổng value của các lượt average purchases, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_3_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Average purchases; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_3_LIMIT" TEXT="Average purchases conversion value = Tổng value của tất cả event Average purchases được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_5" TEXT="Results value" STYLE="fork" FOLDED="true">
        <node ID="G3_5_WHAT" TEXT="Results value là tổng value của các lượt results, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_5_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Results; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_5_LIMIT" TEXT="Results value = Tổng value của tất cả event Results được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_6" TEXT="Results ROAS" STYLE="fork" FOLDED="true">
        <node ID="G3_6_WHAT" TEXT="Results ROAS là tỷ lệ giữa conversion value của các lượt results roas và Amount Spent, được Meta attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_6_USE" TEXT="Metric này phản ánh ROAS theo dữ liệu Meta ghi nhận, không phải ROAS business đã đối soát." STYLE="fork" FOLDED="true" />
        <node ID="G3_6_LIMIT" TEXT="Results ROAS = Results ROAS Conversion Value / Amount Spent" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_7" TEXT="Adds of payment info" STYLE="fork" FOLDED="true">
        <node ID="G3_7_WHAT" TEXT="Adds of payment info là số lượt người dùng thêm thông tin thanh toán, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_7_USE" TEXT="Metric này đếm các event Add Payment Info được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_7_LIMIT" TEXT="Adds of payment info = Tổng số event Add Payment Info được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_8" TEXT="Cost per add of payment info" STYLE="fork" FOLDED="true">
        <node ID="G3_8_WHAT" TEXT="Cost per add of payment info là chi phí trung bình cho mỗi lượt người dùng thêm thông tin thanh toán, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_8_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Adds of payment info; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_8_LIMIT" TEXT="Cost per add of payment info = Amount Spent / Adds of payment info" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_9" TEXT="Adds of payment info conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_9_WHAT" TEXT="Adds of payment info conversion value là tổng value của các lượt thêm thông tin thanh toán, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_9_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Add Payment Info; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_9_LIMIT" TEXT="Adds of payment info conversion value = Tổng value của tất cả event Add Payment Info được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_10" TEXT="Adds to cart" STYLE="fork" FOLDED="true">
        <node ID="G3_10_WHAT" TEXT="Adds to cart là số lượt người dùng thêm sản phẩm vào giỏ hàng, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_10_USE" TEXT="Metric này đếm các event Add To Cart được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_10_LIMIT" TEXT="Adds to cart = Tổng số event Add To Cart được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_11" TEXT="Cost per add to cart" STYLE="fork" FOLDED="true">
        <node ID="G3_11_WHAT" TEXT="Cost per add to cart là chi phí trung bình cho mỗi lượt người dùng thêm sản phẩm vào giỏ hàng, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_11_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Adds to cart; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_11_LIMIT" TEXT="Cost per add to cart = Amount Spent / Adds to cart" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_12" TEXT="Adds to cart conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_12_WHAT" TEXT="Adds to cart conversion value là tổng value của các lượt thêm sản phẩm vào giỏ hàng, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_12_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Add To Cart; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_12_LIMIT" TEXT="Adds to cart conversion value = Tổng value của tất cả event Add To Cart được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_13" TEXT="Adds to wishlist" STYLE="fork" FOLDED="true">
        <node ID="G3_13_WHAT" TEXT="Adds to wishlist là số lượt người dùng thêm sản phẩm vào danh sách yêu thích, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_13_USE" TEXT="Metric này đếm các event Add To Wishlist được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_13_LIMIT" TEXT="Adds to wishlist = Tổng số event Add To Wishlist được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_14" TEXT="Cost per add to wishlist" STYLE="fork" FOLDED="true">
        <node ID="G3_14_WHAT" TEXT="Cost per add to wishlist là chi phí trung bình cho mỗi lượt người dùng thêm sản phẩm vào danh sách yêu thích, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_14_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Adds to wishlist; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_14_LIMIT" TEXT="Cost per add to wishlist = Amount Spent / Adds to wishlist" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_15" TEXT="Adds to wishlist conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_15_WHAT" TEXT="Adds to wishlist conversion value là tổng value của các lượt thêm sản phẩm vào danh sách yêu thích, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_15_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Add To Wishlist; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_15_LIMIT" TEXT="Adds to wishlist conversion value = Tổng value của tất cả event Add To Wishlist được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_16" TEXT="Applications submitted" STYLE="fork" FOLDED="true">
        <node ID="G3_16_WHAT" TEXT="Applications submitted là số lượt người dùng gửi đơn đăng ký, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_16_USE" TEXT="Metric này đếm các event Submit Application được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_16_LIMIT" TEXT="Applications submitted = Tổng số event Submit Application được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_17" TEXT="Cost per application submitted" STYLE="fork" FOLDED="true">
        <node ID="G3_17_WHAT" TEXT="Cost per application submitted là chi phí trung bình cho mỗi lượt người dùng gửi đơn đăng ký, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_17_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Applications submitted; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_17_LIMIT" TEXT="Cost per application submitted = Amount Spent / Applications submitted" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_18" TEXT="Submit application conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_18_WHAT" TEXT="Submit application conversion value là tổng value của các lượt submit application, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_18_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Submit application; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_18_LIMIT" TEXT="Submit application conversion value = Tổng value của tất cả event Submit application được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_19" TEXT="Appointments scheduled" STYLE="fork" FOLDED="true">
        <node ID="G3_19_WHAT" TEXT="Appointments scheduled là số lượt người dùng đặt lịch hẹn, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_19_USE" TEXT="Metric này đếm các event Schedule được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_19_LIMIT" TEXT="Appointments scheduled = Tổng số event Schedule được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_20" TEXT="Cost per appointment scheduled" STYLE="fork" FOLDED="true">
        <node ID="G3_20_WHAT" TEXT="Cost per appointment scheduled là chi phí trung bình cho mỗi lượt người dùng đặt lịch hẹn, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_20_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Appointments scheduled; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_20_LIMIT" TEXT="Cost per appointment scheduled = Amount Spent / Appointments scheduled" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_21" TEXT="Appointments scheduled conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_21_WHAT" TEXT="Appointments scheduled conversion value là tổng value của các lượt đặt lịch hẹn, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_21_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Schedule; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_21_LIMIT" TEXT="Appointments scheduled conversion value = Tổng value của tất cả event Schedule được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_22" TEXT="Checkouts initiated" STYLE="fork" FOLDED="true">
        <node ID="G3_22_WHAT" TEXT="Checkouts initiated là số lượt người dùng bắt đầu thanh toán, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_22_USE" TEXT="Metric này đếm các event Initiate Checkout được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_22_LIMIT" TEXT="Checkouts initiated = Tổng số event Initiate Checkout được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_23" TEXT="Cost per checkout initiated" STYLE="fork" FOLDED="true">
        <node ID="G3_23_WHAT" TEXT="Cost per checkout initiated là chi phí trung bình cho mỗi lượt người dùng bắt đầu thanh toán, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_23_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Checkouts initiated; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_23_LIMIT" TEXT="Cost per checkout initiated = Amount Spent / Checkouts initiated" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_24" TEXT="Checkouts initiated conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_24_WHAT" TEXT="Checkouts initiated conversion value là tổng value của các lượt bắt đầu thanh toán, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_24_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Initiate Checkout; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_24_LIMIT" TEXT="Checkouts initiated conversion value = Tổng value của tất cả event Initiate Checkout được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_25" TEXT="Contacts" STYLE="fork" FOLDED="true">
        <node ID="G3_25_WHAT" TEXT="Contacts là số lượt người dùng liên hệ doanh nghiệp, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_25_USE" TEXT="Metric này đếm các event Contact được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_25_LIMIT" TEXT="Contacts = Tổng số event Contact được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_26" TEXT="Cost per contact" STYLE="fork" FOLDED="true">
        <node ID="G3_26_WHAT" TEXT="Cost per contact là chi phí trung bình cho mỗi lượt người dùng liên hệ doanh nghiệp, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_26_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Contacts; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_26_LIMIT" TEXT="Cost per contact = Amount Spent / Contacts" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_27" TEXT="Contact conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_27_WHAT" TEXT="Contact conversion value là tổng value của các lượt liên hệ doanh nghiệp, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_27_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Contact; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_27_LIMIT" TEXT="Contact conversion value = Tổng value của tất cả event Contact được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_28" TEXT="Content views" STYLE="fork" FOLDED="true">
        <node ID="G3_28_WHAT" TEXT="Content views là số lượt người dùng xem nội dung, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_28_USE" TEXT="Metric này đếm các event View Content được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_28_LIMIT" TEXT="Content views = Tổng số event View Content được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_29" TEXT="Cost per content view" STYLE="fork" FOLDED="true">
        <node ID="G3_29_WHAT" TEXT="Cost per content view là chi phí trung bình cho mỗi lượt người dùng xem nội dung, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_29_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Content views; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_29_LIMIT" TEXT="Cost per content view = Amount Spent / Content views" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_30" TEXT="Content views conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_30_WHAT" TEXT="Content views conversion value là tổng value của các lượt xem nội dung, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_30_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event View Content; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_30_LIMIT" TEXT="Content views conversion value = Tổng value của tất cả event View Content được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_31" TEXT="Custom events" STYLE="fork" FOLDED="true">
        <node ID="G3_31_WHAT" TEXT="Custom events là số lượt người dùng thực hiện custom event, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_31_USE" TEXT="Metric này đếm các event Custom Event được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_31_LIMIT" TEXT="Custom events = Tổng số event Custom Event được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_32" TEXT="Cost per custom event" STYLE="fork" FOLDED="true">
        <node ID="G3_32_WHAT" TEXT="Cost per custom event là chi phí trung bình cho mỗi lượt người dùng thực hiện custom event, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_32_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Custom events; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_32_LIMIT" TEXT="Cost per custom event = Amount Spent / Custom events" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_33" TEXT="Direct website purchases" STYLE="fork" FOLDED="true">
        <node ID="G3_33_WHAT" TEXT="Direct website purchases là số lượt người dùng direct website purchases, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_33_USE" TEXT="Metric này đếm các event Direct website purchases được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_33_LIMIT" TEXT="Direct website purchases = Tổng số event Direct website purchases được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_34" TEXT="Direct website purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_34_WHAT" TEXT="Tổng giá trị của các lượt mua hàng hoàn tất trực tiếp trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_34_USE" TEXT="Giá trị này đến từ tham số value được gửi kèm event Purchase" STYLE="fork" FOLDED="true" />
        <node ID="G3_34_LIMIT" TEXT="Direct Website Purchases Conversion Value = Tổng value của tất cả Website Purchase event được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_35" TEXT="Donation ROAS (return on ad spend)" STYLE="fork" FOLDED="true">
        <node ID="G3_35_WHAT" TEXT="Donation ROAS (return on ad spend) là tỷ lệ giữa conversion value của các lượt donation và Amount Spent, được Meta attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_35_USE" TEXT="Metric này phản ánh ROAS theo dữ liệu Meta ghi nhận, không phải ROAS business đã đối soát." STYLE="fork" FOLDED="true" />
        <node ID="G3_35_LIMIT" TEXT="Donation ROAS (return on ad spend) = Donation Conversion Value / Amount Spent" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_36" TEXT="Donations" STYLE="fork" FOLDED="true">
        <node ID="G3_36_WHAT" TEXT="Số lượt quyên góp được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_36_USE" TEXT="Donation có thể xảy ra trên website, app hoặc trong sản phẩm thuộc Meta, tùy conversion location và cách triển khai tracking" STYLE="fork" FOLDED="true" />
        <node ID="G3_36_LIMIT" TEXT="Donations = Tổng số donation event được Meta ghi nhận và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_37" TEXT="Cost per donation" STYLE="fork" FOLDED="true">
        <node ID="G3_37_WHAT" TEXT="Cost per donation là chi phí trung bình cho mỗi lượt người dùng quyên góp, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_37_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Donations; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_37_LIMIT" TEXT="Cost per donation = Amount Spent / Donations" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_38" TEXT="Leads" STYLE="fork" FOLDED="true">
        <node ID="G3_38_WHAT" TEXT="Leads là số lượt người dùng tạo lead, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_38_USE" TEXT="Metric này đếm các event Lead được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_38_LIMIT" TEXT="Leads = Tổng số event Lead được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_39" TEXT="Cost per lead" STYLE="fork" FOLDED="true">
        <node ID="G3_39_WHAT" TEXT="Cost per lead là chi phí trung bình cho mỗi lượt người dùng tạo lead, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_39_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Leads; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_39_LIMIT" TEXT="Cost per lead = Amount Spent / Leads" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_40" TEXT="Leads conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_40_WHAT" TEXT="Tổng giá trị được gắn với các lead mà Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_40_USE" TEXT="Giá trị này có thể là giá trị kinh doanh dự kiến của lead, không nhất thiết là doanh thu đã thu" STYLE="fork" FOLDED="true" />
        <node ID="G3_40_LIMIT" TEXT="Leads Conversion Value = Tổng value của tất cả lead event được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_41" TEXT="Cost per Meta workflow completion" STYLE="fork" FOLDED="true">
        <node ID="G3_41_WHAT" TEXT="Cost per Meta workflow completion là chi phí trung bình cho mỗi lượt người dùng hoàn thành workflow trên Meta, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_41_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Meta workflow completions; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_41_LIMIT" TEXT="Cost per Meta workflow completion = Amount Spent / Meta workflow completions" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_42" TEXT="Orders created" STYLE="fork" FOLDED="true">
        <node ID="G3_42_WHAT" TEXT="Orders created là số lượt người dùng tạo đơn, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_42_USE" TEXT="Metric này đếm các event Order Created được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_42_LIMIT" TEXT="Orders created = Tổng số event Order Created được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_43" TEXT="Orders dispatched" STYLE="fork" FOLDED="true">
        <node ID="G3_43_WHAT" TEXT="Orders dispatched là số lượt người dùng giao đơn, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_43_USE" TEXT="Metric này đếm các event Order Dispatched được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_43_LIMIT" TEXT="Orders dispatched = Tổng số event Order Dispatched được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_44" TEXT="Cost per product customised" STYLE="fork" FOLDED="true">
        <node ID="G3_44_WHAT" TEXT="Cost per product customised là chi phí trung bình cho mỗi lượt người dùng tùy chỉnh sản phẩm, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_44_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Products customised; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_44_LIMIT" TEXT="Cost per product customised = Amount Spent / Products customised" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_45" TEXT="Purchase ROAS (return on ad spend)" STYLE="fork" FOLDED="true">
        <node ID="G3_45_WHAT" TEXT="Purchase ROAS (return on ad spend) là tỷ lệ giữa conversion value của các lượt purchase và Amount Spent, được Meta attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_45_USE" TEXT="Metric này phản ánh ROAS theo dữ liệu Meta ghi nhận, không phải ROAS business đã đối soát." STYLE="fork" FOLDED="true" />
        <node ID="G3_45_LIMIT" TEXT="Purchase ROAS (return on ad spend) = Purchase Conversion Value / Amount Spent" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_46" TEXT="Purchases" STYLE="fork" FOLDED="true">
        <node ID="G3_46_WHAT" TEXT="Số lượt event Purchase được Meta ghi nhận và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G3_46_USE" TEXT="dựa trên dữ liệu từ các Meta Business Tools đã kết nối hoặc purchase xảy ra trong Meta technologies" STYLE="fork" FOLDED="true" />
        <node ID="G3_46_LIMIT" TEXT="Purchases = Tổng số Purchase event được Meta ghi nhận và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_47" TEXT="Cost per purchase" STYLE="fork" FOLDED="true">
        <node ID="G3_47_WHAT" TEXT="Cost per purchase là chi phí trung bình cho mỗi lượt người dùng mua hàng, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_47_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Purchases; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_47_LIMIT" TEXT="Cost per purchase = Amount Spent / Purchases" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_48" TEXT="Purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_48_WHAT" TEXT="Tổng giá trị của các lượt Purchase được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_48_USE" TEXT="Đây là tổng giá trị tiền của các đơn mua hàng, không phải số lượng lượt mua" STYLE="fork" FOLDED="true" />
        <node ID="G3_48_LIMIT" TEXT="Purchases Conversion Value = Tổng value của tất cả Purchase event được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_49" TEXT="Ratings submitted" STYLE="fork" FOLDED="true">
        <node ID="G3_49_WHAT" TEXT="Ratings submitted là số lượt người dùng gửi đánh giá, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_49_USE" TEXT="Metric này đếm các event Rate được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_49_LIMIT" TEXT="Ratings submitted = Tổng số event Rate được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_50" TEXT="Cost per rating submitted" STYLE="fork" FOLDED="true">
        <node ID="G3_50_WHAT" TEXT="Cost per rating submitted là chi phí trung bình cho mỗi lượt người dùng gửi đánh giá, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_50_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Ratings submitted; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_50_LIMIT" TEXT="Cost per rating submitted = Amount Spent / Ratings submitted" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_51" TEXT="Ratings submitted conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_51_WHAT" TEXT="Ratings submitted conversion value là tổng value của các lượt gửi đánh giá, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_51_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Rate; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_51_LIMIT" TEXT="Ratings submitted conversion value = Tổng value của tất cả event Rate được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_52" TEXT="Registrations completed" STYLE="fork" FOLDED="true">
        <node ID="G3_52_WHAT" TEXT="Registrations completed là số lượt người dùng hoàn tất đăng ký, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_52_USE" TEXT="Metric này đếm các event Complete Registration được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_52_LIMIT" TEXT="Registrations completed = Tổng số event Complete Registration được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_53" TEXT="Cost per registration completed" STYLE="fork" FOLDED="true">
        <node ID="G3_53_WHAT" TEXT="Cost per registration completed là chi phí trung bình cho mỗi lượt người dùng hoàn tất đăng ký, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_53_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Registrations completed; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_53_LIMIT" TEXT="Cost per registration completed = Amount Spent / Registrations completed" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_54" TEXT="Registrations completed conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_54_WHAT" TEXT="Registrations completed conversion value là tổng value của các lượt hoàn tất đăng ký, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_54_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Complete Registration; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_54_LIMIT" TEXT="Registrations completed conversion value = Tổng value của tất cả event Complete Registration được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_55" TEXT="Searches" STYLE="fork" FOLDED="true">
        <node ID="G3_55_WHAT" TEXT="Searches là số lượt người dùng tìm kiếm, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_55_USE" TEXT="Metric này đếm các event Search được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_55_LIMIT" TEXT="Searches = Tổng số event Search được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_56" TEXT="Cost per search" STYLE="fork" FOLDED="true">
        <node ID="G3_56_WHAT" TEXT="Chi phí trung bình để tạo ra một lượt tìm kiếm được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_56_USE" TEXT="Meta định nghĩa đây là chi phí trung bình của mỗi Search" STYLE="fork" FOLDED="true" />
        <node ID="G3_56_LIMIT" TEXT="Cost per Search = Amount Spent / Searches" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_57" TEXT="Searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_57_WHAT" TEXT="Searches conversion value là tổng value của các lượt tìm kiếm, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_57_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Search; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_57_LIMIT" TEXT="Searches conversion value = Tổng value của tất cả event Search được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_58" TEXT="Shops-assisted purchases" STYLE="fork" FOLDED="true">
        <node ID="G3_58_WHAT" TEXT="Shops-assisted purchases là số lượt người dùng shops-assisted purchases, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_58_USE" TEXT="Metric này đếm các event Shops-assisted purchases được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_58_LIMIT" TEXT="Shops-assisted purchases = Tổng số event Shops-assisted purchases được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_59" TEXT="Shops-assisted purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_59_WHAT" TEXT="Shops-assisted purchases conversion value là tổng value của các lượt shops-assisted purchases, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_59_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Shops-assisted purchases; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_59_LIMIT" TEXT="Shops-assisted purchases conversion value = Tổng value của tất cả event Shops-assisted purchases được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_60" TEXT="Subscriptions" STYLE="fork" FOLDED="true">
        <node ID="G3_60_WHAT" TEXT="Subscriptions là số lượt người dùng đăng ký dịch vụ, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_60_USE" TEXT="Metric này đếm các event Subscribe được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_60_LIMIT" TEXT="Subscriptions = Tổng số event Subscribe được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_61" TEXT="Cost per subscription" STYLE="fork" FOLDED="true">
        <node ID="G3_61_WHAT" TEXT="Chi phí trung bình để tạo ra một lượt đăng ký subscription được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_61_USE" TEXT="Meta định nghĩa đây là chi phí trung bình của mỗi subscription" STYLE="fork" FOLDED="true" />
        <node ID="G3_61_LIMIT" TEXT="Cost per Subscription = Amount Spent / Subscriptions" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_62" TEXT="Trials started" STYLE="fork" FOLDED="true">
        <node ID="G3_62_WHAT" TEXT="Trials started là số lượt người dùng bắt đầu dùng thử, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_62_USE" TEXT="Metric này đếm các event Start Trial được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_62_LIMIT" TEXT="Trials started = Tổng số event Start Trial được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_63" TEXT="Cost per trial started" STYLE="fork" FOLDED="true">
        <node ID="G3_63_WHAT" TEXT="Cost per trial started là chi phí trung bình cho mỗi lượt người dùng bắt đầu dùng thử, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_63_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Trials started; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_63_LIMIT" TEXT="Cost per trial started = Amount Spent / Trials started" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_64" TEXT="Trials started conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_64_WHAT" TEXT="Trials started conversion value là tổng value của các lượt bắt đầu dùng thử, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_64_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Start Trial; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G3_64_LIMIT" TEXT="Trials started conversion value = Tổng value của tất cả event Start Trial được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_65" TEXT="Cost per tutorial completed" STYLE="fork" FOLDED="true">
        <node ID="G3_65_WHAT" TEXT="Chi phí trung bình để tạo ra một lượt người dùng hoàn thành tutorial được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_65_USE" TEXT="Tutorial thường là hướng dẫn onboarding trong app hoặc website." STYLE="fork" FOLDED="true" />
        <node ID="G3_65_LIMIT" TEXT="Cost per Tutorial Completed = Amount Spent / Tutorials Completed" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_66" TEXT="Tutorials completed" STYLE="fork" FOLDED="true">
        <node ID="G3_66_WHAT" TEXT="Tutorials completed là số lượt người dùng hoàn thành tutorial, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_66_USE" TEXT="Metric này đếm các event Tutorial Completion được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G3_66_LIMIT" TEXT="Tutorials completed = Tổng số event Tutorial Completion được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G3_67" TEXT="Tutorials completed conversion value" STYLE="fork" FOLDED="true">
        <node ID="G3_67_WHAT" TEXT="Tutorials Completed Conversion Value là tổng value của các lượt người dùng hoàn thành tutorial/onboarding, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G3_67_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Tutorial Completion." STYLE="fork" FOLDED="true" />
        <node ID="G3_67_LIMIT" TEXT="Tutorials Completed Conversion Value = Tổng value của tất cả event Tutorial Completion được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_23" TEXT="Donate conversion value" STYLE="fork" FOLDED="true">
        <node ID="G2_23_WHAT" TEXT="Donate conversion value là tổng value của các lượt quyên góp, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_23_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Donate; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G2_23_LIMIT" TEXT="Donate conversion value = Tổng value của tất cả event Donate được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_30" TEXT="Products customised" STYLE="fork" FOLDED="true">
        <node ID="G2_30_WHAT" TEXT="Products customised là số lượt người dùng tùy chỉnh sản phẩm, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_30_USE" TEXT="Metric này đếm các event Customize Product được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G2_30_LIMIT" TEXT="Products customised = Tổng số event Customize Product được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_31" TEXT="Customise Product conversion value" STYLE="fork" FOLDED="true">
        <node ID="G2_31_WHAT" TEXT="Customise Product conversion value là tổng value của các lượt customise product, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_31_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Customise Product; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G2_31_LIMIT" TEXT="Customise Product conversion value = Tổng value của tất cả event Customise Product được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_32" TEXT="Subscribe conversion value" STYLE="fork" FOLDED="true">
        <node ID="G2_32_WHAT" TEXT="Subscribe conversion value là tổng value của các lượt subscribe, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_32_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Subscribe; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G2_32_LIMIT" TEXT="Subscribe conversion value = Tổng value của tất cả event Subscribe được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G4" TEXT="E. Traffic, click và truy cập đích (29)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G4_1" TEXT="Link clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_1_WHAT" TEXT="Link clicks là số lần người dùng nhấp link trong quảng cáo Meta." STYLE="fork" FOLDED="true" />
        <node ID="G4_1_USE" TEXT="Metric này dùng để xem quảng cáo có kéo người dùng tới điểm đích được không." STYLE="fork" FOLDED="true" />
        <node ID="G4_1_LIMIT" TEXT="Link clicks không đồng nghĩa landing page đã tải, càng không đồng nghĩa có đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_2" TEXT="CPC (cost per link click)" STYLE="fork" FOLDED="true">
        <node ID="G4_2_WHAT" TEXT="CPC (cost per link click) là chi phí trung bình để Meta ghi nhận một lượt Link click, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_2_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_2_LIMIT" TEXT="CPC (cost per link click) = Amount Spent / Link clicks." STYLE="fork" FOLDED="true" />
        <node ID="G4_2_HIGH" TEXT="Khi cao, thường do CPM cao, CTR link thấp hoặc cả hai. Giả thuyết phía sau có thể là audience đắt, creative/CTA chưa kéo được click, thông điệp không khớp nhu cầu, hoặc link không phải hành động tự nhiên của format quảng cáo. CPC cao vẫn có thể chấp nhận nếu số ít người click có tỷ lệ nhắn hoặc mua rất cao." STYLE="fork" FOLDED="true" />
        <node ID="G4_2_LOW" TEXT="Khi thấp, thường do CPM thấp, CTR link cao hoặc cả hai. Có thể là creative và CTA hấp dẫn, audience phản hồi tốt hoặc placement tạo click rẻ. Cần kiểm tra tiếp Landing Page Views, Mess và conversion vì click rẻ có thể là click tò mò, click nhầm hoặc không có ý định mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_3" TEXT="CTR (all)" STYLE="fork" FOLDED="true">
        <node ID="G4_3_WHAT" TEXT="CTR (all) là tỷ lệ tổng click Meta ghi nhận trên số impressions." STYLE="fork" FOLDED="true" />
        <node ID="G4_3_USE" TEXT="Metric này dùng để xem quảng cáo có tạo click tổng quát hay không." STYLE="fork" FOLDED="true" />
        <node ID="G4_3_LIMIT" TEXT="CTR (all) = Clicks (all) / Impressions × 100%." STYLE="fork" FOLDED="true" />
        <node ID="G4_3_HIGH" TEXT="Khi cao, quảng cáo tạo nhiều hành động click trên mỗi impression. Có thể do hook, hình ảnh, video hoặc CTA thu hút; nhưng Clicks (all) còn gồm nhiều click không dẫn tới điểm đích, nên CTR all cao chưa tự chứng minh khách có nhu cầu mua." STYLE="fork" FOLDED="true" />
        <node ID="G4_3_LOW" TEXT="Khi thấp, có thể do creative không giữ chú ý, thông điệp không hợp audience, CTA yếu, người xem đã mỏi quảng cáo hoặc mục tiêu ads không thiên về click. Cần đọc thêm CTR link, video retention và result rate trước khi kết luận." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_4" TEXT="Clicks (all)" STYLE="fork" FOLDED="true">
        <node ID="G4_4_WHAT" TEXT="Clicks (all) là tổng các loại click Meta ghi nhận trên quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_4_USE" TEXT="Metric này dùng để xem mức click tổng quát vào quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_4_LIMIT" TEXT="Clicks (all) có thể gồm click không dẫn ra link; không thay Link clicks." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_5" TEXT="CPC (all)" STYLE="fork" FOLDED="true">
        <node ID="G4_5_WHAT" TEXT="CPC (all) là chi phí trung bình để Meta ghi nhận một lượt Click (all), được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_5_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_5_LIMIT" TEXT="CPC (all) = Amount Spent / Clicks (all)." STYLE="fork" FOLDED="true" />
        <node ID="G4_5_HIGH" TEXT="Khi cao, thường do CPM cao, CTR all thấp hoặc cả hai. Cần xem người dùng ít click vì creative/audience chưa hợp hay vì quảng cáo đang tối ưu cho hành động khác thay vì click." STYLE="fork" FOLDED="true" />
        <node ID="G4_5_LOW" TEXT="Khi thấp, quảng cáo đang tạo tổng click rẻ; có thể nhờ CPM thấp hoặc CTR all cao. Không dùng CPC all thay CPC link vì Clicks (all) có thể gồm mở ảnh, xem Page và các click không đưa khách tới điểm chuyển đổi." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_6" TEXT="Results rate per link clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_6_WHAT" TEXT="Results rate per link clicks là tỷ lệ giữa Results và link clicks." STYLE="fork" FOLDED="true" />
        <node ID="G4_6_USE" TEXT="Metric này dùng để đọc độ rơi giữa đúng hai bước được nêu trong tên metric." STYLE="fork" FOLDED="true" />
        <node ID="G4_6_LIMIT" TEXT="Results rate per link clicks = Results / link clicks × 100%." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_7" TEXT="Purchases rate per landing page views" STYLE="fork" FOLDED="true">
        <node ID="G4_7_WHAT" TEXT="Purchases rate per landing page views là tỷ lệ giữa Purchases và landing page views." STYLE="fork" FOLDED="true" />
        <node ID="G4_7_USE" TEXT="Metric này dùng để đọc độ rơi giữa đúng hai bước được nêu trong tên metric." STYLE="fork" FOLDED="true" />
        <node ID="G4_7_LIMIT" TEXT="Purchases rate per landing page views = Purchases / landing page views × 100%." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_8" TEXT="Purchases rate per link clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_8_WHAT" TEXT="Purchases rate per link clicks là tỷ lệ giữa Purchases và link clicks." STYLE="fork" FOLDED="true" />
        <node ID="G4_8_USE" TEXT="Metric này dùng để đọc độ rơi giữa đúng hai bước được nêu trong tên metric." STYLE="fork" FOLDED="true" />
        <node ID="G4_8_LIMIT" TEXT="Purchases rate per link clicks = Purchases / link clicks × 100%." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_9" TEXT="Landing page views rate per link clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_9_WHAT" TEXT="Landing Page Views Rate Per Link Clicks là tỷ lệ phần trăm landing page views xảy ra trên tổng số link clicks trong quảng cáo Meta" STYLE="fork" FOLDED="true" />
        <node ID="G4_9_USE" TEXT="Landing Page Views Rate Per Link Clicks = Landing Page Views / Link Clicks × 100%" STYLE="fork" FOLDED="true" />
        <node ID="G4_9_LIMIT" TEXT="Landing Page Views = số lần website hoặc Instant Experience tải thành công sau khi người dùng click vào quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_10" TEXT="Business AI clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_10_WHAT" TEXT="Business AI clicks là số hành động business ai clicks Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_10_USE" TEXT="Metric này dùng để đọc khách có thực hiện hành động tiếp theo mà quảng cáo mời hay không." STYLE="fork" FOLDED="true" />
        <node ID="G4_10_LIMIT" TEXT="Business AI clicks không tự chứng minh khách đã hoàn thành bước kinh doanh sau đó." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_11" TEXT="Unique link clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_11_WHAT" TEXT="Unique Link Clicks là số Meta Accounts duy nhất thực hiện ít nhất một link click trên quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_11_USE" TEXT="Metric này đếm người, không đếm số lượt click" STYLE="fork" FOLDED="true" />
        <node ID="G4_11_LIMIT" TEXT="Unique Link Clicks = Số Meta Accounts duy nhất có ít nhất một link click được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_12" TEXT="Outbound clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_12_WHAT" TEXT="Outbound clicks là số hành động outbound clicks Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_12_USE" TEXT="Metric này dùng để đọc khách có thực hiện hành động tiếp theo mà quảng cáo mời hay không." STYLE="fork" FOLDED="true" />
        <node ID="G4_12_LIMIT" TEXT="Outbound clicks không tự chứng minh khách đã hoàn thành bước kinh doanh sau đó." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_13" TEXT="Unique outbound clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_13_WHAT" TEXT="Unique outbound clicks là số Meta Accounts duy nhất thực hiện hành động đó." STYLE="fork" FOLDED="true" />
        <node ID="G4_13_USE" TEXT="Metric này dùng để đếm người khác nhau thay vì tổng lượt hành động." STYLE="fork" FOLDED="true" />
        <node ID="G4_13_LIMIT" TEXT="Unique outbound clicks không được cộng giữa nhiều dòng vì cùng một người có thể bị trùng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_14" TEXT="CTR (link click-through rate)" STYLE="fork" FOLDED="true">
        <node ID="G4_14_WHAT" TEXT="CTR (link click-through rate) là tỷ lệ phần trăm impressions nhận được ít nhất một link click trên tổng số impressions trong quảng cáo Meta" STYLE="fork" FOLDED="true" />
        <node ID="G4_14_USE" TEXT="CTR (link) = Link Clicks / Impressions × 100%" STYLE="fork" FOLDED="true" />
        <node ID="G4_14_LIMIT" TEXT="Tỷ lệ nhấp chuột" STYLE="fork" FOLDED="true" />
        <node ID="G4_14_HIGH" TEXT="Khi cao, nhiều impression tạo được link click. Có thể do audience đúng nhu cầu, hook và CTA rõ, ưu đãi hấp dẫn hoặc creative khớp placement. Vẫn phải kiểm tra hành động sau click để loại trường hợp click tò mò hoặc chất lượng thấp." STYLE="fork" FOLDED="true" />
        <node ID="G4_14_LOW" TEXT="Khi thấp, có thể do audience chưa quan tâm, thông điệp/CTA chưa rõ, creative không hợp placement, quảng cáo bị mỏi hoặc người dùng xem nhưng không có lý do bấm. Nếu CPR Mess vẫn thấp, có thể quảng cáo tạo Mess bằng đường không phản ánh đầy đủ qua Link clicks hoặc chỉ một nhóm nhỏ nhưng chất lượng cao phản hồi." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_15" TEXT="Unique CTR (link click-through rate)" STYLE="fork" FOLDED="true">
        <node ID="G4_15_WHAT" TEXT="Unique CTR (link click-through rate) là tỷ lệ Meta Accounts có ít nhất một Link click trên Reach." STYLE="fork" FOLDED="true" />
        <node ID="G4_15_USE" TEXT="Metric này đếm người, không đếm tổng lượt click." STYLE="fork" FOLDED="true" />
        <node ID="G4_15_LIMIT" TEXT="Unique CTR (link) = Unique link clicks / Reach × 100%." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_16" TEXT="Outbound CTR (click-through rate)" STYLE="fork" FOLDED="true">
        <node ID="G4_16_WHAT" TEXT="Outbound CTR là tỷ lệ Outbound clicks trên Impressions." STYLE="fork" FOLDED="true" />
        <node ID="G4_16_USE" TEXT="Metric này dùng khi muốn biết quảng cáo kéo click ra ngoài Meta tốt tới đâu." STYLE="fork" FOLDED="true" />
        <node ID="G4_16_LIMIT" TEXT="Outbound CTR = Outbound clicks / Impressions × 100%." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_17" TEXT="Unique outbound CTR (click-through rate)" STYLE="fork" FOLDED="true">
        <node ID="G4_17_WHAT" TEXT="Unique Outbound CTR (click-through rate) là tỷ lệ phần trăm Meta Accounts đã xem quảng cáo và thực hiện ít nhất một outbound click (click dẫn người dùng ra khỏi Meta technologies sang website/app bên ngoài)." STYLE="fork" FOLDED="true" />
        <node ID="G4_17_USE" TEXT="Metric này đếm người, không đếm số lượt click" STYLE="fork" FOLDED="true" />
        <node ID="G4_17_LIMIT" TEXT="Unique Outbound CTR = Unique Outbound Clicks / Reach × 100%" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_18" TEXT="Unique clicks (all)" STYLE="fork" FOLDED="true">
        <node ID="G4_18_WHAT" TEXT="Unique clicks (all) là số Meta Accounts duy nhất thực hiện hành động đó." STYLE="fork" FOLDED="true" />
        <node ID="G4_18_USE" TEXT="Metric này dùng để đếm người khác nhau thay vì tổng lượt hành động." STYLE="fork" FOLDED="true" />
        <node ID="G4_18_LIMIT" TEXT="Unique clicks (all) không được cộng giữa nhiều dòng vì cùng một người có thể bị trùng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_19" TEXT="Unique CTR (all)" STYLE="fork" FOLDED="true">
        <node ID="G4_19_WHAT" TEXT="Unique CTR (all) là số Meta Accounts duy nhất thực hiện hành động đó." STYLE="fork" FOLDED="true" />
        <node ID="G4_19_USE" TEXT="Metric này dùng để đếm người khác nhau thay vì tổng lượt hành động." STYLE="fork" FOLDED="true" />
        <node ID="G4_19_LIMIT" TEXT="Unique CTR (all) không được cộng giữa nhiều dòng vì cùng một người có thể bị trùng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_20" TEXT="Cost per unique link click" STYLE="fork" FOLDED="true">
        <node ID="G4_20_WHAT" TEXT="Cost per Unique Link Click là chi phí trung bình cho mỗi Meta Account duy nhất thực hiện ít nhất một link click trong quảng cáo Meta" STYLE="fork" FOLDED="true" />
        <node ID="G4_20_USE" TEXT="Metric này đếm chi phí theo người, không theo lượt click." STYLE="fork" FOLDED="true" />
        <node ID="G4_20_LIMIT" TEXT="Cost per Unique Link Click = Amount Spent / Unique Link Clicks" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_21" TEXT="Cost per outbound click" STYLE="fork" FOLDED="true">
        <node ID="G4_21_WHAT" TEXT="Cost per outbound click là chi phí trung bình để Meta ghi nhận một lượt nhấp ra ngoài Meta, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_21_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_21_LIMIT" TEXT="Cost per outbound click = Amount Spent / Outbound clicks." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_22" TEXT="Cost per unique outbound click" STYLE="fork" FOLDED="true">
        <node ID="G4_22_WHAT" TEXT="Cost per Unique Outbound Click là chi phí trung bình cho mỗi Meta Account duy nhất thực hiện ít nhất một outbound click" STYLE="fork" FOLDED="true" />
        <node ID="G4_22_USE" TEXT="Metric này đếm chi phí theo người, không theo lượt click" STYLE="fork" FOLDED="true" />
        <node ID="G4_22_LIMIT" TEXT="Cost per Unique Outbound Click = Amount Spent / Unique Outbound Clicks" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_23" TEXT="Get directions clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_23_WHAT" TEXT="Get directions clicks là số hành động get directions clicks Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_23_USE" TEXT="Metric này dùng để đọc khách có thực hiện hành động tiếp theo mà quảng cáo mời hay không." STYLE="fork" FOLDED="true" />
        <node ID="G4_23_LIMIT" TEXT="Get directions clicks không tự chứng minh khách đã hoàn thành bước kinh doanh sau đó." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_24" TEXT="Landing page views" STYLE="fork" FOLDED="true">
        <node ID="G4_24_WHAT" TEXT="Landing page views là số lần website hoặc Instant Experience tải thành công sau khi người dùng nhấp quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_24_USE" TEXT="Metric này dùng để kiểm tra traffic có thực sự tới được trang đích không." STYLE="fork" FOLDED="true" />
        <node ID="G4_24_LIMIT" TEXT="Landing page views không phải số người duy nhất và không chứng minh khách đã mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_25" TEXT="Cost per landing page view" STYLE="fork" FOLDED="true">
        <node ID="G4_25_WHAT" TEXT="Cost per landing page view là chi phí trung bình để Meta ghi nhận một lượt landing page tải thành công, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_25_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_25_LIMIT" TEXT="Cost per landing page view = Amount Spent / Landing page views." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_26" TEXT="Location searches" STYLE="fork" FOLDED="true">
        <node ID="G4_26_WHAT" TEXT="Location searches là số hành động location searches Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_26_USE" TEXT="Metric này dùng để đọc khách có thực hiện hành động tiếp theo mà quảng cáo mời hay không." STYLE="fork" FOLDED="true" />
        <node ID="G4_26_LIMIT" TEXT="Location searches không tự chứng minh khách đã hoàn thành bước kinh doanh sau đó." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_27" TEXT="Cost per location search" STYLE="fork" FOLDED="true">
        <node ID="G4_27_WHAT" TEXT="Cost per location search là chi phí trung bình để Meta ghi nhận một lượt tìm địa điểm, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_27_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_27_LIMIT" TEXT="Cost per location search = Amount Spent / Location searches." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_28" TEXT="Location search conversion value" STYLE="fork" FOLDED="true">
        <node ID="G4_28_WHAT" TEXT="Location search conversion value là metric traffic/click Meta ghi nhận." STYLE="fork" FOLDED="true" />
        <node ID="G4_28_USE" TEXT="Metric này dùng để đọc hành vi click hoặc truy cập theo đúng định nghĩa của field." STYLE="fork" FOLDED="true" />
        <node ID="G4_28_LIMIT" TEXT="Cần đọc cùng destination, attribution và kỳ báo cáo trước khi kết luận." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G4_29" TEXT="Phone number clicks" STYLE="fork" FOLDED="true">
        <node ID="G4_29_WHAT" TEXT="Phone number clicks là số hành động phone number clicks Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G4_29_USE" TEXT="Metric này dùng để đọc khách có thực hiện hành động tiếp theo mà quảng cáo mời hay không." STYLE="fork" FOLDED="true" />
        <node ID="G4_29_LIMIT" TEXT="Phone number clicks không tự chứng minh khách đã hoàn thành bước kinh doanh sau đó." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G5" TEXT="C. Tin nhắn và cuộc gọi (20)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G5_1" TEXT="Messages delivered" STYLE="fork" FOLDED="true">
        <node ID="G5_1_WHAT" TEXT="Messages delivered là số liệu liên quan tới tin nhắn/cuộc hội thoại Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_1_USE" TEXT="Metric này dùng để nhìn đúng bước trong luồng khách nhắn tin cho doanh nghiệp." STYLE="fork" FOLDED="true" />
        <node ID="G5_1_LIMIT" TEXT="Metric này không tự là lead chất lượng, đơn hàng hay doanh thu nếu chưa nối với data sale." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_2" TEXT="Marketing messages CTR" STYLE="fork" FOLDED="true">
        <node ID="G5_2_WHAT" TEXT="Marketing messages CTR là số liệu liên quan tới tin nhắn/cuộc hội thoại Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_2_USE" TEXT="Metric này dùng để nhìn đúng bước trong luồng khách nhắn tin cho doanh nghiệp." STYLE="fork" FOLDED="true" />
        <node ID="G5_2_LIMIT" TEXT="Metric này không tự là lead chất lượng, đơn hàng hay doanh thu nếu chưa nối với data sale." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_3" TEXT="Marketing messages read" STYLE="fork" FOLDED="true">
        <node ID="G5_3_WHAT" TEXT="Marketing messages read là số liệu liên quan tới tin nhắn/cuộc hội thoại Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_3_USE" TEXT="Metric này dùng để nhìn đúng bước trong luồng khách nhắn tin cho doanh nghiệp." STYLE="fork" FOLDED="true" />
        <node ID="G5_3_LIMIT" TEXT="Metric này không tự là lead chất lượng, đơn hàng hay doanh thu nếu chưa nối với data sale." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_4" TEXT="Cost per message delivered" STYLE="fork" FOLDED="true">
        <node ID="G5_4_WHAT" TEXT="Cost per message delivered là chi phí trung bình để Meta ghi nhận một lượt tin nhắn được gửi thành công, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_4_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_4_LIMIT" TEXT="Cost per message delivered = Amount Spent / Messages delivered." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_5" TEXT="20-second phone calls" STYLE="fork" FOLDED="true">
        <node ID="G5_5_WHAT" TEXT="20-second phone calls là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_5_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_5_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_6" TEXT="60-second phone calls" STYLE="fork" FOLDED="true">
        <node ID="G5_6_WHAT" TEXT="60-second phone calls là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_6_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_6_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_7" TEXT="20-second Messenger calls" STYLE="fork" FOLDED="true">
        <node ID="G5_7_WHAT" TEXT="20-second Messenger calls là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_7_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_7_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_8" TEXT="60-second Messenger calls" STYLE="fork" FOLDED="true">
        <node ID="G5_8_WHAT" TEXT="60-second Messenger calls là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_8_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_8_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_9" TEXT="New messaging contacts" STYLE="fork" FOLDED="true">
        <node ID="G5_9_WHAT" TEXT="New messaging contacts là số liệu liên quan tới tin nhắn/cuộc hội thoại Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_9_USE" TEXT="Metric này dùng để nhìn đúng bước trong luồng khách nhắn tin cho doanh nghiệp." STYLE="fork" FOLDED="true" />
        <node ID="G5_9_LIMIT" TEXT="Metric này không tự là lead chất lượng, đơn hàng hay doanh thu nếu chưa nối với data sale." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_10" TEXT="Messaging conversations started" STYLE="fork" FOLDED="true">
        <node ID="G5_10_WHAT" TEXT="Messaging Conversations Started là số Meta Accounts bắt đầu nhắn tin cho doanh nghiệp sau ít nhất 7 ngày không hoạt động (inactivity), được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_10_USE" TEXT="Metric này bao gồm cả người nhắn lần đầu và người quay lại nhắn sau ≥ 7 ngày không nhắn" STYLE="fork" FOLDED="true" />
        <node ID="G5_10_LIMIT" TEXT="Messaging Conversations Started = Số Meta Accounts nhắn tin cho doanh nghiệp sau ≥ 7 ngày không hoạt động được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_11" TEXT="Messaging subscriptions" STYLE="fork" FOLDED="true">
        <node ID="G5_11_WHAT" TEXT="Messaging Subscriptions là số lần một Meta Account đăng ký nhận marketing messages từ doanh nghiệp, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G5_11_USE" TEXT="Metric này đếm số lượt subscribe (opt-in) để nhận tin nhắn marketing qua Messenger, Instagram Direct hoặc WhatsApp" STYLE="fork" FOLDED="true" />
        <node ID="G5_11_LIMIT" TEXT="Messaging Subscriptions = Số lượt Meta Account subscribe (opt-in) nhận marketing messages được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_12" TEXT="Welcome message views" STYLE="fork" FOLDED="true">
        <node ID="G5_12_WHAT" TEXT="Welcome Message Views là số lần custom welcome message (tin nhắn chào mừng tự động) của doanh nghiệp được xem, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_12_USE" TEXT="Metric này đếm số lượt người dùng nhìn thấy welcome message khi bắt đầu conversation qua Messenger, Instagram Direct hoặc WhatsApp" STYLE="fork" FOLDED="true" />
        <node ID="G5_12_LIMIT" TEXT="Welcome Message Views = Số lần custom welcome message được hiển thị cho người dùng, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_13" TEXT="Messaging conversations replied" STYLE="fork" FOLDED="true">
        <node ID="G5_13_WHAT" TEXT="Messaging conversations replied là số liệu liên quan tới tin nhắn/cuộc hội thoại Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_13_USE" TEXT="Metric này dùng để nhìn đúng bước trong luồng khách nhắn tin cho doanh nghiệp." STYLE="fork" FOLDED="true" />
        <node ID="G5_13_LIMIT" TEXT="Metric này không tự là lead chất lượng, đơn hàng hay doanh thu nếu chưa nối với data sale." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_14" TEXT="Cost per new messaging contact" STYLE="fork" FOLDED="true">
        <node ID="G5_14_WHAT" TEXT="Cost per new messaging contact là chi phí trung bình để Meta ghi nhận một lượt liên hệ nhắn tin mới, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_14_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_14_LIMIT" TEXT="Cost per new messaging contact = Amount Spent / New messaging contacts." STYLE="fork" FOLDED="true" />
        <node ID="G5_14_HIGH" TEXT="Khi cao, có thể do quảng cáo chủ yếu chạm lại người từng nhắn, audience mới ít phản hồi, CPM cao, creative chưa tạo lý do liên hệ lần đầu hoặc tệp prospect mới đã hẹp. So sánh với Cost per Messaging Conversation để biết ads đang kéo người mới hay chủ yếu kích hoạt người cũ." STYLE="fork" FOLDED="true" />
        <node ID="G5_14_LOW" TEXT="Khi thấp, quảng cáo đang tạo liên hệ nhắn tin mới với chi phí thấp. Có thể do audience prospect phù hợp, nội dung giải quyết đúng nhu cầu và CTA hỏi tư vấn rõ. Vẫn cần kiểm tra chất lượng chat, tỷ lệ ra đơn và GMV vì liên hệ mới chưa tự là khách mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_15" TEXT="Cost per messaging conversation started" STYLE="fork" FOLDED="true">
        <node ID="G5_15_WHAT" TEXT="Cost per messaging conversation started là chi phí trung bình để Meta ghi nhận một lượt bắt đầu cuộc hội thoại nhắn tin, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_15_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_15_LIMIT" TEXT="Cost per messaging conversation started = Amount Spent / Messaging conversations started." STYLE="fork" FOLDED="true" />
        <node ID="G5_15_HIGH" TEXT="Khi cao, có thể do CPM cao; ít người bắt đầu chat trên mỗi impression; audience chưa có nhu cầu; creative, giá, ưu đãi hoặc CTA chưa đủ lý do để hỏi; hay luồng mở Messenger có ma sát. Nếu CPC thấp mà cost per conversation vẫn cao, điểm rơi có thể nằm giữa click và bắt đầu hội thoại." STYLE="fork" FOLDED="true" />
        <node ID="G5_15_LOW" TEXT="Khi thấp, có thể do audience có tín hiệu nhu cầu, content trả đúng mối quan tâm, CTA hỏi giá/tư vấn rõ hoặc tệp retargeting dễ phản hồi. CPM vẫn có thể cao nếu tỷ lệ tạo chat đủ mạnh để bù. Mess rẻ chưa tự chứng minh chat chất lượng, đơn thật hay GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_16" TEXT="Cost per messaging subscription" STYLE="fork" FOLDED="true">
        <node ID="G5_16_WHAT" TEXT="Cost per messaging subscription là chi phí trung bình để Meta ghi nhận một lượt đăng ký nhận tin nhắn marketing, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_16_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_16_LIMIT" TEXT="Cost per messaging subscription = Amount Spent / Messaging subscriptions." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_17" TEXT="Phone calls placed" STYLE="fork" FOLDED="true">
        <node ID="G5_17_WHAT" TEXT="Phone calls placed là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_17_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_17_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_18" TEXT="Callback requests submitted" STYLE="fork" FOLDED="true">
        <node ID="G5_18_WHAT" TEXT="Callback requests submitted là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_18_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_18_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_19" TEXT="Messenger calls placed" STYLE="fork" FOLDED="true">
        <node ID="G5_19_WHAT" TEXT="Messenger calls placed là số hành động cuộc gọi Meta ghi nhận từ quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_19_USE" TEXT="Metric này dùng cho quảng cáo gọi điện hoặc nhắn tin có tính năng call." STYLE="fork" FOLDED="true" />
        <node ID="G5_19_LIMIT" TEXT="Nó không tự chứng minh cuộc gọi được nghe, tư vấn hay chốt đơn." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G5_20" TEXT="Cost per Meta message to buy" STYLE="fork" FOLDED="true">
        <node ID="G5_20_WHAT" TEXT="Cost per Meta message to buy là chi phí trung bình để Meta ghi nhận một lượt nhắn tin để mua hàng trên Meta, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_20_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G5_20_LIMIT" TEXT="Cost per Meta message to buy = Amount Spent / Meta message to buy." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G6" TEXT="D. Video và Instant Experience (19)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G6_1" TEXT="Video average play time" STYLE="fork" FOLDED="true">
        <node ID="G6_1_WHAT" TEXT="Video Average Play Time là thời gian trung bình một video được phát, bao gồm cả thời gian xem lại (replay) trong cùng một lần hiển thị (impression)." STYLE="fork" FOLDED="true" />
        <node ID="G6_1_USE" TEXT="Metric này đang trong giai đoạn phát triển (in development)" STYLE="fork" FOLDED="true" />
        <node ID="G6_1_LIMIT" TEXT="Video Average Play Time = Total Watch Time / Total Video Plays (including replays)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_2" TEXT="Video plays at 25%" STYLE="fork" FOLDED="true">
        <node ID="G6_2_WHAT" TEXT="Video plays at 25% là số lần video được phát tới mốc 25%, Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_2_USE" TEXT="Metric này dùng để xem người xem đi sâu tới đâu trong video." STYLE="fork" FOLDED="true" />
        <node ID="G6_2_LIMIT" TEXT="Mốc xem video là tín hiệu tiêu thụ creative, không phải hành vi mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_3" TEXT="Video plays at 50%" STYLE="fork" FOLDED="true">
        <node ID="G6_3_WHAT" TEXT="Video plays at 50% là số lần video được phát tới mốc 50%, Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_3_USE" TEXT="Metric này dùng để xem người xem đi sâu tới đâu trong video." STYLE="fork" FOLDED="true" />
        <node ID="G6_3_LIMIT" TEXT="Mốc xem video là tín hiệu tiêu thụ creative, không phải hành vi mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_4" TEXT="Video plays at 75%" STYLE="fork" FOLDED="true">
        <node ID="G6_4_WHAT" TEXT="Video plays at 75% là số lần video được phát tới mốc 75%, Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_4_USE" TEXT="Metric này dùng để xem người xem đi sâu tới đâu trong video." STYLE="fork" FOLDED="true" />
        <node ID="G6_4_LIMIT" TEXT="Mốc xem video là tín hiệu tiêu thụ creative, không phải hành vi mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_5" TEXT="Video plays at 95%" STYLE="fork" FOLDED="true">
        <node ID="G6_5_WHAT" TEXT="Video plays at 95% là số lần video được phát tới mốc 95%, Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_5_USE" TEXT="Metric này dùng để xem người xem đi sâu tới đâu trong video." STYLE="fork" FOLDED="true" />
        <node ID="G6_5_LIMIT" TEXT="Mốc xem video là tín hiệu tiêu thụ creative, không phải hành vi mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_6" TEXT="Video plays at 100%" STYLE="fork" FOLDED="true">
        <node ID="G6_6_WHAT" TEXT="Video plays at 100% là số lần video được phát tới mốc 100%, Meta ghi nhận cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_6_USE" TEXT="Metric này dùng để xem người xem đi sâu tới đâu trong video." STYLE="fork" FOLDED="true" />
        <node ID="G6_6_LIMIT" TEXT="Mốc xem video là tín hiệu tiêu thụ creative, không phải hành vi mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_7" TEXT="Unique 2-second continuous video plays" STYLE="fork" FOLDED="true">
        <node ID="G6_7_WHAT" TEXT="Unique 2-second continuous video plays là số lượt xem video theo đúng ngưỡng thời lượng/định nghĩa của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G6_7_USE" TEXT="Metric này dùng để so sánh mức xem video khi cùng format và placement." STYLE="fork" FOLDED="true" />
        <node ID="G6_7_LIMIT" TEXT="Các định nghĩa 2 giây, 3 giây, ThruPlay và unique không thay thế cho nhau." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_8" TEXT="2-second continuous video plays" STYLE="fork" FOLDED="true">
        <node ID="G6_8_WHAT" TEXT="2-second continuous video plays là số lượt xem video theo đúng ngưỡng thời lượng/định nghĩa của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G6_8_USE" TEXT="Metric này dùng để so sánh mức xem video khi cùng format và placement." STYLE="fork" FOLDED="true" />
        <node ID="G6_8_LIMIT" TEXT="Các định nghĩa 2 giây, 3 giây, ThruPlay và unique không thay thế cho nhau." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_9" TEXT="3-second video plays" STYLE="fork" FOLDED="true">
        <node ID="G6_9_WHAT" TEXT="3-second video plays là số lượt xem video theo đúng ngưỡng thời lượng/định nghĩa của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G6_9_USE" TEXT="Metric này dùng để so sánh mức xem video khi cùng format và placement." STYLE="fork" FOLDED="true" />
        <node ID="G6_9_LIMIT" TEXT="Các định nghĩa 2 giây, 3 giây, ThruPlay và unique không thay thế cho nhau." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_10" TEXT="ThruPlays" STYLE="fork" FOLDED="true">
        <node ID="G6_10_WHAT" TEXT="ThruPlays là số lượt xem video theo đúng ngưỡng thời lượng/định nghĩa của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G6_10_USE" TEXT="Metric này dùng để so sánh mức xem video khi cùng format và placement." STYLE="fork" FOLDED="true" />
        <node ID="G6_10_LIMIT" TEXT="Các định nghĩa 2 giây, 3 giây, ThruPlay và unique không thay thế cho nhau." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_11" TEXT="Video plays" STYLE="fork" FOLDED="true">
        <node ID="G6_11_WHAT" TEXT="Video plays là số lượt xem video theo đúng ngưỡng thời lượng/định nghĩa của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G6_11_USE" TEXT="Metric này dùng để so sánh mức xem video khi cùng format và placement." STYLE="fork" FOLDED="true" />
        <node ID="G6_11_LIMIT" TEXT="Các định nghĩa 2 giây, 3 giây, ThruPlay và unique không thay thế cho nhau." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_12" TEXT="Instant Experience view time" STYLE="fork" FOLDED="true">
        <node ID="G6_12_WHAT" TEXT="Instant Experience View Time là thời gian trung bình (tính bằng giây) mà người dùng dành để xem một Instant Experience (trước đây gọi là Canvas) được mở từ quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G6_12_USE" TEXT="Metric này bao gồm cả thời gian spent trong các Instant Experience khác được liên kết từ Instant Experience gốc." STYLE="fork" FOLDED="true" />
        <node ID="G6_12_LIMIT" TEXT="Instant Experience View Time = Tổng thời gian xem (giây) / Số lần mở Instant Experience" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_13" TEXT="Instant Experience view percentage" STYLE="fork" FOLDED="true">
        <node ID="G6_13_WHAT" TEXT="Instant Experience View Percentage là % trung bình diện tích Instant Experience mà người dùng đã xem" STYLE="fork" FOLDED="true" />
        <node ID="G6_13_USE" TEXT="Metric này được tính dựa trên các thành phần (components) đã được xem trong Instant Experience" STYLE="fork" FOLDED="true" />
        <node ID="G6_13_LIMIT" TEXT="Instant Experience View Percentage = % trung bình diện tích Instant Experience được xem" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_14" TEXT="Cost per 2-second continuous video play" STYLE="fork" FOLDED="true">
        <node ID="G6_14_WHAT" TEXT="Cost per 2-second continuous video play là chi phí trung bình để Meta ghi nhận một lượt 2-second continuous video play, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_14_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_14_LIMIT" TEXT="Cost per 2-second continuous video play = Amount Spent / 2-second continuous video play." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_15" TEXT="Cost per 3-second video play" STYLE="fork" FOLDED="true">
        <node ID="G6_15_WHAT" TEXT="Cost per 3-second video play là chi phí trung bình để Meta ghi nhận một lượt 3-second video play, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_15_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G6_15_LIMIT" TEXT="Cost per 3-second video play = Amount Spent / 3-second video play." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_16" TEXT="Cost per ThruPlay" STYLE="fork" FOLDED="true">
        <node ID="G6_16_WHAT" TEXT="Cost per ThruPlay là chi phí trung bình cho mỗi ThruPlay (số lần video được xem toàn bộ hoặc trong ít nhất 15 giây)." STYLE="fork" FOLDED="true" />
        <node ID="G6_16_USE" TEXT="Metric này được dùng cho quảng cáo video với performance goal ThruPlay" STYLE="fork" FOLDED="true" />
        <node ID="G6_16_LIMIT" TEXT="Cost per ThruPlay = Amount Spent / ThruPlays" STYLE="fork" FOLDED="true" />
        <node ID="G6_16_HIGH" TEXT="Khi cao, có thể do CPM cao, ít người xem đủ điều kiện ThruPlay, hook yếu, video dài/chậm, nội dung không hợp audience hoặc creative không hợp placement. Với nội dung niche, ThruPlay đắt vẫn có thể chấp nhận nếu người xem sâu tạo Mess chất lượng." STYLE="fork" FOLDED="true" />
        <node ID="G6_16_LOW" TEXT="Khi thấp, video đang tạo lượt xem đủ điều kiện với chi phí thấp; có thể nhờ CPM thấp, hook tốt, nhịp video hợp placement hoặc nội dung dễ xem. Cần đọc thêm click, Mess và conversion vì video xem rẻ có thể chỉ mang tính giải trí." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_17" TEXT="Instant Experience clicks to open" STYLE="fork" FOLDED="true">
        <node ID="G6_17_WHAT" TEXT="Instant Experience Clicks to Open là số lần click vào quảng cáo của bạn để mở một Instant Experience (trước đây gọi là Canvas)" STYLE="fork" FOLDED="true" />
        <node ID="G6_17_USE" TEXT="Metric này đang trong giai đoạn phát triển (in development)" STYLE="fork" FOLDED="true" />
        <node ID="G6_17_LIMIT" TEXT="Instant Experience Clicks to Open = Số lần click vào ad để mở Instant Experience" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_18" TEXT="Instant Experience clicks to start" STYLE="fork" FOLDED="true">
        <node ID="G6_18_WHAT" TEXT="Instant Experience Clicks to Start là số lần một interactive component (thành phần tương tác) trong Instant Experience bắt đầu" STYLE="fork" FOLDED="true" />
        <node ID="G6_18_USE" TEXT="Metric này đang trong giai đoạn phát triển (in development)" STYLE="fork" FOLDED="true" />
        <node ID="G6_18_LIMIT" TEXT="Instant Experience Clicks to Start = Số lần interactive component trong Instant Experience bắt đầu" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G6_19" TEXT="Instant Experience outbound clicks" STYLE="fork" FOLDED="true">
        <node ID="G6_19_WHAT" TEXT="Instant Experience outbound clicks là metric Meta ghi nhận khi người dùng xem hoặc tương tác với Instant Experience/video." STYLE="fork" FOLDED="true" />
        <node ID="G6_19_USE" TEXT="Metric này dùng để đọc hành vi tiếp tục xem/mở nội dung." STYLE="fork" FOLDED="true" />
        <node ID="G6_19_LIMIT" TEXT="Không dùng metric này một mình để suy ra ý định mua hoặc doanh thu." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G7" TEXT="B. Tương tác nội dung, Page và social (20)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G7_1" TEXT="Blocks" STYLE="fork" FOLDED="true">
        <node ID="G7_1_WHAT" TEXT="Blocks là số lần người dùng đã block messages từ doanh nghiệp của bạn trên các messaging apps (ví dụ Facebook Messenger), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G7_1_USE" TEXT="Metric này có thể bao gồm cả blocks xảy ra sau khi người dùng xem quảng cáo lần đầu, hoặc blocks xảy ra sau khi messaging conversation đã bắt đầu" STYLE="fork" FOLDED="true" />
        <node ID="G7_1_LIMIT" TEXT="Blocks = Số lần người dùng block messages từ doanh nghiệp (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_2" TEXT="Facebook likes" STYLE="fork" FOLDED="true">
        <node ID="G7_2_WHAT" TEXT="Facebook Likes (Page Likes) là số lần người dùng đã like (follow) Facebook Page, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G7_2_USE" TEXT="Metric này thường được dùng cho Page Likes ads (quảng cáo tăng follow cho Page)" STYLE="fork" FOLDED="true" />
        <node ID="G7_2_LIMIT" TEXT="Facebook Likes = Số lần người dùng like/follow Facebook Page (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_3" TEXT="Instagram follows" STYLE="fork" FOLDED="true">
        <node ID="G7_3_WHAT" TEXT="Instagram Follows là số lần người dùng đã follow Instagram profile, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G7_3_USE" TEXT="Metric này thường được dùng cho ads với performance goal &quot;Maximize number of follows on Instagram&quot;." STYLE="fork" FOLDED="true" />
        <node ID="G7_3_LIMIT" TEXT="Instagram Follows = Số lần người dùng follow Instagram profile (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_4" TEXT="Post comments" STYLE="fork" FOLDED="true">
        <node ID="G7_4_WHAT" TEXT="Post Comments là số lần người dùng đã comment vào post (bao gồm cả post được boost làm ad), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G7_4_USE" TEXT="Metric này đếm mọi comment vào post, bao gồm cả comment từ people và Pages." STYLE="fork" FOLDED="true" />
        <node ID="G7_4_LIMIT" TEXT="Post Comments = Số lần comment vào post (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_5" TEXT="Post engagements" STYLE="fork" FOLDED="true">
        <node ID="G7_5_WHAT" TEXT="Post engagements là số lượt post engagements Meta ghi nhận có attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_5_USE" TEXT="Metric này dùng để đọc phản hồi với Page, post hoặc creative." STYLE="fork" FOLDED="true" />
        <node ID="G7_5_LIMIT" TEXT="Tương tác không tự đồng nghĩa khách có nhu cầu mua, có đơn hoặc tạo GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_6" TEXT="Post reactions" STYLE="fork" FOLDED="true">
        <node ID="G7_6_WHAT" TEXT="Post reactions là số lượt post reactions Meta ghi nhận có attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_6_USE" TEXT="Metric này dùng để đọc phản hồi với Page, post hoặc creative." STYLE="fork" FOLDED="true" />
        <node ID="G7_6_LIMIT" TEXT="Tương tác không tự đồng nghĩa khách có nhu cầu mua, có đơn hoặc tạo GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_7" TEXT="Post saves" STYLE="fork" FOLDED="true">
        <node ID="G7_7_WHAT" TEXT="Post saves là số lượt post saves Meta ghi nhận có attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_7_USE" TEXT="Metric này dùng để đọc phản hồi với Page, post hoặc creative." STYLE="fork" FOLDED="true" />
        <node ID="G7_7_LIMIT" TEXT="Tương tác không tự đồng nghĩa khách có nhu cầu mua, có đơn hoặc tạo GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_8" TEXT="Post shares" STYLE="fork" FOLDED="true">
        <node ID="G7_8_WHAT" TEXT="Post shares là số lượt post shares Meta ghi nhận có attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_8_USE" TEXT="Metric này dùng để đọc phản hồi với Page, post hoặc creative." STYLE="fork" FOLDED="true" />
        <node ID="G7_8_LIMIT" TEXT="Tương tác không tự đồng nghĩa khách có nhu cầu mua, có đơn hoặc tạo GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_9" TEXT="Photo clicks" STYLE="fork" FOLDED="true">
        <node ID="G7_9_WHAT" TEXT="Photo Clicks là số lần người dùng đã click vào photo (hình ảnh) trong quảng cáo, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G7_9_USE" TEXT="Metric này bao gồm cả clicks vào photo trong feed, stories, và các placements khác." STYLE="fork" FOLDED="true" />
        <node ID="G7_9_LIMIT" TEXT="Photo Clicks = Số lần click vào photo (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_10" TEXT="Event responses" STYLE="fork" FOLDED="true">
        <node ID="G7_10_WHAT" TEXT="Event Responses là số lần người dùng đã respond (phản hồi) vào event (sự kiện), được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_10_USE" TEXT="Metric này bao gồm mọi response type (Going, Interested, Invited)." STYLE="fork" FOLDED="true" />
        <node ID="G7_10_LIMIT" TEXT="Event Responses = Số lần respond vào event (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_11" TEXT="Check-ins" STYLE="fork" FOLDED="true">
        <node ID="G7_11_WHAT" TEXT="Check-ins là số lần người dùng đã check-in vào địa điểm (location) của doanh nghiệp, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_11_USE" TEXT="Metric này bao gồm cả check-ins từ Facebook và Instagram." STYLE="fork" FOLDED="true" />
        <node ID="G7_11_LIMIT" TEXT="Check-ins = Số lần check-in vào địa điểm (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_12" TEXT="Effect share" STYLE="fork" FOLDED="true">
        <node ID="G7_12_WHAT" TEXT="Effect Shares là số lần người dùng đã share (chia sẻ) effect (hiệu ứng AR/filter) từ quảng cáo, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_12_USE" TEXT="Metric này bao gồm cả shares từ Facebook và Instagram." STYLE="fork" FOLDED="true" />
        <node ID="G7_12_LIMIT" TEXT="Effect Shares = Số lần share effect (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_13" TEXT="Interactions" STYLE="fork" FOLDED="true">
        <node ID="G7_13_WHAT" TEXT="Interactions là số lượt interactions Meta ghi nhận có attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_13_USE" TEXT="Metric này dùng để đọc phản hồi với Page, post hoặc creative." STYLE="fork" FOLDED="true" />
        <node ID="G7_13_LIMIT" TEXT="Tương tác không tự đồng nghĩa khách có nhu cầu mua, có đơn hoặc tạo GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_14" TEXT="Cost per Page engagement" STYLE="fork" FOLDED="true">
        <node ID="G7_14_WHAT" TEXT="Cost per Page Engagement là chi phí trung bình cho mỗi lần người dùng tương tác với Facebook Page, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G7_14_USE" TEXT="Metric này bao gồm mọi loại tương tác với Page (likes, follows, clicks, v.v.)" STYLE="fork" FOLDED="true" />
        <node ID="G7_14_LIMIT" TEXT="Cost per Page Engagement = Amount Spent / Page Engagements" STYLE="fork" FOLDED="true" />
        <node ID="G7_14_HIGH" TEXT="Khi cao, có thể do CPM cao hoặc Page tạo ít engagement trên mỗi impression; audience, nội dung Page và CTA chưa hợp nhau. Cần xem thành phần engagement vì các hành động có giá trị khác nhau." STYLE="fork" FOLDED="true" />
        <node ID="G7_14_LOW" TEXT="Khi thấp, Page đang nhận tương tác rẻ; có thể do nội dung dễ phản hồi hoặc audience quen thương hiệu. Không tự hiểu là có nhu cầu mua vì Page engagement có thể gồm nhiều hành động nhẹ." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G7_15" TEXT="Cost per post engagement" STYLE="fork" FOLDED="true">
        <node ID="G7_15_WHAT" TEXT="Cost per Post Engagement là chi phí trung bình cho mỗi lần người dùng tương tác với post, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G7_15_USE" TEXT="Metric này bao gồm mọi loại tương tác với post (likes, reactions, comments, shares, saves, clicks, v.v.)." STYLE="fork" FOLDED="true" />
        <node ID="G7_15_LIMIT" TEXT="Cost per Post Engagement = Amount Spent / Post Engagements" STYLE="fork" FOLDED="true" />
        <node ID="G7_15_HIGH" TEXT="Khi cao, có thể do CPM cao hoặc post tạo ít engagement; content chưa đủ thu hút, không hợp audience/placement hoặc người xem có nhu cầu nhưng thích nhắn riêng hơn tương tác công khai. Hãy đọc cùng CPR Mess trước khi kết luận creative tệ." STYLE="fork" FOLDED="true" />
        <node ID="G7_15_LOW" TEXT="Khi thấp, post đang tạo tương tác rẻ; có thể nhờ nội dung giải trí, hữu ích, gây đồng cảm hoặc dễ comment/share. Engagement rẻ nhưng CPR Mess cao thường gợi ý content hấp dẫn để tương tác hơn là thúc đẩy nhu cầu mua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G1_16" TEXT="Page engagement" STYLE="fork" FOLDED="true">
        <node ID="G1_16_WHAT" TEXT="Page Engagement là tổng số lần người dùng tương tác với Facebook Page và nội dung của Page, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G1_16_USE" TEXT="Metric này có thể bao gồm reactions, comments, shares, clicks và các hành động khác trên Page tùy layout report." STYLE="fork" FOLDED="true" />
        <node ID="G1_16_LIMIT" TEXT="Page Engagement = Tổng số engagement với Page được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_14" TEXT="Cost per like" STYLE="fork" FOLDED="true">
        <node ID="G2_14_WHAT" TEXT="Cost per like là chi phí trung bình để Meta ghi nhận một lượt like Page, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_14_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_14_LIMIT" TEXT="Cost per like = Amount Spent / Facebook likes." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_15" TEXT="Cost per event response" STYLE="fork" FOLDED="true">
        <node ID="G2_15_WHAT" TEXT="Cost per event response là chi phí trung bình để Meta ghi nhận một lượt phản hồi sự kiện, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_15_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_15_LIMIT" TEXT="Cost per event response = Amount Spent / Event responses." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_16" TEXT="Cost per interaction" STYLE="fork" FOLDED="true">
        <node ID="G2_16_WHAT" TEXT="Cost per interaction là chi phí trung bình để Meta ghi nhận một lượt tương tác, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_16_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_16_LIMIT" TEXT="Cost per interaction = Amount Spent / Interactions." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_17" TEXT="Instagram profile visits" STYLE="fork" FOLDED="true">
        <node ID="G2_17_WHAT" TEXT="Instagram profile visits là số lượt instagram profile visits Meta ghi nhận có attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_17_USE" TEXT="Metric này dùng để đọc phản hồi với Page, post hoặc creative." STYLE="fork" FOLDED="true" />
        <node ID="G2_17_LIMIT" TEXT="Tương tác không tự đồng nghĩa khách có nhu cầu mua, có đơn hoặc tạo GMV." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G8" TEXT="G. Ứng dụng, game và in-app advertising (25)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G8_1" TEXT="Achievements unlocked" STYLE="fork" FOLDED="true">
        <node ID="G8_1_WHAT" TEXT="Hiểu: Số lần Meta ghi nhận event người dùng mở khóa thành tựu trong app/game." STYLE="fork" FOLDED="true" />
        <node ID="G8_1_USE" TEXT="Dùng: Dùng cho app/game muốn tối ưu người dùng tiến sâu hơn trong sản phẩm." STYLE="fork" FOLDED="true" />
        <node ID="G8_1_LIMIT" TEXT="Lưu ý: Joycat không có app/game event này; bỏ qua khi làm Metric Tree Joycat." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_2" TEXT="Cost per achievement unlocked" STYLE="fork" FOLDED="true">
        <node ID="G8_2_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận để có một event mở khóa thành tựu." STYLE="fork" FOLDED="true" />
        <node ID="G8_2_USE" TEXT="Dùng: So sánh hiệu quả user acquisition hoặc engagement sâu của game/app." STYLE="fork" FOLDED="true" />
        <node ID="G8_2_LIMIT" TEXT="Lưu ý: Chỉ có nghĩa khi event Achievement được gửi và định nghĩa ổn định." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_3" TEXT="Achievements unlocked conversion value" STYLE="fork" FOLDED="true">
        <node ID="G8_3_WHAT" TEXT="Hiểu: Tổng giá trị được gửi kèm event mở khóa thành tựu." STYLE="fork" FOLDED="true" />
        <node ID="G8_3_USE" TEXT="Dùng: Đọc giá trị gán cho achievement trong app/game nếu developer có gửi." STYLE="fork" FOLDED="true" />
        <node ID="G8_3_LIMIT" TEXT="Lưu ý: Không tự là doanh thu hay GMV; cách gán value do app quyết định." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_4" TEXT="App activiations" STYLE="fork" FOLDED="true">
        <node ID="G8_4_WHAT" TEXT="Hiểu: Số lần kích hoạt/mở app theo event Meta nhận được; tên cột export đang viết sai chính tả." STYLE="fork" FOLDED="true" />
        <node ID="G8_4_USE" TEXT="Dùng: Theo dõi người dùng có mở app sau install hoặc sau quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G8_4_LIMIT" TEXT="Lưu ý: Cần xác nhận schema event của app; Joycat không dùng." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_5" TEXT="Cost per app activation" STYLE="fork" FOLDED="true">
        <node ID="G8_5_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận cho một lần app activation." STYLE="fork" FOLDED="true" />
        <node ID="G8_5_USE" TEXT="Dùng: So sánh chiến dịch kéo người dùng mở/khởi động app." STYLE="fork" FOLDED="true" />
        <node ID="G8_5_LIMIT" TEXT="Lưu ý: Chỉ là efficiency Meta attribution, không phải chi phí giữ chân thật." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_6" TEXT="App activations conversion value" STYLE="fork" FOLDED="true">
        <node ID="G8_6_WHAT" TEXT="Hiểu: Giá trị được gửi kèm event app activation." STYLE="fork" FOLDED="true" />
        <node ID="G8_6_USE" TEXT="Dùng: Dùng khi app quy ước activation có giá trị kinh tế." STYLE="fork" FOLDED="true" />
        <node ID="G8_6_LIMIT" TEXT="Lưu ý: Không phải metric chuẩn cho ecommerce; Joycat bỏ qua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_7" TEXT="App installs" STYLE="fork" FOLDED="true">
        <node ID="G8_7_WHAT" TEXT="Hiểu: Số lượt cài đặt app mà Meta ghi nhận/attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G8_7_USE" TEXT="Dùng: Đo kết quả user acquisition cho mobile app." STYLE="fork" FOLDED="true" />
        <node ID="G8_7_LIMIT" TEXT="Lưu ý: Không phải download trang web hoặc cài app của khách hàng Joycat." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_8" TEXT="Cost per app install" STYLE="fork" FOLDED="true">
        <node ID="G8_8_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận cho một lượt cài app." STYLE="fork" FOLDED="true" />
        <node ID="G8_8_USE" TEXT="Dùng: So sánh efficiency acquisition giữa campaign, audience hoặc creative app." STYLE="fork" FOLDED="true" />
        <node ID="G8_8_LIMIT" TEXT="Lưu ý: Chỉ dùng nếu có App installs; không liên quan Joycat hiện tại." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_9" TEXT="Credit spends" STYLE="fork" FOLDED="true">
        <node ID="G8_9_WHAT" TEXT="Hiểu: Event người dùng tiêu một loại credit/điểm/tiền ảo trong app." STYLE="fork" FOLDED="true" />
        <node ID="G8_9_USE" TEXT="Dùng: Đọc mức sử dụng tài nguyên hoặc hành vi có giá trị trong app/game." STYLE="fork" FOLDED="true" />
        <node ID="G8_9_LIMIT" TEXT="Lưu ý: Đây là custom business event; nghĩa chính xác do developer định nghĩa." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_10" TEXT="Cost per credit spend" STYLE="fork" FOLDED="true">
        <node ID="G8_10_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận để tạo một event tiêu credit." STYLE="fork" FOLDED="true" />
        <node ID="G8_10_USE" TEXT="Dùng: Dùng cho app/game tối ưu hành vi tiêu credit." STYLE="fork" FOLDED="true" />
        <node ID="G8_10_LIMIT" TEXT="Lưu ý: Không phải chi phí quảng cáo riêng; là góc nhìn trên Amount Spent." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_11" TEXT="Credit spends conversion value" STYLE="fork" FOLDED="true">
        <node ID="G8_11_WHAT" TEXT="Hiểu: Tổng value được gửi kèm event tiêu credit." STYLE="fork" FOLDED="true" />
        <node ID="G8_11_USE" TEXT="Dùng: Đo giá trị quy ước của hành vi tiêu credit nếu developer gửi value." STYLE="fork" FOLDED="true" />
        <node ID="G8_11_LIMIT" TEXT="Lưu ý: Không tự là tiền khách trả hay doanh thu đã xác minh." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_12" TEXT="Cost per desktop app engagement" STYLE="fork" FOLDED="true">
        <node ID="G8_12_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận cho một event tương tác trong desktop app." STYLE="fork" FOLDED="true" />
        <node ID="G8_12_USE" TEXT="Dùng: Dùng cho sản phẩm có desktop app và có gửi event engagement." STYLE="fork" FOLDED="true" />
        <node ID="G8_12_LIMIT" TEXT="Lưu ý: Cần event integration; không áp dụng Joycat." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_13" TEXT="Cost per desktop app story engagement" STYLE="fork" FOLDED="true">
        <node ID="G8_13_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận cho event tương tác story của desktop app." STYLE="fork" FOLDED="true" />
        <node ID="G8_13_USE" TEXT="Dùng: Dùng cho use case desktop app có loại event này." STYLE="fork" FOLDED="true" />
        <node ID="G8_13_LIMIT" TEXT="Lưu ý: Tên event rất đặc thù; không có schema thì không tự đoán nội dung event." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_14" TEXT="Cost per desktop app use" STYLE="fork" FOLDED="true">
        <node ID="G8_14_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận cho một event sử dụng desktop app." STYLE="fork" FOLDED="true" />
        <node ID="G8_14_USE" TEXT="Dùng: Dùng để đánh giá acquisition/engagement của desktop app." STYLE="fork" FOLDED="true" />
        <node ID="G8_14_LIMIT" TEXT="Lưu ý: Chỉ meaningful khi Meta nhận event app use từ nguồn tích hợp." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_15" TEXT="Game plays" STYLE="fork" FOLDED="true">
        <node ID="G8_15_WHAT" TEXT="Hiểu: Số event bắt đầu/chơi game mà Meta ghi nhận." STYLE="fork" FOLDED="true" />
        <node ID="G8_15_USE" TEXT="Dùng: Dùng cho game đo chất lượng user acquisition sau install." STYLE="fork" FOLDED="true" />
        <node ID="G8_15_LIMIT" TEXT="Lưu ý: Cần developer định nghĩa rõ play là mở game, vào màn hay hoàn thành phiên." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_16" TEXT="Cost per game play" STYLE="fork" FOLDED="true">
        <node ID="G8_16_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận cho một game play event." STYLE="fork" FOLDED="true" />
        <node ID="G8_16_USE" TEXT="Dùng: So sánh chiến dịch kéo người cài xong rồi thật sự chơi." STYLE="fork" FOLDED="true" />
        <node ID="G8_16_LIMIT" TEXT="Lưu ý: Không dùng cho shop/ecommerce như Joycat." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_17" TEXT="Cost per in-app ad click" STYLE="fork" FOLDED="true">
        <node ID="G8_17_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận trên một click vào quảng cáo hiển thị trong app." STYLE="fork" FOLDED="true" />
        <node ID="G8_17_USE" TEXT="Dùng: Thường liên quan app publisher hoặc in-app advertising/Audience Network." STYLE="fork" FOLDED="true" />
        <node ID="G8_17_LIMIT" TEXT="Lưu ý: Không phải click vào quảng cáo Joycat trên Facebook/Instagram." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_18" TEXT="Levels achieved" STYLE="fork" FOLDED="true">
        <node ID="G8_18_WHAT" TEXT="Hiểu: Số event đạt một level trong game/app." STYLE="fork" FOLDED="true" />
        <node ID="G8_18_USE" TEXT="Dùng: Đo mức tiến triển hoặc chất lượng engagement sâu." STYLE="fork" FOLDED="true" />
        <node ID="G8_18_LIMIT" TEXT="Lưu ý: Ý nghĩa level do game/app định nghĩa; Joycat bỏ qua." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_19" TEXT="Cost per level achieved" STYLE="fork" FOLDED="true">
        <node ID="G8_19_WHAT" TEXT="Hiểu: Chi phí Meta ghi nhận để có một event đạt level." STYLE="fork" FOLDED="true" />
        <node ID="G8_19_USE" TEXT="Dùng: So sánh chi phí thu hút người chơi tới mốc tiến triển mong muốn." STYLE="fork" FOLDED="true" />
        <node ID="G8_19_LIMIT" TEXT="Lưu ý: Cần chọn rõ level nào, nếu không metric rất mơ hồ." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_20" TEXT="Levels achieved conversion value" STYLE="fork" FOLDED="true">
        <node ID="G8_20_WHAT" TEXT="Hiểu: Tổng value gắn với event đạt level." STYLE="fork" FOLDED="true" />
        <node ID="G8_20_USE" TEXT="Dùng: Dùng khi developer gán giá trị cho level/progression." STYLE="fork" FOLDED="true" />
        <node ID="G8_20_LIMIT" TEXT="Lưu ý: Không phải doanh thu trừ khi event schema và business rule xác nhận." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G8_21" TEXT="Desktop credit spends conversion value" STYLE="fork" FOLDED="true">
        <node ID="G8_21_WHAT" TEXT="Hiểu: Giá trị được gửi kèm event tiêu credit của desktop app." STYLE="fork" FOLDED="true" />
        <node ID="G8_21_USE" TEXT="Dùng: Dùng cho desktop app có nền kinh tế credit và event integration." STYLE="fork" FOLDED="true" />
        <node ID="G8_21_LIMIT" TEXT="Lưu ý: Custom event value; Joycat không cần, không thay GMV." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_22" TEXT="App store views" STYLE="fork" FOLDED="true">
        <node ID="G2_22_WHAT" TEXT="Hiểu: App store views là số event App store views Meta ghi nhận trong app/game." STYLE="fork" FOLDED="true" />
        <node ID="G2_22_USE" TEXT="Dùng: Chỉ dùng khi app/game có tracking event tương ứng." STYLE="fork" FOLDED="true" />
        <node ID="G2_22_LIMIT" TEXT="Lưu ý: Joycat không có app/game event này trong case hiện tại." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_24" TEXT="Cost per 1,000 in-app ad impressions" STYLE="fork" FOLDED="true">
        <node ID="G2_24_WHAT" TEXT="Cost per 1,000 in-app ad impressions là chi phí trung bình để Meta phân phối 1.000 lượt hiển thị quảng cáo trong ứng dụng." STYLE="fork" FOLDED="true" />
        <node ID="G2_24_USE" TEXT="Metric này dùng cho app/game để xem giá mua in-app inventory." STYLE="fork" FOLDED="true" />
        <node ID="G2_24_LIMIT" TEXT="Cost per 1,000 in-app ad impressions = Amount Spent / In-app ad impressions × 1.000." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_25" TEXT="Cost per mobile app D2 retention" STYLE="fork" FOLDED="true">
        <node ID="G2_25_WHAT" TEXT="Cost per mobile app D2 retention là chi phí trung bình để Meta ghi nhận một lượt mobile app D2 retention, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_25_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_25_LIMIT" TEXT="Cost per mobile app D2 retention = Amount Spent / mobile app D2 retention." STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_26" TEXT="Cost per mobile app D7 retention" STYLE="fork" FOLDED="true">
        <node ID="G2_26_WHAT" TEXT="Cost per mobile app D7 retention là chi phí trung bình để Meta ghi nhận một lượt mobile app D7 retention, được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_26_USE" TEXT="Metric này dùng để so sánh giá tạo đúng event đó giữa các campaign, khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_26_LIMIT" TEXT="Cost per mobile app D7 retention = Amount Spent / mobile app D7 retention." STYLE="fork" FOLDED="true" />
      </node>
    </node>
    <node ID="G9" TEXT="H. Phân rã conversion theo nguồn (In-app / Website / Offline / Meta) (146)" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="G9_1" TEXT="Desktop app engagements" STYLE="fork" FOLDED="true">
        <node ID="G9_1_WHAT" TEXT="Desktop App Engagements là số lần người dùng đã tương tác với desktop app (ứng dụng máy tính), được attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_1_USE" TEXT="Metric này đếm các sự kiện engagement trong desktop app được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)" STYLE="fork" FOLDED="true" />
        <node ID="G9_1_LIMIT" TEXT="Desktop App Engagements = Số lần engagement events trong desktop app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_2" TEXT="Desktop app story engagements" STYLE="fork" FOLDED="true">
        <node ID="G9_2_WHAT" TEXT="Desktop App Story Engagements là số lần người dùng đã tương tác với desktop app story (câu chuyện ứng dụng máy tính), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_2_USE" TEXT="Metric này đếm các actions related to the desktop app story (ví dụ clicks, shares, v.v.)" STYLE="fork" FOLDED="true" />
        <node ID="G9_2_LIMIT" TEXT="Desktop App Story Engagements = Số lần actions related to desktop app story (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_3" TEXT="Desktop app uses" STYLE="fork" FOLDED="true">
        <node ID="G9_3_WHAT" TEXT="Desktop App Uses là số lần người dùng đã sử dụng desktop app (ứng dụng máy tính), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_3_USE" TEXT="Metric này đếm các sự kiện use trong desktop app được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)." STYLE="fork" FOLDED="true" />
        <node ID="G9_3_LIMIT" TEXT="Desktop App Uses = Số lần use events trong desktop app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_4" TEXT="In-app ad clicks" STYLE="fork" FOLDED="true">
        <node ID="G9_4_WHAT" TEXT="In-app ad clicks là số lượt người dùng click quảng cáo trong app trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_4_USE" TEXT="Metric này đếm các event In-App Ad Click được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_4_LIMIT" TEXT="In-app ad clicks = Tổng số event In-App Ad Click trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_5" TEXT="In-app ad impressions" STYLE="fork" FOLDED="true">
        <node ID="G9_5_WHAT" TEXT="In-app ad impressions là số lượt người dùng nhận impression quảng cáo trong app trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_5_USE" TEXT="Metric này đếm các event In-App Ad Impression được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_5_LIMIT" TEXT="In-app ad impressions = Tổng số event In-App Ad Impression trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_6" TEXT="In-app ad impressions value" STYLE="fork" FOLDED="true">
        <node ID="G9_6_WHAT" TEXT="In-app ad impressions value là tổng value của các lượt nhận impression quảng cáo trong app trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_6_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event In-App Ad Impression thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_6_LIMIT" TEXT="In-app ad impressions value = Tổng value của tất cả event In-App Ad Impression trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_7" TEXT="Meta workflow completions" STYLE="fork" FOLDED="true">
        <node ID="G9_7_WHAT" TEXT="Meta Workflow Completions là số lần workflow completions (hoàn thành quy trình) xảy ra trên Meta technologies (ví dụ Pages, Messenger, WhatsApp), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_7_USE" TEXT="Đối với WhatsApp, metric này có thể bao gồm instances where we detect a lead, hoặc leads từ predefined/custom labels (ví dụ New Customer, Follow-up, Important), hoặc Flow completions trên WhatsApp từ ads có flow attached." STYLE="fork" FOLDED="true" />
        <node ID="G9_7_LIMIT" TEXT="Meta Workflow Completions = Số lần workflow completions trên Meta technologies (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_8" TEXT="Meta workflow completions value" STYLE="fork" FOLDED="true">
        <node ID="G9_8_WHAT" TEXT="Meta Workflow Completions Value là tổng giá trị (value) của các workflow completions (hoàn thành quy trình) xảy ra trên Meta technologies (ví dụ Pages, Messenger, WhatsApp), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_8_USE" TEXT="Metric này đếm total value của workflow completion events trên Meta technologies." STYLE="fork" FOLDED="true" />
        <node ID="G9_8_LIMIT" TEXT="Meta Workflow Completions Value = Tổng value của workflow completions trên Meta technologies (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_9" TEXT="Mobile app D2 retention" STYLE="fork" FOLDED="true">
        <node ID="G9_9_WHAT" TEXT="Mobile app D2 retention là số lượt người dùng quay lại app vào ngày D2 trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_9_USE" TEXT="Metric này đếm các event D2 Retention được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_9_LIMIT" TEXT="Mobile app D2 retention = Tổng số event D2 Retention trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_10" TEXT="Mobile app D7 retention" STYLE="fork" FOLDED="true">
        <node ID="G9_10_WHAT" TEXT="Mobile app D7 retention là số lượt người dùng quay lại app vào ngày D7 trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_10_USE" TEXT="Metric này đếm các event D7 Retention được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_10_LIMIT" TEXT="Mobile app D7 retention = Tổng số event D7 Retention trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_11" TEXT="Meta message to buy" STYLE="fork" FOLDED="true">
        <node ID="G9_11_WHAT" TEXT="Meta Message to Buy là số lần mua hàng (purchase) được thực hiện qua messaging (Messenger, Instagram Direct, WhatsApp) sau khi người dùng bắt đầu conversation với doanh nghiệp từ quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_11_USE" TEXT="Metric này được tính khi bạn chọn performance goal “Maximize number of purchases through messaging” cho ads click-to-message" STYLE="fork" FOLDED="true" />
        <node ID="G9_11_LIMIT" TEXT="Meta Message to Buy = Số lần mua hàng qua messaging (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_12" TEXT="In-app achievements unlocked" STYLE="fork" FOLDED="true">
        <node ID="G9_12_WHAT" TEXT="In-App Achievements Unlocked là số lần người dùng đã unlock (mở khóa) achievements (thành tích) trong mobile app, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_12_USE" TEXT="Metric này đếm các sự kiện unlock achievement được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)" STYLE="fork" FOLDED="true" />
        <node ID="G9_12_LIMIT" TEXT="In-App Achievements Unlocked = Số lần unlock achievement events trong mobile app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_13" TEXT="In-app achievements unlocked conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_13_WHAT" TEXT="In-App Achievements Unlocked Conversion Value là tổng giá trị (value) được trả về từ các achievements unlocked trong mobile app" STYLE="fork" FOLDED="true" />
        <node ID="G9_13_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập app event achievements unlocked." STYLE="fork" FOLDED="true" />
        <node ID="G9_13_LIMIT" TEXT="In-App Achievements Unlocked Conversion Value = Tổng các value parameters bạn đã set cho achievements unlocked conversion standard event trên mobile app" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_14" TEXT="In-app adds of payment info" STYLE="fork" FOLDED="true">
        <node ID="G9_14_WHAT" TEXT="In-App Adds of Payment Info là số lần người dùng đã thêm thông tin thanh toán (payment info) trong mobile app, được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_14_USE" TEXT="Metric này đếm các sự kiện add payment info được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)" STYLE="fork" FOLDED="true" />
        <node ID="G9_14_LIMIT" TEXT="In-App Adds of Payment Info = Số lần add payment info events trong mobile app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_15" TEXT="Website adds of payment info" STYLE="fork" FOLDED="true">
        <node ID="G9_15_WHAT" TEXT="Website adds of payment info là số lượt người dùng thêm thông tin thanh toán trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_15_USE" TEXT="Metric này đếm các event Add Payment Info được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_15_LIMIT" TEXT="Website adds of payment info = Tổng số event Add Payment Info trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_16" TEXT="Offline adds of payment info" STYLE="fork" FOLDED="true">
        <node ID="G9_16_WHAT" TEXT="Offline adds of payment info là số lượt người dùng thêm thông tin thanh toán từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_16_USE" TEXT="Metric này đếm các event Add Payment Info được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_16_LIMIT" TEXT="Offline adds of payment info = Tổng số event Add Payment Info từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_17" TEXT="In-app adds of payment info conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_17_WHAT" TEXT="In-App Adds of Payment Info Conversion Value là tổng giá trị (value) được trả về từ các add payment info events trong mobile app" STYLE="fork" FOLDED="true" />
        <node ID="G9_17_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập app event add payment info" STYLE="fork" FOLDED="true" />
        <node ID="G9_17_LIMIT" TEXT="In-App Adds of Payment Info Conversion Value = Tổng các value parameters bạn đã set cho add payment info conversion standard event trên mobile app" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_18" TEXT="Website payment info adds conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_18_WHAT" TEXT="Website Adds of Payment Info Conversion Value là tổng giá trị (value) của các add payment info events trên website" STYLE="fork" FOLDED="true" />
        <node ID="G9_18_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập conversion event add payment info qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_18_LIMIT" TEXT="Website Adds of Payment Info Conversion Value = Tổng các value parameters bạn đã set cho add payment info events trên website" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_19" TEXT="Offline payment info adds conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_19_WHAT" TEXT="Offline Adds of Payment Info Conversion Value là tổng giá trị (value) của các add payment info events xảy ra offline (ví dụ: tại cửa hàng vật lý, qua điện thoại, CRM)" STYLE="fork" FOLDED="true" />
        <node ID="G9_19_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi upload offline events data" STYLE="fork" FOLDED="true" />
        <node ID="G9_19_LIMIT" TEXT="Offline Adds of Payment Info Conversion Value = Tổng các value parameters bạn đã set cho add payment info events offline" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_20" TEXT="In-app adds to cart" STYLE="fork" FOLDED="true">
        <node ID="G9_20_WHAT" TEXT="Offline Adds of Payment Info Conversion Value là tổng giá trị (value) của các add payment info events xảy ra offline (ví dụ: tại cửa hàng vật lý, qua điện thoại, CRM)" STYLE="fork" FOLDED="true" />
        <node ID="G9_20_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi upload offline events data." STYLE="fork" FOLDED="true" />
        <node ID="G9_20_LIMIT" TEXT="Offline Adds of Payment Info Conversion Value = Tổng các value parameters bạn đã set cho add payment info events offline" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_21" TEXT="Website adds to cart" STYLE="fork" FOLDED="true">
        <node ID="G9_21_WHAT" TEXT="Website adds to cart là số lượt người dùng thêm sản phẩm vào giỏ hàng trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_21_USE" TEXT="Metric này đếm các event Add To Cart được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_21_LIMIT" TEXT="Website adds to cart = Tổng số event Add To Cart trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_22" TEXT="Offline adds to cart" STYLE="fork" FOLDED="true">
        <node ID="G9_22_WHAT" TEXT="Offline adds to cart là số lượt người dùng thêm sản phẩm vào giỏ hàng từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_22_USE" TEXT="Metric này đếm các event Add To Cart được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_22_LIMIT" TEXT="Offline adds to cart = Tổng số event Add To Cart từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_23" TEXT="In-app adds to cart conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_23_WHAT" TEXT="In-app adds to cart conversion value là tổng value của các lượt thêm sản phẩm vào giỏ hàng trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_23_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Add To Cart thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_23_LIMIT" TEXT="In-app adds to cart conversion value = Tổng value của tất cả event Add To Cart trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_24" TEXT="Website adds to cart conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_24_WHAT" TEXT="Website adds to cart conversion value là tổng value của các lượt thêm sản phẩm vào giỏ hàng trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_24_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Add To Cart thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_24_LIMIT" TEXT="Website adds to cart conversion value = Tổng value của tất cả event Add To Cart trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_25" TEXT="Meta adds to cart" STYLE="fork" FOLDED="true">
        <node ID="G9_25_WHAT" TEXT="Meta adds to cart là số lượt người dùng thêm sản phẩm vào giỏ hàng trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_25_USE" TEXT="Metric này đếm các event Add To Cart được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_25_LIMIT" TEXT="Meta adds to cart = Tổng số event Add To Cart trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_26" TEXT="Offline adds to cart conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_26_WHAT" TEXT="Offline adds to cart conversion value là tổng value của các lượt thêm sản phẩm vào giỏ hàng từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_26_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Add To Cart thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_26_LIMIT" TEXT="Offline adds to cart conversion value = Tổng value của tất cả event Add To Cart từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_27" TEXT="In-app adds to wishlist" STYLE="fork" FOLDED="true">
        <node ID="G9_27_WHAT" TEXT="In-App Adds to Wishlist là số lần người dùng đã thêm items vào wishlist trong mobile app, được recorded như app events và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_27_USE" TEXT="Metric này đếm các sự kiện add to wishlist được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)" STYLE="fork" FOLDED="true" />
        <node ID="G9_27_LIMIT" TEXT="In-App Adds to Wishlist = Số lần add to wishlist events trong mobile app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_28" TEXT="Website adds to wishlist" STYLE="fork" FOLDED="true">
        <node ID="G9_28_WHAT" TEXT="Website adds to wishlist là số lượt người dùng thêm sản phẩm vào danh sách yêu thích trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_28_USE" TEXT="Metric này đếm các event Add To Wishlist được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_28_LIMIT" TEXT="Website adds to wishlist = Tổng số event Add To Wishlist trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_29" TEXT="Offline adds to wishlist" STYLE="fork" FOLDED="true">
        <node ID="G9_29_WHAT" TEXT="Offline adds to wishlist là số lượt người dùng thêm sản phẩm vào danh sách yêu thích từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_29_USE" TEXT="Metric này đếm các event Add To Wishlist được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_29_LIMIT" TEXT="Offline adds to wishlist = Tổng số event Add To Wishlist từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_30" TEXT="Meta adds to wishlist" STYLE="fork" FOLDED="true">
        <node ID="G9_30_WHAT" TEXT="Meta adds to wishlist là số lượt người dùng thêm sản phẩm vào danh sách yêu thích trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_30_USE" TEXT="Metric này đếm các event Add To Wishlist được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_30_LIMIT" TEXT="Meta adds to wishlist = Tổng số event Add To Wishlist trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_31" TEXT="In-app adds to wishlist conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_31_WHAT" TEXT="In-App Adds to Wishlist Conversion Value là tổng giá trị (value) của các add to wishlist events trong mobile app" STYLE="fork" FOLDED="true" />
        <node ID="G9_31_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập app event add to wishlist" STYLE="fork" FOLDED="true" />
        <node ID="G9_31_LIMIT" TEXT="In-App Adds to Wishlist Conversion Value = Tổng các value parameters bạn đã set cho add to wishlist conversion standard event trên mobile app" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_32" TEXT="Website adds to wishlist conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_32_WHAT" TEXT="Website Adds to Wishlist Conversion Value là tổng giá trị (value) của các add to wishlist events trên website." STYLE="fork" FOLDED="true" />
        <node ID="G9_32_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập conversion event add to wishlist qua Meta Pixel hoặc Conversions API" STYLE="fork" FOLDED="true" />
        <node ID="G9_32_LIMIT" TEXT="Website Adds to Wishlist Conversion Value = Tổng các value parameters bạn đã set cho add to wishlist events trên website" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_33" TEXT="Offline adds to wishlist conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_33_WHAT" TEXT="Offline Adds to Wishlist Conversion Value là tổng giá trị (value) của các add to wishlist events xảy ra offline (ví dụ: tại cửa hàng vật lý, qua điện thoại, CRM)" STYLE="fork" FOLDED="true" />
        <node ID="G9_33_USE" TEXT="Giá trị này dựa trên value được gán khi upload offline events data qua Conversions API for Offline Events." STYLE="fork" FOLDED="true" />
        <node ID="G9_33_LIMIT" TEXT="Offline Adds to Wishlist Conversion Value = Tổng các value parameters bạn đã set cho add to wishlist events offline" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_34" TEXT="Meta adds to wishlist conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_34_WHAT" TEXT="Meta Adds to Wishlist Conversion Value là tổng giá trị (value) của các add to wishlist events từ tất cả các nguồn (website, in-app, offline) được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_34_USE" TEXT="Giá trị này dựa trên value được gán cho add to wishlist events qua các Meta Business Tools (Meta Pixel, Conversions API, Facebook SDK, offline events)" STYLE="fork" FOLDED="true" />
        <node ID="G9_34_LIMIT" TEXT="Meta Adds to Wishlist Conversion Value = Tổng các value parameters từ tất cả các add to wishlist events (website + in-app + offline)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_35" TEXT="In-app sessions" STYLE="fork" FOLDED="true">
        <node ID="G9_35_WHAT" TEXT="In-App Sessions là số lần người dùng đã mở và sử dụng mobile app (app sessions), được recorded như app events và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_35_USE" TEXT="Metric này đếm các sự kiện app sessions được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)" STYLE="fork" FOLDED="true" />
        <node ID="G9_35_LIMIT" TEXT="In-App Sessions = Số lần app sessions trong mobile app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_36" TEXT="In-app sessions conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_36_WHAT" TEXT="In-App Sessions Conversion Value là tổng giá trị (value) được trả về từ các app sessions trong mobile app" STYLE="fork" FOLDED="true" />
        <node ID="G9_36_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập app event sessions" STYLE="fork" FOLDED="true" />
        <node ID="G9_36_LIMIT" TEXT="In-App Sessions Conversion Value = Tổng các value parameters bạn đã set cho app sessions conversion standard event trên mobile app" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_37" TEXT="Mobile app installs" STYLE="fork" FOLDED="true">
        <node ID="G9_37_WHAT" TEXT="Mobile App Installs là số lần cài đặt (installs) của mobile app, được recorded như app events và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_37_USE" TEXT="Metric này đếm các sự kiện install được tracked bởi Meta Business Tools (Facebook SDK, Conversions API)" STYLE="fork" FOLDED="true" />
        <node ID="G9_37_LIMIT" TEXT="Metric này đếm các sự kiện install được tracked bởi Meta Business Tools (Facebook SDK, Conversions API)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_38" TEXT="Desktop app installs" STYLE="fork" FOLDED="true">
        <node ID="G9_38_WHAT" TEXT="Desktop App Installs là số lần cài đặt (installs) của desktop app (ứng dụng trên máy tính), được attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_38_USE" TEXT="Metric này đếm các sự kiện install khi người dùng click vào quảng cáo và chấp nhận app's permission prompt để cài đặt desktop app" STYLE="fork" FOLDED="true" />
        <node ID="G9_38_LIMIT" TEXT="Desktop App Installs = Số lần install events của desktop app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_39" TEXT="In-app applications submitted" STYLE="fork" FOLDED="true">
        <node ID="G9_39_WHAT" TEXT="In-App Applications Submitted là số lần người dùng đã submit (gửi) applications (đơn đăng ký) cho sản phẩm, dịch vụ hoặc chương trình bạn cung cấp (ví dụ: thẻ tín dụng, chương trình giáo dục, việc làm) trong mobile app, được recorded như app events và attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
        <node ID="G9_39_USE" TEXT="Metric này đếm các sự kiện submit application được tracked bởi Meta Business Tools (Meta pixel, Conversions API, Facebook SDK)." STYLE="fork" FOLDED="true" />
        <node ID="G9_39_LIMIT" TEXT="In-App Applications Submitted = Số lần submit application events trong mobile app (attributed cho ads)" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_40" TEXT="Website applications submitted" STYLE="fork" FOLDED="true">
        <node ID="G9_40_WHAT" TEXT="Website applications submitted là số lượt người dùng gửi đơn đăng ký trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_40_USE" TEXT="Metric này đếm các event Submit Application được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_40_LIMIT" TEXT="Website applications submitted = Tổng số event Submit Application trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_41" TEXT="offline applications submitted" STYLE="fork" FOLDED="true">
        <node ID="G9_41_WHAT" TEXT="offline applications submitted là số lượt người dùng gửi đơn đăng ký từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_41_USE" TEXT="Metric này đếm các event Submit Application được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_41_LIMIT" TEXT="offline applications submitted = Tổng số event Submit Application từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_42" TEXT="In-app applications submitted conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_42_WHAT" TEXT="In-App Applications Submitted Conversion Value là tổng giá trị (value) được trả về từ các submit application events trong mobile app" STYLE="fork" FOLDED="true" />
        <node ID="G9_42_USE" TEXT="Giá trị này dựa trên value mà bạn đã gán khi thiết lập app event submit application" STYLE="fork" FOLDED="true" />
        <node ID="G9_42_LIMIT" TEXT="In-App Applications Submitted Conversion Value = Tổng các value parameters bạn đã set cho submit application conversion standard event trên mobile app" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_43" TEXT="Website applications submitted conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_43_WHAT" TEXT="Website applications submitted conversion value là tổng value của các lượt gửi đơn đăng ký trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_43_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Submit Application thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_43_LIMIT" TEXT="Website applications submitted conversion value = Tổng value của tất cả event Submit Application trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_44" TEXT="Offline applications submitted conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_44_WHAT" TEXT="Offline applications submitted conversion value là tổng value của các lượt gửi đơn đăng ký từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_44_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Submit Application thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_44_LIMIT" TEXT="Offline applications submitted conversion value = Tổng value của tất cả event Submit Application từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_45" TEXT="In-app appointments scheduled" STYLE="fork" FOLDED="true">
        <node ID="G9_45_WHAT" TEXT="In-app appointments scheduled là số lượt người dùng đặt lịch hẹn trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_45_USE" TEXT="Metric này đếm các event Schedule được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_45_LIMIT" TEXT="In-app appointments scheduled = Tổng số event Schedule trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_46" TEXT="Website appointments scheduled" STYLE="fork" FOLDED="true">
        <node ID="G9_46_WHAT" TEXT="Website appointments scheduled là số lượt người dùng đặt lịch hẹn trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_46_USE" TEXT="Metric này đếm các event Schedule được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_46_LIMIT" TEXT="Website appointments scheduled = Tổng số event Schedule trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_47" TEXT="Offline appointments scheduled" STYLE="fork" FOLDED="true">
        <node ID="G9_47_WHAT" TEXT="Offline appointments scheduled là số lượt người dùng đặt lịch hẹn từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_47_USE" TEXT="Metric này đếm các event Schedule được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_47_LIMIT" TEXT="Offline appointments scheduled = Tổng số event Schedule từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_48" TEXT="In-app appointments scheduled conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_48_WHAT" TEXT="In-app appointments scheduled conversion value là tổng value của các lượt đặt lịch hẹn trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_48_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Schedule thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_48_LIMIT" TEXT="In-app appointments scheduled conversion value = Tổng value của tất cả event Schedule trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_49" TEXT="Website appointments scheduled conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_49_WHAT" TEXT="Website appointments scheduled conversion value là tổng value của các lượt đặt lịch hẹn trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_49_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Schedule thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_49_LIMIT" TEXT="Website appointments scheduled conversion value = Tổng value của tất cả event Schedule trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_50" TEXT="Offline appointments scheduled conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_50_WHAT" TEXT="Offline appointments scheduled conversion value là tổng value của các lượt đặt lịch hẹn từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_50_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Schedule thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_50_LIMIT" TEXT="Offline appointments scheduled conversion value = Tổng value của tất cả event Schedule từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_51" TEXT="In-app checkouts initiated" STYLE="fork" FOLDED="true">
        <node ID="G9_51_WHAT" TEXT="In-app checkouts initiated là số lượt người dùng bắt đầu thanh toán trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_51_USE" TEXT="Metric này đếm các event Initiate Checkout được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_51_LIMIT" TEXT="In-app checkouts initiated = Tổng số event Initiate Checkout trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_52" TEXT="Website checkouts initiated" STYLE="fork" FOLDED="true">
        <node ID="G9_52_WHAT" TEXT="Website checkouts initiated là số lượt người dùng bắt đầu thanh toán trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_52_USE" TEXT="Metric này đếm các event Initiate Checkout được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_52_LIMIT" TEXT="Website checkouts initiated = Tổng số event Initiate Checkout trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_53" TEXT="Offline checkouts initiated" STYLE="fork" FOLDED="true">
        <node ID="G9_53_WHAT" TEXT="Offline checkouts initiated là số lượt người dùng bắt đầu thanh toán từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_53_USE" TEXT="Metric này đếm các event Initiate Checkout được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_53_LIMIT" TEXT="Offline checkouts initiated = Tổng số event Initiate Checkout từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_54" TEXT="Meta checkouts initiated" STYLE="fork" FOLDED="true">
        <node ID="G9_54_WHAT" TEXT="Meta checkouts initiated là số lượt người dùng bắt đầu thanh toán trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_54_USE" TEXT="Metric này đếm các event Initiate Checkout được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_54_LIMIT" TEXT="Meta checkouts initiated = Tổng số event Initiate Checkout trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_55" TEXT="In-app checkouts initiated conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_55_WHAT" TEXT="In-app checkouts initiated conversion value là tổng value của các lượt bắt đầu thanh toán trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_55_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Initiate Checkout thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_55_LIMIT" TEXT="In-app checkouts initiated conversion value = Tổng value của tất cả event Initiate Checkout trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_56" TEXT="Website checkouts initiated conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_56_WHAT" TEXT="Website checkouts initiated conversion value là tổng value của các lượt bắt đầu thanh toán trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_56_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Initiate Checkout thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_56_LIMIT" TEXT="Website checkouts initiated conversion value = Tổng value của tất cả event Initiate Checkout trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_57" TEXT="Offline checkouts initiated conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_57_WHAT" TEXT="Offline checkouts initiated conversion value là tổng value của các lượt bắt đầu thanh toán từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_57_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Initiate Checkout thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_57_LIMIT" TEXT="Offline checkouts initiated conversion value = Tổng value của tất cả event Initiate Checkout từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_58" TEXT="In-app contacts" STYLE="fork" FOLDED="true">
        <node ID="G9_58_WHAT" TEXT="In-app contacts là số lượt người dùng liên hệ doanh nghiệp trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_58_USE" TEXT="Metric này đếm các event Contact được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_58_LIMIT" TEXT="In-app contacts = Tổng số event Contact trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_59" TEXT="Website contacts" STYLE="fork" FOLDED="true">
        <node ID="G9_59_WHAT" TEXT="Website contacts là số lượt người dùng liên hệ doanh nghiệp trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_59_USE" TEXT="Metric này đếm các event Contact được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_59_LIMIT" TEXT="Website contacts = Tổng số event Contact trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_60" TEXT="Offline contacts" STYLE="fork" FOLDED="true">
        <node ID="G9_60_WHAT" TEXT="Offline contacts là số lượt người dùng liên hệ doanh nghiệp từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_60_USE" TEXT="Metric này đếm các event Contact được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_60_LIMIT" TEXT="Offline contacts = Tổng số event Contact từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_61" TEXT="In-app contact conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_61_WHAT" TEXT="In-app contact conversion value là tổng value của các lượt liên hệ doanh nghiệp trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_61_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Contact thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_61_LIMIT" TEXT="In-app contact conversion value = Tổng value của tất cả event Contact trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_62" TEXT="Website contact conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_62_WHAT" TEXT="Website contact conversion value là tổng value của các lượt liên hệ doanh nghiệp trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_62_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Contact thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_62_LIMIT" TEXT="Website contact conversion value = Tổng value của tất cả event Contact trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_63" TEXT="Offline contact conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_63_WHAT" TEXT="Offline contact conversion value là tổng value của các lượt liên hệ doanh nghiệp từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_63_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Contact thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_63_LIMIT" TEXT="Offline contact conversion value = Tổng value của tất cả event Contact từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_64" TEXT="In-app content views" STYLE="fork" FOLDED="true">
        <node ID="G9_64_WHAT" TEXT="In-app content views là số lượt người dùng xem nội dung trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_64_USE" TEXT="Metric này đếm các event View Content được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_64_LIMIT" TEXT="In-app content views = Tổng số event View Content trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_65" TEXT="Website content views" STYLE="fork" FOLDED="true">
        <node ID="G9_65_WHAT" TEXT="Website content views là số lượt người dùng xem nội dung trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_65_USE" TEXT="Metric này đếm các event View Content được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_65_LIMIT" TEXT="Website content views = Tổng số event View Content trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_66" TEXT="Offline content views" STYLE="fork" FOLDED="true">
        <node ID="G9_66_WHAT" TEXT="Offline content views là số lượt người dùng xem nội dung từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_66_USE" TEXT="Metric này đếm các event View Content được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_66_LIMIT" TEXT="Offline content views = Tổng số event View Content từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_67" TEXT="Meta content views" STYLE="fork" FOLDED="true">
        <node ID="G9_67_WHAT" TEXT="Meta content views là số lượt người dùng xem nội dung trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_67_USE" TEXT="Metric này đếm các event View Content được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_67_LIMIT" TEXT="Meta content views = Tổng số event View Content trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_68" TEXT="In-app content views conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_68_WHAT" TEXT="In-app content views conversion value là tổng value của các lượt xem nội dung trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_68_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event View Content thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_68_LIMIT" TEXT="In-app content views conversion value = Tổng value của tất cả event View Content trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_69" TEXT="Website content views conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_69_WHAT" TEXT="Website content views conversion value là tổng value của các lượt xem nội dung trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_69_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event View Content thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_69_LIMIT" TEXT="Website content views conversion value = Tổng value của tất cả event View Content trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_70" TEXT="Offline content views conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_70_WHAT" TEXT="Offline content views conversion value là tổng value của các lượt xem nội dung từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_70_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event View Content thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_70_LIMIT" TEXT="Offline content views conversion value = Tổng value của tất cả event View Content từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_71" TEXT="In-app credits spent" STYLE="fork" FOLDED="true">
        <node ID="G9_71_WHAT" TEXT="In-app credits spent là số lượt người dùng sử dụng credit trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_71_USE" TEXT="Metric này đếm các event Spent Credits được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_71_LIMIT" TEXT="In-app credits spent = Tổng số event Spent Credits trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_72" TEXT="Desktop app credit spends" STYLE="fork" FOLDED="true">
        <node ID="G9_72_WHAT" TEXT="Desktop app credit spends là số lượt người dùng sử dụng credit trong desktop app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_72_USE" TEXT="Metric này đếm các event Spent Credits được tracking thông qua Meta Business Tools được tích hợp." STYLE="fork" FOLDED="true" />
        <node ID="G9_72_LIMIT" TEXT="Desktop app credit spends = Tổng số event Spent Credits trong desktop app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_73" TEXT="In-app credits spent conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_73_WHAT" TEXT="In-app credits spent conversion value là tổng value của các lượt sử dụng credit trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_73_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Spent Credits thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_73_LIMIT" TEXT="In-app credits spent conversion value = Tổng value của tất cả event Spent Credits trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_74" TEXT="In-app custom events" STYLE="fork" FOLDED="true">
        <node ID="G9_74_WHAT" TEXT="In-app custom events là số lượt người dùng thực hiện custom event trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_74_USE" TEXT="Metric này đếm các event Custom Event được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_74_LIMIT" TEXT="In-app custom events = Tổng số event Custom Event trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_75" TEXT="Meta donation ROAS" STYLE="fork" FOLDED="true">
        <node ID="G9_75_WHAT" TEXT="Meta donation ROAS là tỷ lệ giữa conversion value của các lượt donation roas trên Meta technologies và Amount Spent, được Meta attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_75_USE" TEXT="Metric này phản ánh ROAS theo dữ liệu Meta ghi nhận, không phải ROAS business đã đối soát." STYLE="fork" FOLDED="true" />
        <node ID="G9_75_LIMIT" TEXT="Meta donation ROAS = donation ROAS Conversion Value / Amount Spent" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_76" TEXT="In-app donations" STYLE="fork" FOLDED="true">
        <node ID="G9_76_WHAT" TEXT="In-app donations là số lượt người dùng quyên góp trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_76_USE" TEXT="Metric này đếm các event Donate được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_76_LIMIT" TEXT="In-app donations = Tổng số event Donate trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_77" TEXT="Website donations" STYLE="fork" FOLDED="true">
        <node ID="G9_77_WHAT" TEXT="Website donations là số lượt người dùng quyên góp trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_77_USE" TEXT="Metric này đếm các event Donate được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_77_LIMIT" TEXT="Website donations = Tổng số event Donate trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_78" TEXT="offline donations" STYLE="fork" FOLDED="true">
        <node ID="G9_78_WHAT" TEXT="offline donations là số lượt người dùng quyên góp từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_78_USE" TEXT="Metric này đếm các event Donate được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_78_LIMIT" TEXT="offline donations = Tổng số event Donate từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_79" TEXT="Meta donations" STYLE="fork" FOLDED="true">
        <node ID="G9_79_WHAT" TEXT="Meta donations là số lượt người dùng quyên góp trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_79_USE" TEXT="Metric này đếm các event Donate được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_79_LIMIT" TEXT="Meta donations = Tổng số event Donate trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_80" TEXT="In-app donate conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_80_WHAT" TEXT="In-app donate conversion value là tổng value của các lượt quyên góp trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_80_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Donate thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_80_LIMIT" TEXT="In-app donate conversion value = Tổng value của tất cả event Donate trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_81" TEXT="Website donation conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_81_WHAT" TEXT="Website donation conversion value là tổng value của các lượt donation trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_81_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event donation thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_81_LIMIT" TEXT="Website donation conversion value = Tổng value của tất cả event donation trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_82" TEXT="Offline donation conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_82_WHAT" TEXT="Offline donation conversion value là tổng value của các lượt donation từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_82_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event donation thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_82_LIMIT" TEXT="Offline donation conversion value = Tổng value của tất cả event donation từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_83" TEXT="Meta donate conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_83_WHAT" TEXT="Meta donate conversion value là tổng value của các lượt quyên góp trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_83_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Donate thông qua hệ thống của Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_83_LIMIT" TEXT="Meta donate conversion value = Tổng value của tất cả event Donate trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_84" TEXT="App landing page views" STYLE="fork" FOLDED="true">
        <node ID="G9_84_WHAT" TEXT="App landing page views là số lượt người dùng xem landing page trong app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_84_USE" TEXT="Metric này đếm các event Landing Page View được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_84_LIMIT" TEXT="App landing page views = Tổng số event Landing Page View trong app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_85" TEXT="Website landing page views" STYLE="fork" FOLDED="true">
        <node ID="G9_85_WHAT" TEXT="Website landing page views là số lượt người dùng xem landing page trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_85_USE" TEXT="Metric này đếm các event Landing Page View được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_85_LIMIT" TEXT="Website landing page views = Tổng số event Landing Page View trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_86" TEXT="Website leads" STYLE="fork" FOLDED="true">
        <node ID="G9_86_WHAT" TEXT="Website leads là số lượt người dùng tạo lead trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_86_USE" TEXT="Metric này đếm các event Lead được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_86_LIMIT" TEXT="Website leads = Tổng số event Lead trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_87" TEXT="Offline leads" STYLE="fork" FOLDED="true">
        <node ID="G9_87_WHAT" TEXT="Offline leads là số lượt người dùng tạo lead từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_87_USE" TEXT="Metric này đếm các event Lead được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_87_LIMIT" TEXT="Offline leads = Tổng số event Lead từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_88" TEXT="Meta leads" STYLE="fork" FOLDED="true">
        <node ID="G9_88_WHAT" TEXT="Meta leads là số lượt người dùng tạo lead trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_88_USE" TEXT="Metric này đếm các event Lead được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_88_LIMIT" TEXT="Meta leads = Tổng số event Lead trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_89" TEXT="Website leads conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_89_WHAT" TEXT="Website leads conversion value là tổng value của các lượt tạo lead trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_89_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Lead thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_89_LIMIT" TEXT="Website leads conversion value = Tổng value của tất cả event Lead trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_90" TEXT="Offline leads conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_90_WHAT" TEXT="Offline leads conversion value là tổng value của các lượt tạo lead từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_90_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Lead thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_90_LIMIT" TEXT="Offline leads conversion value = Tổng value của tất cả event Lead từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_91" TEXT="Meta leads conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_91_WHAT" TEXT="Meta leads conversion value là tổng value của các lượt tạo lead trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_91_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Lead thông qua hệ thống của Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_91_LIMIT" TEXT="Meta leads conversion value = Tổng value của tất cả event Lead trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_92" TEXT="In-app levels achieved" STYLE="fork" FOLDED="true">
        <node ID="G9_92_WHAT" TEXT="In-app levels achieved là số lượt người dùng đạt level trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_92_USE" TEXT="Metric này đếm các event Level Achieved được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_92_LIMIT" TEXT="In-app levels achieved = Tổng số event Level Achieved trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_93" TEXT="In-app levels achieved conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_93_WHAT" TEXT="In-app levels achieved conversion value là tổng value của các lượt đạt level trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_93_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Level Achieved thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_93_LIMIT" TEXT="In-app levels achieved conversion value = Tổng value của tất cả event Level Achieved trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_94" TEXT="In-app location searches" STYLE="fork" FOLDED="true">
        <node ID="G9_94_WHAT" TEXT="In-app location searches là số lượt người dùng tìm kiếm địa điểm trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_94_USE" TEXT="Metric này đếm các event Find Location được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_94_LIMIT" TEXT="In-app location searches = Tổng số event Find Location trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_95" TEXT="Website location searches" STYLE="fork" FOLDED="true">
        <node ID="G9_95_WHAT" TEXT="Website location searches là số lượt người dùng tìm kiếm địa điểm trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_95_USE" TEXT="Metric này đếm các event Find Location được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_95_LIMIT" TEXT="Website location searches = Tổng số event Find Location trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_96" TEXT="Offline location searches" STYLE="fork" FOLDED="true">
        <node ID="G9_96_WHAT" TEXT="Offline location searches là số lượt người dùng tìm kiếm địa điểm từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_96_USE" TEXT="Metric này đếm các event Find Location được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_96_LIMIT" TEXT="Offline location searches = Tổng số event Find Location từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_97" TEXT="In-app location searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_97_WHAT" TEXT="In-app location searches conversion value là tổng value của các lượt tìm kiếm địa điểm trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_97_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Find Location thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_97_LIMIT" TEXT="In-app location searches conversion value = Tổng value của tất cả event Find Location trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_98" TEXT="Website location searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_98_WHAT" TEXT="Website location searches conversion value là tổng value của các lượt tìm kiếm địa điểm trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_98_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Find Location thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_98_LIMIT" TEXT="Website location searches conversion value = Tổng value của tất cả event Find Location trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_99" TEXT="Offline location searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_99_WHAT" TEXT="Offline location searches conversion value là tổng value của các lượt tìm kiếm địa điểm từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_99_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Find Location thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_99_LIMIT" TEXT="Offline location searches conversion value = Tổng value của tất cả event Find Location từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_100" TEXT="In-app products customised" STYLE="fork" FOLDED="true">
        <node ID="G9_100_WHAT" TEXT="In-app products customised là số lượt người dùng tùy chỉnh sản phẩm trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_100_USE" TEXT="Metric này đếm các event Customize Product được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_100_LIMIT" TEXT="In-app products customised = Tổng số event Customize Product trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_101" TEXT="Website products customised" STYLE="fork" FOLDED="true">
        <node ID="G9_101_WHAT" TEXT="Website products customised là số lượt người dùng tùy chỉnh sản phẩm trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_101_USE" TEXT="Metric này đếm các event Customize Product được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_101_LIMIT" TEXT="Website products customised = Tổng số event Customize Product trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_102" TEXT="Offline products customised" STYLE="fork" FOLDED="true">
        <node ID="G9_102_WHAT" TEXT="Offline products customised là số lượt người dùng tùy chỉnh sản phẩm từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_102_USE" TEXT="Metric này đếm các event Customize Product được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_102_LIMIT" TEXT="Offline products customised = Tổng số event Customize Product từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_103" TEXT="In-app products customised conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_103_WHAT" TEXT="In-app products customised conversion value là tổng value của các lượt tùy chỉnh sản phẩm trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_103_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Customize Product thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_103_LIMIT" TEXT="In-app products customised conversion value = Tổng value của tất cả event Customize Product trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_104" TEXT="Website products customised conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_104_WHAT" TEXT="Website products customised conversion value là tổng value của các lượt tùy chỉnh sản phẩm trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_104_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Customize Product thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_104_LIMIT" TEXT="Website products customised conversion value = Tổng value của tất cả event Customize Product trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_105" TEXT="Offline products customised conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_105_WHAT" TEXT="Offline products customised conversion value là tổng value của các lượt tùy chỉnh sản phẩm từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_105_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Customize Product thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_105_LIMIT" TEXT="Offline products customised conversion value = Tổng value của tất cả event Customize Product từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_106" TEXT="Website purchase ROAS (return on ad spend)" STYLE="fork" FOLDED="true">
        <node ID="G9_106_WHAT" TEXT="Website purchase ROAS (return on ad spend) là tỷ lệ giữa conversion value của các lượt purchase trên website và Amount Spent, được Meta attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_106_USE" TEXT="Metric này phản ánh ROAS theo dữ liệu Meta ghi nhận, không phải ROAS business đã đối soát." STYLE="fork" FOLDED="true" />
        <node ID="G9_106_LIMIT" TEXT="Website purchase ROAS (return on ad spend) = purchase Conversion Value / Amount Spent" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_107" TEXT="In-app purchase ROAS (return on ad spend)" STYLE="fork" FOLDED="true">
        <node ID="G9_107_WHAT" TEXT="In-app purchase ROAS (return on ad spend) là tỷ lệ giữa conversion value của các lượt purchase trong mobile app và Amount Spent, được Meta attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_107_USE" TEXT="Metric này phản ánh ROAS theo dữ liệu Meta ghi nhận, không phải ROAS business đã đối soát." STYLE="fork" FOLDED="true" />
        <node ID="G9_107_LIMIT" TEXT="In-app purchase ROAS (return on ad spend) = purchase Conversion Value / Amount Spent" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_108" TEXT="In-app purchases" STYLE="fork" FOLDED="true">
        <node ID="G9_108_WHAT" TEXT="In-app purchases là số lượt người dùng mua hàng trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_108_USE" TEXT="Metric này đếm các event Purchase được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_108_LIMIT" TEXT="In-app purchases = Tổng số event Purchase trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_109" TEXT="Website purchases" STYLE="fork" FOLDED="true">
        <node ID="G9_109_WHAT" TEXT="Website purchases là số lượt người dùng mua hàng trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_109_USE" TEXT="Metric này đếm các event Purchase được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_109_LIMIT" TEXT="Website purchases = Tổng số event Purchase trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_110" TEXT="Offline purchases" STYLE="fork" FOLDED="true">
        <node ID="G9_110_WHAT" TEXT="Offline purchases là số lượt người dùng mua hàng từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_110_USE" TEXT="Metric này đếm các event Purchase được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_110_LIMIT" TEXT="Offline purchases = Tổng số event Purchase từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_111" TEXT="Meta purchases" STYLE="fork" FOLDED="true">
        <node ID="G9_111_WHAT" TEXT="Meta purchases là số lượt người dùng mua hàng trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_111_USE" TEXT="Metric này đếm các event Purchase được tracking thông qua hệ thống của Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_111_LIMIT" TEXT="Meta purchases = Tổng số event Purchase trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_112" TEXT="In-app purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_112_WHAT" TEXT="In-app purchases conversion value là tổng value của các lượt mua hàng trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_112_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Purchase thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_112_LIMIT" TEXT="In-app purchases conversion value = Tổng value của tất cả event Purchase trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_113" TEXT="Website purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_113_WHAT" TEXT="Website purchases conversion value là tổng value của các lượt mua hàng trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_113_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Purchase thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_113_LIMIT" TEXT="Website purchases conversion value = Tổng value của tất cả event Purchase trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_114" TEXT="Offline purchases conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_114_WHAT" TEXT="Offline purchases conversion value là tổng value của các lượt mua hàng từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_114_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Purchase thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_114_LIMIT" TEXT="Offline purchases conversion value = Tổng value của tất cả event Purchase từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_115" TEXT="Meta purchase conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_115_WHAT" TEXT="Meta purchase conversion value là tổng value của các lượt purchase trên Meta technologies, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_115_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event purchase thông qua hệ thống của Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_115_LIMIT" TEXT="Meta purchase conversion value = Tổng value của tất cả event purchase trên Meta technologies được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_116" TEXT="In-app ratings submitted" STYLE="fork" FOLDED="true">
        <node ID="G9_116_WHAT" TEXT="In-app ratings submitted là số lượt người dùng gửi đánh giá trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_116_USE" TEXT="Metric này đếm các event Rate được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_116_LIMIT" TEXT="In-app ratings submitted = Tổng số event Rate trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_117" TEXT="In-app ratings submitted conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_117_WHAT" TEXT="In-app ratings submitted conversion value là tổng value của các lượt gửi đánh giá trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_117_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Rate thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_117_LIMIT" TEXT="In-app ratings submitted conversion value = Tổng value của tất cả event Rate trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_118" TEXT="In-app registrations completed" STYLE="fork" FOLDED="true">
        <node ID="G9_118_WHAT" TEXT="In-app registrations completed là số lượt người dùng hoàn tất đăng ký trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_118_USE" TEXT="Metric này đếm các event Complete Registration được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_118_LIMIT" TEXT="In-app registrations completed = Tổng số event Complete Registration trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_119" TEXT="Website registrations completed" STYLE="fork" FOLDED="true">
        <node ID="G9_119_WHAT" TEXT="Website registrations completed là số lượt người dùng hoàn tất đăng ký trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_119_USE" TEXT="Metric này đếm các event Complete Registration được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_119_LIMIT" TEXT="Website registrations completed = Tổng số event Complete Registration trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_120" TEXT="Offline registrations completed" STYLE="fork" FOLDED="true">
        <node ID="G9_120_WHAT" TEXT="Offline registrations completed là số lượt người dùng hoàn tất đăng ký từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_120_USE" TEXT="Metric này đếm các event Complete Registration được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_120_LIMIT" TEXT="Offline registrations completed = Tổng số event Complete Registration từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_121" TEXT="In-app registrations completed conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_121_WHAT" TEXT="In-app registrations completed conversion value là tổng value của các lượt hoàn tất đăng ký trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_121_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Complete Registration thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_121_LIMIT" TEXT="In-app registrations completed conversion value = Tổng value của tất cả event Complete Registration trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_122" TEXT="Website registrations completed conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_122_WHAT" TEXT="Website registrations completed conversion value là tổng value của các lượt hoàn tất đăng ký trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_122_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Complete Registration thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_122_LIMIT" TEXT="Website registrations completed conversion value = Tổng value của tất cả event Complete Registration trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_123" TEXT="Offline registrations completed conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_123_WHAT" TEXT="Offline registrations completed conversion value là tổng value của các lượt hoàn tất đăng ký từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_123_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Complete Registration thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_123_LIMIT" TEXT="Offline registrations completed conversion value = Tổng value của tất cả event Complete Registration từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_124" TEXT="In-app searches" STYLE="fork" FOLDED="true">
        <node ID="G9_124_WHAT" TEXT="In-app searches là số lượt người dùng tìm kiếm trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_124_USE" TEXT="Metric này đếm các event Search được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_124_LIMIT" TEXT="In-app searches = Tổng số event Search trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_125" TEXT="Website searches" STYLE="fork" FOLDED="true">
        <node ID="G9_125_WHAT" TEXT="Website searches là số lượt người dùng tìm kiếm trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_125_USE" TEXT="Metric này đếm các event Search được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_125_LIMIT" TEXT="Website searches = Tổng số event Search trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_126" TEXT="Offline searches" STYLE="fork" FOLDED="true">
        <node ID="G9_126_WHAT" TEXT="Offline searches là số lượt người dùng tìm kiếm từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_126_USE" TEXT="Metric này đếm các event Search được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_126_LIMIT" TEXT="Offline searches = Tổng số event Search từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_127" TEXT="In-app searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_127_WHAT" TEXT="In-app searches conversion value là tổng value của các lượt tìm kiếm trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_127_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Search thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_127_LIMIT" TEXT="In-app searches conversion value = Tổng value của tất cả event Search trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_128" TEXT="Website searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_128_WHAT" TEXT="Website searches conversion value là tổng value của các lượt tìm kiếm trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_128_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Search thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_128_LIMIT" TEXT="Website searches conversion value = Tổng value của tất cả event Search trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_129" TEXT="Offline searches conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_129_WHAT" TEXT="Offline searches conversion value là tổng value của các lượt tìm kiếm từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_129_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Search thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_129_LIMIT" TEXT="Offline searches conversion value = Tổng value của tất cả event Search từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_130" TEXT="In-app subscriptions" STYLE="fork" FOLDED="true">
        <node ID="G9_130_WHAT" TEXT="In-app subscriptions là số lượt người dùng đăng ký dịch vụ trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_130_USE" TEXT="Metric này đếm các event Subscribe được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_130_LIMIT" TEXT="In-app subscriptions = Tổng số event Subscribe trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_131" TEXT="Website subscriptions" STYLE="fork" FOLDED="true">
        <node ID="G9_131_WHAT" TEXT="Website subscriptions là số lượt người dùng đăng ký dịch vụ trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_131_USE" TEXT="Metric này đếm các event Subscribe được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_131_LIMIT" TEXT="Website subscriptions = Tổng số event Subscribe trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_132" TEXT="Offline subscriptions" STYLE="fork" FOLDED="true">
        <node ID="G9_132_WHAT" TEXT="Offline subscriptions là số lượt người dùng đăng ký dịch vụ từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_132_USE" TEXT="Metric này đếm các event Subscribe được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_132_LIMIT" TEXT="Offline subscriptions = Tổng số event Subscribe từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_133" TEXT="In-app subscriptions conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_133_WHAT" TEXT="In-app subscriptions conversion value là tổng value của các lượt đăng ký dịch vụ trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_133_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Subscribe thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_133_LIMIT" TEXT="In-app subscriptions conversion value = Tổng value của tất cả event Subscribe trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_134" TEXT="Website subscriptions conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_134_WHAT" TEXT="Website subscriptions conversion value là tổng value của các lượt đăng ký dịch vụ trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_134_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Subscribe thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_134_LIMIT" TEXT="Website subscriptions conversion value = Tổng value của tất cả event Subscribe trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_135" TEXT="Offline subscriptions conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_135_WHAT" TEXT="Offline subscriptions conversion value là tổng value của các lượt đăng ký dịch vụ từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_135_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Subscribe thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_135_LIMIT" TEXT="Offline subscriptions conversion value = Tổng value của tất cả event Subscribe từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_136" TEXT="In-app trials started" STYLE="fork" FOLDED="true">
        <node ID="G9_136_WHAT" TEXT="In-app trials started là số lượt người dùng bắt đầu dùng thử trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_136_USE" TEXT="Metric này đếm các event Start Trial được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_136_LIMIT" TEXT="In-app trials started = Tổng số event Start Trial trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_137" TEXT="Website trials started" STYLE="fork" FOLDED="true">
        <node ID="G9_137_WHAT" TEXT="Website trials started là số lượt người dùng bắt đầu dùng thử trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_137_USE" TEXT="Metric này đếm các event Start Trial được tracking thông qua Meta Pixel hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_137_LIMIT" TEXT="Website trials started = Tổng số event Start Trial trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_138" TEXT="Offline trials started" STYLE="fork" FOLDED="true">
        <node ID="G9_138_WHAT" TEXT="Offline trials started là số lượt người dùng bắt đầu dùng thử từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_138_USE" TEXT="Metric này đếm các event Start Trial được tracking thông qua dữ liệu offline được doanh nghiệp gửi về Meta." STYLE="fork" FOLDED="true" />
        <node ID="G9_138_LIMIT" TEXT="Offline trials started = Tổng số event Start Trial từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_139" TEXT="Mobile app trials started conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_139_WHAT" TEXT="Mobile app trials started conversion value là tổng value của các lượt bắt đầu dùng thử trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_139_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Start Trial thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_139_LIMIT" TEXT="Mobile app trials started conversion value = Tổng value của tất cả event Start Trial trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_140" TEXT="Website trials started conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_140_WHAT" TEXT="Website trials started conversion value là tổng value của các lượt bắt đầu dùng thử trên website, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_140_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Start Trial thông qua Meta Pixel hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_140_LIMIT" TEXT="Website trials started conversion value = Tổng value của tất cả event Start Trial trên website được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_141" TEXT="Offline trials started conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_141_WHAT" TEXT="Offline trials started conversion value là tổng value của các lượt bắt đầu dùng thử từ nguồn offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_141_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Start Trial thông qua dữ liệu offline được doanh nghiệp gửi về Meta; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_141_LIMIT" TEXT="Offline trials started conversion value = Tổng value của tất cả event Start Trial từ nguồn offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_142" TEXT="In-app tutorials completed" STYLE="fork" FOLDED="true">
        <node ID="G9_142_WHAT" TEXT="In-app tutorials completed là số lượt người dùng hoàn thành tutorial trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_142_USE" TEXT="Metric này đếm các event Tutorial Completion được tracking thông qua Facebook SDK, App Events hoặc Conversions API." STYLE="fork" FOLDED="true" />
        <node ID="G9_142_LIMIT" TEXT="In-app tutorials completed = Tổng số event Tutorial Completion trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G9_143" TEXT="In-app tutorials completed conversion value" STYLE="fork" FOLDED="true">
        <node ID="G9_143_WHAT" TEXT="In-app tutorials completed conversion value là tổng value của các lượt hoàn thành tutorial trong mobile app, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G9_143_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Tutorial Completion thông qua Facebook SDK, App Events hoặc Conversions API; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G9_143_LIMIT" TEXT="In-app tutorials completed conversion value = Tổng value của tất cả event Tutorial Completion trong mobile app được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_27" TEXT="Other offline conversions" STYLE="fork" FOLDED="true">
        <node ID="G2_27_WHAT" TEXT="Other offline conversions là số lượt người dùng hoàn thành conversion offline khác, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_27_USE" TEXT="Metric này đếm các event Other Offline Conversion được tracking thông qua Meta Business Tools." STYLE="fork" FOLDED="true" />
        <node ID="G2_27_LIMIT" TEXT="Other offline conversions = Tổng số event Other Offline Conversion được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_28" TEXT="Cost per other offline conversion" STYLE="fork" FOLDED="true">
        <node ID="G2_28_WHAT" TEXT="Cost per other offline conversion là chi phí trung bình cho mỗi lượt người dùng hoàn thành conversion offline khác, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_28_USE" TEXT="Metric này lấy Amount Spent chia cho tổng số Other offline conversions; chỉ so sánh khi cùng attribution setting và cùng kỳ báo cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_28_LIMIT" TEXT="Cost per other offline conversion = Amount Spent / Other offline conversions" STYLE="fork" FOLDED="true" />
      </node>
      <node ID="G2_29" TEXT="Other offline conversion value" STYLE="fork" FOLDED="true">
        <node ID="G2_29_WHAT" TEXT="Other offline conversion value là tổng value của các lượt other offline, được Meta ghi nhận và attribution cho quảng cáo." STYLE="fork" FOLDED="true" />
        <node ID="G2_29_USE" TEXT="Giá trị này dựa trên value parameter được gửi kèm event Other offline; không nhất thiết là doanh thu đã thu." STYLE="fork" FOLDED="true" />
        <node ID="G2_29_LIMIT" TEXT="Other offline conversion value = Tổng value của tất cả event Other offline được Meta attribution cho quảng cáo" STYLE="fork" FOLDED="true" />
      </node>
    </node>
  </node>
</map>
