#!/usr/bin/env bash

set -euo pipefail

repo_root="$(dirname "$(realpath "$0")")"
config_path="$repo_root/lilypond/config"

for src_dir in "$repo_root"/lilypond/src_*; do
  [ -d "$src_dir" ] || continue
  suffix="${src_dir##*_}"
  out_dir="$repo_root/lilypond/bin_$suffix"
  mkdir -p "$out_dir"

  for lilypond_file in "$src_dir"/*.ly; do
    [ -f "$lilypond_file" ] || continue
    lilypond -I "$config_path" -o "$out_dir" "$lilypond_file"
  done
done
