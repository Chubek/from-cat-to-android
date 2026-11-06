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
\RequirePackage{microtype,fancyhdr,fvextra,emptypage}
\setlength{\emergencystretch}{2em}
\setlength{\headheight}{18pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\small\thepage}
\fancyhead[LO,RE]{\small\nouppercase{\leftmark}}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\headrulewidth}{0pt}
\DefineVerbatimEnvironment{verbatim}{Verbatim}{%
  fontsize=\fontsize{10.5}{13}\selectfont,breaklines=true,samepage=true}
% These manuscript examples are short: keep each complete listing together.
\BeforeBeginEnvironment{verbatim}{%
  \par\smallskip\noindent\begin{minipage}{\linewidth}}
\AfterEndEnvironment{verbatim}{\end{minipage}\par\smallskip}
\RequirePackage{array,booktabs,tikz}
\RequirePackage{xparse,xspace}

\RequirePackage[backend=biber,style=authoryear,sorting=nyt]{biblatex}
\renewcommand*{\bibfont}{\small}
\RequirePackage[xindy]{imakeidx}
% latexmk runs texindy externally, including when shell escape is disabled.
\makeindex[noautomatic,intoc]

% Load links after the document packages, and cleveref after hyperref.
\RequirePackage[unicode]{hyperref}
\RequirePackage{xurl}
\hypersetup{hidelinks}
\RequirePackage{cleveref}
\endinput
