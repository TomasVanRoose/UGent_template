\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ugent_report}[2011/03/26 class for writing reports with UGent style]

\LoadClassWithOptions{article}

\RequirePackage[top=2.1cm, bottom=2.3cm, left=2.1cm, right=2.97cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{changepage}
\RequirePackage{color}

\setlength\parindent{0cm}

\definecolor{ghentsubtitle}{RGB}{25,77,187}
\definecolor{ghenttitle}{RGB}{30,100,200}

\def\@subtitle{\relax}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}

\def\@maketitle{%
  \newpage
  \thispagestyle{empty}
  \newgeometry{left=1cm,top=0cm,bottom=0cm}

  \includegraphics[width=7.4cm]{Logos/WE/NL/icoon_UGent_WE_NL_RGB_2400_kleur.png}

  \vskip 12em%

  \begin{adjustwidth*}{1.4cm}{1.1cm}
    \textcolor{ghenttitle}{\bfseries \sffamily \Huge \@title }%
  \end{adjustwidth*}

    \vskip 0.75em%

  \begin{adjustwidth*}{1.4cm}{1.1cm}
    \textcolor{ghenttitle}{\sffamily \Large \@subtitle }%
  \end{adjustwidth*}

    \vskip 8em%

  \begin{adjustwidth*}{1.4cm}{1.1cm}
    { \sffamily \@author }%
  \end{adjustwidth*}

  \begin{adjustwidth*}{1.4cm}{1.1cm}
    { \sffamily \@date }%
  \end{adjustwidth*}

  \vfill
  \includegraphics[width=5.3cm]{Logos/UGent/logo_UGent_NL_RGB_2400_kleur.png}


  \restoregeometry}

\newcommand\bsection[1]{\textcolor{ghenttitle}{\section{#1}}}
