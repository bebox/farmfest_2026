#!/usr/bin/python

import os
import sys
import select
import pty
from subprocess import CalledProcessError, Popen
from dataclasses import dataclass
from enum import Enum
import shutil
from pathlib import Path
from typing import Optional
import shlex

#Have to execute this commands before executing this script from shell
#python -m venv myenv
#source myenv/bin/activate
#pip install typer

VERBOSE = True

REPO_ROOT = Path(__file__).resolve().parent
WORKSPACE_ROOT = REPO_ROOT.parent
EXTERNAL_REPO_ROOT = WORKSPACE_ROOT / "duhovne_pjesme_novi_sad_1966"
LILYPOND_GENERATOR_SCRIPT = EXTERNAL_REPO_ROOT / "scripts" / "new" / "lilypond_generator.py"
LILYPOND_VERSION="2.24.4"
LILYPOND_BIN_PATH="lilypond"
LILYPOND_CONFIG_PATH = REPO_ROOT / "lilypond" / "config"
POINT_AND_CLICK="--no-point-and-click"

class TCOL:
    # Foreground:
    MAGENTA = '\033[95m'
    BLUE = '\033[94m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    # Formatting
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
    # End colored text
    END = '\033[0m'
    NC = '\x1b[0m'  # No Color

class PageOrientation(Enum):
    Left = "--left-page"
    Right = "--no-left-page"

@dataclass
class Transposition:
    name: str
    musescore_path: str
    lilypond_path: str
    transformer_func: Optional[str]
    titlex_suffix: Optional[str]

@dataclass
class Song:
    name: str
    ordinal_number: int
    page_orientation: PageOrientation

song_list = [
    Song("bez_ljubavi", 1, PageOrientation.Left), #2
    #slika

    Song("bog_je_moja_snaga", 2, PageOrientation.Left), #1
    Song("ime_isus", 3, PageOrientation.Right), #1

    Song("isus_nazarecanin", 4, PageOrientation.Left), #1
    #slika

    Song("pastir_moje_duse", 5, PageOrientation.Left), #2
    Song("poziv", 6, PageOrientation.Right), #1

    Song("psalam_42", 7, PageOrientation.Left), #2
    #slika

    Song("to_dade_bog", 8, PageOrientation.Left), #1
    Song("tvoje_nebo", 9, PageOrientation.Right), #1

    Song("u_duhu_budite_gorljivi", 10, PageOrientation.Left), #1
    #slika

    Song("vidjeh_oblak", 11, PageOrientation.Left), #2
    #slika
]

transposition_list = [
    Transposition("C", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_c"), None, None),
    Transposition("Bb", str(REPO_ROOT / "musescore" / "src_bb"), str(REPO_ROOT / "lilypond" / "src_bb"), None, "Bb"),
    Transposition("Eb", str(REPO_ROOT / "musescore" / "src_eb"), str(REPO_ROOT / "lilypond" / "src_eb"), None, "Eb"),
    Transposition("Nashville", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_nashville"), "nashville", None),
    Transposition("Bass", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_bass"), "transpose-bass", "BASS"),
    Transposition("BassTonesOnly", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_bto"), "bass-tones-only", "Sparki")
]

def run_bash_cmd(cmd, logger=None, interaction={}, return_lines=True, return_code=False, cr_as_newline=False, remove_empty_lines=False):
    if VERBOSE:
        logger = print
    if logger: logger(f"CMD: {cmd}")
    master_fd, slave_fd = pty.openpty()
    line = ""
    lines = []
    with Popen(cmd, shell=True, preexec_fn=os.setsid, stdin=slave_fd, stdout=slave_fd, stderr=slave_fd, universal_newlines=True) as p:
        while p.poll() is None:
            r, w, e = select.select([sys.stdin, master_fd], [], [], 0.01)
            if master_fd in r:
                o = os.read(master_fd, 10240).decode("UTF-8")
                if o:
                    for c in o:
                        if cr_as_newline and c == "\r":
                            c = "\n"
                        if c == "\n":
                            if line and line not in interaction.values():
                                clean = line.strip().split('\r')[-1]
                                lines.append(clean)
                                if logger: logger(f"STD: {repr(line)}")
                            line = ""
                        else:
                            line += c
            if line:  # pass password to prompt
                for key in interaction:
                    if key in line:
                        if logger: logger(f"PMT: {line}")
                        os.write(master_fd, ("%s" % (interaction[key])).encode())
                        os.write(master_fd, "\r\n".encode())
                        line = ""
        if line:
            clean = line.strip().split('\r')[-1]
            lines.append(clean)

    os.close(master_fd)
    os.close(slave_fd)

    if remove_empty_lines:
        lines = list(filter(lambda l: len(l) > 0, lines))

    if p.returncode != 0:
        if logger: logger(f"RET: C[{p.returncode}]")
        raise CalledProcessError(p.returncode, cmd)

    if return_lines and return_code:
        if logger: logger(f"RET: L[{lines}], C[{p.returncode}]")
        return lines, p.returncode
    elif return_code:
        if logger: logger(f"RET: C[{p.returncode}]")
        return p.returncode
    else:
        if logger: logger(f"RET: L{lines}")
        return lines

def get_full_path(path):
    return os.path.realpath(os.path.expanduser(path))

def check_if_path_exists(path):
    return os.path.exists(get_full_path(path))

def create_path(path):
    os.makedirs(get_full_path(path), exist_ok=True)

def remove_path(path, sudo_required=False):
    if check_if_path_exists(path):
        if not sudo_required:
            shutil.rmtree(get_full_path(path))
        else:
            run_bash_cmd(f"sudo rm {get_full_path(path)} -r")

def remove_file(path, sudo_required=False):
    if check_if_path_exists(path):
        if not sudo_required:
            os.remove(get_full_path(path))
        else:
            run_bash_cmd(f"sudo rm {get_full_path(path)}")

def get_file_list_in_path(path):
    return os.listdir(path)

def get_path_of_current_file(f):
    return str(Path(f).resolve().parent)

def create_dir_if_not_found(path):
    if not os.path.exists(get_full_path(path)):
        os.makedirs(get_full_path(path))

def quote_path(path):
    return shlex.quote(str(path))

def convert_musescore_to_lilypond(song: Song, transposition: Transposition):
    print(f"convert_musescore_to_lilypond: {TCOL.BLUE}{song.ordinal_number}{TCOL.END}, {TCOL.BOLD}{TCOL.GREEN}{song.name}{TCOL.END}")
    musescore_path = get_full_path(f"{transposition.musescore_path}/{song.name}.mscx")
    lilypond_path = get_full_path(f"{transposition.lilypond_path}/{song.name}.ly")
    if not check_if_path_exists(musescore_path):
        print(f"  {TCOL.YELLOW}no musescore file{TCOL.END}")
        return
    cmd = (
        f"{quote_path(sys.executable)} {quote_path(LILYPOND_GENERATOR_SCRIPT)} "
        f"{quote_path(musescore_path)} --ly-output {quote_path(lilypond_path)} "
        f"--lilypond-version {LILYPOND_VERSION} --custom-config --ordinal-number {song.ordinal_number} "
        f"{song.page_orientation.value} {POINT_AND_CLICK} --comment-tempo"
    )
    if transposition.titlex_suffix:
        cmd += f" --titlex-suffix {quote_path(transposition.titlex_suffix)}"
    run_bash_cmd(cmd)

def transform_lilypond(transposition: Transposition):
    if transposition.transformer_func is None:
        return
    print(f"transform_lilypond {TCOL.BOLD}{transposition.name}{TCOL.END}")
    cmd = (
        f"{quote_path(sys.executable)} {quote_path(REPO_ROOT / 'lilypond_transformer.py')} "
        f"{transposition.transformer_func} {quote_path(transposition_list[0].lilypond_path)} "
        f"--path-out {quote_path(transposition.lilypond_path)}"
    )
    run_bash_cmd(cmd)

if __name__ == "__main__":
    for transposition in transposition_list:
        create_dir_if_not_found(get_full_path(transposition.lilypond_path))
        for song in song_list:
            convert_musescore_to_lilypond(song, transposition)
        transform_lilypond(transposition)
