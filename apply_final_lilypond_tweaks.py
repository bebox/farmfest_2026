#!/usr/bin/env python3

import re
import subprocess
from pathlib import Path

from generate_ly_from_mscx import song_list

REPO_ROOT = Path(__file__).resolve().parent
LILYPOND_ROOT = REPO_ROOT / "lilypond"
BIN_DIR_BY_SRC_DIR = {
    "src_c": "bin_c",
    "src_bb": "bin_bb",
    "src_eb": "bin_eb",
    "src_bass": "bin_bass",
    "src_bto": "bin_bto",
    "src_nashville": "bin_nashville",
}
EXPECTED_PAGES_BY_SONG = {song.name: song.expected_pages for song in song_list}


def apply_rule(content: str, pattern: str, replacement: str) -> tuple[str, int]:
    return re.subn(pattern, replacement, content, flags=re.MULTILINE)


def process_file(path: Path) -> tuple[bool, list[tuple[str, int]]]:
    original = path.read_text()
    content = original
    counts: list[tuple[str, int]] = []

    rules = [
        (
            "drop_opening_start_repeat",
            r'(^\s*%\\tempo[^\n]*\n)\s*\\bar "\.\|:" \\markMoj\n',
            r'\1  \\markMoj\n',
        ),
        (
            "repeat_mark_right",
            r'\\bar ":\|\." \| \\break\n\s*\\markMoj\n',
            r'\\bar ":|." | \\break\n  \\markMojPonRight\n',
        ),
        (
            "repeat_mark_restart",
            r'\\bar "\|\|" \| \\break\n\s*\\bar "\.\|:" \\markMoj\n',
            r'\\bar "||" | \\break\n  \\markMojPonn\n',
        ),
        (
            "repeat_mark_loop",
            r'(\s*r1 )\\bar ":\|\." \| \\break\n\s*\\bar "\.\|:" \\markMoj\n',
            r'\1| \\break\n  \\markMojPonnn\n',
        ),
        (
            "lyrics_s_to",
            r'"s to"',
            '"s\u00a0to"',
        ),
    ]

    for name, pattern, replacement in rules:
        content, count = apply_rule(content, pattern, replacement)
        if count:
            counts.append((name, count))

    if content != original:
        path.write_text(content)
        return True, counts
    return False, counts


def get_pdf_page_count(path: Path) -> int | None:
    if not path.exists():
        return None
    result = subprocess.run(
        ["pdfinfo", str(path)],
        cwd=REPO_ROOT,
        check=False,
        text=True,
        capture_output=True,
    )
    if result.returncode != 0:
        return None
    for line in result.stdout.splitlines():
        if line.startswith("Pages:"):
            return int(line.split(":", 1)[1].strip())
    return None


def get_fit_suggestion(path: Path) -> str:
    content = path.read_text()
    suggestions = []
    if "%system-system-spacing.padding = #3.2" in content and "\nsystem-system-spacing.padding = #" not in content:
        suggestions.append("enable `system-system-spacing.padding` in `\\paper` and try a smaller value such as `#2.0` to `#2.2`")
    suggestions.append("add `\\noBreak` near the system break that spills to the next page")
    suggestions.append("compare against the manual-print variant to see whether a local spacing tweak is needed")
    return "; ".join(suggestions)


def check_pdf_fit(path: Path) -> str | None:
    bin_dir_name = BIN_DIR_BY_SRC_DIR.get(path.parent.name)
    if bin_dir_name is None:
        return None
    pdf_path = LILYPOND_ROOT / bin_dir_name / f"{path.stem}.pdf"
    page_count = get_pdf_page_count(pdf_path)
    expected_pages = EXPECTED_PAGES_BY_SONG.get(path.stem)
    if page_count is None or expected_pages is None or page_count <= expected_pages:
        return None
    suggestion = get_fit_suggestion(path)
    return f"{path.relative_to(REPO_ROOT)} renders to {page_count} PDF pages, expected {expected_pages}. To bring it back down, {suggestion}."


def main() -> None:
    changed = []
    fit_warnings = []

    for path in sorted(LILYPOND_ROOT.glob("src_*/*.ly")):
        file_changed, counts = process_file(path)
        if file_changed:
            changed.append((path, counts))
        fit_warning = check_pdf_fit(path)
        if fit_warning is not None:
            fit_warnings.append(fit_warning)

    for path, counts in changed:
        summary = ", ".join(f"{name}:{count}" for name, count in counts)
        print(f"{path.relative_to(REPO_ROOT)} [{summary}]")

    print(f"Applied final LilyPond tweaks to {len(changed)} file(s).")

    if changed:
        changed_rel_paths = [str(path.relative_to(REPO_ROOT)) for path, _ in changed]
        result = subprocess.run(
            ["git", "diff", "--stat", "--", *changed_rel_paths],
            cwd=REPO_ROOT,
            check=False,
            text=True,
            capture_output=True,
        )
        if result.stdout.strip():
            print()
            print(result.stdout.strip())

    if fit_warnings:
        print()
        print("PDF fit warnings:")
        for warning in fit_warnings:
            print(f"- {warning}")


if __name__ == "__main__":
    main()
