<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node ID="ROOT" TEXT="METRIC TREE JOYCAT — Ads Cost / GMV all platform">
    <node ID="RULES" TEXT="QUY TẮC RẼ VÀ DỪNG" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="RULE_META" TEXT="Meta export trực tiếp — DỪNG" STYLE="fork" />
      <node ID="RULE_BUSINESS" TEXT="Business source trực tiếp — DỪNG" STYLE="fork" />
      <node ID="RULE_CONSTANT" TEXT="Hằng số — DỪNG" STYLE="fork" />
      <node ID="RULE_MISSING" TEXT="Chưa có dữ liệu — To be updated — DỪNG" STYLE="fork" />
      <node ID="RULE_PROCESS" TEXT="Không rẽ Impression → Click → Mess → Purchase; đây là Logic Tree" STYLE="fork" />
    </node>
    <node ID="ROOT_FORMULA" TEXT="KPI GỐC — Ads Cost / GMV all platform × 100% [Chưa sẵn có]" STYLE="bubble" POSITION="right">
      <node ID="ADS_COST" TEXT="TỬ SỐ — ADS COST TRONG KỲ [Sẵn có]" STYLE="fork">
        <node ID="ADS_COST_SUM" TEXT="SUM Amount Spent của từng Campaign trong kỳ" STYLE="fork">
          <node ID="ADS_COST_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="ADS_COST_V4_MAP" TEXT="MAP CÁC LÁT CẮT ADS COST TỪ KPI V4" STYLE="fork" FOLDED="true">
          <node ID="ADS_COST_ONE_DIM" TEXT="Một chiều = SUM Amount Spent sau khi lọc theo Nền tảng hoặc Sản phẩm hoặc Phễu hoặc Objective" STYLE="fork">
            <node ID="ADS_COST_ONE_DIM_EX" TEXT="Ví dụ: AS Facebook = SUM Amount Spent của các dòng thuộc Facebook" STYLE="fork" />
          </node>
          <node ID="ADS_COST_PAIR2" TEXT="Cặp 2 = SUM Amount Spent sau khi lọc đồng thời theo 2 điều kiện" STYLE="fork">
            <node ID="ADS_COST_PAIR2_EX" TEXT="Ví dụ: AS Facebook (SP1) = SUM Amount Spent khi Nền tảng = Facebook và Sản phẩm = SP1" STYLE="fork" />
          </node>
          <node ID="ADS_COST_PAIR3" TEXT="Cặp 3 = SUM Amount Spent sau khi lọc đồng thời theo 3 điều kiện" STYLE="fork">
            <node ID="ADS_COST_PAIR3_EX" TEXT="Ví dụ: AS Facebook (TOFU, SP1) = SUM Amount Spent khi Nền tảng = Facebook, Phễu = TOFU và Sản phẩm = SP1" STYLE="fork" />
          </node>
          <node ID="ADS_COST_FILTERS" TEXT="Nền tảng, Sản phẩm, Phễu và Objective là điều kiện lọc/mapping; Amount spent (VND) mới là field tiền — DỪNG" STYLE="fork" />
          <node ID="ADS_COST_NO_DOUBLE" TEXT="Không cộng tổng một chiều + cặp 2 + cặp 3 vì chúng là nhiều cách đọc cùng một Ads Cost" STYLE="fork" />
        </node>
      </node>
      <node ID="GMV_ALL" TEXT="MẪU SỐ — GMV ALL PLATFORM CÙNG KỲ [Chưa sẵn có]" STYLE="fork">
        <node ID="GMV_SHOPEE" TEXT="GMV Shopee [Chưa có dữ liệu — To be updated — DỪNG]" STYLE="fork" />
        <node ID="GMV_TIKTOK" TEXT="GMV TikTok [Chưa có dữ liệu — To be updated — DỪNG]" STYLE="fork" />
        <node ID="GMV_FB" TEXT="GMV Facebook hoặc Messenger [Chưa có business data — To be updated — DỪNG]" STYLE="fork" />
        <node ID="GMV_STORE" TEXT="GMV cửa hàng trực tiếp [Chưa có dữ liệu — To be updated — DỪNG]" STYLE="fork" />
        <node ID="GMV_OTHER" TEXT="GMV kênh khác [Chưa có dữ liệu — To be updated — DỪNG]" STYLE="fork" />
      </node>
      <node ID="ROOT_CONSTANT" TEXT="100% [Hằng số khi hiển thị tỷ lệ — DỪNG]" STYLE="fork" />
    </node>
    <node ID="META_FORMULAS" TEXT="CÔNG THỨC KPI META" STYLE="bubble" POSITION="right">
      <node ID="CPM" TEXT="CPM = SUM Amount Spent / SUM Impressions × 1.000 [Sẵn có]" STYLE="fork">
        <node ID="CPM_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="CPM_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPM_IMP" TEXT="SUM Impressions" STYLE="fork">
          <node ID="CPM_IMP_RAW" TEXT="Impressions [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPM_CONSTANT" TEXT="1.000 [Hằng số — DỪNG]" STYLE="fork" />
      </node>
      <node ID="CPC_LINK" TEXT="CPC LINK = SUM Amount Spent / SUM Link Clicks [Chưa sẵn có]" STYLE="fork">
        <node ID="CPC_LINK_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="CPC_LINK_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPC_LINK_CLICKS" TEXT="SUM Link Clicks" STYLE="fork">
          <node ID="CPC_LINK_CLICKS_RAW" TEXT="Link clicks [Preferred candidate chưa có — To be updated — DỪNG]" STYLE="fork" />
        </node>
      </node>
      <node ID="CPC_ALL" TEXT="CPC ALL = SUM Amount Spent / SUM Clicks (all) [Chưa sẵn có]" STYLE="fork">
        <node ID="CPC_ALL_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="CPC_ALL_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPC_ALL_CLICKS" TEXT="SUM Clicks (all)" STYLE="fork">
          <node ID="CPC_ALL_CLICKS_RAW" TEXT="Clicks (all) [Preferred candidate chưa có — To be updated — DỪNG]" STYLE="fork" />
        </node>
      </node>
      <node ID="CPR_TYPES" TEXT="COST PER RESULT THEO TỪNG LOẠI — không cộng lẫn các Result indicator" STYLE="fork">
        <node ID="CPMC" TEXT="COST PER MESSAGING RESULT = SUM Amount Spent / SUM Messaging Conversations Started [Sẵn có]" STYLE="fork">
          <node ID="CPMC_SPEND" TEXT="SUM Amount Spent của các dòng messaging" STYLE="fork">
            <node ID="CPMC_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPMC_MESS" TEXT="SUM Messaging Conversations Started" STYLE="fork">
            <node ID="CPMC_MESS_RAW" TEXT="Messaging conversations started [Meta export trực tiếp — DỪNG]" STYLE="fork" />
            <node ID="CPMC_MESS_STOP" TEXT="Không có event log bên dưới để rẽ tiếp" STYLE="fork" />
          </node>
          <node ID="CPMC_FILTER" TEXT="Result indicator = actions:onsite_conversion.messaging_conversation_started_7d [Điều kiện — DỪNG]" STYLE="fork" />
          <node ID="CPMC_CHECK" TEXT="Đối soát: Cost per messaging conversation started (VND)" STYLE="fork" />
        </node>
        <node ID="CPE" TEXT="COST PER POST ENGAGEMENT RESULT = SUM Amount Spent / SUM Post Engagement Results [Sẵn có có điều kiện]" STYLE="fork">
          <node ID="CPE_SPEND" TEXT="SUM Amount Spent của các dòng post engagement" STYLE="fork">
            <node ID="CPE_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPE_RESULTS" TEXT="SUM Results sau khi lọc post engagement" STYLE="fork">
            <node ID="CPE_RESULTS_RAW" TEXT="Results [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPE_FILTER" TEXT="Result indicator = actions:post_engagement [Điều kiện — DỪNG]" STYLE="fork" />
          <node ID="CPE_CHECK" TEXT="Đối soát: Cost per results trong đúng nhóm indicator" STYLE="fork" />
        </node>
        <node ID="CPP" TEXT="COST PER PURCHASE RESULT = SUM Amount Spent / SUM Purchases do Meta ghi nhận [Sẵn có]" STYLE="fork">
          <node ID="CPP_SPEND" TEXT="SUM Amount Spent của các dòng purchase" STYLE="fork">
            <node ID="CPP_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPP_PURCHASE" TEXT="SUM Purchases do Meta ghi nhận" STYLE="fork">
            <node ID="CPP_PURCHASE_RAW" TEXT="Purchases [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPP_FILTER" TEXT="Result indicator = actions:onsite_conversion.purchase [Điều kiện — DỪNG]" STYLE="fork" />
          <node ID="CPP_LIMIT" TEXT="Purchases do Meta ghi nhận, không phải toàn bộ đơn hàng business" STYLE="fork" />
        </node>
        <node ID="CP_RECALL" TEXT="COST PER ESTIMATED AD RECALL RESULT = SUM Amount Spent / SUM Estimated Ad Recallers [Sẵn có có điều kiện]" STYLE="fork">
          <node ID="CP_RECALL_SPEND" TEXT="SUM Amount Spent của các dòng estimated ad recall" STYLE="fork">
            <node ID="CP_RECALL_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CP_RECALL_RESULTS" TEXT="SUM Results sau khi lọc estimated ad recall" STYLE="fork">
            <node ID="CP_RECALL_RESULTS_RAW" TEXT="Results [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CP_RECALL_FILTER" TEXT="Result indicator = estimated_ad_recallers [Điều kiện — DỪNG]" STYLE="fork" />
          <node ID="CP_RECALL_CHECK" TEXT="Đối soát: Cost per results trong đúng nhóm indicator" STYLE="fork" />
        </node>
        <node ID="CPR_UNKNOWN" TEXT="COST PER RESULT CHƯA XÁC ĐỊNH = SUM Amount Spent / SUM Results [Có điều kiện]" STYLE="fork">
          <node ID="CPR_SPEND" TEXT="SUM Amount Spent trong cùng nhóm Result indicator" STYLE="fork">
            <node ID="CPR_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPR_RESULTS" TEXT="SUM Results trong cùng nhóm Result indicator" STYLE="fork">
            <node ID="CPR_RESULTS_RAW" TEXT="Results [Meta export trực tiếp — DỪNG]" STYLE="fork" />
          </node>
          <node ID="CPR_INDICATOR" TEXT="Result indicator chưa xác định [Meta export trực tiếp — điều kiện — DỪNG]" STYLE="fork" />
          <node ID="CPR_CHECK" TEXT="Đối soát: Cost per results trong đúng nhóm indicator" STYLE="fork" />
        </node>
      </node>
      <node ID="CPNC" TEXT="COST PER NEW MESSAGING CONTACT = SUM Amount Spent / SUM New Messaging Contacts [Sẵn có]" STYLE="fork">
        <node ID="CPNC_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="CPNC_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPNC_CONTACT" TEXT="SUM New Messaging Contacts" STYLE="fork">
          <node ID="CPNC_CONTACT_RAW" TEXT="New messaging contacts [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPNC_CHECK" TEXT="Đối soát: Cost per new messaging contact (VND)" STYLE="fork" />
      </node>
      <node ID="CPOC" TEXT="COST PER ORDER CREATED META = SUM Amount Spent / SUM Orders Created [Sẵn có một phần]" STYLE="fork">
        <node ID="CPOC_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="CPOC_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPOC_ORDER" TEXT="SUM Orders Created" STYLE="fork">
          <node ID="CPOC_ORDER_RAW" TEXT="Orders created do Meta ghi nhận [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPOC_LIMIT" TEXT="Định nghĩa và coverage event [To be updated]" STYLE="fork" />
      </node>
      <node ID="CPOD" TEXT="COST PER ORDER DISPATCHED META = SUM Amount Spent / SUM Orders Dispatched [Sẵn có một phần]" STYLE="fork">
        <node ID="CPOD_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="CPOD_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPOD_ORDER" TEXT="SUM Orders Dispatched" STYLE="fork">
          <node ID="CPOD_ORDER_RAW" TEXT="Orders dispatched do Meta ghi nhận [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="CPOD_LIMIT" TEXT="Không nối toán học từ Orders Created; định nghĩa và coverage [To be updated]" STYLE="fork" />
      </node>
      <node ID="ROAS" TEXT="PURCHASE ROAS META = SUM Purchases Conversion Value / SUM Amount Spent [Sẵn có]" STYLE="fork">
        <node ID="ROAS_VALUE" TEXT="SUM Purchases Conversion Value" STYLE="fork">
          <node ID="ROAS_VALUE_RAW" TEXT="Purchases conversion value [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="ROAS_SPEND" TEXT="SUM Amount Spent" STYLE="fork">
          <node ID="ROAS_SPEND_RAW" TEXT="Amount spent (VND) [Meta export trực tiếp — DỪNG]" STYLE="fork" />
        </node>
        <node ID="ROAS_CHECK" TEXT="Đối soát: Purchase ROAS (return on ad spend)" STYLE="fork" />
        <node ID="ROAS_LIMIT" TEXT="Purchases Conversion Value không thay GMV business" STYLE="fork" />
      </node>
    </node>
    <node ID="CROSS_CHECK" TEXT="CÔNG THỨC KIỂM TRA CHÉO — Không phải nhánh gốc" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="CTR_LINK" TEXT="CTR link = Link Clicks / Impressions" STYLE="fork" />
      <node ID="RESULT_RATE" TEXT="Result rate = Results / Impressions" STYLE="fork" />
      <node ID="CLICK_MESS_RATE" TEXT="Tỷ lệ Link Click → Messaging Conversation = Messaging Conversations Started / Link Clicks" STYLE="fork" />
      <node ID="NEW_CONTACT_RATE" TEXT="Tỷ lệ New Contact trên Conversation = New Messaging Contacts / Messaging Conversations Started" STYLE="fork" />
      <node ID="CPC_BRIDGE" TEXT="CPC link = CPM / (1.000 × CTR link)" STYLE="fork" />
      <node ID="CPR_BRIDGE" TEXT="Cost per Result của từng loại = CPM cùng nhóm / (1.000 × Result rate cùng nhóm)" STYLE="fork" />
      <node ID="CPMC_BRIDGE" TEXT="Cost per Messaging Conversation = CPC link / Tỷ lệ Link Click → Messaging Conversation" STYLE="fork" />
      <node ID="CPNC_BRIDGE" TEXT="Cost per New Messaging Contact = Cost per Messaging Conversation / Tỷ lệ New Contact trên Conversation" STYLE="fork" />
      <node ID="CROSS_CONDITION" TEXT="Chỉ dùng khi cùng kỳ, cấp, attribution, phạm vi và loại result" STYLE="fork" />
    </node>
    <node ID="AGGREGATION" TEXT="HỢP ĐỒNG TỔNG HỢP" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="AGG_CPM" TEXT="CPM tổng = SUM Amount Spent / SUM Impressions × 1.000" STYLE="fork" />
      <node ID="AGG_CPR" TEXT="CPR tổng của từng loại = SUM Amount Spent / SUM Results trong cùng Result indicator" STYLE="fork" />
      <node ID="AGG_ROAS" TEXT="ROAS tổng = SUM Purchases Conversion Value / SUM Amount Spent" STYLE="fork" />
      <node ID="AGG_NO_AVG" TEXT="Không lấy AVERAGE của CPM, CPC, CPR hoặc ROAS theo dòng" STYLE="fork" />
      <node ID="AGG_GRAIN" TEXT="Cấp tổng hợp chính: Campaign; Ad set và Ad chỉ đối soát hoặc đi sâu" STYLE="fork" />
      <node ID="AGG_NO_CROSS" TEXT="Không cộng Amount Spent Campaign + Ad set + Ad" STYLE="fork" />
    </node>
    <node ID="GAPS" TEXT="TO BE UPDATED" STYLE="bubble" POSITION="right" FOLDED="true">
      <node ID="GAP_CLICK" TEXT="Clicks (all), Link clicks, CTR all và CTR link cho tháng 03–05/2026" STYLE="fork" />
      <node ID="GAP_GMV" TEXT="GMV từng kênh, quy tắc hoàn/hủy, voucher, phí và thời điểm ghi nhận" STYLE="fork" />
      <node ID="GAP_ORDER" TEXT="Nguồn, định nghĩa và coverage của Orders Created và Orders Dispatched" STYLE="fork" />
    </node>
  </node>
</map>
