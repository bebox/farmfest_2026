#!/usr/bin/env python3

import re
import subprocess
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent
LILYPOND_ROOT = REPO_ROOT / "lilypond"


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
            r'\\bar ":\|\." \| \\break\n\s*\\markMoj\n(\s*r4 )',
            r'\\bar ":|." | \\break\n  \\markMojPonRight\n\1',
        ),
        (
            "repeat_mark_restart",
            r'\\bar "\|\|" \| \\break\n\s*\\bar "\.\|:" \\markMoj\n(\s*r4 )',
            r'\\bar "||" | \\break\n  \\bar ".|:" \\markMojPonn\n  \\once \\override Score.RehearsalMark.X-offset = #3\n\1',
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


def main() -> None:
    changed = []

    for path in sorted(LILYPOND_ROOT.glob("src_*/*.ly")):
        file_changed, counts = process_file(path)
        if file_changed:
            changed.append((path, counts))

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


if __name__ == "__main__":
    main()
