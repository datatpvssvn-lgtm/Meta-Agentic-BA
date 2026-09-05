# Archive mapping — gộp Context–Logic–Mapping Joycat

> Ngày: 2026-09-05  
> Mục đích: truy vết file trước khi gộp và chỉ rõ nội dung hiện được đọc ở đâu.

## 1. Bản sao trước khi sửa

Thư mục này giữ bản sao theo đúng cấu trúc đường dẫn cũ:

- `context\WORKSPACE_CONTEXT.md`
- `context\CURRENT_INTENT.md`
- `01_inputs\joycat\context.md`
- `03_outputs\joycat\LOGIC_TREE.md/.mm`
- các file nguồn đã dùng để gộp.

Không dùng các bản sao này làm trạng thái hiện hành. Chúng chỉ dùng đối chiếu hoặc khôi phục nếu cần.

## 2. File bị thay thế hoàn toàn

| Đường dẫn cũ | Vị trí archive (bản snapshot) | Nội dung hiện hành |
|---|---|---|
| `03_outputs\joycat\DIMENSION_MAPPING_VA_DO_PHU_DATASET.md` | `03_outputs\joycat\DIMENSION_MAPPING_VA_DO_PHU_DATASET.md` | `03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.md` |
| `03_outputs\joycat\DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` | `03_outputs\joycat\DATASET_SCHEMA_VA_COT_CAN_EXPORT_LAI.md` | `03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.md` §11–§12 |
| `03_outputs\joycat\BAO_CAO_BAN_GIAO_CONTEXT_LOGIC_JOYCAT.md` | `03_outputs\joycat\BAO_CAO_BAN_GIAO_CONTEXT_LOGIC_JOYCAT.md` | `context\CURRENT_INTENT.md` |
| `03_outputs\joycat\Ad_Cost_cap_2_v2.mm` | `03_outputs\joycat\Ad_Cost_cap_2_v2.mm` | `03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.mm` |
| `03_outputs\joycat\Ad_Cost_cap_2_v3.mm` | `03_outputs\joycat\Ad_Cost_cap_2_v3.mm` | `03_outputs\joycat\DATA_MAPPING_COVERAGE_JOYCAT.mm` |
| `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v2.md/.mm` | `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v2.md/.mm` | `03_outputs\joycat\CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm` |
| `03_outputs\joycat\YEU_CAU_HOAN_THIEN_CONTEXT_LOGIC_VA_MAPPING_JOYCAT.md` | `03_outputs\joycat\YEU_CAU_HOAN_THIEN_CONTEXT_LOGIC_VA_MAPPING_JOYCAT.md` | `context\CURRENT_INTENT.md` |

## 3. File vẫn giữ vai trò riêng

- `KPI_TREE.md/.mm`: xác định các chỉ số cần lượng hóa.
- `METRIC_TREE.md/.mm`: công thức đến raw field/điểm dừng.
- `CONG_THUC_5_METRICS_JOYCAT_v3.md/.mm`: công thức metrics chi tiết.
- AHP và tài liệu trọng số: phương pháp quyết định/phân bổ, không phải Logic Tree hiện tại.
- Các file Excel: dữ liệu dẫn xuất/catalog; không nhập nội dung file vào archive và không sửa nguồn.
- `META_ALL_METRICS.mm`: thư viện tham khảo, không phải đường phân tích case.

## 4. Bộ đọc chính sau khi gộp

```text
context\WORKSPACE_CONTEXT.md
→ 03_outputs\joycat\LOGIC_TREE.md
→ 03_outputs\joycat\LOGIC_TREE.mm
```

`CURRENT_INTENT.md` và `01_inputs\joycat\context.md` tiếp tục là file vận hành, không phải tài liệu trình bày thay Logic Tree.
