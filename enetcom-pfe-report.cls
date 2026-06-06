\usepackage{silence}
\WarningsOff*
\LoadClassWithOptions{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages to use
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[a4paper,left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{environ}
%\usepackage[no-math]{fontspec}
\usepackage{verse}
\usepackage[table]{xcolor}
\usepackage[explicit]{titlesec}
\usepackage{chngcntr}
\usepackage{fancyhdr}
\usepackage{caption}
\usepackage{subcaption}
\usepackage[hidelinks]{hyperref}
\usepackage{needspace}% http://ctan.org/pkg/needspace
\usepackage{pdfpages}
\usepackage{pdflscape}
\usepackage{chngcntr}
\usepackage{enumitem}
\usepackage[bottom]{footmisc}
\usepackage[french]{babel}
\usepackage[french]{varioref}
\usepackage{acronym}
\usepackage[french]{minitoc}
\mtcsettitle{minitoc}{Plan}
\setcounter{minitocdepth}{2}
\mtcsetrules{minitoc}{on}
\mtcsetoffset{minitoc}{0em}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Include required packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage{showframe}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[skins]{tcolorbox}
\usepackage[french]{babel}
\usepackage[french]{varioref}
\usepackage[export]{adjustbox}
\usepackage{setspace}
\usepackage{minted}
\usepackage{color}
\usepackage{tabularx}
\usepackage{longtable}
\usepackage{ctable}
\usepackage{graphicx}
\usepackage{multirow}
\usepackage{tikz}
\usepackage{seqsplit}
\usepackage{fontenc}
%\usepackage{lipsum}
%\usepackage{todonotes}
\usepackage{wrapfig}
\usepackage{float}
\usepackage{setspace}
\usepackage[all]{nowidow}
\usepackage{acronym}
%\usepackage[sorting=none, backend=bibtex]{biblatex}
\usepackage{array,ragged2e}
%\addbibresource{001-report}
\usepackage{enumitem}
\usepackage{xcolor}
\definecolor{Gris1}{RGB}{116,134,170}
\definecolor{Gris2}{RGB}{249,249,249}

\usepackage[titletoc,title]{appendix}

\def\defaultFont{ptm}
\renewcommand*{\familydefault}{\defaultFont}
\renewcommand\UrlFont{\ignore{Actually do nothing!}}

% Serif Fonts
%   cmr Computer Modern Roman (default)
%   lmr Latin Modern Roman
%   pbk Bookman
%   bch Charter
%   pnc New Century Schoolbook
%   ppl Palatino
%   ptm Times
%
% Sans Serif Fonts
%   cmss  Computer Modern Sans Serif (default)
%   lmss  Latin Modern Sans Serif
%   pag   Avant Garde
%   phv   Helvetica
%
% Typewriter Fonts
%   cmtt  Computer Modern Typewriter (default)
%   lmtt  Latin Modern
%   pcr   Courier

\definecolor{tableRow1}{RGB}{210,234,241}
\definecolor{gray75}{gray}{0.75}
\definecolor{headerblue}{HTML}{c6d9ec}

\definecolor{reportType}{HTML}{013873}
% Red    - #FF0000 - Réalisation pratique (machines, bancs d'essai, prototypes...)
% Violet - #800080 - Etude et assistance technique (optimisation de procédés, développement d'applications...)
% Green  - #008000 - Innovation et développement durable (environnement, énergie...)
% Blue   - #0000FF - Recherche technologique (appliquée ou fondamentale)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define styles
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \titleformat{\chapter}[display]%
%   {\normalfont\sffamily\sc\fontsize{30}{6}\selectfont}%
%   {\thechapter}{1em}{#1\newpage}%
% \titlespacing{\chapter}{10pt}{200pt}{0pt}%

 \newlength\BoxWd
 \setlength\BoxWd{10mm}
 \newlength\Aux
  % chapter tiltes formatting
  \titleformat{\chapter}[display]%
    {\fontsize{22}{26}\bfseries\selectfont%
      \settowidth\Aux{\textcolor{white}{\Huge\thechapter}}%
      \ifnum\Aux>\BoxWd%
        \setlength\BoxWd{\Aux}%
      \else\fi%
    }%
    {%
      {\hspace*{-1.5mm}\normalfont\fontsize{14}{6}\selectfont{Chapter}}\\%
      \colorbox{black}{%
        \parbox[c][20mm][t]{\BoxWd}{%
          \vspace{2.5mm}\centering\textcolor{white}{\Huge\thechapter}%
        }%
      }%
    }%
    {-10mm}%
    {%
      \vspace{-5mm}\hspace*{15mm}\titlerule\\[3pt]\hspace*{15mm}#1%
    } %\centering

  % chapter tiltes formatting
  \titleformat{name=\chapter, numberless}[display]%
    {\fontsize{22}{26}\bfseries\selectfont%
      \settowidth\Aux{\textcolor{white}{\Huge\thechapter}}%
      \ifnum\Aux>\BoxWd%
        \setlength\BoxWd{\Aux}%
      \else\fi%
    }%
    {%
      {\hspace*{-1.5mm}\normalfont\fontsize{14}{6}\selectfont{~}}\\%
      \colorbox{black}{%
        \parbox[c][20mm][t]{\BoxWd}{%
          \vspace{2.5mm}\centering\textcolor{white}{~}%
        }%
      }%
    }%
    {-10mm}%
    {%
      \vspace{-5mm}\hspace*{15mm}\titlerule\\[3pt]\hspace*{15mm}#1%
    } %\centering

% chapter tiltes spacing
\titlespacing*{\chapter}{0pt}{0pt}{50pt}

\titleformat{\section}[block]%
  {\Large\bfseries}{\thesection}%
  {10pt}{\Large{\bfseries{#1}}}
\titlespacing*{\section}{0pt}{18pt}{8pt}

\titleformat{\subsection}[block]%
  {\large\bfseries}{\thesubsection}%
  {10pt}{\large{\bfseries{#1}}}
\titlespacing*{\subsection}{0pt}{14pt}{6pt}

\titleformat{\subsubsection}[block]%
  {\normalsize\bfseries}{\thesubsubsection}%
  {10pt}{\normalsize{\bfseries{#1}}}
\titlespacing*{\subsubsection}{0pt}{10pt}{4pt}

\titleformat{\paragraph}[block]%
  {\normalfont\normalsize\bfseries}%
  {\theparagraph}{1em}{#1}


% 2. Titre de niveau 1 (24 pts avant, 12 après)
% 2.1. Titre de niveau 2 (24 pts avant, 12 après)
% 2.1.1. Titre de niveau 3 (style Inter-3) (12 pts avant, 6 après)
% 2.1.1.1. Titre de niveau 4 (style Inter-4) (12 pts avant, 6 après)

% \captionsetup[figure]{name={Figure}}
\captionsetup{labelfont=bf,font={singlespacing},justification=RaggedRight,font=small,textfont=sc, textfont=bf }
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
\addto\captionsfrench{\renewcommand{\figurename}{Figure}}
\addto\captionsfrench{\renewcommand{\tablename}{Table}}
\addto\captionsfrench{\renewcommand{\chaptername}{Chapter}}
\addto\captionsfrench{\renewcommand{\listfigurename}{LIST OF FIGURES}}
\addto\captionsfrench{\renewcommand{\listtablename}{LIST OF TABLES}}


%%%%%%%%%%%% My style begin :p%%%%%%%%%%%%

\fancypagestyle{MyStyle}{
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.5pt}
  \fancyhead[L]{}

  \fancyfoot[R]{\fontsize{12}{12}\selectfont Page \thepage}% Right footer
  
  \fancyfoot[L]{\fontsize{12}{12}\selectfont MDW13/26}% Right header

}

\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}

%%%%%%%%%%%% My style end :p%%%%%%%%%%%%

\fancypagestyle{plain}{
  \fancyhf{}% Clear header/footer

  \renewcommand{\headrulewidth}{0.5pt}
  \renewcommand{\footrulewidth}{0.5pt}

  \fancyhead[L]{\fontsize{12}{12}\selectfont\textsc{\MakeLowercase{\leftmark}}}% Left header
  %\fancyhead[R]{\fontsize{12}{12}\selectfont\reportAuthor}% Right header

  \fancyfoot[R]{\fontsize{12}{12}\selectfont Page \thepage}% Right footer
  
  \fancyfoot[L]{\fontsize{12}{12}\selectfont\ MDW13/26}% Right header

}

\setlength{\fboxsep}{0mm}%
\setlength{\fboxrule}{1pt}%

% Set the footnote counter to be continuous over the whole document
\counterwithout{footnote}{chapter}
\pagestyle{plain}% Set page style to plain.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Useful commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\ignore}[2]{\hspace{0mm}#2}

\newcommand{\HRule}[1][\linewidth]{%
  % Arg1 : Width      : \linewidth
  \rule{#1}{0.5mm}%
}


\newcommand{\printBigName}{%
  \leavevmode\color{titleColorGray}\setmainfont{Cambria}\fontsize{23pt}{23pt}\selectfont\textbf{\@name}
}

\newcommand{\putPhoto}[1] {%
  \includegraphics[width=35mm, height=35mm]{#1}
  %\tcbincludegraphics[blank,arc=0.4cm]{#1}
}

\newcommand{\highlight}[1] {%
  \textit{#1}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Init commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{3}

\renewcommand\theparagraph{\alph{paragraph})}
\renewcommand\thesubparagraph{\roman{subparagraph}.}

\setlength{\parskip}{1ex} % Spacing between paragraphs
\setlist[enumerate]{itemsep=-0.35\baselineskip} % Spacing in enumerates

% Allow hyphenation to prevent overfull hbox warnings
\hyphenpenalty=500
\exhyphenpenalty=500

% Remove widow lines
%\clubpenalty=10000
%\widowpenalty=10000
%\brokenpenalty=10000
%\predisplaypenalty=10000
%\postdisplaypenalty=10000
%\displaywidowpenalty=10000


% Improve figure placement
% \renewcommand{\topfraction}{0.85}
% \renewcommand{\textfraction}{0.1}
% \renewcommand{\floatpagefraction}{0.85}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% New Environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % all of the pfe redaction goes here
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \NewEnviron{pfe-IsetNabeul} {%
      \begingroup%
      \BODY%
      \endgroup%
    }%
