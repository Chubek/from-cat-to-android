# From C/A/T to Android

A LaTeX book about Unix history and systems. The manuscript starts at
`from-cat-to-android.ltx`; chapters belong in `chapters/`, and research material
is in `sources/`.

## Build

Use LuaLaTeX with `latexmk`, Biber, and Xindy installed. The class needs the
TeX Live LaTeX extra, LuaTeX, bibliography, and TeX Gyre font collections,
plus the DejaVu Sans Mono font. In the prepared cloud environment, first run
`source /workspace/.latex-env/activate` in each shell.

From the repository root:

```sh
mkdir -p /tmp/from-cat-to-android-build
latexmk -norc -lualatex -interaction=nonstopmode -halt-on-error \
  -outdir=/tmp/from-cat-to-android-build from-cat-to-android.ltx
```

The PDF and intermediate files go into the output directory. `latexmk` runs
Biber and the index processor as needed. The current manuscript contains a
title and contents scaffold; the chapter files and bibliography are placeholders.

## Document class

`from-cat-to-android.cls` extends `extbook` and forwards book options such as
`14pt`, `a4paper`, `oneside`, and `openany`. The manuscript selects 14pt on A4.
The class supplies fonts, mathematics,
page geometry, spacing, tables, TikZ, boxes, author-year citations, an index,
and linked cross-references. LuaLaTeX and XeLaTeX use OpenType fonts; pdfLaTeX
uses Type 1 text fonts and Latin Modern mathematics.

Keep title/author metadata, `\addbibresource`, and chapter inclusion in the main
document. Add `\include{chapters/chapter-1.ltx}` and further chapters after
`\mainmatter` as they are written. Add verified BibLaTeX entries to
`references.bib`, cite them with `\textcite` or `\parencite`, and use `\index`
for index entries. The class loads `hyperref` and `cleveref`, so `\label` and
`\cref` are available without loading those packages again.
