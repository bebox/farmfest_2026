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
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026.tex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026.tex
```

Variant examples:

```bash
cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_Bass.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_BTO.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_Bb.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_Eb.tex

cd /run/media/deck/desktop/git/farmfest_2026/latex
xelatex -interaction=nonstopmode -halt-on-error -output-directory build farmfest_2026_Nashville.tex
```

Output PDF:

```text
/run/media/deck/desktop/git/farmfest_2026/latex/build/farmfest_2026.pdf
```

Notes:

- Two `xelatex` passes are needed to resolve the table of contents and PDF outlines.
- PDFs are written to `latex/build/`.

## Build All Variants

Compile everything and clean generated LaTeX aux files automatically:

```bash
./build_latex.sh
```
