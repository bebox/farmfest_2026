from pathlib import Path
from subprocess import Popen
import shutil
import sys


REPO_ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(REPO_ROOT))

from generate_ly_from_mscx import Transposition, get_full_path, transposition_list


def get_pdf_viewer() -> str:
    for candidate in ["evince", "okular", "xdg-open"]:
        if shutil.which(candidate):
            return candidate
    raise RuntimeError("No supported PDF viewer found in PATH")


def get_pdf_dir(transposition: Transposition) -> Path:
    return Path(transposition.lilypond_path.replace("/src_", "/bin_"))


def get_comparable_pdf_names(left: Transposition, right: Transposition) -> list[str]:
    left_names = {path.name for path in get_pdf_dir(left).glob("*.pdf")}
    right_names = {path.name for path in get_pdf_dir(right).glob("*.pdf")}
    return sorted(left_names & right_names)


def open_pdf(pdf_name: str, transposition: Transposition) -> Popen:
    song_path = get_pdf_dir(transposition) / pdf_name
    if not song_path.exists():
        raise FileNotFoundError(get_full_path(str(song_path)))
    return Popen([get_pdf_viewer(), str(song_path)])


if __name__ == "__main__":
    left = transposition_list[0]
    right = transposition_list[1]
    for pdf_name in get_comparable_pdf_names(left, right):
        process_pdf_1 = open_pdf(pdf_name, left)
        process_pdf_2 = open_pdf(pdf_name, right)
        try:
            input("Press Enter to continue")
        except EOFError:
            process_pdf_1.terminate()
            process_pdf_2.terminate()
            process_pdf_1.wait()
            process_pdf_2.wait()
            break
        process_pdf_1.terminate()
        process_pdf_2.terminate()
        process_pdf_1.wait()
        process_pdf_2.wait()
