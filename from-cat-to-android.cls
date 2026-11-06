\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{from-cat-to-android}[2026/11/06 Unix history book]

% extbook supports the manuscript's 14pt option; book only supports 10--12pt.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extbook}}
\ProcessOptions\relax
\LoadClass{extbook}

\RequirePackage{iftex,etoolbox}
\newbool{HasUnicode}
\newbool{HasLua}

% Load the AMS symbols before unicode-math to avoid duplicate definitions.
\RequirePackage{amsmath,amssymb,amsthm,mathtools}
\ifTUTeX
  \RequirePackage{fontspec,unicode-math}
  \booltrue{HasUnicode}
  \setmainfont{TeX Gyre Pagella}
  \setsansfont{TeX Gyre Heros}
  \setmonofont{DejaVu Sans Mono}
  \setmathfont{Latin Modern Math}
\else
  \RequirePackage[T1]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \RequirePackage{lmodern,tgpagella,tgheros}
\fi
\ifLuaTeX
  \booltrue{HasLua}
  \RequirePackage{luacode}
\fi

\RequirePackage{xcolor,tcolorbox}
\RequirePackage{geometry,setspace,parskip}
\geometry{margin=30mm,bindingoffset=6mm,includeheadfoot}
\setstretch{1.1}
\RequirePackage{array,booktabs,tikz}
\RequirePackage{xparse,xspace}

\RequirePackage[backend=biber,style=authoryear,sorting=nyt]{biblatex}
\RequirePackage[xindy]{imakeidx}
\makeindex

% Load links after the document packages, and cleveref after hyperref.
\RequirePackage[unicode]{hyperref}
\hypersetup{hidelinks}
\RequirePackage{cleveref}
\endinput
