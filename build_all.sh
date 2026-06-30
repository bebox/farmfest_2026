#!/usr/bin/env bash

set -euo pipefail

repo_root="$(dirname "$(realpath "$0")")"

python "$repo_root/generate_ly_from_mscx.py"
"$repo_root/build_lilypond.sh"
"$repo_root/build_latex.sh"
