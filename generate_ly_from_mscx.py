from pathlib import Path
import os
import shlex
import shutil
import subprocess
import sys
from dataclasses import dataclass
from typing import Optional


LILYPOND_VERSION = "2.23.2"

REPO_ROOT = Path(__file__).resolve().parent
EXTERNAL_REPO_ROOT = Path("/home/deck/desktop/git/pozitronik")
LILYPOND_GENERATOR_SCRIPT = EXTERNAL_REPO_ROOT / "scripts" / "new" / "lilypond_generator.py"


class TCOL:
    RED = '\033[91m'
    GREEN = '\033[92m'
    BLUE = '\033[94m'
    CYAN = '\033[96m'
    MAGENTA = '\033[35m'
    BOLD = '\033[1m'
    END = '\033[0m'


@dataclass
class Song:
    ordinal_number: int
    name: str


@dataclass
class Transposition:
    name: str
    musescore_path: str
    lilypond_path: str
    transformer_func: Optional[str]
    musescore_part: Optional[str]


song_list = [
    Song(1, "alpska_r",),
    Song(2, "april_showers",),
    Song(3, "autumn_leaves",),
    Song(4, "bernies_tune",),
    Song(5, "billies_bounce",),
    Song(6, "blue_bossa",),
    Song(7, "bluesette",),
    Song(8, "body_and_soul",),
    Song(9, "bye_bye_blackbird",),
    Song(10, "cantelope_island",),
    Song(11, "caravan",),
    Song(12, "come_fly_with_me",),
    Song(13, "corcovado",),
    Song(14, "days_of_wine_and_roses",),
    Song(15, "fly_me_to_the_moon",),
    Song(16, "girl_from_ipanema",),
    Song(17, "hymn_to_freedom",),
    Song(18, "it_dont_mean_a_thing",),
    Song(19, "just_friends",),
    Song(20, "lady_bird",),
    Song(21, "little_sunflower",),
    Song(22, "meditation",),
    Song(23, "misty",),
    Song(24, "moanin",),
    Song(25, "my_little_suede_shoes",),
    Song(26, "my_one_and_only_love",),
    Song(27, "night_and_day",),
    Song(28, "night_in_tunisia",),
    Song(29, "out_of_nowhere",),
    Song(30, "recordame",),
    Song(31, "satin_doll",),
    Song(32, "shadow_of_your_smile",),
    Song(33, "softly_as_in_a_morning_sunrise",),
    Song(34, "song_for_my_father",),
    Song(35, "stella_by_starlight",),
    Song(36, "summertime",),
    Song(37, "there_is_no_greater_love",),
    Song(38, "there_will_never_be_another_you",),
    Song(39, "what_is_this_thing_called_love",),
]


transposition_list = [
    Transposition("C", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_c"), None, None),
    Transposition("Bb", str(REPO_ROOT / "musescore" / "src_bb"), str(REPO_ROOT / "lilypond" / "src_bb"), None, "Bb"),
    Transposition("Eb", str(REPO_ROOT / "musescore" / "src_eb"), str(REPO_ROOT / "lilypond" / "src_eb"), None, "Eb"),
    Transposition("Bass", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_bass"), "transpose-bass", "BASS"),
    Transposition("BassTonesOnly", str(REPO_ROOT / "musescore" / "src_c"), str(REPO_ROOT / "lilypond" / "src_bto"), "bass-tones-only", "Sparki")
]


def get_full_path(path: str) -> str:
    return os.path.abspath(os.path.expanduser(path))


def quote_path(path: str) -> str:
    return shlex.quote(path)


def create_dir_if_not_found(path: str):
    if not os.path.exists(path):
        os.makedirs(path)


def run_bash_cmd(cmd: str):
    print(f"run_bash_cmd: {TCOL.CYAN}{cmd}{TCOL.END}")
    subprocess.run(cmd, shell=True, check=True)


def get_musescore_path() -> str:
    for candidate in ["mscore", "musescore", "MuseScore", "MuseScore4"]:
        resolved = shutil.which(candidate)
        if resolved:
            return resolved
    raise RuntimeError("MuseScore executable not found in PATH")


MUSESCORE_BIN_PATH = None


def convert_musescore_to_lilypond(song: Song, transposition: Transposition):
    global MUSESCORE_BIN_PATH
    if MUSESCORE_BIN_PATH is None:
        MUSESCORE_BIN_PATH = get_musescore_path()
    print(f"convert_musescore_to_lilypond: {TCOL.BLUE}{song.ordinal_number}{TCOL.END}, {TCOL.BOLD}{TCOL.GREEN}{song.name}{TCOL.END}")
    musescore_path = get_full_path(f"{transposition.musescore_path}/{song.name}.mscx")
    lilypond_path = get_full_path(f"{transposition.lilypond_path}/{song.name}.ly")

    cmd = (
        f"{quote_path(sys.executable)} {quote_path(str(LILYPOND_GENERATOR_SCRIPT))} "
        f"{quote_path(MUSESCORE_BIN_PATH)} {quote_path(musescore_path)} --ly-output {quote_path(lilypond_path)} "
        f"--lilypond-version {LILYPOND_VERSION} --custom-config --ordinal-number {song.ordinal_number} "
        f"--output-part {quote_path(transposition.musescore_part) if transposition.musescore_part else ''}"
    )
    run_bash_cmd(cmd)


def transform_lilypond(transposition: Transposition):
    if transposition.transformer_func is None:
        return
    print(f"transform_lilypond {TCOL.BOLD}{transposition.name}{TCOL.END}")
    cmd = (
        f"{quote_path(sys.executable)} {quote_path(str(REPO_ROOT / 'lilypond_transformer.py'))} "
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
