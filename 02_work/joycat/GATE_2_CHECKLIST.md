# Gate 2 Checklist — Joycat Trees & Data Mapping

> Cập nhật: 2026-09-11  
> Người thực hiện: Duy, có Codex hỗ trợ  
> Người quyết định Gate: cậu Sinh  
> Trạng thái: **Chờ cậu Sinh review — chưa Pass**

## Cách đọc

- `Đạt kỹ thuật`: có file hoặc check tái tạo được.
- `Còn mở`: thiếu nguồn, owner hoặc review.
- Không được đổi Gate thành Pass chỉ vì script chạy PASS.

## 1. Bảy lỗi chính

| # | Điều kiện review lại | Bằng chứng hiện tại | Trạng thái |
|---:|---|---|---|
| 1 | Current Intent chốt đúng mục tiêu và deliverable | `context/CURRENT_INTENT.md` v21.0 | Đạt kỹ thuật; chờ Sinh review |
| 2 | Tách KPI dự án khỏi chỉ số Joycat | `01_inputs/project/KPI_TREE.md/.mm`; `01_inputs/joycat/Ad_Cost_GMV_all_platform v3.md/.mm` | Đạt cấu trúc; target dự án chưa chốt |
| 3 | AGENTS ngăn AI tự đoán | Trust order, evidence label và phân quyền trong `AGENTS.md` | Đạt kỹ thuật; chờ Sinh review |
| 4 | Rõ data cần có ở Campaign/Ad set/Ad | Data Dictionary §2.1 | Đạt thiết kế; nhiều field nguồn còn thiếu |
| 5 | Folder/link/validator/join key đúng | Source of truth ở `01_inputs`; mapping contract; validator portable | Đạt kiểm tra kỹ thuật hiện tại; production key vẫn chờ Campaign ID |
| 6 | Tách Meta Purchase và business order | `meta_purchases_attributed` khác `business_orders_eligible` trong Dictionary, Metric Tree và Bộ 5 Metrics | Đạt tầng định nghĩa; bridge chưa có |
| 7 | Chỉ đi ETL/Power BI sau duyệt | Current Intent và checklist giữ `Chưa Pass` | Còn mở — cậu Sinh quyết định |

## 2. Blocker dữ liệu không được che bằng tài liệu

| Blocker | Hiện trạng | Ảnh hưởng |
|---|---|---|
| Campaign ID trong preferred Campaign export | Chưa có | Không dùng Campaign name làm production key |
| Parent IDs nối Campaign–Ad set–Ad | Chưa đủ ở preferred | Chưa chứng minh hierarchy join hoàn chỉnh |
| Objective/optimization/placement/publisher gốc | Một phần hoặc chưa có | Không khẳng định setup thật ở nhánh thiếu field |
| Mapping Objective/Phễu/Sản phẩm có metadata duyệt | Chưa đầy đủ | Chỉ dùng như human-curated exploration |
| Chênh demo tháng 04 `+9.252 VND` | Chưa giải quyết | Demo chưa là fact spend production |
| `business_orders_eligible` và `GMV_business` | Chưa có | Chưa tính Business ROAS hoặc kiểm nghiệm 5–10% |

## 3. Kết quả kiểm định kỹ thuật

Phần này phải được cập nhật từ chính lần chạy validator hiện tại, không chép kết quả cũ:

- Link Markdown active: `0 link hỏng` trên 14 file active đã kiểm tra.
- XML và link `.mm`: `6/6 parse OK`, `0 duplicate ID`, `0 link hỏng`.
- Required files: `19/19 tồn tại`.
- Raw hash manifest: `33 file`, có size và SHA-256 trong `validation/handoff_validation.json`; không có thao tác ghi raw trong lượt sửa.
- Portability với `--root`: validator đã chạy thành công bằng root truyền từ CLI; script không hard-code ổ D.
- Negative test: chạy validator với một root cố ý không tồn tại trả exit code `1`; vì vậy lỗi kỹ thuật không bị báo nhầm là PASS.

Nguồn kết quả: [`validation/handoff_validation.json`](validation/handoff_validation.json), thời điểm chạy được ghi trong chính file JSON.

## 4. Quyết định Gate

```text
Technical validation PASS
≠ Gate 2 Approved
```

- Quyết định của cậu Sinh: `Chưa có`.
- ETL/Power BI được phép bắt đầu: `Không`.
- Việc cần làm tiếp: Duy trình bộ file và các blocker còn mở để cậu Sinh review.

## 5. Bổ sung theo bốn việc cậu Sinh giao ngày 11/09/2026

- Folder K60 Duy đã tải được đăng ký tại full source `D:\AI_Agentic_Analytics_K60_20260909_FULL\AI Agentic Analytics K60`; không tải lại và không coi sáu PDF snapshot cũ là coverage đầy đủ.
- `AGENTS.md`, ba lớp Context và hai KPI Tree đã được nối về đúng vai trò của K60: nguồn phương pháp, không phải fact Joycat.
- Data Dictionary phân loại categorical/numerical/identifier/time và ghi mẫu Duy yêu cầu một cặp biến.
- Mapping/Coverage mục 9.4 quy định phiếu Pair Readiness để AI báo `Sẵn sàng`, `Có điều kiện` hoặc `Bị chặn` trước ETL.
- Chưa tính correlation, chưa chạy statistical test và chưa viết recommendation; đây không phải dấu hiệu thiếu bàn giao mà là ranh giới scope hiện tại.
