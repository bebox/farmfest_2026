from pathlib import Path
import subprocess


REPO_ROOT = Path(__file__).resolve().parent.parent
PDF_DIR = REPO_ROOT / "lilypond" / "bin_nashville"
PDF_PAGES_COUNTER_FILE = Path(__file__).resolve().parent / "pdf_page_counter.txt"


def get_page_count(file_path: Path) -> int:
    result = subprocess.run(
        ["pdfinfo", str(file_path)],
        check=True,
        capture_output=True,
        text=True,
    )
    for line in result.stdout.splitlines():
        if line.startswith("Pages:"):
            return int(line.split(":", 1)[1].strip())
    raise RuntimeError(f"Could not determine page count for {file_path}")


lines = []

for file_path in sorted(PDF_DIR.glob("*.pdf")):
    lines.append(f"{file_path.name},{get_page_count(file_path)}\n")

with PDF_PAGES_COUNTER_FILE.open("w") as f:
    f.writelines(lines)
