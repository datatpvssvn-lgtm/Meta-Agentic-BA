# Link kiến thức Meta cho Metric Tree

> Mục đích: nguồn học để dựng và kiểm định Metric Tree cho Meta Ads.
> 
> Không phải bằng chứng về hiệu quả, GMV, số đơn hay thiết lập tracking của Joycat. Khi dùng vào case Joycat, phải đối chiếu tiếp Context và raw export.
>
> Ngày kiểm tra: 2026-08-21

## 1. Cách dùng trong phase hiện tại

Bản catalog mindmap 395 trường được lưu cùng khu vực tham khảo tại [META_ALL_METRICS.mm](META_ALL_METRICS.mm). Catalog giúp tra tên trường; không thay Context Joycat, Data dictionary hoặc bằng chứng từ raw.

1. Đọc định nghĩa/chức năng của metric trên Meta.
2. Kiểm tra raw Joycat có field và kỳ dữ liệu tương ứng hay không.
3. Ghi công thức hoặc quan hệ toán học, cấp dữ liệu, attribution và giới hạn vào Metric Tree.
4. Không thay GMV toàn nền tảng bằng metric conversion value hoặc ROAS của Meta.

## 2. Link chính thức của Meta

| Chủ đề | Link | Dùng để hiểu | Không được suy ra |
|---|---|---|---|
| Ba cấp Campaign → Ad set → Ad | [Meta Ads Manager: ba cấp quảng cáo](https://www.facebook.com/help/messenger-app/621956575422138/) | Campaign chọn objective; Ad set có audience, placement, budget, schedule; Ad chứa creative | Không được cộng chéo số liệu ba cấp |
| Awareness, Reach, Impressions, video views | [Meta Awareness objective](https://www.facebook.com/business/ads/ad-objectives/awareness) | Awareness có thể tối ưu reach, impressions, ad recall lift, ThruPlay hoặc video views | Objective/performance goal không tự chứng minh hiệu quả business |
| Định nghĩa Reach và Impressions | [Meta: Reach vs Impressions](https://www.facebook.com/help/274400362581037) | Reach là số người nhìn thấy; Impressions là số lần nội dung xuất hiện trên màn hình. Meta nói Reach là metric ước tính trong ngữ cảnh tài liệu này | Reach và Impressions không phải GMV, đơn hàng hoặc ý định mua |
| Công thức CPM | [Meta: CPM](https://www.facebook.com/help/www/214576695231407) | `CPM = Amount spent / Impressions × 1.000` | CPM thấp không tự chứng minh chuyển đổi tốt |
| Cost per result và mục tiêu Traffic | [Meta Traffic objective](https://www.facebook.com/business/ads/ad-objectives/traffic) | Cost per result phải đọc cùng objective/kết quả mà campaign tối ưu | Không dùng một Cost per result để so sánh các Result indicator khác nhau |
| Conversion event, online/offline/messaging data | [Meta Conversions API](https://www.facebook.com/business/help/AboutConversionsAPI) | Meta có thể nhận event từ website, app, offline và messaging để tối ưu/đo lường | Việc Meta có khả năng nhận event không chứng minh Joycat đã cài, đã gửi đủ hoặc event đã khớp đơn thật |
| Ads click-to-Messenger | [Meta Messenger ads](https://www.facebook.com/business/ads/messenger-ads) | Ads có thể đưa người dùng vào cuộc hội thoại Messenger; đây là một điểm trong hành trình khách | Conversation không tự bằng đơn hàng hoặc doanh thu |
| Placement và cost per result | [Meta Advantage+ placements](https://www.facebook.com/business/ads/meta-advantage-plus/placements) | Placement là một dimension có thể dùng để phân tích Reach/Cost per result nếu raw có field tương ứng | Không kết luận placement tốt/xấu nếu chưa phân tích dữ liệu cùng scope/kỳ |

## 3. Seed công thức cho Metric Tree

| Metric | Công thức hoặc cách đọc | Loại quan hệ | Điều kiện dùng ở Joycat |
|---|---|---|---|
| Ads Cost | Tổng `Amount spent (VND)` ở **một** grain và kỳ đã chọn | Cộng gộp | Không cộng Campaign với Ad set hoặc Ad |
| CPM | `Amount spent / Impressions × 1.000` | Toán học | Cùng grain, scope và kỳ |
| Frequency | `Impressions / Reach` | Toán học | Chỉ dùng khi cần; raw Campaign hiện chưa có cột Frequency để đối chiếu trực tiếp |
| Impressions | Có thể diễn giải qua `Reach × Frequency`; đồng thời là metric Meta xuất sẵn | Toán học + platform-reported | Không tự tính lại nếu Reach/Frequency khác scope hoặc định nghĩa report |
| Cost per result | `Amount spent / Results` | Toán học | Bắt buộc ghi Result indicator đi kèm vì `Results` không có một nghĩa cố định |
| Cost per messaging conversation | `Amount spent / Messaging conversations started` | Toán học | Chỉ dùng khi cả tử số/mẫu số cùng grain, kỳ và attribution |
| Cost per new messaging contact | `Amount spent / New messaging contacts` | Toán học | Chỉ dùng khi cả tử số/mẫu số cùng grain, kỳ và attribution |
| Ads Cost / GMV toàn nền tảng | `Ads Cost / GMV toàn nền tảng` | Toán học/business | Ads Cost có từ Meta; GMV đa nền tảng hiện chưa có nguồn trong workspace |

## 4. Quy tắc đọc metric Meta

- Một metric phải có: definition, công thức/quan hệ, đơn vị, grain, kỳ, source, attribution và limitation.
- `Results`, `Cost per result`, `Purchases`, `Orders created`, `Orders dispatched` phải đọc cùng `Result indicator` hoặc event/attribution tương ứng.
- Khi không có đầy đủ mẫu số hoặc định nghĩa, giữ metric trong Tree với trạng thái `Chưa sẵn có` hoặc `Sẵn có một phần`; không tự thay bằng metric gần giống.
- Các link trên chỉ là **knowledge reference**. Evidence cho Joycat phải trỏ tới raw/context Joycat hoặc owner xác nhận.

## 5. Còn cần research khi bắt đầu Metric Tree chi tiết

Trạng thái: To be updated  
Thiếu: tài liệu chính thức/định nghĩa chính xác cho từng Result indicator đang xuất hiện trong raw Joycat; attribution setting của từng metric; quy tắc event Purchase/Orders trong setup Joycat.  
Owner/nguồn xác nhận: Meta export, Events Manager/Ads Manager của Joycat hoặc người phụ trách tracking.  
Ảnh hưởng: Chưa được so sánh mọi Cost per result hoặc coi event Meta là business order.  
Câu hỏi tiếp theo: Trong raw Joycat, Result indicator nào cần đưa vào Metric Tree trước: awareness, messaging hay purchase?
