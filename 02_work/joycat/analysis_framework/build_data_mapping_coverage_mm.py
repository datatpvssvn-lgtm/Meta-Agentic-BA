"""Build a FreeMind mindmap from a structured Markdown document."""

from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path
import argparse
import hashlib
import re
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parents[3]
DEFAULT_SOURCE = ROOT / "01_inputs" / "joycat" / "DATA_MAPPING_COVERAGE_JOYCAT.md"
DEFAULT_OUT = ROOT / "01_inputs" / "joycat" / "DATA_MAPPING_COVERAGE_JOYCAT.mm"
ID_PREFIX = "MINDMAP_"


@dataclass
class Topic:
    text: str
    children: list["Topic"] = field(default_factory=list)


def clean_inline(text: str) -> str:
    text = re.sub(r"!\[[^]]*\]\([^)]+\)", "[hình minh họa]", text)
    text = re.sub(r"\[([^]]+)\]\([^)]+\)", r"\1", text)
    text = text.replace("**", "").replace("`", "")
    return re.sub(r"\s+", " ", text).strip()


def node_id(path: str) -> str:
    return ID_PREFIX + hashlib.sha1(path.encode("utf-8")).hexdigest()[:16].upper()


def append_topic(stack: list[tuple[int, Topic]], level: int, topic: Topic) -> None:
    while stack and stack[-1][0] >= level:
        stack.pop()
    if not stack:
        raise ValueError(f"Topic without parent: {topic.text}")
    stack[-1][1].children.append(topic)
    stack.append((level, topic))


def parse_markdown(text: str) -> Topic:
    title = clean_inline(next(line[2:] for line in text.splitlines() if line.startswith("# ")))
    root = Topic(title)
    stack: list[tuple[int, Topic]] = [(1, root)]
    paragraph: list[str] = []
    code: list[str] = []
    in_code = False
    seen_main_section = False

    def flush_paragraph() -> None:
        nonlocal paragraph
        if paragraph:
            value = clean_inline(" ".join(paragraph))
            if value:
                append_topic(stack, 5, Topic(value))
            paragraph = []

    def flush_code() -> None:
        nonlocal code
        value = "\n".join(line.rstrip() for line in code).strip()
        if value:
            append_topic(stack, 5, Topic(value))
        code = []

    for raw in text.splitlines():
        line = raw.rstrip()
        if line.strip().startswith("```"):
            flush_paragraph()
            if in_code:
                flush_code()
                in_code = False
            else:
                in_code = True
            continue
        if in_code:
            code.append(line)
            continue

        heading = re.match(r"^(#{2,4})\s+(.+)$", line)
        if heading:
            flush_paragraph()
            level = len(heading.group(1))
            if level == 2:
                seen_main_section = True
            append_topic(stack, level, Topic(clean_inline(heading.group(2))))
            continue

        # The title metadata is useful in Markdown but should not become extra
        # root branches.  The root node already carries the document title.
        if not seen_main_section:
            continue

        bullet = re.match(r"^(\s*)[-*+]\s+(.+)$", line)
        if bullet:
            flush_paragraph()
            indent = len(bullet.group(1).expandtabs(2))
            append_topic(stack, 5 + min(indent // 2, 2), Topic(clean_inline(bullet.group(2))))
            continue

        numbered = re.match(r"^(\s*)\d+\.\s+(.+)$", line)
        if numbered:
            flush_paragraph()
            indent = len(numbered.group(1).expandtabs(2))
            append_topic(stack, 5 + min(indent // 2, 2), Topic(clean_inline(numbered.group(2))))
            continue

        if line.startswith("|") and line.endswith("|"):
            flush_paragraph()
            cells = [clean_inline(cell) for cell in line.strip("|").split("|")]
            if cells and not all(re.fullmatch(r":?-+:?", cell) for cell in cells):
                append_topic(stack, 5, Topic(" | ".join(cells)))
            continue

        stripped = line.strip()
        if not stripped or stripped == "---":
            flush_paragraph()
        elif stripped.startswith(">"):
            flush_paragraph()
            append_topic(stack, 5, Topic(clean_inline(stripped.lstrip("> "))))
        else:
            paragraph.append(stripped)

    flush_paragraph()
    if in_code:
        flush_code()
    return root


COLORS = ["#1F4E79", "#548235", "#2F5597", "#7030A0", "#8064A2", "#C65911", "#5B9BD5", "#7F6000"]


def emit(parent: ET.Element, topic: Topic, path: str, depth: int, sibling: int) -> ET.Element:
    attrs = {"ID": node_id(path), "TEXT": topic.text}
    if topic.children and depth >= 1:
        attrs["FOLDED"] = "true"
    if depth == 1:
        attrs["COLOR"] = COLORS[(sibling - 1) % len(COLORS)]
    current = ET.SubElement(parent, "node", attrs)
    if depth <= 1:
        ET.SubElement(current, "font", {"BOLD": "true", "SIZE": "14" if depth else "20"})
    for index, child in enumerate(topic.children, 1):
        emit(current, child, f"{path}/{index}:{child.text}", depth + 1, index)
    return current


def main() -> None:
    global ID_PREFIX
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, default=DEFAULT_SOURCE)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--id-prefix", default="MINDMAP_")
    args = parser.parse_args()
    source = args.source.resolve()
    out = args.out.resolve()
    ID_PREFIX = args.id_prefix

    source_text = source.read_text(encoding="utf-8")
    topic_root = parse_markdown(source_text)
    map_el = ET.Element("map", {"version": "1.0.1"})
    root_el = ET.SubElement(map_el, "node", {
        "ID": node_id("root"), "TEXT": topic_root.text, "STYLE": "bubble",
        "COLOR": "#FFFFFF", "BACKGROUND_COLOR": "#4472C4",
    })
    ET.SubElement(root_el, "font", {"BOLD": "true", "SIZE": "20"})
    for index, child in enumerate(topic_root.children, 1):
        emit(root_el, child, f"root/{index}:{child.text}", 1, index)

    tree = ET.ElementTree(map_el)
    ET.indent(tree, space="  ")
    out.parent.mkdir(parents=True, exist_ok=True)
    tree.write(out, encoding="utf-8", xml_declaration=True)
    print(f"Built {out} from {source}")


if __name__ == "__main__":
    main()
