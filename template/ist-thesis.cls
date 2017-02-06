\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ist-thesis}[2016/02/02 IST Dissertation]

\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}

%% Fallback
\DeclareOption*{
  \ClassWarning{ist-thesis}{Unknown option '\CurrentOption'}
}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[10pt,twoside]{article}

%% Load additional packages and commands.
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{textpos}
\RequirePackage{footmisc}
\RequirePackage{ifthen}

\geometry{a4paper,margin=2.5cm}

\def \thesisimage #1 {\def \@thesisimage{#1}}

\def \field #1 {\def \@field{#1}}
\def \supervisor #1 {\def \@supervisor{#1}}

\def \chairperson #1 {\def \@chairperson{#1}}
\def \committeesup #1 {\def \@committeesup{#1}}
\def \committeemembers #1 {\def \@committeemembers{#1}}

\renewcommand{\maketitle}{\begin{titlepage}
\pagestyle{plain}
\pagenumbering{roman}
\begin{textblock*}{5cm}(-.5cm,-1cm)
\noindent
\includegraphics[clip=true,trim=6cm 7cm 6cm 7cm,width=5cm]{template/IST_A_CMYK_POS}
\end{textblock*}
\centering

\vspace{6cm}

{\LARGE\textbf{\@title}}

\vfill

{\Large\textbf{\@author}}

\vfill

{\large Thesis to obtain the Master of Science Degree in}

\bigskip

{\Large\textbf{\@field}}

\vfill

{\large Supervisor(s): \@supervisor}

\vfill

{\Large\textbf{Examination Committee}}

\bigskip

{\large Chairperson: \@chairperson\\
Supervisor: \@committeesup\\
Members of the Committee: \@committeemembers\\}

\vfill

{\Large\textbf{\@date}}
\end{titlepage}}

\renewcommand{\familydefault}{\sfdefault}
\renewcommand*\sfdefault{phv}
\linespread{1.5}

\renewcommand{\footnotesize}{\fontsize{9pt}{11pt}\selectfont}
\renewcommand{\footnotelayout}{\setstretch{1}}

\newenvironment{aknowledgements}{%
\cleardoublepage
\section*{Aknowledgements}
\addcontentsline{toc}{section}{Aknowledgements}
}{\newpage}

\renewenvironment{abstract}{%
\cleardoublepage
\section*{\abstractname}
\addcontentsline{toc}{section}{\abstractname}
\par
}{\newpage}

\newenvironment{resumo}{%
\cleardoublepage
\section*{Resumo}
\addcontentsline{toc}{section}{Resumo}
\par
}{\newpage}

\let\ist@oldtoc\tableofcontents
\renewcommand{\tableofcontents}{\cleardoublepage\ist@oldtoc\newpage

\pagenumbering{arabic}
\setcounter{page}{1}}

\endinput
