#!/usr/bin/python

import os
import glob
import re
from typing import Optional
import typer

app = typer.Typer(pretty_exceptions_enable=False)

def read_lines_from_file(path):
    with open(get_full_path(path), "r") as f:
        return f.readlines()

def write_lines_to_file(lines, path):
    with open(get_full_path(path), "w") as f:
        f.writelines(lines)

def get_full_path(path):
    return os.path.realpath(os.path.expanduser(path))

def is_path_file(path):
    return os.path.isfile(get_full_path(path))

def convert_harmony_to_bass_tones_only(lines: list):
    in_harmony = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_harmony:
            if line == '}\n':
                in_harmony = False
            else:
                parts = line.split(" ")
                for part_index in range(len(parts)):
                    part = parts[part_index]
                    if r"/" in part:
                        match = re.match(f"([a-z]*)([0-9.]*).*/([a-z]*)", part)
                        if match is not None:
                            part = f"{match.groups()[2]}{match.groups()[1]}"
                    elif r":" in part:
                        part = part[0:part.index(r":")]
                    parts[part_index] = part
                line = " ".join(parts)
        else:
            #if line == 'harmonyOne = \\chordmode  {\n':
            if 'harmonyOne = ' in line:
                in_harmony = True
        lines[line_index] = line
    return lines

def score_modifier(lines: list, modifier: str):
    in_score = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_score:
            if line == '}\n':
                in_score = False
            else:
                if "harmonyOne" in line:
                    line = line.replace(r"\harmonyOne", fr"{modifier} \harmonyOne")
                if "staffOne" in line:
                    line = line.replace(r"\staffOne", fr"{modifier} \staffOne")
        else:
            if line == '\\score {\n':
                in_score = True
        lines[line_index] = line
    return lines

def append_to_header(lines: list, variable: str, text: str):
    in_header = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_header:
            if line == '}\n':
                in_header = False
            else:
                if variable in line:
                    parts = line.split(" ")
                    parts[-1] = f"{parts[-1][:-2]} {text}{parts[-1][-2:]}"
                    line = " ".join(parts)
        else:
            if line == '\\header {\n':
                in_header = True
        lines[line_index] = line
    return lines

def staff_modifier(lines: list, from_str: str, to_str: str):
    in_staff = False
    for line_index in range(len(lines)):
        line = lines[line_index]
        if in_staff:
            if line == '}\n':
                in_staff = False
            else:
                if from_str in line:
                    line = line.replace(from_str, to_str)
        else:
            if 'staffOne =' in line:
                in_staff = True
        lines[line_index] = line
    return lines

@app.command()
def bass_tones_only(path_in: str, path_out: Optional[str] = None):
    print("Bass tones only harmony")
    if path_out is None: path_out = path_in
    if is_path_file(path_in):
        lines = read_lines_from_file(path_in)
        convert_harmony_to_bass_tones_only(lines)
        append_to_header(lines, "titlex", "(Sparki)")
        write_lines_to_file(lines, path_out)
    else:
        os.makedirs(path_out, exist_ok=True)
        for file_path_in in glob.glob(f"{path_in}/*.ly"):
            file_path_out = f"{path_out}/{os.path.basename(file_path_in)}"
            lines = read_lines_from_file(file_path_in)
            convert_harmony_to_bass_tones_only(lines)
            append_to_header(lines, "titlex", "(Sparki)")
            write_lines_to_file(lines, file_path_out)

@app.command()
def transpose_b(path_in: str, path_out: Optional[str] = None):
    print("Transpose to Bb")
    if path_out is None: path_out = path_in
    if is_path_file(path_in):
        lines = read_lines_from_file(path_in)
        score_modifier(lines, r"\transpose b c")
        append_to_header(lines, "titlex", "(Bb)")
        write_lines_to_file(lines, path_out)
    else:
        os.makedirs(path_out, exist_ok=True)
        for file_path_in in glob.glob(f"{path_in}/*.ly"):
            file_path_out = f"{path_out}/{os.path.basename(file_path_in)}"
            lines = read_lines_from_file(file_path_in)
            score_modifier(lines, r"\transpose b c")
            append_to_header(lines, "titlex", "(Bb)")
            write_lines_to_file(lines, file_path_out)

@app.command()
def transpose_eb(path_in: str, path_out: Optional[str] = None):
    print("Transpose to Eb")
    if path_out is None: path_out = path_in
    if is_path_file(path_in):
        lines = read_lines_from_file(path_in)
        score_modifier(lines, r"\transpose es c'")
        append_to_header(lines, "titlex", "(Eb)")
        write_lines_to_file(lines, path_out)
    else:
        os.makedirs(path_out, exist_ok=True)
        for file_path_in in glob.glob(f"{path_in}/*.ly"):
            file_path_out = f"{path_out}/{os.path.basename(file_path_in)}"
            lines = read_lines_from_file(file_path_in)
            score_modifier(lines, r"\transpose es c'")
            append_to_header(lines, "titlex", "(Eb)")
            write_lines_to_file(lines, file_path_out)

@app.command()
def transpose_bass(path_in: str, path_out: Optional[str] = None):
    print("Transpose to BASS")
    if path_out is None: path_out = path_in
    if is_path_file(path_in):
        lines = read_lines_from_file(path_in)
        score_modifier(lines, r"\clef bass \transpose c' c")
        append_to_header(lines, "titlex", "(BASS)")
        staff_modifier(lines, r"\clef treble", r"\clef bass")
        write_lines_to_file(lines, path_out)
    else:
        os.makedirs(path_out, exist_ok=True)
        for file_path_in in glob.glob(f"{path_in}/*.ly"):
            file_path_out = f"{path_out}/{os.path.basename(file_path_in)}"
            lines = read_lines_from_file(file_path_in)
            score_modifier(lines, r"\clef bass \transpose c' c" )
            append_to_header(lines, "titlex", "(BASS)")
            staff_modifier(lines, r"\clef treble", r"\clef bass")
            write_lines_to_file(lines, file_path_out)


@app.command()
def test(path_in: str, path_out: Optional[str] = None):
    if path_out is None: path_out = path_in
    lines = read_lines_from_file(path_in)
    write_lines_to_file(lines, path_out)

if __name__ == "__main__":
    app()
