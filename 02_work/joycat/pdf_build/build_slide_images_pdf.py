"""Build one no-cover PDF page per slide image and verify page-count equality."""

from __future__ import annotations

import re
import sys
from pathlib import Path

from PIL import Image
from pypdf import PdfReader
from reportlab.lib import colors
from reportlab.pdfgen import canvas


def natural_key(path: Path) -> tuple[int, str]:
    match = re.search(r"(\d+)", path.stem)
    return (int(match.group(1)) if match else -1, path.name.lower())


def discover_slides(source: Path) -> list[Path]:
    """Return all conventional slide images in deterministic numeric order."""
    allowed = {".webp", ".jpg", ".jpeg", ".png"}
    return sorted(
        (path for path in source.iterdir() if path.is_file() and path.suffix.lower() in allowed and re.match(r"^slide[-_ ]?\d+", path.name, re.I)),
        key=natural_key,
    )


def draw_source_gap(pdf: canvas.Canvas, slide: Path, width: int, height: int) -> None:
    """Keep page order transparent when the archived source bytes are unreadable."""
    pdf.setFillColor(colors.HexColor("#F7F7F7"))
    pdf.rect(0, 0, width, height, stroke=0, fill=1)
    pdf.setFillColor(colors.HexColor("#9B1C1C"))
    pdf.setFont("Helvetica-Bold", min(36, width / 45))
    pdf.drawCentredString(width / 2, height / 2 + 24, "SOURCE SLIDE CANNOT BE DECODED")
    pdf.setFillColor(colors.HexColor("#333333"))
    pdf.setFont("Helvetica", min(22, width / 70))
    pdf.drawCentredString(width / 2, height / 2 - 16, slide.name)
    pdf.drawCentredString(width / 2, height / 2 - 50, "The original WebP bytes are retained unchanged in the source folder.")


def main(source_dir: str, output_pdf: str, allow_placeholders: bool = False) -> None:
    source = Path(source_dir)
    output = Path(output_pdf)
    slides = discover_slides(source)
    if not slides:
        raise SystemExit(f"No sequential slide image files found: {source}")

    output.parent.mkdir(parents=True, exist_ok=True)
    if output.exists():
        raise SystemExit(f"Output already exists; preserving it: {output}")

    pdf = None
    unreadable: list[str] = []
    for slide in slides:
        try:
            with Image.open(slide) as image:
                width, height = image.size
            readable = True
        except Exception as error:
            if not allow_placeholders:
                raise SystemExit(f"Unreadable source image: {slide.name}: {error}") from error
            # VP8 frame headers retain the original canvas dimensions even when compressed bytes are truncated.
            raw = slide.read_bytes()
            if slide.suffix.lower() == ".webp" and len(raw) >= 30 and raw[23:26] == b"\x9d\x01\x2a":
                width = int.from_bytes(raw[26:28], "little") & 0x3FFF
                height = int.from_bytes(raw[28:30], "little") & 0x3FFF
            else:
                width, height = 1600, 900
            readable = False
            unreadable.append(slide.name)
        if pdf is None:
            pdf = canvas.Canvas(str(output), pagesize=(width, height), pageCompression=1)
        else:
            pdf.setPageSize((width, height))
        if readable:
            pdf.drawImage(str(slide), 0, 0, width=width, height=height, mask="auto")
        else:
            draw_source_gap(pdf, slide, width, height)
        pdf.showPage()

    assert pdf is not None
    pdf.save()

    page_count = len(PdfReader(str(output)).pages)
    if page_count != len(slides):
        raise SystemExit(
            f"Verification failed: {len(slides)} source slides but {page_count} PDF pages."
        )
    print(f"Created {output}")
    print(f"Verified: {len(slides)} slide images = {page_count} PDF pages; no cover added.")
    if unreadable:
        print("SOURCE_GAPS=" + ", ".join(unreadable))


def check(source_dir: str) -> None:
    source = Path(source_dir)
    slides = discover_slides(source)
    failures: list[str] = []
    for slide in slides:
        try:
            with Image.open(slide) as image:
                image.load()
        except Exception as error:  # report exact unreadable source rather than silently skip it
            failures.append(f"{slide.name}: {error}")
    print(f"Checked {len(slides)} slide images.")
    if failures:
        print("Unreadable files:")
        print("\n".join(failures))
        raise SystemExit(1)


if __name__ == "__main__":
    if len(sys.argv) == 3 and sys.argv[1] == "--check":
        check(sys.argv[2])
        raise SystemExit(0)
    if len(sys.argv) == 4 and sys.argv[1] == "--allow-placeholders":
        main(sys.argv[2], sys.argv[3], allow_placeholders=True)
        raise SystemExit(0)
    if len(sys.argv) != 3:
        raise SystemExit("Usage: build_slide_images_pdf.py [--check <source_dir>] | [--allow-placeholders <source_dir> <output_pdf>] | <source_dir> <output_pdf>")
    main(sys.argv[1], sys.argv[2])
