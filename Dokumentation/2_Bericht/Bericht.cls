% -----------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Bericht}
\LoadClass[11pt,a4paper,twoside]{article}
\usepackage{ngerman}
\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage{moreverb}
\usepackage{fancyhdr}
\usepackage{listings}

\usepackage{tabularx}
\usepackage{array} %Benötigt von tabularx
\usepackage{tabulary}
\usepackage{multirow}

\usepackage{subfigure}

\usepackage{verbatim}
\usepackage{tikz}
\usetikzlibrary{automata}
\usepackage{lscape} %Seitliche Seitendarstellung

\usepackage{amsmath}
\usepackage{amsthm} %Beweisbox

\usepackage{amssymb} %Mathe Schriftart (z.B. Natürliche Zahlen N)

% Externe PDF's einbinden
\usepackage[final]{pdfpages}
\usepackage{pdflscape}
\usepackage{lscape}

%\usepackage{ulem} % Text durchstreichen <-- Unterstreicht Titel der Literaturangaben
\usepackage{soul} % Text durchstreichen

\usepackage{extarrows} % Tolle, große Pfeile
\usepackage{marvosym} % Eurosymbol

\newcommand{\ZuZeigen}{\mathrm{Z\kern-.3em\raise-0.5ex\hbox{Z}}}
\newcommand{\disteq}{\stackrel{\mathrm{Distr. Gesetz}}=}
\newcommand{\picwidth}{12cm}
\newcommand{\bytesizeUp}{~ \xLongleftrightarrow{\text{$\div$1024}} ~}
\newcommand{\LRA}{\Leftrightarrow}

\usepackage[colorlinks=true, 
            linkcolor=black, % blue
            citecolor=blue, 
            urlcolor=blue, 
            hyperfigures=true
            ]
            {hyperref}
\usepackage[backend=biber, 
    sorting=anyt, %Alphabet. Label, Name, Year, Title
    language=german,
    abbreviate=true,
    date=short
    ]{biblatex}
\usepackage[babel,german=guillemets]{csquotes}
\addbibresource[datatype=bibtex]{quellen.bib}
\DefineBibliographyStrings{german}{
    urlseen = {Aufgerufen am:},
}

% -----------------------------------------------------------------------
% Page layout

% enlarge page
\setlength{\textwidth}{16cm}
\setlength{\topmargin}{-1cm}
\setlength{\evensidemargin}{0cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\textheight}{24cm}

% skip between paragraphs
\setlength{\parskip}{1ex}
% ... and no indentation at start of a new paragraph
\setlength{\parindent}{0ex}

\renewcommand{\author}{Nizan Averbuh, Marvin Becker, Kim Brüning, Nicole Dörnbach, Alina Escher, Jovana Kaurin, Svenja Kettenburg, Daniel Schmidt, Berna Sen, Jana Wahls}
\newcommand{\authorshort}{Averbuh, Becker, Brüning, Dörnbach, Escher, Kaurin, Kettenburg, Schmidt, Sen, Wahls}
\newcommand{\thissemester}{SoSe 2017}
\newcommand{\thistopic}{Bachelorprojekt}
\newcommand{\thistitle}{¡Experiment! - Bericht}
\newcommand{\shorttitle}{}
\newcommand{\subtitle}{\thissemester \\Dozenten: \dozent}
\newcommand{\dozent}{Thorsten Kluß, Jaime Maldonado, Kerstin Bub}
\newcommand{\duedate}{24.09.2017}

\pagestyle{fancy}
\thispagestyle{empty}

%Layout for lstlistings
\lstloadlanguages{java} % Java sprache laden, notwendig wegen option 'savemem'
\lstset{numbers=left, numberstyle=\tiny, numbersep=5pt}
\lstset{basicstyle=\ttfamily\scriptsize} \lstset{showspaces=false}
\lstset{showtabs=false} \lstset{showstringspaces=false}
\lstset{keywordstyle=\bfseries} \lstset{tabsize=2}
\lstset{frameround=ffff} \lstset{extendedchars=true}
\lstset{stringstyle=\ttfamily} \lstset{commentstyle=\ttfamily}
\lstset{postbreak=\space, breakindent=5pt, breaklines}


% -----------------------------------------------------------------------
% Main macros

\renewcommand{\maketitle}
          {\@maketitle}
\renewcommand\thesection{\arabic{section}}
\newcommand\skipsection{\stepcounter{section}}

% -----------------------------------------------------------------------
% Misc macros

\newcommand{\grenzop}[3]{\mathop{#1}\limits^{#2}_{#3}}
\newcommand{\langrechtspfeil}[2]{\grenzop{\longrightarrow}{#1}{#2}}
\newcommand{\bob}[0]{\hspace*{\fill}$\Box$}

% -----------------------------------------------------------------------

\renewcommand{\@maketitle}
{
  {\vspace*{7cm}}
  \begin{center}
    {\huge \textbf{\thistitle}} \\
    \vspace{1cm}
    {\Large \subtitle} \\
    \vspace{1cm}
    {\large \author} \\
    {\small \duedate}
  \end{center}
  \clearpage

% -----------------------------------------------------------------------
% Create headings (Thanks to Elmar Loos)

    \fancyhead{} %clear all fields
    \fancyhead[LO,RE]{\authorshort}
    \fancyhead[RO,LE]{\shorttitle}%, \thissemester}
    \fancyfoot{} %clear all fields
    \fancyfoot[RO,LE]{\thepage}
}

\endinput
