<?xml version='1.0' encoding='utf-8'?>
<map version="1.0.1">
  <node ID="LOGIC_DC76E9F0C0006E" TEXT="JOYCAT — LOGIC TREE PHÂN TÍCH ADS COST VÀ ROAS — DRAFT 1.0" STYLE="bubble" COLOR="#FFFFFF" BACKGROUND_COLOR="#4472C4">
    <font BOLD="true" SIZE="20" />
    <node ID="LOGIC_E9C8A51BFEDA20" TEXT="Câu hỏi gốc" FOLDED="true" COLOR="#1F4E79">
      <node ID="LOGIC_63FAD9A0406C2C" TEXT="Cần đi qua những bước nào để đọc Ads Cost và metrics đúng theo sản phẩm, Campaign objective, phễu và nền tảng, rồi mới phân tích ROAS từng case?" />
      <node ID="LOGIC_25A00030911678" TEXT="Đây là đường đi phân tích; chưa phải kết luận nguyên nhân hoặc hiệu quả." />
    </node>
    <node ID="LOGIC_F8CFD5B90E181E" TEXT="1. DATA GATE — CASE CÓ SO SÁNH ĐƯỢC KHÔNG?" FOLDED="true" COLOR="#C65911">
      <node ID="LOGIC_F6AAD898741C0A" TEXT="Cùng kỳ, timezone và currency" />
      <node ID="LOGIC_D173C773A3B5A4" TEXT="Cùng grain; không cộng Campaign + Ad set + Ad" />
      <node ID="LOGIC_1B56A5562BA78F" TEXT="Cùng attribution khi dùng Meta result" />
      <node ID="LOGIC_0288633A36FB09" TEXT="Results phải cùng Result indicator" />
      <node ID="LOGIC_2B56850F9C5FDE" TEXT="Chiều phân tích có source/mapping hợp lệ" />
      <node ID="LOGIC_E5231F5F8B6A5B" TEXT="GMV business cùng phạm vi Ads Cost" />
      <node ID="LOGIC_37BF4429D2DB22" TEXT="Mẫu số khác 0/null; rate tổng tính lại từ tổng tử/mẫu" />
      <node ID="LOGIC_062D33304FD5DF" TEXT="Không đạt → Chưa so sánh được hoặc Chỉ thăm dò" />
    </node>
    <node ID="LOGIC_01960CA318A060" TEXT="2. KIỂM SOÁT TỔNG ADS COST" FOLDED="true" COLOR="#548235">
      <node ID="LOGIC_85ECB73D187286" TEXT="Tổng Ads Cost tháng = tổng Amount spent của Campaign trong tháng" />
      <node ID="LOGIC_E9867360BC7851" TEXT="Đối soát độc lập: Tổng Campaign ≈ Tổng Ad set ≈ Tổng Ad" />
      <node ID="LOGIC_A5EA41B29C00F7" TEXT="Không cộng ba tổng với nhau" />
      <node ID="LOGIC_50D4CD080E2ECC" TEXT="Tháng 04/2026 đang lệch 40 VND giữa Campaign và Ad set/Ad" />
    </node>
    <node ID="LOGIC_204FFACF87CBEA" TEXT="3. CHỌN LÁT CẮT" FOLDED="true" COLOR="#7030A0">
      <node ID="LOGIC_0BED2164A2FB9E" TEXT="Bốn chiều chính" FOLDED="true">
        <node ID="LOGIC_748D20AC452894" TEXT="Nền tảng — Publisher, Destination và Sales channel là ba khái niệm riêng — hiện thiếu Publisher platform" />
        <node ID="LOGIC_1043958400B9BA" TEXT="Sản phẩm — Catalog có; Ads → sản phẩm mới suy luận cấp nhóm" />
        <node ID="LOGIC_6F3699333FBC16" TEXT="Phễu — TOFU/MOFU/BOFU/Mixed/Unmapped — cần khóa rule và hiệu lực" />
        <node ID="LOGIC_AB826755D3C024" TEXT="Campaign objective — Objective suy luận do Duy map để ETL; tách khỏi Optimization goal và Result indicator; không phải field Meta gốc" />
      </node>
      <node ID="LOGIC_32415DD3A88297" TEXT="Sáu cặp" FOLDED="true">
        <node ID="LOGIC_16C32B1165DA4B" TEXT="Nền tảng × Sản phẩm — bị chặn" />
        <node ID="LOGIC_78E8C559C47F14" TEXT="Nền tảng × Phễu — bị chặn" />
        <node ID="LOGIC_8D61AF2AB845FB" TEXT="Nền tảng × Campaign objective — bị chặn bởi thiếu Publisher platform; Objective human mapping đã có" />
        <node ID="LOGIC_13A92146E42566" TEXT="Phễu × Sản phẩm — mapping suy luận/một phần" />
        <node ID="LOGIC_9F83B120196FB4" TEXT="Sản phẩm × Campaign objective — có Objective human mapping; sản phẩm mới mapping nhóm/một phần" />
        <node ID="LOGIC_407FE1C23D1AFB" TEXT="Phễu × Campaign objective — hai human mapping cùng có; cần rule/version" />
        <node ID="LOGIC_E9312743D87BDF" TEXT="Hai tổng riêng không suy ra phần giao" />
      </node>
    </node>
    <node ID="LOGIC_12B2DE1B9B5504" TEXT="4. ĐI THEO PHỄU" FOLDED="true" COLOR="#2F5597">
      <node ID="LOGIC_1C16D48F495D3D" TEXT="TOFU — phân phối và tín hiệu ban đầu" FOLDED="true">
        <node ID="LOGIC_714EA225CD8507" TEXT="Giữ logic cũ: reach chất lượng; video/ảnh; tệp view, mess, comment, LAL/remarketing khi có source" />
        <node ID="LOGIC_75B982C4E829E2" TEXT="Đọc Spend, Impressions, Reach, Frequency, CPM, video/engagement result phù hợp" />
        <node ID="LOGIC_A5BC5DF3C2BF30" TEXT="So cùng sản phẩm + objective + publisher + kỳ + attribution" />
        <node ID="LOGIC_D89EE107CA04D0" TEXT="Đọc CPM cùng CTR/CPC/CPR; không đọc CPM một mình" />
        <node ID="LOGIC_4C64B4E41207AE" TEXT="Giả thuyết: audience, creative, placement, thời gian, optimization" />
        <node ID="LOGIC_B1F1BB40A551F3" TEXT="Không mặc định CPM TOFU cao/thấp hơn MOFU/BOFU" />
      </node>
      <node ID="LOGIC_327BB6B649A3F5" TEXT="MOFU — quan tâm và hành động trung gian" FOLDED="true">
        <node ID="LOGIC_4FD8054122A03F" TEXT="Giữ logic cũ: conversation từ seed/LAL và remarketing người đã tương tác" />
        <node ID="LOGIC_2B7B9636FAC82E" TEXT="Đọc Spend, Reach, Frequency, Clicks, Link Clicks, CTR, CPC, Messaging, New Contact và CPR đúng loại" />
        <node ID="LOGIC_05FEFC85523C18" TEXT="Không so post engagement với messaging như cùng một result" />
        <node ID="LOGIC_114EAB9A4062BB" TEXT="Tỷ lệ Link Click → Mess chỉ dùng khi cùng scope" />
        <node ID="LOGIC_921DF788DA22EE" TEXT="Giả thuyết: intent, content, audience fatigue, placement" />
        <node ID="LOGIC_865BC7F254AB25" TEXT="Mess rẻ chưa chứng minh Purchase/GMV tốt" />
      </node>
      <node ID="LOGIC_E415FB720A6830" TEXT="BOFU — Purchase, đơn và GMV" FOLDED="true">
        <node ID="LOGIC_1FF2B04C737DE9" TEXT="Giữ logic cũ: remarketing intent cao, đã nhắn chưa mua, LAL buyers khi source hợp lệ" />
        <node ID="LOGIC_9DBD7A09627F1E" TEXT="Meta Purchases/Orders là event Meta theo attribution" />
        <node ID="LOGIC_292AE4D108A13F" TEXT="Đối chiếu đơn business, hoàn/hủy và GMV đúng kỳ/sales channel" />
        <node ID="LOGIC_972AA03160A7D6" TEXT="Chỉ tính Business ROAS khi GMV và Ads Cost cùng phạm vi" />
        <node ID="LOGIC_6D2FE68C064E52" TEXT="Journey không đủ khóa → tỷ lệ tổng hợp, không gọi là cohort xuyên suốt" />
        <node ID="LOGIC_DC51DD8AF00033" TEXT="Giả thuyết: lead quality, closing, price/offer, stock, operations, tracking" />
      </node>
    </node>
    <node ID="LOGIC_DF0EBAD6DD3DEC" TEXT="5. QUAN HỆ METRICS THEO ĐIỀU KIỆN" FOLDED="true" COLOR="#8064A2">
      <node ID="LOGIC_B48AED5B150128" TEXT="Ads Cost = Impressions × CPM / 1.000" />
      <node ID="LOGIC_094702AB2F62AB" TEXT="Ads Cost = Reach × Frequency × CPM / 1.000" />
      <node ID="LOGIC_4D23330EC84229" TEXT="Ads Cost = Clicks × CPC" />
      <node ID="LOGIC_EDDBD65168F8B0" TEXT="Ads Cost = Results cùng loại × Cost per Result cùng loại" />
      <node ID="LOGIC_32AFED35DE49E5" TEXT="Business ROAS = GMV / Ads Cost" />
      <node ID="LOGIC_5AF2921A84A496" TEXT="Cách đọc" FOLDED="true">
        <node ID="LOGIC_6109884BFC3420" TEXT="Viết hai công thức → rẽ tới biến chung → thế công thức" />
        <node ID="LOGIC_4F61777E7FE251" TEXT="Kết luận thuận/nghịch/không trực tiếp/phụ thuộc điều kiện" />
        <node ID="LOGIC_8AEBFA62994455" TEXT="Ghi rõ biến giữ nguyên" />
        <node ID="LOGIC_7BED0CE8DFCAA3" TEXT="Sau đó mới kiểm tra dữ liệu case" />
      </node>
      <node ID="LOGIC_DF11C07390C0A9" TEXT="CPM cao không tự động nghĩa Campaign xấu" />
    </node>
    <node ID="LOGIC_A12F7A4B8D54C3" TEXT="6. DRILL-DOWN KHI CÓ CHÊNH LỆCH" FOLDED="true" COLOR="#1F4E79">
      <node ID="LOGIC_9B559A66065C5C" TEXT="Campaign → Ad set: audience, optimization, budget/bid, placement" />
      <node ID="LOGIC_E0E2274E9F9554" TEXT="Ad set → Ad: creative, format, message, product" />
      <node ID="LOGIC_07D94CB570E8F5" TEXT="Chỉ drill-down khi ID nguyên vẹn" />
      <node ID="LOGIC_FF6E92712FA14B" TEXT="Góc bổ trợ: audience, creative, placement/device, thời gian, attribution, offer, stock và vận hành" />
      <node ID="LOGIC_0254E80FD0BF1B" TEXT="Mỗi giả thuyết phải có bằng chứng xác nhận và bằng chứng có thể bác bỏ" />
    </node>
    <node ID="LOGIC_6830ACB8909041" TEXT="7. MẪU PHÂN TÍCH MỘT CASE" FOLDED="true" COLOR="#548235">
      <node ID="LOGIC_1435CA7068D392" TEXT="Case = Sản phẩm + Objective + Phễu + Nền tảng + Kỳ + Grain" />
      <node ID="LOGIC_EC6E48216FEE44" TEXT="Data gate → đối soát Ads Cost → tính lại metric" />
      <node ID="LOGIC_AED4A37B502DD9" TEXT="So với case tương đồng hoặc cùng case ở kỳ khác" />
      <node ID="LOGIC_2C83C5975FFE4C" TEXT="Xác định biến toán học → drill-down → giả thuyết → evidence" />
      <node ID="LOGIC_E19599B3640693" TEXT="Nhãn kết luận: Đã xác minh / Owner xác nhận / Suy luận / To be updated" />
    </node>
    <node ID="LOGIC_42941B77980929" TEXT="8. ĐIỀU KIỆN CHUYỂN ETL/REPORT" FOLDED="true" COLOR="#C65911">
      <node ID="LOGIC_EE7A44A0782F83" TEXT="Objective suy luận có rule, version, mapped_by/review_status và khóa Campaign theo kỳ" />
      <node ID="LOGIC_48FD8941E0CA4B" TEXT="Objective Meta gốc nếu có dùng đối soát; không chặn ETL hiện tại" />
      <node ID="LOGIC_96572C6101350D" TEXT="Campaign–Ad set–Ad ID nguyên vẹn dạng text" />
      <node ID="LOGIC_9B8CD306CB2E52" TEXT="Mapping Phễu có rule, version, owner, hiệu lực" />
      <node ID="LOGIC_067769C16F74C4" TEXT="Mapping Ads → sản phẩm có grain và xử lý multi-product/shared" />
      <node ID="LOGIC_C2B2AE5E777FFB" TEXT="Publisher breakdown nếu phân tích platform; tách Destination và Sales channel" />
      <node ID="LOGIC_2217FF13C0FA82" TEXT="Join pass row count, orphan, duplicate và spend trước/sau" />
      <node ID="LOGIC_A6DA9BA9059549" TEXT="GMV business có định nghĩa và khóa nối nếu tính Business ROAS" />
    </node>
    <node ID="LOGIC_B319C9FAE6EB77" TEXT="9. NGUỒN VÀ TRẠNG THÁI" FOLDED="true" COLOR="#7F6000">
      <node ID="LOGIC_ADDD06A862A796" TEXT="Logic nền: D:\BA_library\Logic tree metrics ads JC.mm — nguồn ngoài workspace, chỉ đối chiếu" />
      <node ID="LOGIC_035BACECCD0147" TEXT="Mapping/Coverage: DIMENSION_MAPPING_VA_DO_PHU_DATASET.md" />
      <node ID="LOGIC_EC1B2F958A85EF" TEXT="Dataset audit: DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md" />
      <node ID="LOGIC_F9AD9DB8AFA083" TEXT="Trạng thái Logic mới: Draft để Duy/cậu Sinh review" />
    </node>
  </node>
</map>