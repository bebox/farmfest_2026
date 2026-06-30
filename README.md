# farmfest_2026

## Local XeLaTeX Setup

This project was compiled locally on SteamOS with `xelatex`.

Installed packages:

```bash
sudo pacman -S --needed texlive-bin texlive-basic texlive-latex texlive-latexrecommended texlive-pictures texlive-latexextra texlive-xetex texlive-fontsrecommended otf-latin-modern
```

## Compile Commands

Main project:

```bash
cd /run/media/deck/desktop/git/farmfest_2026/latex
mkdir -p build
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_c.tex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_c.tex
```

Variant examples:

```bash
cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_bass.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_bto.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_bb.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_eb.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_nashville.tex
```

Output PDF:

```text
/run/media/deck/desktop/git/farmfest_2026/latex/build/farmfest_2026_c.pdf
```

Notes:

- Two `xelatex` passes are needed to resolve the table of contents and PDF outlines.
- PDFs are written to `latex/build/`.

## Build All Variants

Compile everything and clean generated LaTeX aux files automatically:

```bash
./build_latex.sh
```

## Build LilyPond PDFs

Generate all LilyPond PDFs from the `.ly` files in `lilypond/src_*`.
The script writes the output PDFs into the matching `lilypond/bin_*` directories and uses `lilypond/config` as the include path.

```bash
./build_lilypond.sh
```

## Build Book Assets

Create LilyPond assets from the MuseScore `.mscx` sources for all configured transpositions.
This script converts `.mscx` to `.ly` and applies LilyPond transformations for derived variants.
To build the PDFs after regenerating the sources, run `./build_lilypond.sh`.
To generate the full songbooks for all LaTeX variants, run `./build_latex.sh` after that.

```bash
python ./generate_ly_from_mscx.py
./build_lilypond.sh
./build_latex.sh
```
