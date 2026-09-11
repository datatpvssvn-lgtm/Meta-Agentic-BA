<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node ID="ROOT" TEXT="KPI GỐC — Ads Cost / GMV all platform">
    <node ID="AC" TEXT="Ads Cost" STYLE="bubble" POSITION="right">
      <node ID="SPEND" TEXT="Amount Spent [Có]" STYLE="fork"/>
      <node ID="CPM" TEXT="CPM [Có]" STYLE="fork"><node ID="CPM_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="IMP" TEXT="Impressions [Có]" STYLE="fork"/></node>
      <node ID="CPC" TEXT="CPC [Chưa có dữ liệu]" STYLE="fork"><node ID="CPC_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="CLICKS" TEXT="Clicks hoặc Link Clicks [Chưa có]" STYLE="fork"/></node>
      <node ID="CPR" TEXT="Cost per Result [Có điều kiện]" STYLE="fork"><node ID="CPR_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="RESULTS" TEXT="Results [Có]" STYLE="fork"/><node ID="INDICATOR" TEXT="Result indicator [Có]" STYLE="fork"/></node>
      <node ID="CPE" TEXT="Cost per Engagement [Có điều kiện]" STYLE="fork"><node ID="CPE_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="ENGAGEMENT" TEXT="Engagement Results [Có khi indicator = post_engagement]" STYLE="fork"/></node>
      <node ID="CPMC" TEXT="Cost per Messaging Conversation [Có]" STYLE="fork"><node ID="CPMC_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="CONV" TEXT="Messaging Conversations Started [Có]" STYLE="fork"/></node>
      <node ID="CPNC" TEXT="Cost per New Messaging Contact [Có]" STYLE="fork"><node ID="CPNC_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="CONTACT" TEXT="New Messaging Contacts [Có]" STYLE="fork"/></node>
      <node ID="CPP" TEXT="Cost per Meta Purchase [Có]" STYLE="fork"><node ID="CPP_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="PURCHASE" TEXT="Purchases do Meta ghi nhận [Có]" STYLE="fork"/></node>
      <node ID="CPOC" TEXT="Cost per Order Created Meta [Có một phần]" STYLE="fork"><node ID="CPOC_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="ORDER_CREATED" TEXT="Orders Created do Meta ghi nhận [Có; định nghĩa chưa xác nhận]" STYLE="fork"/></node>
      <node ID="CPOD" TEXT="Cost per Order Dispatched Meta [Có một phần]" STYLE="fork"><node ID="CPOD_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="ORDER_DISPATCHED" TEXT="Orders Dispatched do Meta ghi nhận [Có; định nghĩa chưa xác nhận]" STYLE="fork"/></node>
      <node ID="ROAS" TEXT="Purchase ROAS Meta [Có; không phải ROAS business]" STYLE="fork"><node ID="ROAS_SPEND" TEXT="Amount Spent" STYLE="fork"/><node ID="CONVERSION_VALUE" TEXT="Purchases Conversion Value [Có; không phải GMV]" STYLE="fork"/></node>
    </node>
    <node ID="GMV" TEXT="GMV all platform" STYLE="bubble" POSITION="right">
      <node ID="SHOPEE" TEXT="GMV Shopee [Chưa có dữ liệu]" STYLE="fork"/>
      <node ID="TIKTOK" TEXT="GMV TikTok [Chưa có dữ liệu]" STYLE="fork"/>
      <node ID="FACEBOOK" TEXT="GMV Facebook / Messenger [GMV business: chưa có]" STYLE="fork"><node ID="META_VALUE" TEXT="Purchases Conversion Value Meta [Có trong export; không thay GMV business]" STYLE="fork"/></node>
      <node ID="STORE" TEXT="GMV cửa hàng trực tiếp [Chưa có dữ liệu]" STYLE="fork"/>
      <node ID="OTHER" TEXT="GMV các kênh khác [Chưa có dữ liệu]" STYLE="fork"/>
    </node>
  </node>
</map>
