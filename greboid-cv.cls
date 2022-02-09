\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{greboid-cv}[Greboid's CV]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{calc}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{multirow}
\RequirePackage{ragged2e}
\RequirePackage[default,semibold,light]{fonts/sourcesanspro}
\renewcommand{\familydefault}{\sfdefault}

\definecolor{highlight}{HTML}{5D81A3}
\definecolor{gray}{HTML}{5D5D5D}

\geometry{paper=a4paper, left=1.0cm, top=1cm, right=1.0cm, bottom=1.0cm, headsep=0pt, headheight=0pt, footskip=1.5em,includeheadfoot,asymmetric}
\setlist{topsep=0pt, partopsep=0pt, parsep=0pt, itemsep=0pt, leftmargin=1em, labelsep=0.5em, after=\vspace{0pt}, before=\vspace{0pt}}
\setlength{\parskip}{0pt}
\setlength{\parindent}{0pt}
\setlength{\tabcolsep}{0pt}
\renewcommand{\baselinestretch}{1}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage/\pageref{LastPage}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\cvheader}[6]{
    \begin{tabularx}{\linewidth}{LR}
        \multirow{3}{*}{\fontsize{4em}{0pt}\selectfont \textcolor{highlight}{#1} \textbf{#2}}
        & {\fontsize{0.8em}{0pt}\selectfont \includegraphics[height=0.7em]{images/phone} \href{tel:#3}{#3}}
        \\ & {\fontsize{0.8em}{0pt}\selectfont \includegraphics[height=0.7em]{images/at-sign} \href{mailto:#4}{#4}}
        \\ & {\fontsize{0.8em}{0pt}\selectfont \includegraphics[height=0.7em]{images/user} \href{https:\\#5}{#5}}
        \\ & {\fontsize{0.8em}{0pt}\selectfont \includegraphics[height=0.7em]{images/github} \href{https://github.com/#6}{github.com/#6}}
        \vfill
    \end{tabularx}
}

\newcommand{\cvsection}[1]{
    \raggedright\begin{large}
    {\fontsize{1.2em}{0pt}\selectfont \textbf{#1}}
    \end{large} \hrulefill \vspace{0.5em}\break
}

\newcolumntype{R}{>{\raggedleft\arraybackslash}X}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{S}{>{\hsize=.5\hsize}X}
\newcolumntype{J}{>{\raggedleft\arraybackslash\hsize=.5\hsize}X}
\newcolumntype{K}{>{\hsize=.15\hsize}X}

\newcommand{\summary}[1]{
    \justifying#1 \vspace{0.5em}
}

\newcommand{\skilltype}[2]{
    \begin{tabularx}{\linewidth}{KL}
        \raggedleft\textbf{#1} & \hspace{1em} #2
    \end{tabularx}
}

\newcommand{\job}[5]{
    \begin{minipage}{\linewidth}
        \begin{tabularx}{\linewidth}{XSJ}
            \textbf{#1} & \textsl{\textcolor{gray}{#2}} & \textsl{\textcolor{highlight}{#3}}
            \vspace{0.5em}
        \end{tabularx}
        #4\vspace{0.5em}
        #5
        \vspace{0.5em}
    \end{minipage}
    \vspace{0.5em}
}

\newcommand{\training}[3]{
    \begin{tabularx}{\linewidth}{XSJ}
        \textbf{#1} & \textsl{\textcolor{gray}{#2}} & \textsl{\textcolor{highlight}{#3}}
    \end{tabularx}
}

\newcommand{\education}[3]{
    \begin{tabularx}{\linewidth}{XSJ}
        \textbf{#1} & \textsl{\textcolor{gray}{#2}} & \textsl{\textcolor{highlight}{#3}}
    \end{tabularx}
}

\newcommand{\project}[3]{
    \begin{tabularx}{\linewidth}{XR}
        \textbf{#1} & \textsl{\textcolor{highlight}{\href{https://#2}{#2}}}
    \end{tabularx}
    #3\vspace{0.5em}
}