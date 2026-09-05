# Đối chiếu nội dung trước và sau khi hoàn thiện khung phân tích Joycat

> Ngày kiểm tra: 2026-09-05  
> Mục đích: chứng minh nội dung cần thiết từ các bản trước đã được giữ, khôi phục hoặc loại có chủ đích. Đây là working paper, không phải tài liệu bàn giao chính.

| Nội dung từ bản trước | Vị trí hiện hành | Xử lý | Lý do |
|---|---|---|---|
| Đường drill-down Campaign → Ad set → Ad | Mục 10, 12 và 13 | Khôi phục và mở rộng | Cần để tìm nơi tạo chênh lệch sau khi thấy vấn đề ở Campaign |
| Nhiệm vụ TOFU, MOFU, BOFU | Mục 6 và 12 | Khôi phục | Phân biệt nhiệm vụ từng tầng trước khi chọn metric hoặc nhóm so sánh |
| Cách chọn nhóm so sánh | Mục 10, 12 và ví dụ mục 14 | Mở rộng | Phải kiểm soát sản phẩm, objective, phễu, kỳ, attribution và cấu hình liên quan |
| Giả thuyết, bằng chứng hỗ trợ và phản bác | Mục 10–12 | Mở rộng | Không được biến một chênh lệch metric thành nguyên nhân hoặc recommendation ngay |
| Sáu cặp Ads Cost trong `Ad_Cost_cap_2_v3.mm` | Mục 8 | Giữ logic, viết lại đầy đủ | Bỏ ký hiệu `AS`, `CO`; giữ công thức tổng, chiều đọc ngược, ngoại lệ và đối soát |
| Ba block Phễu × Sản phẩm | Mục 8.4 | Giữ đầy đủ | TOFU, MOFU, BOFU và bucket ngoại lệ được viết riêng; không dùng một ví dụ thay cả ma trận |
| Công thức lặp 25 listing ở mọi nền tảng | Mục 8 + phụ lục mục 16 | Rút gọn có kiểm soát | Công thức vẫn thể hiện SP01–SP25; danh mục chỉ lưu một lần để giảm lặp và tránh lệch tên |
| Objective suy luận | Mục 7, 9, 13 và 14 | Làm rõ hợp đồng | Là human-curated ETL input do Duy cho phép; không giả thành Campaign objective gốc của Meta |
| Campaign objective, Optimization goal và Result indicator | Mục 7 | Tách riêng | Ba trường có ý nghĩa và grain khác nhau; không dùng thay nhau |
| Chênh lệch tháng 04 | Mục 3 và 9 | Truy vết sâu hơn | Demo cao hơn preferred Campaign 9.252 VND; giữ nguyên hai nguồn và không sửa để ép khớp |
| Công thức CPM/CPC/CPR dựng lại Ads Cost | Mục 10–11 | Giữ và thêm điều kiện | Là các cách biểu diễn cùng spend, không phải các khoản cộng với nhau |
| Kết luận kiểu “CPM cao nên ROAS giảm” | Mục 11 | Loại bỏ như kết luận mặc định | Chỉ được nói quan hệ toán học khi nêu biến giữ nguyên; kết luận thuộc từng case có dữ liệu |
| Đường tới recommendation | Mục 12 | Khôi phục và khóa gate | Chỉ recommendation sau khi có phạm vi, nhóm so sánh, giả thuyết và bằng chứng đủ |
| Chi tiết audience size/LAL | Không đưa vào bản v3 | Loại theo yêu cầu Duy | Audience size ngoài phạm vi task này |
| Các output Logic cũ từng nằm ở `D:\BA_library` | Không dùng làm output hiện hành | Loại khỏi đường bàn giao | Workspace hiện hành là `D:\Meta Agentic BA`; `D:\BA_library\04_knowledge_images` vẫn được giữ trong Workspace Context như nguồn tham khảo, không phải nơi ghi output |

## Kết luận đối chiếu

- Không phát hiện nội dung phân tích cốt lõi nào trong danh sách yêu cầu bị bỏ mất.
- Phần bị rút gọn chỉ là nội dung lặp; công thức và ngoại lệ vẫn được giữ trong tài liệu chính.
- Các bản cũ vẫn nằm trong archive, vì vậy mọi quyết định biên tập có thể truy lại.
- Công thức/mapping/coverage nằm tại `DATA_MAPPING_COVERAGE_JOYCAT.md`; đường câu hỏi và quyết định nằm tại `LOGIC_TREE.md`.
