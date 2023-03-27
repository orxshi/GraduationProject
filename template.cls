\LoadClass{report}

\usepackage{amsmath}
\usepackage{mfirstuc}
\usepackage{graphicx}
\usepackage{geometry}
\usepackage{float}
\usepackage{booktabs}
\usepackage[explicit]{titlesec}
\usepackage[hidelinks]{hyperref}
\usepackage[nameinlink]{cleveref}
\usepackage{pgfplotstable}
\usepackage[per-mode=symbol]{siunitx}
\usepackage[toc,title]{appendix}
\usepackage{url}
\usepackage[section]{placeins}

\AtBeginDocument{\maketitle}
\bibliographystyle{unsrt}

\newcommand\abst[1]{\newcommand\zzabst{#1}}

\newcommand*{\project}[1]{\gdef\@project{#1}}
\newcommand*{\@project}{Graduation Project I}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\myabstract}[1]{\gdef\@myabstract{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\@department}{Mechanical Engineering}

\makeatletter
\renewcommand*{\maketitle}{%
  \begin{titlepage}
  \newgeometry{left=3cm,right=3cm,bottom=2cm,top=3cm}
  {\centering\includegraphics[scale=0.2]{logo}\par}
  \vspace{1cm}
  \centering
  {\scshape\LARGE Girne American University \par}
  \vspace{1cm}
  {\scshape\Large\@project\unskip\strut\par}
  \vspace{1.5cm}
  {\huge\bfseries\xcapitalisewords{\@title}\unskip\strut\par}
  \vspace{2cm}
  {\Large\xcapitalisewords{\@author}\unskip\strut\par}
  \vspace{2cm}
  {\Large\xcapitalisewords Department of {\@department}\unskip\strut\par}
  \vfill
  Supervised by\par
  \@supervisor\unskip\strut\par
  \vfill
  {\large \@date\par}
  \end{titlepage}
  \newpage
\pagenumbering{roman}

\begin{abstract}
\zzabst
\end{abstract}

\tableofcontents
\listoffigures
\listoftables
\newpage
\pagenumbering{arabic}
}
\makeatother

\usepackage{etoolbox}
\patchcmd{\abstract}{\null\vfil}{}{}{}

\renewcommand{\bibname}{\raggedright References}
\bibliographystyle{unstr}

\titleformat{\chapter}[display]{\bfseries\centering}{\huge \chaptertitlename\ \thechapter}{1em}{\Huge #1}
\renewcommand{\contentsname}{\raggedright Table of Contents}
\renewcommand{\listfigurename}{\raggedright List of Figures}
\renewcommand{\listtablename}{\raggedright List of Tables}

\pgfplotstableset{
    every head row/.style={
    before row=\toprule,after row=\midrule},
    every last row/.style={
    after row=\bottomrule},
    col sep = &,
    row sep=\\,
    string type,
}

\newcommand{\entries}{\pgfplotstabletypeset}
