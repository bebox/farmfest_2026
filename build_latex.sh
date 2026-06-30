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

build_tex "farmfest_2026_c.tex"
build_tex "farmfest_2026_bass.tex"
build_tex "farmfest_2026_bto.tex"
build_tex "farmfest_2026_bb.tex"
build_tex "farmfest_2026_eb.tex"
build_tex "farmfest_2026_nashville.tex"

find "$BUILD_DIR" -maxdepth 1 -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" \) -delete
