# PDF Manifest - AI Agentic Analytics K60

> **Phạm vi:** Manifest này chỉ mô tả 6 PDF được tạo từ snapshot K60 cũ một phần. Nó không chứng minh toàn bộ 1.277 tài liệu gốc trong full source đã được chuyển thành PDF. Các bộ 148 slide EDA Descriptive, 113 slide EDA Diagnostic và 159 ảnh Visualization trong full source chưa được đóng gói lại ở lượt Context/Data Dictionary ngày 11/09/2026.

> Tạo và kiểm định: 2026-09-09  
> Output folder: `pdf/`  
> Tổng: 6 PDF, 154 trang

| File | Trang | Dung lượng | SHA-256 | Vai trò |
|---|---:|---:|---|---|
| `00_K60_READING_GUIDE.pdf` | 2 | 85.284 byte | `4f4a2ba89080156dce9b559e539ed035c068b0054982e7f88d7b9adc4101faa6` | Điểm vào và routing tài liệu |
| `01_K60_ANALYTICAL_THINKING_AND_LOGIC_TREE.pdf` | 102 | 3.859.144 byte | `47c292b471ed011efacaa5905cddb126153a9112dd8083124e4f153084c74146` | 30 slide Data & Analytics metrics + 68 trang Problem Solving 101 + trang dẫn |
| `02_K60_DATA_SAMPLE_CATALOG.pdf` | 4 | 86.405 byte | `386f76ddc8a9093e4b32396030a7343d4d95e30358e6d3212fb092b49d17893f` | Schema sơ bộ Excel/CSV/Access và gợi ý bài học |
| `03_K60_AI_FLUENCY_SESSION_STATUS.pdf` | 2 | 81.425 byte | `e6005307a2e9b2a6eaa938d858b6f34cea60089d3626f93d3c3f39dc86e6f7b0` | Ghi nhận `.drivedownload` chưa phải video thật |
| `04_K60_POWER_BI_SAMPLE_CATALOG.pdf` | 2 | 82.137 byte | `e041f75356663b5a7efb11fcca1dccf803dc699e0fa30d44b1e5645d3d4e9067` | Catalogue PBIX và điều kiện mở/export đúng |
| `05_K60_VISUALIZATION_SESSION_16_18.pdf` | 42 | 2.320.327 byte | `42a53345a3e34258bdc3f8bab563527f9fabb2c3d1695fab176011bac834516c` | 41 ảnh slide visualization + trang dẫn |

## Kiểm định đã chạy

- Parser mở được toàn bộ PDF; không file nào encrypted.
- Page count khớp số trang render của cả 6 file.
- Đã render toàn bộ 154 trang bằng Poppler.
- Đã xem contact sheet của toàn bộ trang và xem riêng các trang catalogue có nguy cơ tách bảng.
- Không thấy chữ Việt bị lỗi font, hình bị méo, nội dung chồng lấn hoặc bảng bị cắt mất.
- Reader Analytical Thinking có một số trang rất ít nội dung/trang trắng do source `problem_solving_101.pdf`; phần source được giữ nguyên, không tự xóa trang.

## Giới hạn

- PBIX chưa được mở/export bằng Power BI, nên PDF tương ứng là catalogue chứ không phải bản report.
- AI Fluency chưa có MP4/transcript thật, nên PDF tương ứng là readiness note.
- Access database chưa audit table/schema; catalogue chỉ ghi nhận file hiện có.
