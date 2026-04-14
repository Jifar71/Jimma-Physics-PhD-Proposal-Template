\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jimma_phd_proposal}[2026/04/14 Jimma University PhD Proposal Class]

\LoadClass[12pt,a4paper]{report}

%------------------------------------------------
% Packages
%------------------------------------------------
\RequirePackage{tocloft}
\RequirePackage[acronym]{glossaries}
\makeglossaries
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{natbib}
\RequirePackage{nomencl}
\makenomenclature

%------------------------------------------------
% Layout
%------------------------------------------------
\geometry{
left=1.25in,
right=1in,
top=1in,
bottom=1in
}
\onehalfspacing

\setlength{\parindent}{1.2em}
\setlength{\parskip}{0.5em}
%------------------------------------------------
% Font
%------------------------------------------------
\RequirePackage{mathptmx}

\RequirePackage[
colorlinks=true,
linkcolor=blue,
citecolor=blue,
urlcolor=blue
]{hyperref}

%------------------------------------------------
% Header/Footer
%------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\fancyhead[L]{\nouppercase{\leftmark}}

%------------------------------------------------
% Section Formatting
%------------------------------------------------
\titleformat{\chapter}[display]
{\bfseries\Large}{\chaptername\ \thechapter}{1em}{}

\titleformat{\section}
{\bfseries\normalsize}{\thesection}{1em}{}

\titleformat{\subsection}
{\bfseries\small}{\thesubsection}{1em}{}

%------------------------------------------------
% Custom Fields
%------------------------------------------------
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\thesistitle}[1]{\def\@thesistitle{#1}}
\newcommand{\authorname}[1]{\def\@authorname{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\cosupervisorA}[1]{\def\@cosupervisorA{#1}}
\newcommand{\cosupervisorB}[1]{\def\@cosupervisorB{#1}}

\def\@university{Jimma University}
\def\@department{Department of Physics}
\def\@degree{Doctor of Philosophy (PhD)}

%------------------------------------------------
% Title Page (with logo)
%------------------------------------------------
\renewcommand{\maketitle}{
\begin{titlepage}
\centering

\includegraphics[width=3cm]{logo/jimma_logo.png}\\[1cm]

{\large \textbf{\@university}}\\
{\large \textbf{\@department}}\\[1.5cm]

{\Large \textbf{PhD Research Proposal}}\\[1.5cm]

{\Large \textbf{\@thesistitle}}\\[2cm]

{\large By}\\
{\large \textbf{\@authorname}}\\[2cm]

{\large A proposal submitted in partial fulfillment of the requirements}\\
{\large for the degree of}\\
{\large \textbf{\@degree}}\\[2cm]

\begin{flushleft}
\textbf{Supervisor:} \@supervisor \\
\textbf{Co-Supervisors:} \@cosupervisorA \\
\hspace{3.6cm} \@cosupervisorB
\end{flushleft}

\vfill
{\large \today}

\end{titlepage}
}

%------------------------------------------------
% Front Matter Commands
%------------------------------------------------
\newcommand{\abstractpage}{
\chapter*{Abstract}
\addcontentsline{toc}{chapter}{Abstract}
}

\newcommand{\acknowledgements}{
\chapter*{Acknowledgements}
\addcontentsline{toc}{chapter}{Acknowledgements}
}

\newcommand{\listoffigurespage}{
\listoffigures
\addcontentsline{toc}{chapter}{List of Figures}
}

\newcommand{\listoftablespage}{
\listoftables
\addcontentsline{toc}{chapter}{List of Tables}
}

\newcommand{\abbreviationspage}{
\printglossary[type=\acronymtype,title=List of Abbreviations]
}
%------------------------------------------------
% List of Symbols
%------------------------------------------------
\newcommand{\symbolspage}{
\chapter*{List of Symbols}
\addcontentsline{toc}{chapter}{List of Symbols}
\printnomenclature
}

%------------------------------------------------
% Appendix Setup
%------------------------------------------------
\newcommand{\appendixsection}{
\appendix
\renewcommand{\chaptername}{Appendix}
}

\endinput
