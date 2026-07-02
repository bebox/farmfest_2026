#!/usr/bin/env python3

import argparse
import re
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
LILYPOND_CONFIG = REPO_ROOT / "lilypond" / "config" / "config.ily"
LATEX_PREAMBLE = REPO_ROOT / "latex" / "common" / "preamble.tex"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Sync the Farmfest theme color in both LilyPond and LaTeX.",
        epilog="Example: python3 helper_scripts/sync_theme_color.py --html A03543",
    )
    parser.add_argument(
        "--html",
        required=True,
        metavar="COLOR",
        help="6-digit HTML hex color, for example A03543 or #A03543",
    )
    return parser.parse_args()


def normalize_html_color(value: str) -> str:
    color = value.strip().lstrip("#").upper()
    if not re.fullmatch(r"[0-9A-F]{6}", color):
        raise ValueError(f"Invalid HTML color: {value}. Expected 6 hex digits, for example A03543.")
    return color


def html_to_rgb(color: str) -> tuple[int, int, int]:
    return int(color[0:2], 16), int(color[2:4], 16), int(color[4:6], 16)


def rgb_to_lilypond(rgb: tuple[int, int, int]) -> str:
    return "#(rgb-color {:.6f} {:.6f} {:.6f})".format(*(channel / 255 for channel in rgb))


def replace_one(content: str, pattern: str, replacement: str, file_path: Path) -> str:
    updated, count = re.subn(pattern, lambda _: replacement, content, count=1, flags=re.MULTILINE)
    if count != 1:
        raise ValueError(f"Expected exactly one match in {file_path} for pattern: {pattern}")
    return updated


def update_lilypond(file_path: Path, lilypond_color: str) -> None:
    content = file_path.read_text()
    content = replace_one(
        content,
        r"farmfestColor = #\(rgb-color [^)]+\)",
        f"farmfestColor = {lilypond_color}",
        file_path,
    )
    file_path.write_text(content)


def update_latex(file_path: Path, rgb: tuple[int, int, int]) -> None:
    content = file_path.read_text()
    latex_color = f"\\definecolor{{farmfest}}{{RGB}}{{{rgb[0]},{rgb[1]},{rgb[2]}}}"
    content = replace_one(
        content,
        r"\\definecolor\{farmfest\}\{RGB\}\{\d+,\d+,\d+\}",
        latex_color,
        file_path,
    )
    file_path.write_text(content)


def main() -> None:
    args = parse_args()
    html_color = normalize_html_color(args.html)
    rgb = html_to_rgb(html_color)
    lilypond_color = rgb_to_lilypond(rgb)

    update_lilypond(LILYPOND_CONFIG, lilypond_color)
    update_latex(LATEX_PREAMBLE, rgb)

    print(f"html: #{html_color}")
    print(f"latex: RGB{{{rgb[0]},{rgb[1]},{rgb[2]}}}")
    print(f"lilypond: {lilypond_color}")
    print(f"updated: {LILYPOND_CONFIG.relative_to(REPO_ROOT)}")
    print(f"updated: {LATEX_PREAMBLE.relative_to(REPO_ROOT)}")


if __name__ == "__main__":
    main()
