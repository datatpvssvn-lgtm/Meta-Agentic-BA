"""Rebuild active Joycat mindmaps from canonical Markdown sources.

This helper writes derived ``.mm`` files beside the design documents in
``01_inputs``. It never reads the old BA library or writes ``03_outputs``.
"""

from __future__ import annotations

import argparse
from pathlib import Path
import subprocess
import sys
import xml.etree.ElementTree as ET


DEFAULT_ROOT = Path(__file__).resolve().parents[3]


def add_link(parent: ET.Element, key: str, text: str, link: str) -> None:
    ET.SubElement(parent, "node", {"ID": key, "TEXT": text, "LINK": link})


def add_navigation(mm_path: Path, project_tree: bool = False) -> None:
    tree = ET.parse(mm_path)
    root = tree.getroot().find("node")
    if root is None:
        raise ValueError(f"Mindmap has no root node: {mm_path}")

    nav = ET.SubElement(
        root,
        "node",
        {"ID": f"NAV_{mm_path.stem}", "TEXT": "MỞ TÀI LIỆU LIÊN QUAN", "FOLDED": "true"},
    )
    if project_tree:
        targets = [
            ("CONTEXT", "Current Intent", "../../context/CURRENT_INTENT.md"),
            ("CASE", "Context Joycat", "../joycat/context.md"),
            ("BUSINESS_TREE", "Cây chỉ số Joycat", "../joycat/Ad_Cost_GMV_all_platform%20v3.md"),
        ]
    else:
        targets = [
            ("CASE", "Context Joycat", "context.md"),
            ("INTENT", "Current Intent", "../../context/CURRENT_INTENT.md"),
            ("PROJECT_KPI", "KPI Tree dự án", "../project/KPI_TREE.md"),
            ("BUSINESS_TREE", "Cây chỉ số Joycat", "Ad_Cost_GMV_all_platform%20v3.md"),
            ("DICT", "Data Dictionary", "DATA_DICTIONARY_JOYCAT.md"),
            ("METRIC", "Metric Tree", "METRIC_TREE.md"),
            ("FORMULA", "Bộ 5 Metrics", "CONG_THUC_5_METRICS_JOYCAT_v3.md"),
            ("MAPPING", "Mapping và Coverage", "DATA_MAPPING_COVERAGE_JOYCAT.md"),
        ]
    for key, text, link in targets:
        add_link(nav, f"NAV_{mm_path.stem}_{key}", text, link)

    ids = [item.get("ID") for item in tree.iter("node")]
    if not all(ids) or len(ids) != len(set(ids)):
        raise ValueError(f"Missing or duplicate node ID: {mm_path}")
    ET.indent(tree, space="  ")
    tree.write(mm_path, encoding="utf-8", xml_declaration=True)


def build(builder: Path, source: Path, output: Path, prefix: str) -> None:
    subprocess.run(
        [
            sys.executable,
            str(builder),
            "--source",
            str(source),
            "--out",
            str(output),
            "--id-prefix",
            prefix,
        ],
        check=True,
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=DEFAULT_ROOT)
    args = parser.parse_args()
    root = args.root.resolve()
    joycat = root / "01_inputs" / "joycat"
    project = root / "01_inputs" / "project"
    builder = Path(__file__).with_name("build_data_mapping_coverage_mm.py")

    jobs = [
        (project / "KPI_TREE.md", project / "KPI_TREE.mm", "PROJECT_KPI_", True),
        (
            joycat / "Ad_Cost_GMV_all_platform v3.md",
            joycat / "Ad_Cost_GMV_all_platform v3.mm",
            "JOYCAT_BUSINESS_TREE_",
            False,
        ),
        (joycat / "METRIC_TREE.md", joycat / "METRIC_TREE.mm", "METRIC_TREE_", False),
        (
            joycat / "CONG_THUC_5_METRICS_JOYCAT_v3.md",
            joycat / "CONG_THUC_5_METRICS_JOYCAT_v3.mm",
            "FORMULA_LIBRARY_",
            False,
        ),
        (
            joycat / "DATA_MAPPING_COVERAGE_JOYCAT.md",
            joycat / "DATA_MAPPING_COVERAGE_JOYCAT.mm",
            "MAPPING_COVERAGE_",
            False,
        ),
    ]

    for source, output, prefix, project_tree in jobs:
        if not source.is_file():
            raise FileNotFoundError(source)
        build(builder, source, output, prefix)
        add_navigation(output, project_tree=project_tree)
        print(f"Refreshed {output} from {source}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
