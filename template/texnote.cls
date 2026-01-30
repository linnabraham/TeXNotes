\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{texnote}
\LoadClass[12pt]{article} 
\RequirePackage[
  top=2cm,
  bottom=2cm,
  left=2cm,
  right=2.5cm
]{geometry}  % reduces margins slightly
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{tikz-cd}
\RequirePackage{amsmath}
\RequirePackage{xr-hyper} 
%hyperlinks and referencing
\RequirePackage{hyperref} 
\RequirePackage[capitalize,nameinlink,noabbrev]{cleveref}


%setup external file links

\RequirePackage{import}
\ifx\HCode\UnDeFiNeD
    \subimport{../notes}{documents.tex}
\fi

\RequirePackage{slashed}

%setup geometry
\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{../../resources}{../figures}}



\RequirePackage[style=authoryear, mincitenames=1, maxcitenames=2, backend=biber]{biblatex}
\addbibresource{../../bibliography.bib}

\hypersetup{
    colorlinks = true,
    citecolor = cyan
}

\theoremstyle{definition}

\newtheorem{definition}{Definition}

\newtheorem{example}[definition]{Example}
\newtheorem{prop}[definition]{Proposition}
\newtheorem{lemma}[definition]{Lemma}
\newtheorem{thm}[definition]{Theorem}
\newtheorem{cor}[definition]{Corollary}
\newtheorem{rmk}[definition]{Remark}
\newtheorem{conj}[definition]{Conjecture}

\usepackage{ifthen}

%TeXNotes Commands
\newcommand{\excref}[2][note]
    {\ifthenelse{\equal{#1}{note}}
    {\hyperref[#2-#1]{\texttt{#2}}}
    {\hyperref[#2-#1]{\texttt{#2/}\cref{#2-#1}}}}
\newcommand{\exhyperref}[3][note]{\hyperref[#2-#1]{#3}}

\newcommand{\transclude}[2][note]{\ExecuteMetaData[../notes/slipbox/#2.tex]{#1}}

\usepackage{catchfilebetweentags}
%My custom packages
\RequirePackage{xargs}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[colorinlistoftodos,prependcaption,textsize=tiny]{todonotes}
\RequirePackage{booktabs}
\RequirePackage{mfirstuc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{tipa} % for phonetic symbols
% \RequirePackage{courier} % Or any other monospace package you like
\RequirePackage{listings} % For code formatting
\RequirePackage{gensymb} % for \degree command
\RequirePackage{physics} % for \dv command
\usepackage{comment} % to use the comment environment
\usepackage[normalem]{ulem} % to use \uline
\usepackage{enumitem}
\usepackage{minted}
\usemintedstyle{friendly}
\usepackage{tcolorbox}
\tcbuselibrary{listings}


%currentdoc command for make4ht fix 
\makeatletter
\newcommand\currentdoc[1]{\edef\@currentlabel{#1}\label{#1}}
\makeatother

\ProcessOptions
\newcommandx{\info}[2][1=]{\todo[linecolor=violet,backgroundcolor=violet!25,bordercolor=violet,#1]{#2}}
\newcommandx{\change}[2][1=]{\todo[linecolor=blue,backgroundcolor=blue!25,bordercolor=blue,#1]{#2}}
\newcommandx{\unsure}[2][1=]{\todo[linecolor=OliveGreen,backgroundcolor=OliveGreen!25,bordercolor=OliveGreen,#1]{#2}}
\newcommandx{\improve}[2][1=]{\todo[linecolor=Plum,backgroundcolor=Plum!25,bordercolor=Plum,#1]{#2}}
\newcommandx{\thiswontshow}[2][1=]{\todo[disable,#1]{#2}}

% have title and author's full name appear in in-text citation
\newrobustcmd*{\citefirstlastauthor}{\AtNextCite{\DeclareNameAlias{labelname}{given-family}}\citeauthor}
\newcommand{\citetitlebyauthor}[2][]{
    \citetitle{#2} by \citefirstlastauthor[#1]{#2}
}

\newcommand{\ttt}[1]{\texttt {#1}}

\DeclareUnicodeCharacter{0259}{\textschwa} % ə

\lstset{
    language=Python,
    inputencoding=utf8,
    extendedchars=true,
	basicstyle=\ttfamily\bfseries\small,
    keywordstyle=\color{blue},
    commentstyle=\color{gray},
    stringstyle=\color{orange},
    showstringspaces=false,
    breaklines=true
}

\newcommand{\intlim}[4]{\int_{#1}^{#2} #3 \, \mathrm{d}{#4}}
\newcommand{\x}{\times}
\newcommand{\code}[1]{\texttt{#1}}

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

\newcommand{\HI}{H\,\textsc{i}}
\newcommand{\HII}{\textsc{H\,ii}}
\newcommand{\zotcite}[2]{
\href{#2}{#1}
}
\newcommand{\changethis}[2][change this]{\uline{#2} \improve{#1}}
\newcommand{\teal}[1]{\textcolor{teal}{#1}}
\newcommand{\orange}[1]{\textcolor{orange}{#1}}
\newcommand{\purple}[1]{\textcolor{purple}{#1}}
\newcommand{\blue}[1]{\textcolor{blue}{#1}}
\newcommand{\green}[1]{\textcolor{green}{#1}}
\newcommand{\red}[1]{\textcolor{red}{#1}}
\newcommand{\amber}[1]{\textcolor{amber}{#1}}
