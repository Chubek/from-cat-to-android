# From C/A/T to Android

A complete LaTeX manuscript by Chubak Bidpaa about Unix history, internals,
programming tools, workstations, graphics, free software, and the systems that
carry those ideas into servers, games, and phones.

The book contains 20 substantial chapters in four parts, a preface, a dated
chronology, a glossary with practical investigations, source notes, a
bibliography, and a subject index. The C/A/T in the title is the Graphic Systems
phototypesetter used at Bell Labs. The modern discussion has an editorial
cutoff of 6 November 2026.

## Read and navigate

The compiled reading copy is `editions/from-cat-to-android.pdf`.
It is committed alongside the manuscript so the book can be read without a
local TeX installation. Build products in `build/` remain disposable.

The entry point is `from-cat-to-android.ltx`; all manuscript inputs are in
`chapters/`. `SOURCE-GUIDE.md` maps citations to the supplied `sources/` files,
identifies misleading filenames and edition differences, and lists the official
project documentation used for modern material. The supplied sources are
unchanged. Narrative, diagrams, and examples are newly written.

1. **A System Finds Its Public** — origins, document preparation, command tools,
   Berkeley, workstations, standards and licensing, GNU and Linux.
2. **The Machinery Beneath the Prompt** — reading Lions and xv6, processes and
   memory, concurrency, filesystems, IPC and networking.
3. **Tools, Screens, and Design** — development tools, Unix programming
   principles and criticism, terminals, X, and Wayland.
4. **Unix Beyond the Workstation** — infrastructure and security, Linux gaming,
   Android, BSD, and Darwin.

The internals discussion explicitly distinguishes Sixth Edition on the PDP-11,
the supplied 27 October 2019 RISC-V xv6 edition, standardized application
interfaces, and modern production systems.

## Build

Install LuaLaTeX, latexmk, Biber, and Xindy, with TeX Live's LaTeX extra, LuaTeX,
bibliography, and TeX Gyre collections, plus the DejaVu Sans Mono font.
In the prepared cloud environment, first run this in each shell:

```sh
source /workspace/.latex-env/activate
```

From the repository root:

```sh
make check
make book
```

The PDF is `build/from-cat-to-android.pdf`. `.latexmkrc` selects LuaLaTeX,
a separate build directory, and the UTF-8 English Xindy index processor.
Latexmk runs Biber, indexing, and the necessary typesetting reruns. Shell escape
is not required. To use another output directory:

```sh
latexmk -outdir=/tmp/from-cat-to-android-build from-cat-to-android.ltx
```

A Lua entry point is also available:

```sh
texlua build.lua check
texlua build.lua book
texlua build.lua clean
```

`make clean` removes generated typesetting files. Build products and editorial
scratch files are ignored by Git. The source checker verifies manuscript
inclusion, chapter completeness, citation keys, references, and environments;
it complements compilation and visual review rather than replacing them.

## Document class

`from-cat-to-android.cls` extends `extbook`. The manuscript uses 14pt on A4.
The class provides fonts, mathematics, page geometry, tables, TikZ, BibLaTeX,
index entries, and linked cross-references. It retains Unicode and pdfLaTeX
font branches, although the supported book build uses LuaLaTeX.

Add chapter inputs and metadata to the main document. Keep bibliography data in
`references.bib`; use `\parencite`, `\textcite`, `\label`, `\cref`, and `\index`
in chapters. Index processing is delegated to latexmk so it works with a
separate output directory and without external commands launched by TeX.
