#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
LATEX_ROOT="$ROOT/latex"
BUILD_DIR="$LATEX_ROOT/build"

build_tex() {
  local texfile="$1"

  xelatex -interaction=nonstopmode -halt-on-error -output-directory "$BUILD_DIR" "$texfile"
  xelatex -interaction=nonstopmode -halt-on-error -output-directory "$BUILD_DIR" "$texfile"
}

cd "$LATEX_ROOT"

mkdir -p "$BUILD_DIR"

build_tex "farmfest_2026.tex"
build_tex "farmfest_2026_Bass.tex"
build_tex "farmfest_2026_BTO.tex"
build_tex "farmfest_2026_Bb.tex"
build_tex "farmfest_2026_Eb.tex"
build_tex "farmfest_2026_Nashville.tex"

find "$BUILD_DIR" -maxdepth 1 -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" \) -delete
