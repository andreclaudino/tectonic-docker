%\def\currversion{June 5, 2018, 10pm}
\def\currversion{June 28, 2018}

  %****************************************************************%
  %*  Manning-Contemp.cls                                         *%
  %*                                                              *%
  %*  Manning Publications                                        *%
  %*  Manning Contemporary Series                                 *%
  %*                                                              *%
  %*  by Amy Hendrickson, TeXnology Inc.                          *%
  %*                                                              *%
  %*  TeXnology Inc.: 617 738-8029                                *%
  %*  amyh@texnology.com                                          *%
  %*  http://www.texnology.com                                    *%
  %*  May 2018                                                    *%
  %****************************************************************%


%% SEARCH BELOW FOR THE NUMBER TO FIND PARTICULAR MACRO GROUP

    %% Macro Contents:
    %% 1) Setting Default Dimensions
    %% 2) Global Parameters
    %% 3) Setting Options, \documentclass[twoside]{rptexbk} 
    %% 4) Font family declarations, Special use fonts, space between lines
    %% 5) Listing
    %% 6) Title Pages, Preface, Introduction
    %% 7) Part, Chapter, and Appendix Commands 
    %% 8) Counters, Header Level Counters
    %% 9) Section Commands 
    %% 10) Verse, Quote, Extract 
    %% 11) Theorem environments
    %% 12) Case Environment
    %% 13) Math
    %% 14) Figure and Table Captions 
    %% 15) Table of Contents, List of Figures, LOT, Exhibits
    %% 16) Bibliography, References 
    %% 17) Footnotes
    %% 18) Running Heads
    %% 19) Algorithm
    %% 20) Index
    %% 22) Drop Cap
    %% 23) Code box

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\typeout{^^J^^J
^^J^^J
Manning Contemporary Book Style^^J
^^J
Manning Publications^^J^^J
by Amy Hendrickson, TeXnology, Inc., May, 2018^^J
^^J
This version is dated \currversion^^J^^J}


\newif\ifebook
\DeclareOption{ebook}
   {\global\ebooktrue}



% 1) Setting Default Dimensions

  %% Comment
  %% parindent= indentation for every new paragraph
  %% parskip= distance between paragraphs. Giving `plus .1pt' allows
  %% a little stretch between paragraphs. If you don't like this stretch
  %% you can set \parskip=0pt

\parindent=16pt
\parskip=0pt % plus .1pt

  %% Comment
  %% \textheight is distance from bottom of text, exclusive of running
  %% foot, to top of text, exclusive of running head.

\textheight = 44pc % 45.5pc including running head
  %% 44pc is 44 pica, 6 pica = 1 inch
  %% so the text height is 7 1/3 inches

  %% Comment
  %% Width of text in normal page. Can change this width locally
  %% with either \leftskip/\rightskip or change in \hsize, but will
  %% still be able to return to the normal width by setting \hsize=\textwidth
  %% Running head normally uses \textwidth as its width so that a change
  %% in \hsize in text will not change width of running head or feet.

\textwidth 32pc
  %% 6 pica = 1 inch

  %% Comment
  %% Setting page dimensions
  %% See p. 84-- 85 in LaTeX Companion, Goosins, Mittlebach and Samarin
  %% or p. 555--556 in A Guide to LaTeX, Kopka and Daly, both Addison Wesley
  %% books.

  %% \topmargin space between top of page and running head

  %% \headheight height of running head

  %% \headsep  space between running head and text

  %% \topskip  space between top of text and baseline of first line
  %%            of text

  %% \footskip space between text and baseline of first footnote

  %% \columnsep space between two column text

  %% \columnseprule width of optional rule between columns, usually set to 0pt

  %%  \footnotesep Distance between two footnotes

  %%  \skip\footins Distance between text and footnote

  %%  \floatsep Distance between float and another
  %%       float for single col floats.

  %%  \textfloatsep Distance between float and text at top
  %%                     or bottom of page.

  %%  \intextsep  Distance between float and text if float is mid page
  %%                 or mid column

  %%  \dblfloatsep  For float spanning both columns in two column text,
  %%  above or below both columns, space between float and and float.


\topmargin12pt
\headheight 12pt
\headsep 18pt
\topskip  10pt
\footskip 15pt 


\columnsep 10pt
\columnseprule 0pt

\footnotesep 6.65pt
\skip\footins 10pt plus .1pt minus .1pt

\floatsep 12pt plus 2pt minus 2pt
\textfloatsep 10pt plus 2pt minus 4pt
\intextsep 12pt plus 2pt minus 2pt

\dblfloatsep 12pt plus 2pt minus 2pt
\dbltextfloatsep 20pt plus 2pt minus 4pt


  %% float placement, used by output routine
\@fptop 0pt plus 1fil
\@fpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil
\@dblfptop 0pt plus 1fil
\@dblfpsep 8pt plus 2fil
\@dblfpbot 0pt plus 1fil

  %% page makeup, used by output routine and also for
  %% splitting boxes
\maxdepth=4pt   %% 2e default is .5\topskip

  %% Comment
  %% When using \marginpar, how wide can marginal note be?

\marginparwidth .75in

  %% When using \marginpar, how much horizontal space between marginal
  %% note and text

\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
  \setlength\marginparsep{7\p@}
\fi

  %% When to push marginal note on to next page, minimum vertical space between
  %% two marginal notes

\setlength\marginparpush{5\p@}

  %% space added before trivlist, which is used in many other
  %% macros, (for instance, verbatim environment) 
  %% if macro is called in vertical mode, otherwise only parskip
  %% is added. Can set this without stretch if you don't like
  %% the stretchy space added.

\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}

  %% Comment
  %% Setting parameters that control float placement
  %% 
  %% \topnumber counter holds the maximum number of
  %% floats that can appear on the top of a text page.
  %% 
  %% \topfraction indicates the maximum part of a text page that can be
  %%     occupied by floats at the top.
  %% 
  %% \bottomnumber counter holds the maximum number of
  %%     floats that can appear on the bottom of a text page.
  %% 
  %% \bottomfraction indicates the maximum part of a text page that can be
  %%     occupied by floats at the bottom.
  %% 
  %% \totalnumber indicates the maximum number of floats that can appear on
  %%     any text page.
  %% 
  %% \textfraction indicates the minimum part of a text page that has to be
  %%     occupied by text.
  %% 
  %% \floatpagefraction indicates the minimum part of a page that has to be
  %%     occupied by floating objects before a `float page' is produced.
  %% 
  %% \dbltopnumber counter holds the maximum number of
  %%     two column floats that can appear on the top of a two column text
  %%     page.
  %% 
  %% \dbltopfraction indicates the maximum part of a two column text page that
  %%     can be occupied by two column floats at the top.
  %% 
  %% \dblfloatpagefraction indicates the minimum part of a page that has to be
  %%     occupied by two column wide floating objects before a `float
  %%     page' is produced.
  %%%

\setcounter{topnumber}{10}
\def\topfraction{.9}
\setcounter{bottomnumber}{10}
\def\bottomfraction{.1}
\setcounter{totalnumber}{10}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}
  %%%

  %% Setting Array and Table Spacing
  %% distance between columns in array
\setlength\arraycolsep{5\p@}

  %% distance between columns in tabular
\tabcolsep 6pt

  %% width of lines in array
\setlength\arrayrulewidth{.4\p@}

  %% space between two lines in array
\setlength\doublerulesep{2\p@}

  %% space between two lines in tabular
\setlength\tabbingsep{\labelsep}

  %% Minipage
  %% minipage space
\skip\@mpfootins = \skip\footins

  %% Framebox \fbox{} or \framebox{}
  %% space between line in framebox and text within it
\setlength\fboxsep{3\p@}

  %% width of ruled line in framebox
\setlength\fboxrule{.4\p@}


  %%%%%%%%%%%%%%% <<== end dimensions

% 2) %%% Global parameters ==>>

  %% Makes sure that there will not be any widow or club lines,
  %% smaller numbers allow them occassionally, but you probably need
  %% these set to 10000 so that there are never any

\widowpenalty10000
\clubpenalty10000


  %% How many levels deep do you want sections to be numbered-- higher number
  %% means more levels will be numbered. Here was are asking only for
  %% sections to be numbered, not subsections, or subsubsection etc.
\setcounter{secnumdepth}{3}

  %% How many levels of section heads do you want to appear in the
  %% table of contents: here we are asking for only parts, chapters and
  %% sections to appear.
\setcounter{tocdepth}{1}


  %% To make left and right page position differently, and have
  %% running heads be different on even and odd pages
\@twosidetrue  

  %% Marginal notes should be on the left on even numbered pages; on
  %% right on odd numbered pages.
\@mparswitchtrue

  %% Starting with one column text
\@twocolumnfalse

  %% 2e ==>>>
  %% openbib will allow separate lines for parts of bibliography
  %% entries, default is to run different parts of bib entry into a
  %% paragraph form.

\newif\if@openbib
\@openbibfalse

  %% Conditionals that we can set and use later
\newif\if@openright
\newif\if@mainmatter 
\newif\if@restonecol
\newif\if@titlepage
\newif\ifdraft

  %% Start new chapter on right side
\@openrighttrue
  %% <<== end 2e

  %% Comment
  %% Set Names, to be used later, usually in more than one
  %% macro.

\newcommand{\contentsname}{Contents}
%%\newcommand{\listfigurename}{List of Figures}
\newcommand{\listfigurename}{Figures}
%%\newcommand{\listtablename}{List of Tables}
\newcommand{\listtablename}{Tables}
\newcommand{\bibname}{Bibliography}
\newcommand{\indexname}{Index}
\newcommand{\figurename}{Figure}
\newcommand{\tablename}{Table}
\newcommand{\partname}{Part}
\newcommand{\chaptername}{Chapter}
\newcommand{\appendixname}{Appendix}

  %%% <== end global parameters

%% default
   \global\ebooktrue

\ProcessOptions



%% <==== End Setting Options 

% 4) Font Info




\newcommand{\@ptsize}{}

  %% Comment
  %% Set font sizes, normal baselineskip, for the range of sizes, 
  %% changing baselineskip to be larger if draft option is true
  %% \setfontsize takes the first arg as the size of the font and
  %% the second as the size of the baselineskip
  %% \abovedisplayskip and \belowdisplayskip is the space before and
  %% after an equation, adjusted in some sizes. 

  %% \Huge 25pt
  %% \huge 20pt
  %% \LARGE 17pt
  %% \Large 14pt
  %% \large 12pt
  %% \normalsize 10 pt font
  %% \small 9pt
  %% \footnotesize 8pt
  %% \scriptsize 7pt font
  %% \tiny 5pt font


\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{13pt}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@%
   \abovedisplayshortskip \z@ \@plus3\p@%
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@%
   \belowdisplayskip \abovedisplayskip%
   \let\@listi\@listI%
\def\tt{\fontsize{8.5}{13}\ttfamily\relax}%
\def\texttt ##1{{\tt ##1}}%
}

%% default font size
\normalsize

\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
\def\tt{\fontsize{8}{11}\ttfamily\relax}
\def\texttt ##1{{\tt ##1}}
   \belowdisplayskip \abovedisplayskip
}

\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
\def\tt{\fontsize{7}{8}\ttfamily\relax}%
\def\texttt ##1{{\tt ##1}}\belowdisplayskip \abovedisplayskip}

\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}


\@maxdepth\maxdepth
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand{\mit}{\@fontswitch{\relax}{\mathnormal}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fontspec}

\def\fontpath{ ./fonts/ }
\defaultfontfeatures{Ligatures=TeX, Path=\fontpath}

\def\doBaskerville{\setmainfont
[UprightFont= itc-new-baskerville-roman-latin-1,
BoldFont=itc-new-baskerville-bold-latin-1,
ItalicFont=itc-new-baskerville-italic-latin-1,
BoldItalicFont=itc-new-baskerville-bold-italic-latin-1,
SmallCapsFont=
]{itc-new-baskerville-roman-latin-1}}

\setmonofont[BoldFont=Courier-Bold,ItalicFont=CourierStd-Oblique]{CourierStd}
%% default fonts

\doBaskerville

%% Special use fonts+++
\def\initialcapfont{\fontsize{48}{0}%
\doBaskerville
}



\def\btt{\fontspec{Courier-Bold}}

\long\def\InitialCap#1{\noindent{\color{muddydkblue}\initialcapfont\relax#1}}

\def\partfont{\fontsize{30}{32}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\partnumberfont{\fontsize{30}{0}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\chaptitlefont{\fontsize{30}{31}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\schaptitlefont{\fontsize{30}{31}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\chapternumberfont{\fontsize{225}{0}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\chapsummaryfont{\fontsize{10}{12}%
\fontspec{ITCFranklinGothicStd-Book}}

\def\chapsummarytitlefont{\fontsize{12.5}{15}%
\fontspec{ITCFranklinGothicStd-DemiIt}}

\def\colorboxtitlefont{\fontsize{11}{12}%
\fontspec{franklingothic-demi}}

\def\colorboxtextfont{\fontsize{9.5}{12}%
\fontspec{ITCFranklinGothicStd-Book}}

\def\sectionfont{\fontsize{12.5}{13.5}%
\fontspec{ITCFranklinGothicStd-DemiIt}}

\def\subsectionfont{\fontsize{10.5}{12.5}%
\fontspec{ITCFranklinGothicStd-DemiIt}}

\def\subsubsectionfont{\fontsize{9}{0pt}%
\fontspec{franklingothic-demi}}

\def\notefont{\fontsize{9}{11}%
\fontspec{franklingothic-demi}}

\def\codetitlefont{\fontsize{10}{11}%
\fontspec{franklingothic-demi}}

\def\techfont{\fontsize{8}{8.5}%
\fontspec{Univers-Bold}}

\def\techtitlefont{\fontsize{10}{10}%
\fontspec{Univers-Bold}}


%%% Figures/Tables
\def\fignumfont{\fontsize{8}{10}%
\fontspec{franklingothic-demi}}

\def\tabtextfont{\fontsize{8}{10}%
\fontspec{franklinGothic-Book}}

\def\tabttfont{\fontsize{8.6}{10}%
\tt}

\def\verbatim@font{\fontsize{8}{10}%
\ttfamily}

\def\tabcaptionttfont{\fontsize{8.3}{10}\bfseries\ttfamily\relax}

\def\tablefootfont{\fontsize{7}{9}%
\fontspec{FranklinGothic-Book}}

\def\tableheadfont{\fontsize{8}{0}%
\fontspec{FranklinGothic-Book}}

%% running heads
%\fontspec{FranklinGothicURWCnSC-Med}

\def\runningheadfont{\fontsize{8}{10}%
\fontspec{franklingothic-demi}}

\def\smrunningheadfont{\fontsize{6}{10}%
\fontspec{franklingothic-demi}}

\def\foliofont{\fontsize{9}{10}\bf}
%% cnfreebd billiard balls
\def\ballfont{\fontsize{13.5}{10}%
\fontspec{Fyra-NumericCircleClosed}}

\font\sc=cmcsc10
\def\smallcaps{\sc}

\def\parttocfont{\fontsize{13.5}{0}%
\fontspec{newbaskerville-sc}}

\def\bigparttocfont{\fontsize{13.5}{0}%
\fontspec{itc-new-baskerville-roman-latin-1.ttf}}

\def\smallparttocfont{\fontsize{13.5}{0}%
\fontspec{newbaskerville-sc}}

\def\tocchapnumfont{fontsize{10}{10}\fontspec{franklingothic-book}}

\def\cparttocfont{\fontsize{13.5}{0}%
\fontspec{newbaskerville-sc}}

\def\cbigparttocfont{\fontsize{13.5}{0}%
\fontspec{itc-new-baskerville-roman-latin-1.ttf}}


\def\techsc{\fontsize{10.5}{0}%
\fontspec{Utopia-RegularSC}}

\def\bigchaptocfont{\fontsize{26}{0}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\chaptocfont{\fontsize{13}{15}%
\fontspec{itc-new-baskerville-bold-italic-latin-1}}

\def\apptocfont{\fontsize{12}{13.5}%
\fontspec{itc-new-baskerville-italic-latin-1}}

\def\tocfonts{\fontsize{11}{13}\fontspec{itc-new-baskerville-roman-latin-1}}

\def\ctocfonts{\fontsize{12}{13}\fontspec{itc-new-baskerville-roman-latin-1}}


%\def\briefchapnumfont{\fontsize{12}{10}\fontspec{CourierStd-Oblique}}
\def\briefchapnumfont{\fontsize{10}{10}\fontspec{franklingothic-book}}

\def\iletterfont{\fontsize{10}{10}%
\fontspec{franklingothic-demi}}

\def\SCitalic{\fontsize{10}{10}%
\fontspec{texgyreheroscn-italic}}

\def\enumiNumFont{\fontsize{7}{0}\fontspec{franklingothic-demi}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 5) Listing, ==>>

\def\@listI{\leftmargin\leftmargini
\parskip=0pt
            \parsep 0\p@ %\@plus2\p@ \@minus0\p@
            \topsep 4\p@ %\@plus2\p@ \@minus0\p@
            \itemsep1\p@ %\@plus2\p@ \@minus0\p@
}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

  %% amount left edge of text is indented relative to normal text
  %% i is for first level in, ii is for second level in, etc.
\setlength\leftmargini  {36pt}
\setlength\leftmarginii  {11pt}
\setlength\leftmarginiii {13pt}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}


  %% default indentation for first level itemized lists
\setlength\leftmargin    {\leftmargini}

  %% horizontal distance between item and following text
\setlength  \labelsep  {6pt}

  %% how wide should item be?
\setlength  \labelwidth{\leftmargini}

  %% subtract width of label separation
\addtolength\labelwidth{-\labelsep}

  %% more listing defaults
\leftmargin\leftmargini
\labelwidth\leftmargini\advance\labelwidth-\labelsep

\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

  %% defining listing markers for enumerate
\renewcommand{\theenumi}{\enumiNumFont\color{newmuddydkyellow}\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\theenumiv}{\Alph{enumiv}}

  %% using listing markers for enumerate
\newcommand{\labelenumi}{\theenumi}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}

  %% crossreferencing for listing markers
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}

\def\yellowsquare{\raise.2ex\hbox{\color{newmuddydkyellow}\vrule
width 4.5pt height 4.5pt}}

\def\smyellowsquare{\leavevmode\raise.3ex\hbox{\color{newmuddydkyellow}\vrule
width 3pt height 3pt depth0pt}}
\let\savesmyellowsquare\smyellowsquare
  %% listing markers for itemize (no crossreferencing needed)
\newcommand{\labelitemi}{\raise.4ex\hbox{\color{newmuddydkyellow}\vrule
width 3pt height 3pt}\hskip2pt}
\newcommand{\labelitemii}{\normalfont\bfseries --}
\newcommand{\labelitemiii}{$\m@th\ast$}
\newcommand{\labelitemiv}{$\m@th\cdot$}

  %% Setting up description listing environment
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}



\newcommand*{\descriptionlabel}[1]{\hspace\labelsep
\color{muddydkblue}
                                \enumiNumFont #1}


  %%% <<=== end of listing commands 

% 6) Title Pages, Preface, Introduction==>>

  %% Used below, to make sure that page starts on odd number
\def\startonoddpage{\clearpage
\ifodd\c@page\else\null\thispagestyle{empty}\newpage\fi}

\def\foreword{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{foreword}
  %% send foreword to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{foreword}
}


\def\endforeword{\newpage\let\chaphead\relax}

\def\preface{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{preface}
  %% send Preface to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{preface}}


\def\endpreface{\newpage\def\chaphead{}}

\def\aboutthisbook{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{about this book}
  %% send Preface to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{about this book}}

\def\endaboutthisbook{\newpage\def\chaphead{}}

\def\abouttheauthors{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{about the authors}
  %% send Preface to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{about the authors}}

\def\endabouttheauthors{\newpage\def\chaphead{}}

\def\aboutthecover{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{about the cover}
  %% send Preface to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{about the cover}}

\def\endaboutthecover{\newpage\def\chaphead{}}

\def\abouttheauthor{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{about the author}
  %% send Preface to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{about the author}}

\def\endabouttheauthor{\newpage\def\chaphead{}}

\def\acknowledgments{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{acknowledgments}
  %% send acknowledgment to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{acknowledgments}}


\def\endacknowledgments{\newpage\def\chaphead{}}

\def\acknowledgment{\startonoddpage
  %% chapter* is the default for all non numbered chapter type headings
\chapter*{acknowledgment}
  %% send acknowledgment to table of contents, formatted with macro \l@starchap
  %% defined below
\addcontentsline{toc}{starchap}{acknowledgment}}

\def\endacknowledgment{\newpage\def\chaphead{}}

\let\prefaceauthor\forewordauthor

  %% \ignorespaces gets rid of any spaces introduced between
  %% the macro and text following the \noindent
\def\xacknowledgments{\vskip2.5pc
\noindent{\it
acknowledgements:}
\vskip1pc\noindent\ignorespaces}

  %% from 2e, kept on in case they are used in any embedded 2e macros
\newcommand{\frontmatter}{\cleardoublepage
            \@mainmatterfalse\pagenumbering{roman}}
\newcommand{\mainmatter}{\cleardoublepage
       \@mainmattertrue\pagenumbering{arabic}}
\newcommand{\backmatter}{\if@openright\cleardoublepage\else\clearpage\fi
      \@mainmatterfalse}
  %%

  %% Comment
  %% This macro makes it possible to type \author{}\author{}\author{}
  %% and have the author names saved to be used in the titlepage.
  %% It does it by making a new definition every time \author{} is
  %% used, using \csname ...\endcsname with a counter embedded
  %% while we make the definition, instead of the more usual \def\macroname.
  %% First we increase the \authorcount counter by 1 and then when
  %% the macro is defined it will be unique since it will include the
  %% number for the current value of \authorcount. Also in the
  %% definition of the new author name is a vertical ruled line with
  %% 0pt width which is used to maintain the vertical space between
  %% author names.


\newcount\authorcount
\newcount\totalauthors
\def\author#1{\global\advance\authorcount by1
\expandafter\def\csname author\the\authorcount\endcsname{%
\vskip6pt{\vrule height 1pt depth 5pt width0pt\relax
\authorfont #1}}}

  %% This is an easy way to save the value of booktitle, subtitle, or
  %% titlepage comment. The argument is used as the body of a definition
  %% that we can call later.
\def\booktitle#1{\def\thebooktitle{#1}}
\def\subtitle#1{\def\thesubtitle{#1}}
\def\titlepagecomment#1{\def\thecomment{#1}}


  %% Now, in the titlepage we call the names of authors that
  %% have been previously defined. We do this with a loop
  %% that includes a counter that is advanced everytime we go
  %% through the loop. This counter is compared with the total
  %% number of authors that have been defined so that the loop
  %% ends when we don't have any more author names.

\def\titlepage{\thispagestyle{empty}
\vbox to\vsize{\parindent=0pt \parskip=0pt \baselineskip=12pt
{\titlefont\baselineskip=34pt
\thebooktitle
\vskip1sp
}
\vskip28pt
\totalauthors=\authorcount
\advance\totalauthors by 1
\authorcount=1
\loop\ifnum\authorcount<\totalauthors
\expandafter\ifx\csname author\the\authorcount\endcsname\relax
\else\csname author\the\authorcount\endcsname\fi
\global\advance\authorcount by 1
\repeat
\advance\totalauthors by-1

{\subtitlefont
\vglue9pt
\vglue2pc
\thesubtitle
\vskip1sp
}
\vskip54pt
\expandafter\ifx\csname thecomment\endcsname\relax\else
\thecomment
\fi
\vfill
% \noindent \includegraphics[width=.25\textwidth]{publogo}
}}


\def\dedication#1{\newpage\ifodd\c@page\else
\thispagestyle{empty}
\hbox to\textwidth{\hfill}
\newpage\fi
\thispagestyle{empty}
\vspace*{6.5pc}
\vskip4pt
{\centering
\dedicationfont #1
\vskip1sp}
\addcontentsline{toc}{starchap}{Dedication}
\newpage}


%% <=== end Title Pages, Preface


% 7) Part, Chapter, and Appendix Commands ===>>>

  %% to disable chaptermark
\def\chaptermark#1{}

  %% sphrulefill makes a ruled line 2pt high that we can make any 
  %% width, depending on the width of the box it is used in.

\def\sphrulefill{\leavevmode \leaders \hrule height .5pt\hfill \kern
\z@} 
\def\medhrulefill{\leavevmode \leaders \hrule height 1.2pt\hfill \kern \z@}
\def\bighrulefill{\leavevmode \leaders \hrule height 2pt\hfill \kern \z@}

  %% Comment
  %% You'll see \secdef, in this case \secdef\@part\@spart, in the chapter
  %% macro as well.

  %% First \@ifstar, which is in the definition of \secdef 
  %% checks to see if there is a * argument, ie, \part*{Title},
  %% then \secdef will call \@spart, \@part will be called if there is no star.

  %% Then it will use \@dblarg to check to see it there is a square
  %% bracket optional argument in the nonstarred version of the
  %% part title: ie, \part[alt heading]{Part title},
  %% which it does with the \@ifnextchar[ 

  %% If there is not a square bracket it will supply \part[#1]{#2},
  %% If there is one it will supply \part[]{#2}, so that the
  %% macro \def\@part[#1]#2{% which needs an argument in square bracket,
  %% will work whether or not the user has supplied a square bracket.

\newcommand{\part}{\startonoddpage
                 \thispagestyle{empty}%
                     \@tempswafalse
                 \secdef\@part\@spart}

  %% The first time \part is used pagenumbering will be set to arabic,
  %% and also start the page numbers from 1.
  %% Part\ \ \ \ \Roman{part}}} will make the part number print in
  %%   uppercase Roman numerals

  %% \hbox to\textwidth{\hfill\hbox to15pc{\sphrulefill}} makes a ruled
  %%   line 2 pt high and 15pc wide

  %% \hyphenpenalty=10000 stops words from hyphenating

  %% \leftskip=0pt plus 1fil
  %% \everypar={\hskip0pt plus 1fil\relax} \parfillskip=0pt
  %% will make part title lines align to the right. \parfillskip
  %% is the fill that is normally added at the end of the paragraph.
  %% We set it to 0pt so that when the leftskip pushes text to the
  %% right, it can be pushed to the right margin.

  %% We use \large before \baselineskip=28pt because \large may well
  %% have a different baselineskip but we want to use it to get larger
  %% math fonts. 


\long\def\@part[#1]#2\par#3{%
\ifnum\c@part=0 \global\@mainmattertrue
\pagenumbering{arabic}\fi
\thispagestyle{empty}
      \refstepcounter{part}%
\bookmarksetup{startatroot}%
\bookmark[page=\the\acropage, level=0]{Part \thepart\space #1}
%\plainaddcontentsline{toc}{part}{#1}
%% for brief contents
\addcontentsline{boc}{part}{\string\partnumberline{\thepart}{#1}}%
%% for full contents
\plainaddcontentsline{toc}{part}{\string\partnumberline{\thepart}{#1}}%
  \vspace*{6pt}%
  {\parindent \z@ 
    \interlinepenalty\@M
\Large\fboxsep=0pt
\hbox to\textwidth{%
\hfill\colorbox{muddyltyellow}{\vtop to3.5pc{\hsize=15.917pc
\vfill
\hbox to\hsize{\color{muddydkblue}\hfill\partnumberfont Part \thepart\hskip1.5pc}
\vfill
}}}
}
\vskip23pt
\noindent\hfill\vtop {\hyphenpenalty10000 
\begin{flushright}
\def\\ {\vskip1sp}
\huge\bfseries\partfont 
\color{muddydkblue}\ \relax #1\\
\vskip6pt
\end{flushright}
}\vskip3pc
\def\three{#3}
\ignorespaces\InitialCap{#3}}


  %% Comment
  %% \chapter starts with setting particular counters to zero. 
  %% \@topnum\z@ will keep float, like figures or tables from going
  %% to the top of the page. \secdef works the same as for part, above.

%\def\secdef#1#2{\@ifstar{#2}{\@dblarg{#1}}}

\def\sqbullet{\raise1pt\hbox{\vrule width 3pt height 3pt depth0pt}}


\def\chapsummarytitle#1{{\chapsummarytitlefont\noindent\hskip-15pt\relax#1\vskip2pt}}
\def\chapsummaryitem{{\chapsummaryfont\vskip3pt\noindent\hskip-14pt\hbox to
14pt{\sqbullet\hfill}}}

\long\def\chapsummary#1{{\fboxsep=10pt\noindent\hskip-3pc\colorbox{muddyyellow}{\hskip10pt\vtop{\hsize=3.5in
\advance\hsize by -10pt
\advance\hsize by -.3in
\leftskip=14pt
\rightskip=\leftskip
\hbox to\hsize{\vtop{\let\title\chapsummarytitle%
\let\item\chapsummaryitem%
\hyphenpenalty10000
\vskip-2pt
\advance\hsize-30pt
\color{muddydkblue}\chapsummaryfont%
\title{This chapter covers}
#1\vskip-1pt
}\hfill}}}\vskip5pc\relax}\global\everypar={\hskip-\parindent\global\everypar={}}}


\def\chapter{\startonoddpage
\global\footnum=0
\global\c@chapapp=0
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

  %% \if@mainmatter\else test to see if
  %% if part has been used in which case mainmatter will be set to be true,
  %% Otherwise, if it is the first chapter the pagenumber should
  %% be set to zero. Also pagenumbering is set to be arabic whether
  %% or not it is the first chapter. 

  %% \refstepcounter{chapter} advances the chapter counter.

  %% \addcontentsline{toc}{chapter}{\numberline{\thechapter}{#1}}}%
  %% sends chapter 

  %% \expandafter\chaptermark\one is taking the optional square
  %% bracket argument and sending it to the running head
  %% (\chapter[alt heading]{Normal Chapter Title})



\newif\iffirstchapter
\global\firstchaptertrue
\def\@chapter[#1]#2{%
  %%
\if@mainmatter\else%
  \ifnum\c@chapter=0
    \iffirstchapter\global\firstchapterfalse \pagenumbering{arabic}\fi%
  \global\@mainmattertrue%
  \fi%
\fi%
%
\gdef\thepage{\csname @arabic\endcsname\c@page}
%
\refstepcounter{chapter}% 
\global\listnumber=0 
\ifnum \c@secnumdepth >\m@ne
\typeout{\@chapapp\space\thechapter.}%
\ifappendon
\bookmark[page=\the\acropage, level=0]{\thechapter\space #1}
\else
\bookmark[page=\the\acropage, level=1]{\thechapter\space #1}
\fi
{\def\\ {\ }
\ifappendon
\plainaddcontentsline{toc}{appchapter}{\string\appnumberline{\thechapter}{#1}}
\else
\addcontentsline{boc}{chapter}{\string\numberline{\thechapter}{#1}}
\plainaddcontentsline{toc}{chapter}{\string\numberline{\thechapter}{#1}}
\fi
}%
\fi
{\def\\ {\ }\edef\one{{#1}}
                    \expandafter\chaptermark\one}%
                      \@makechapterhead{#2}%
         \@afterheading
                    }

  %% Chapter without star
  %% if appendix, change to use letter instead of number


%% +++
\newbox\chaplinenumber
\def\@makechapterhead#1{
\thispagestyle{plain}
\setbox\chaplinenumber\vtop{#1\phantom{y}}
%\showthe\dp\chaplinenumber % 2.7
                             %% 15.7
                              %% 28
\ifappendon
\thispagestyle{empty}
\renewcommand{\@chapapp}{\appendixname}%
\renewcommand{\thechapter}{\Alph{chapter}}
\else
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\@chapapp}{Chapter}%
\fi
{\let\\ \ 
\gdef\chaphead{\frenchspacing\def\\ {\hskip3pt}#1}}
  \vspace*{4pt}%
  {\parindent \z@ 
    \interlinepenalty\@M
\Large\fboxsep=0pt
\hbox to\textwidth{%
\hfill\color{ltgray}
\chapternumberfont\ifappendon\else\thechapter\fi\hskip-10pt%
}
\ifappendon\else
\vskip-95pt
\vskip-26pt
\ifdim\dp\chaplinenumber>15pt
\ifdim\dp\chaplinenumber>28pt
\ifappendon\else
\vskip-24pt\fi\fi
\vskip-3pt\fi\fi
\hbox to\textwidth{\color{manningblue}
\hfill\vtop{\raggedleft\hsize
28pc\chaptitlefont
\ifappendon
\hfill \chaptitlefont appendix \thechapter\break\fi
\phantom{y}#1\vrule depth 9pt width0pt
\vskip1sp}} 
\ifdim\dp\chaplinenumber< 15.5pt
\vskip4pt
\else
\ifdim\dp\chaplinenumber< 27pt
%less than 27pt
\else
\vskip4pt
%greater than 27 pt
\fi\fi
\hbox to \textwidth{\hfill\hbox to 25pc{\sphrulefill}}
}
\ifdim\dp\chaplinenumber< 15.5pt
\vskip60pt
\vskip5pc
\else
\ifdim\dp\chaplinenumber< 27pt
\vskip8.5pc
\else
\vskip8.5pc
\fi\fi
}

  %% Chapter with star (\chapter*)
  %% \chapter* environment used for Table of Contents head, 
  %%     Index head, Bib head, etc
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}

%% default for running head
\def\chaphead{}

\newif\ifchapterstart
\def\@makeschapterhead#1{%
\thispagestyle{plain}
\advance\vsize -24pt
\global\chapterstarttrue
\ifappendon
\renewcommand{\@chapapp}{\appendixname}%
\renewcommand{\thechapter}{\Alph{chapter}}
\else
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\@chapapp}{Chapter}%
\fi
{%% for running head
\def\\ {\hskip3pt}
\gdef\chaphead{\smrunningheadfont\def\\ {\hskip3pt}\uppercase{#1}}}
  \vspace*{2.75in}%
\vskip-26pt{%
\hbox to \textwidth{\llap{\hbox to
3pc{\color{manningblue}\medhrulefill}}\color{manningblue}\medhrulefill}}
\vbox to 0pt{\vss \hbox
to\textwidth{\hfill\color{manningblue}\schaptitlefont #1\vrule depth
6pt width 0pt}\vskip17pt}
\vglue-6pt\relax}

\def\forewordauthor#1{\vskip18pt\bgroup\small\raggedleft
\smallcaps
{\normalsize --}#1
\vskip1sp
\egroup}


\newdimen\spaceaboveline
\spaceaboveline=4pt


  %%% Chapter Appendices
  %% Chapter Appendix, uses chapapp for counter to change letters
  %% \def\one{#1} and \ifx\one\empty is used to see if an appendix title
  %% has been given or \chapappendix{}. 
  %% If title used, supply <title name and :> , otherwise do neither.

\newcount\c@chapapp
\def\chapappendix#1{\par
\global\advance\c@chapapp by 1
  \setcounter{section}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
  \setcounter{equation}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapapp}}
\def\one{#1}\ifx\one\empty
\vskip6pt
\vskip1sp
\section*{Appendix}
\else
\vskip6pt
\vskip1sp
\section*{Appendix: #1}
\fi
}


\newif\iffirstappendix
\global\firstappendixtrue

  %% \immediate\write\@auxout sends `Appendices' and current page number
  %%     to *.toc for table of contents; reset counters and conditionals

  %% \renewcommands are used to redefine chapapp which is used to
  %% make either `Chapter' or `Appendix' in chapter heads and running heads;
  %% also redefines the chapter number to be a letter, and section to
  %% be appendix letter followed by section number.

\newif\ifappendon
\def\appendix{\newpage
\global\appendontrue
\setcounter{chapter}{0}%
\addtocontents{toc}{\string\let\string\l@section\string\eattwo
}
\renewcommand{\@chapapp}{\appendixname}%
\renewcommand{\thechapter}{\Alph{chapter}}%
\renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}}

%%% <<=== end Chapter, Part, and Appendix Commands 

% 8) Counters, Header Level Counters ===>>

  %% the argument in square brackets is for the command that will reset
  %% counter to zero
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]



  %% Header Level Counters ==>>
  %% Change to any level will change the levels below

\renewcommand{\thepart}         {\arabic{part}}
\renewcommand{\thechapter}      {\arabic{chapter}}
\renewcommand{\thesection}      {\thechapter.\arabic{section}}
\renewcommand{\thesubsection}   {\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}    {\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph} {\theparagraph.\arabic{subparagraph}}

\newcommand{\@chapapp}{\chaptername}

  %%% <<== End Header Level Counters

% 9) Section Commands ====>>>>

  %% Definition printed here so that you can see what the various arguments are
  %% when used for \section, \subsection, etc, below
  %% \newcommand{\section}{\@startsection {section}{1}{\z@}...



% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%    Generic command to start a section.
%    NAME       : e.g., 'subsection'
%    LEVEL      : a number, denoting depth of section -- e.g., chapter=1,
%                 section = 2, etc.
%    INDENT     : Indentation of heading from left margin
%    BEFORESKIP : Absolute value = skip to leave above the heading.
%                 If negative, then paragraph indent of text following
%                 heading is suppressed.
%    AFTERSKIP  : if positive, then skip to leave below heading, else
%                 negative of skip to leave to right of run-in heading.
%    STYLE      : commands to set style
%  If '*' missing, then increments the counter.  If it is present, then
%  there should be no [ALTHEADING] argument.
%  Uses the counter 'secnumdepth' whose value is the highest section
%  level that is to be numbered.


  %% Startsection calls \@sect, defined below,
  %% the engine that formats each section
\setcounter{secnumdepth}{2}

\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
\bookmark[page=\the\acropage, level=2]{#5}
  \@xsect{#3}}

\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \plainaddcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \plainaddcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
\ifnum#2=1
\bookmark[page=\the\acropage, level=2]{\thesection\space #7}
\else
\ifnum#2=2
\bookmark[page=\the\acropage, level=3]{\thesubsection\space #7}\fi
\fi
  \@xsect{#5}}

  %% the minus dimensions are used to tell LaTeX not to indent
  %% the text following the section head 
  %% (silly, isn't it? but built into LaTeX)
  %% You can add things like underline or uppercase to the last arg
  %% to get those effects in a section head

\def\@seccntformat#1{\noindent
\llap{\hbox to3pc{\csname the#1\endcsname\hfill}}}



\newcommand{\section}{\global\everypar={}\@startsection {section}{1}{0pt}%
                                   {-14pt  minus -1pt}
                                   {4pt}%
                                   {\color{muddydkblue}\reset@font\bfseries\sectionfont}}
\newcommand{\subsection}{\global\everypar={}\@startsection{subsection}{2}{0pc}%
                                     {-10pt  minus -1pt}%
                                     {2pt}%
                                 {\color{muddydkblue}\reset@font\bfseries\subsectionfont}}

\newcommand{\subsubsection}{\@startsection{subsubsection}{3}{0pc}%
                                     {-10pt minus -1pt}
                                     {1sp}
                           {\color{muddydkblue}}}

\def\subsubsection#1{\vskip6pt{\color{muddydkblue}
\reset@font\normalsize\bfseries\subsubsectionfont\noindent\uppercase{#1}}\vskip-2pt
\noindent\ignorespaces}

\newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                    {-6pt}%
                                    {-1em}%
                               {\hskip-3pt\reset@font\normalsize\bfseries\paragraphfont}}
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\bfseries}}


  %%% <<=== end section commands

% 10) Verse, Quote, Extract ==>>

  %% pretty useless macro, no one ever uses it
\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}

  %% \newenvironment produces a \begin{}..\end{} macro set.
  %% \newenvironment{<name of macro>}{<definition for begin macro>}
  %% {<definition for end macro>}

  %% For long quotation which runs more than one paragraph,
  %% uses list environment to indent text, supplies dummy
  %% item, \item[], since one item is required for every listing
  %% environment or you will get an error message.

  %% quotation indents new paragraphs, while quote does not.

\newenvironment{quotation}
               {\small
\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\small
\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}

  %% If \begin{extract}...\end{extract} is used you will get the same
  %% results as \begin{quotation}...\end{quotation} 

\let\extract\quotation
\let\endextract\endquotation

  %% <<== end Verse, Quote, Extract 

% 11) Theorems, Proofs, Examples, etc.

  %% Tom, you will probably not need any of these so I'll
  %%   skip over the Theorem section for detailed comments.
  %% Should we cut this section out, if you are never going
  %% to use theorems and similar constructions?

  %%%%%
  %% So that you can get a period after the theorem easily,
  %%   this is built into theorem definition

  %% Writing the command \MakePeriodAfterTheorem in the file
  %% will make `Theorem 2. xxxx' rather than `Theorem 2 xxxx'

\newif\ifperiodaftertheorem
\def\MakePeriodAfterTheorem{\global\periodaftertheoremtrue}

\MakePeriodAfterTheorem

  %% For square boxes for Q.E.D. symbol

\newdimen\slugwidth
\newdimen\slugheight
\newdimen\slugdepth

\slugwidth=6pt
\slugheight=6pt
\slugdepth=0pt

  %% Set open box temporarily or permenantly, so that we can use
  %% that for definition of qed, below
\newif\ifopenbox
\newif\ifalwaysopenbox
\def\alwaysopenbox{\global\openboxtrue\global\alwaysopenboxtrue}
\def\openbox{\global\openboxtrue}

\let\filledbox\slug
\def\qed{\ifopenbox\ifalwaysopenbox\else\global\openboxfalse\fi
\unskip\nobreak~~~\hfill\llap{%
\vbox{\hrule\hbox{\vrule height\slugheight depth\slugdepth%
\hskip\slugwidth\vrule}\hrule}}%
\else%
\unskip\nobreak~~~\hfill\llap{\vrule height \slugheight width \slugwidth 
depth\slugdepth}\fi}

\let\slug\qed

\newif\ifthmsectionnum

  %% for users-- to turn on section numbers in theorem number:
\def\theoremsectionnumbers{\global\thmsectionnumtrue
\@addtoreset{theorem}{section}}

\theoremsectionnumbers
\newtheorem{theorem}{Theorem}

  %% for users-- to turn off section numbers in theorem number:
\def\notheoremsectionnumbers{\global\thmsectionnumfalse
\theorem{theorem}{Theorem}[chapter]}

\newskip\abovetheoremskip
\abovetheoremskip=2pt plus .1pt

\def\@xnthm#1#2[#3]{\expandafter\@ifdefinable\csname #1\endcsname
{\@definecounter{#1}\ifthmsectionnum\@addtoreset{#1}{#3}\fi% 
\expandafter%
\xdef\csname the#1\endcsname{\@thmcounter{#1}}%
\global\@namedef{#1}{\@thm{#1}{#2}  %%
}\global\@namedef{end#1}{\@endtheorem}}}

  %%%% Redefine these two in particular style if necessary.
\def\TheoremTypeEnv#1{\gdef\saveone{#1}\futurelet\next\tlookforbracket}

\def\tlookforbracket{\ifx\next[\let\go\xTheoremWithTitle
\else\let\go\xTheoremTypeEnv\fi\go}

\def\xTheoremTypeEnv{\everypar={}
\ifvmode\vskip-\lastskip\fi
\vskip\abovetheoremskip
\indent{\theoremfont\saveone%
\ifperiodaftertheorem\@thmcountersep\fi}\enskip\theoremtextfont}

\def\xTheoremWithTitle[#1]{\ifvmode\vskip-\lastskip\fi
\everypar={}
\vskip\abovetheoremskip
\indent{\theoremfont\saveone%
\quad #1\ifperiodaftertheorem\@thmcountersep\fi}\enskip \theoremtextfont}

\def\ExampleTypeEnv#1{\everypar={}
\trivlist \item[\hskip \labelsep{\it#1:}]}

  %%%%
\newskip\belowtheoremskip
\belowtheoremskip=4pt

\def\@endtheorem{\if@newlist\@noitemerr\fi 
   \if@inlabel\indent\fi 
   \ifhmode\unskip \par\fi 
\vskip\belowtheoremskip}

  %%% Demo and Proclaim
\let\proclaim\TheoremTypeEnv
\let\endproclaim\@endtheorem

\newif\ifperiodaftertheorem
\def\MakePeriodAfterTheorem{\global\periodaftertheoremtrue}

\def\proof{\everypar={}
\futurelet\next\lookforbracket}

\def\lookforbracket{\ifx\next[\let\go\usespecialterm
\else\let\go\relax
\ifvmode\vskip-\lastskip\fi
\vskip\abovetheoremskip
\indent{\prooffont Proof\/:}%
\enskip\relax\fi\ignorespaces\go}

\def\usespecialterm[#1]{\ifvmode\vskip-\lastskip\fi
\vskip\abovetheoremskip
\noindent\hskip\parindent%
{\prooffont Proof\ \ {\rm(#1):}}\ \ \relax\ignorespaces}

\def\endproof{\vskip\belowtheoremskip}
\let\enddemo\endproof

\def\claim{\demo{Claim}}
\def\remark{\demo{Remark}}
\let\endclaim\enddemo
\let\endremark\enddemo

\def\@thmcountersep{:}

\def\@begintheorem#1#2{\trivlist 
\labelsep=0pt
\item[\hskip\parindent\theoremfont#1\ \/\/%
\ifthmsectionnum\thesection.\fi#2\ifperiodaftertheorem\@thmcountersep\fi]%
\def\@currentlabel{\ifthmsectionnum\thesection.\fi\thetheorem}\enskip 
\ \theoremtextfont}

\def\@opargbegintheorem#1#2#3{\trivlist
\labelsep=0pt
   \item[\hskip\parindent\theoremfont #1\ \/\/%
\ifthmsectionnum\thesection.\fi#2\ \ {(\rm#3).} ]%
\def\@currentlabel{\ifthmsectionnum\thesection.\fi\thetheorem}\enskip
\ \theoremtextfont}

  %% use section numbers with theorem
\thmsectionnumtrue

\newtheorem{lemma}{Lemma}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{property}{Property}[section]
\newtheorem{corollary}{Corollary}[section]

\@addtoreset{corollary}{section}
\def\result{\TheoremTypeEnv{\it Result}}
\let\endresult\endtrivlist

\newcounter{exampnum}[section]
\def\example{\everypar={}
\global\advance\c@exampnum by1
\TheoremTypeEnv{\theoremfont Example 
\thesection.\the\c@exampnum}\rm\nobreak}
\let\endexample\endtrivlist

\newcounter{defnum}[section]
\def\definition{\everypar={}
\global\advance\c@defnum by1
\TheoremTypeEnv{\theoremfont Definition 
\thesection.\the\c@defnum}\rm\nobreak}
\let\enddefinition\endtrivlist
\@addtoreset{defnum}{chapter}

\newcounter{notnum}[chapter]
\def\notation{\everypar={}
\global\advance\c@notnum by1
\TheoremTypeEnv{\theoremfont Notation 
\thesection.\the\c@notnum}\rm\nobreak}
\let\endnotation\endtrivlist
\@addtoreset{notnum}{chapter}

\newcounter{connum}[section]
\def\conjecture{\global\advance\c@connum by1
\TheoremTypeEnv{\it Conjecture \the\c@connum}}
\def\endconjecture{~\slug\endtrivlist}

\def\demo#1{\everypar={}
\vskip4pt\indent{\demofont #1\/:}\quad \ignorespaces}

\let\enddemo\@endtheorem
\let\proclaim\TheoremTypeEnv
\let\endproclaim\@endtheorem
  %%% <<== end theorem environments

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% 12) CASE environment

  %% This will make the square used at the end of the case
\def\slug{\vrule height 4pt width 4pt\relax}

  %% \csection and \csubsection are variations on normal
  %% section and subsection that will be asked for within the
  %% case environment with \let\section\csection \let\subsection\csubsection
  %% which means that when \section it typed in case environment the
  %% definition of \csection will be used, and \subsection will use
  %% \csubsection.

\def\csection#1{\vskip20pt\noindent{\uppercase{\csectionfont #1}}%
\\[5pt]\ignorespaces}

\def\csubsection#1{\vskip6pt\noindent{\csubsectionfont #1}%
\vskip3pt}

\newcount\c@casenumber

  %% Advance casenumber every time \casetitle is used;
  %% start two columns, make CASE with number be above the
  %% two columns (\multicols{2}[] keeps everything in square
  %% brackets above the multicolumn text); 
  %% \markright{} sends text to right running head;
  %% \vtop is a kind of vertical box that sits on baseline and
  %% extends downwards, inside of the box we have case title;
  %% the \everypar makes the paragraph following not be indented,
  %% and then \everypar={} sets this token list back to not do anything.

\def\casetitle#1{\global\advance\c@casenumber by 1
\begin{multicols}{2}[\casetitlefont
\hbox to\textwidth{\hbox to8.75pc{CASE \the\c@chapter-\the\c@casenumber\hss}%
\markright{Case \the\c@chapter-\the\c@casenumber\hskip24pt #1}
\vtop{\baselineskip=20pt\advance\hsize by-9pc\raggedright\noindent
\uppercase{#1}}}\vskip24pt]\everypar={\hskip-\parindent\rm\everypar={}}}

  %% Start on new page; set section and subsection to be equal to
  %% \csection and \csubsection; two ruled lines before text starts

\def\case{\clearpage
\let\section\csection \let\subsection\csubsection
\vskip6pt
\hrule
\vskip1pt
\hrule
\vskip10pt
}

  %% \end{case}: text ends with black box; two columns end,
  %% and there is a horizontal line; if this is at the bottom
  %% of the page, there will also be a horizontal line at the
  %% top of the following page.

\def\endcase{\unskip~\hbox to8pt{\hfill\slug}
\end{multicols}
\unskip
\vskip4pt
\hbox to\hsize{\hskip6.5pc\hrulefill\hskip6.5pc}
\vskip-10.5pt
\hbox to\hsize{\hskip6.5pc\hrulefill\hskip6.5pc}
}

  %% No line above or below plaincase, and
  %% ends without black square at the end of the text

\def\plaincase{\vskip24pt
\let\section\csection \let\subsection\csubsection}

\def\endplaincase{\end{multicols}
\vskip4pt
}

  %% Case note
  %% Used \casenote{} instead of \footnote{}, to get
  %% case note to print on the bottom of the page.

  %% so nothing is added when \casenote is printed:
\let\thesource\relax

  %% Default will be added to casenote unless it is commented
  %% out or redefined.
%%\def\thesource{\copyright 2003 by Thomas W. Miller. \ }
\def\thesource{}
  %% Originally\@footnotetext, stolen from latex.tex, 
  %% and changed to use for case footnote, which doesn't
  %% use marker and doesn't indent.

\long\def\casefootnotetext#1{\insert\footins{%
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \color@begingroup\def\@thefnmark{}
{\rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
    \color@endgroup}}%

  %% Inserts \thesource, defined above, before the argument to \casenote
\def\casenote#1{\casefootnotetext{\thesource #1}}


% 13) Math ===>>>

  %% Makes equations start from zero with each new chapter
\@addtoreset{equation}{chapter}

  %% Makes equation number include the chapter number
\renewcommand{\theequation}{\thechapter.\arabic{equation}}

%% <<<=== end Math 


% 14) Figure and Table Captions ==>>>

  %%  Name of Figure or Table is set with \figurename or \tablename above
  %% \@float is what puts the text at the top or bottom of the page
  %% \@dblfloat is for floats in two column text

\newcounter{figure}[chapter]
\renewcommand{\thefigure}{\thechapter.\arabic{figure}}

\def\fps@figure{tbp} % position figure at top, bottom, or on its own page
\def\ftype@figure{1} % used for placing float in page
\def\ext@figure{lof} % send info to .lof file
\def\fnum@figure{\figurename~~\thefigure} % \figurename, defined above,
                              %% and the current state of figure counter

  %% \begin{figure} calls up float and gives it the {figure} argument,
  %% which is then used to call up the definitions above, by using
  %% \csname fps@\captype\endcsname, for instance, to get \fps@figure;
  %% adjusting the macro to do different things depending on whether
  %% figure, table, environment, or other term is used.

\newenvironment{figure}
               {\@float{figure}}
               {\end@float}

  %% figure in two column text
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

  %% Similar as the sequence of definitions above used for figure
\newcounter{table}[chapter]
\renewcommand{\thetable}{\thechapter.\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %% Exhibit environment

  %% Similar to figure and table environments, above

\def\exhibitname{Exhibit}

%% old code would yield appendix numbers like A.0.1
%% commented out here and replaced with code similar to figures
%% new code yields numbers like A.1
%% \newcounter{exhibit}[chapter]
%% \renewcommand\theexhibit
 %%    {\ifnum \c@chapter>\z@ \thechapter.\fi
%% \ifappendon\the\c@section.\fi\@arabic\c@exhibit}

%% new code for numbering of exhibits
\newcounter{exhibit}[chapter]
\renewcommand{\theexhibit}{\thechapter.\arabic{exhibit}}
%% end of new code for numbering exhibits


\def\fps@exhibit{tbp}
\def\ftype@exhibit{1}

  %% Sends caption entries to a xxx.lox file, so that
  %%  they can be formatted in the List of Exhibits
\def\ext@exhibit{lox}

\def\fnum@exhibit{\exhibitname~\theexhibit}

%\newenvironment{exhibit}
               %{\@float{exhibit}}
               %{\end@float}
\def\exhibit{\bgroup\newpage\futurelet\next\lookforbrac}
\def\lookforbrac{\ifx\next[\let\go\xexhibit\else
\let\go\yexhibit\fi\go}

\def\xexhibit[#1]{\def\@captype{exhibit}}
\def\yexhibit{\def\@captype{exhibit}}
\def\endexhibit{\egroup\newpage}

\newenvironment{exhibit*}
               {\@dblfloat{exhibit}}
               {\end@dblfloat}

  %% Very similar to List of Tables and List of Figures
%% \newcommand{\listexhibitname}{List of Exhibits}
\newcommand{\listexhibitname}{Exhibits}

\newcommand{\listofexhibits}{%
\startonoddpage
 %%   \chapter*{List of Exhibits}
        \chapter*{Exhibits}
        \@mkboth{\listexhibitname}{\listexhibitname}%
%% \addcontentsline{toc}{starchap}{List of Exhibits}        
\addcontentsline{toc}{starchap}{Exhibits}
\vskip3pt
\bgroup\parskip=0pt
{\small\tocfonts 
\parindent=0pt
\let\numberline\fignumberline
\hyphenpenalty=10000
    \@starttoc{lox}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\markboth{}{}
    }

  %% Formats exhibit item, similar to l@figure and l@table
\newcommand*\l@exhibit{\vskip2pt\@dottedtocline{1}{0pc}{4.2em}}


  %%%%%%%%%%%%%%%%
  %% Setting space between caption in table or figure and the
  %% table or figure
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{4\p@}
\setlength\belowcaptionskip{0\p@}

  %% to test in caption to see whether it is a figure or table
\def\xfigure{figure}

  %% Variation on LaTeX code
  %% Switch built in to change font to figtextfont if it a figure;
  %% to tabtextfont if it is a table. Also skips below caption
  %% an extra 3pt if it is a table to give extra space between caption
  %% and table, since caption for table goes above table.

  %% \sbox\@tempboxa sets a temporary box so that we can measure
  %% the width of the caption; if width is greater than .9\hsize
  %% then make it format in a paragraph, otherwise center it.

  %% Test to see if it a figure or table: \ifx\@captype\xfigure
  %% If figure, \vskip\belowcaptionskip

\long\def\@makecaption#1#2{%
\vskip\abovecaptionskip
\let\tt\tabcaptionttfont
\def\texttt##1{{\tt ##1}}
{\ifx\@captype\xfigure\color{dkgray}\fi\fignumfont #1\quad
#2\par}
%%
\ifx\@captype\xfigure
\vskip\belowcaptionskip
\else
\vskip9pt\fi
}


  %% To make table print in small fonts, we save the previous
  %% definition of table and then use it in a new definition of \table
  %% including the \savetable def that we just made.
%\let\savetable\table
%\def\table{\tabletextfont\small\savetable}

  %% Code to get text in tables to extend all the way to left and right
  %% of table. The LaTeX table macros are made to allow space to the
  %% left and the right of tables to accomodate vertical ruled lines. But
  %% most publishers don't want vertical ruled lines.  If the authors
  %% don't use the ruled lines there would be extra white space without
  %% the changes below. This code is very complicated, but you can see
  %% the changed part.

\def\xtable{table}
\def\@array[#1]#2{\setbox\@arstrutbox=\hbox{\vrule 
     height\arraystretch \ht\strutbox
     depth\arraystretch \dp\strutbox
     width\z@}\@mkpream{#2}\edef\@preamble{\halign \noexpand\@halignto
\bgroup%
\tabskip\z@\@arstrut\@preamble
\ifx\@captype\xtable\hskip-\tabcolsep\fi  %% <==== Changed
\tabskip\z@ \cr}%
\let\@startpbox\@@startpbox \let\@endpbox\@@endpbox%
  \if #1t\vtop \else \if#1b\vbox \else \vcenter \fi\fi%
  \bgroup\let\par\relax%
  \let\@sharp##\let\protect\relax \lineskip\z@\baselineskip\z@\@preamble}


  %% Variation on code found in Latex.tex
\def\new@tabacol{\edef\@preamble{\@preamble\hskip0pt}}

\def\@tabclassz{\ifcase \@lastchclass\@acolampacol% 
\or \@ampacol \or
   \or \or \@addamp \or \@acolampacol\or \@firstampfalse 
\ifx\@captype\xtable \new@tabacol\else\@tabacol \fi%
\fi%
\edef\@preamble{\@preamble%
  \ifcase \@chnum%
     \hfil\ignorespaces\@sharp\unskip\hfil%
     \or \ignorespaces\@sharp\unskip\hfil%
     \or \hfil\hskip\z@ \ignorespaces\@sharp\unskip\fi}}

  %% This puts extra space between horizontal lines in tables. 
  %% If you want to use vertical lines in tables, you should use
  %% \savehline rather than \hline, otherwise the vertical and
  %% horizontal lines will not abutt.

  %% \noalign is a command that allows the uses to put something
  %% between lines in a table.
\let\savehline\hline
\def\hline{\noalign{\vskip3pt}\savehline\noalign{\vskip3pt}}

  %% Simple macro for table notes, that makes sure that there is
  %% a little space between the table and the notes, and that they
  %% print in footnotesize.
\def\tablenotes{\vskip2pt\footnotesize}
\let\endtablenotes\relax
  %%% <<=== end Figure and Table Captions

% 15) %% Table of Contents, List of Figures, LOT ===>>

  %% How wide should the box be that contains the page number?
\newcommand{\@pnumwidth}{35pt}

  %%   \@tocrmarg  : Right margin indentation for all but last line of
  %%                multiple-line entries.
\newcommand{\@tocrmarg} {2.55em  plus .5in}

  %% How much space between dots in the dotted line in the TOC?
\newcommand{\@dotsep}{4.5}

  %% To format the Table of Contents
  %% Start on odd page, use schapter to format the heading,
  %% \@mkboth sends info to running heads
  %% \tocfonts are used to format table of contents
  %% \hypenpenalty=10000 means no hyphenation
  %% \@startoc{toc} from LaTeX code, will bring in material in *.toc file.

\newif\ifcontents
\newcommand{\tableofcontents}{%
\startonoddpage
\global\contentstrue
    \chapter*{contents}
\bookmark[page=\the\acropage, level=0]{contents}
\vskip3pt
\bgroup\parskip=0pt
\parindent=0pt
\global\briefpartfalse
{\c@tocdepth=3
\tocfonts
\let\l@chapter\l@cchapter
\hyphenpenalty=10000
    \@starttoc{toc}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\def\chaphead{}
    }



\newcommand{\briefcontents}{%
\startonoddpage
\global\contentstrue
    \chapter*{brief contents}
\bookmark[page=\the\acropage, level=0]{brief contents}
\vskip-10pt
    \bgroup\parskip=0pt
{\tocfonts
\global\briefparttrue
\let\l@chapter\l@briefchapter
\hyphenpenalty=10000
\c@tocdepth=0
    \@starttoc{boc}%
}
\egroup
\newpage
\def\chaphead{}}



  %% Very similar to table of contents
\newcommand{\listoffigures}{%
\startonoddpage
%%    \chapter*{List of Figures}
\spaceaboveline=2pt
     \chapter*{Figures}
        \@mkboth{\listfigurename}{\listfigurename}%
%% \addcontentsline{toc}{starchap}{List of Figures}
\addcontentsline{toc}{starchap}{Figures}
\vskip3pt
\bgroup\parskip=0pt
{\small\tocfonts \parindent=0pt
\let\numberline\fignumberline
\hyphenpenalty=10000
    \@starttoc{lof}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\markboth{}{}
    }

  %% Very similar to table of contents
\newcommand{\listoftables}{%
\startonoddpage
%% \chapter*{List of Tables}
    \chapter*{Tables}
        \@mkboth{\listtablename}{\listtablename}%
%% \addcontentsline{toc}{starchap}{List of Tables}
\addcontentsline{toc}{starchap}{Tables}
\vskip3pt
\bgroup\parskip=0pt
{\small\tocfonts \parindent=0pt
\let\numberline\fignumberline
\hyphenpenalty=10000
    \@starttoc{lot}%
}
\egroup
    \if@restonecol\twocolumn\fi
\newpage
\markboth{}{}
    }

  %% Used in list of exhibits to format them 
  %% Used in list of exhibits to format them 
\def\fignumberline#1{\hb@xt@\@tempdima{\tocsectnumfont#1\hfil}%
\hskip-12pt\relax}


  %% how is each entry in list of figures formatted?
\newcommand*\l@figure{\vskip2pt\@dottedtocline{1}{0pc}{4.2em}}
%% arg#3 made larger, 5/5/05

  %% entries in list of tables are formatted in the same way
\let\l@table\l@figure

  %% This macro used in l@figure and l@table as well as l@section and lower
  %% levels of section heads in the table of contents

% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE} :
%   Macro to produce a table of contents line with the following
%   parameters:
%     LEVEL    : If LEVEL > \c@tocdepth, then no line produced.
%     INDENT   : Total indentation from the left margin.
%     NUMWIDTH : Width of box for number if the TITLE has a
%                \numberline command.
%                As of 25 Jan 88, this is also the amount of extra indentation
%                added to second and later lines of a multiple line entry.
%     TITLE    : Contents of entry.
%     PAGE     : Page number.
%
%  Uses the following parameters, which must be set by the document style.
%  They should be defined with \def's.
%    \@pnumwidth : Width of box in which page number is set.
%    \@tocrmarg  : Right margin indentation for all but last line of
%                  multiple-line entries.
%    \@dotsep    : Separation between dots, in mu units.  Should be \def'd to
%                  a number like 2 or 1.7
%


\def\@dottedtocline#1#2#3#4#5{%
\ifnum#1=2 \let\numberline\anumberline\else \let\numberline\savenumberline\fi
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{%.
}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hss\normalfont \normalcolor\rm #5}%
     \par}%
  \fi}

%% same as above but no dots:
\def\nodots@dottedtocline#1#2#3#4#5{%
\ifnum#1=2 \let\numberline\anumberline\else \let\numberline\savenumberline\fi
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{ }\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hss\normalfont \normalcolor\rm #5}%
     \par}%
  \fi}

\def\technumberline#1{\hbox{#1}}
\def\numberline#1{\hbox to 30pt{#1\hfil}}
\def\xnumberline#1{\hbox to 3pc{\hss#1\hskip.5pc}}
\def\nonumberline#1{}

\def\partnumberline#1{\textcolor{dkgray}{\hb@xt@\@tempdima{\ifbriefpart
\bigparttocfont\else\cbigparttocfont\fi\relax%
#1\hfil}}\ifbriefpart\hskip5pt\else\hskip14pt\fi
\color{dkgray}\smallparttocfont}

\let\savenumberline\xnumberline
\def\anumberline#1{\hb@xt@\@tempdima{#1\hfil}\ \ }

\newcount\c@tocchapnum

  %%%% Formating entries in List of Tables, Figures, and Table of Contents,
  %% \l@xxx will format xxx in these environments; ie, l@part formats part

%  \addtocontents{#1}{\protect\contentsline{#2}{#3}{\thepage}}}
  %% Format of Part when it appears in TOC
\newif\ifbriefpart
\def\l@part#1#2{%
\vskip1pt
\phantomsection
    \addpenalty{-\@highpenalty}%
    \vskip 16pt % \@plus\p@
     \setlength\@tempdima{12pt}%
    \begingroup
\ifbriefpart\parttocfont\else\cparttocfont\fi%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
%      \advance\leftskip\@tempdima
 %     \hskip -\leftskip
\def\\
{\vadjust{\vskip1pt}\hfill\break
\ifbriefpart\hglue14pt\else\hglue24pt\fi}
\color{dkgray}\noindent\hskip-3pc\hskip-3pt\relax Part~#1
\nobreak\dotfill\nobreak\ifbriefpart\setbox0=\hbox{\ \parttocfont#2}
\hbox to \wd0
\else
\cbigparttocfont
\setbox0=\hbox{\hskip-2pt#2}
\hbox to \wd0\fi%
{\ifbriefpart\bigparttocfont\else\cbigparttocfont\fi\hss#2\ifbriefpart\ \ \fi}\par
      \penalty\@highpenalty
    \endgroup
\ifbriefpart\vskip2pt\fi
}


%% Format of Chapter when it appears in Brief TOC
%\contentsline {chapter}{\hbox to\@tempdima {1\hfil }{Contemporary}}{3}{chapter.1}
%+++

\def\bchapnumberline#1{\color{black}\noindent\llap{{\briefchapnumfont #1}\hskip
9pt\yellowsquare\hskip9pt}}

\def\cchapnumberline#1{\noindent\hskip-9pt\llap{\raise4pt\vbox to 0pt{\vskip-8pt
\hbox{\color{medltgray}\bigchaptocfont\relax#1}\vss}\hskip9pt}}

\def\appnumberline#1#2{\noindent\hskip-10pt\llap{\vbox to 0pt{\vskip-8pt
\hbox{\color{black}\apptocfont appendix\
\relax#1}\vss}\hskip12pt}\definecolor{dkblue}{cmyk}{0,0,0,1}\apptocfont
\color{black}#2}

\def\l@briefchapter#1#2{%
\vskip3pt
    \begingroup
\let\numberline\bchapnumberline
\noindent\hskip64pt\vtop{\parindent=0pt\relax\hsize
=3.5in\relax\noindent\relax#1\quad\definecolor{dkblue}{cmyk}{0,0,0,1}#2}
\par
      \penalty\@highpenalty
    \endgroup
  }

\def\l@cchapter#1#2{%
\vskip14pt
\leftskip=0pt
\rightskip=0pt
    \begingroup
\let\numberline\cchapnumberline
\leftskip11pt % was 23pt
\noindent%
\vtop{\definecolor{dkblue}{cmyk}{.7,0,0,.7}
\parindent=0pt\relax\hsize
=3.5in\relax\chaptocfont\noindent\hskip10pt\relax
#1~~~{#2\vrule depth 6pt width0pt}}
\par
      \penalty\@highpenalty
    \endgroup
\vskip-1sp
  }

\def\l@appchapter#1#2{%
\vskip12pt
\leftskip=0pt
\rightskip=0pt
    \begingroup
\leftskip16pt
\noindent%
\hskip9pt
\vtop{%
\definecolor{dkblue}{cmyk}{0,0,0,1}
\hsize=3.5in\relax\apptocfont\noindent\hskip-9pt\relax
\definecolor{dkblue}{cmyk}{0,0,0,1}#1~~{\definecolor{dkblue}{cmyk}{0,0,0,1}%
\apptocfont#2\vrule depth 6pt width0pt}}
\par
      \penalty\@highpenalty
    \endgroup
\vskip-1sp
  }


  %% Format of Chapter when it appears in TOC
\def\l@chapter#1#2{%
\vskip3pt
    \begingroup
\let\numberline\bchapnumberline
\noindent\hskip60pt\vtop{\parindent=0pt\relax\hsize
=3.5in\relax\noindent\relax#1\quad\definecolor{dkblue}{cmyk}{0,0,0,1}#2}
\par
      \penalty\@highpenalty
    \endgroup
  }


  %% This is to format entries that use \chapter*, like Table of Contents,
  %% Index, etc.
\def\l@starchap#1#2{%
  \ifnum \c@tocdepth >1
    \addpenalty{-\@highpenalty}%
    \vskip 2pt
    \begingroup
\definecolor{dkblue}{cmyk}{0,0,0,1}
\fontsize{9.5}{11.5}\it\noindent\hskip56pt
{\lowercase{#1}}\hskip9pt{#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\def\l@schap#1#2{%
  \ifnum \c@tocdepth >1
    \addpenalty{-\@highpenalty}%
    \vskip 6pt
    \begingroup
\definecolor{dkblue}{cmyk}{0,0,0,1}
\fontsize{13.5}{11.5}\it\noindent\hskip22pt
{\lowercase{#1}}\hskip9pt{#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

  %% Make starchapter work the same as starchap
\let\l@starchapter\l@starchap

  %% Format Appendix entries in TOC
\def\l@appendix#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 20pt \@plus\p@
     \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode 
      \advance\leftskip\@tempdima
      \hskip -\leftskip
   {\large\bf #1}\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss% #2
   }\par
      \penalty\@highpenalty
    \endgroup
  \fi}

  %% Here we determine how much sections, subsections, etc, are indented
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}

\def\nodottedtocline#1#2#3#4#5{%
\ifnum#1=2 \let\numberline\anumberline\else \let\numberline\savenumberline\fi
    {\leavevmode
\definecolor{dkblue}{cmyk}{0,0,0,1}
  \noindent\hskip#2\vtop{\leftskip=37pt %45pt
\hsize=3in \hskip-\leftskip#4~~~#5}}%
     \par%
%  \fi
\vskip4pt
}

\def\xnodottedtocline#1#2#3#4#5{%
\leftskip=100pt
\rightskip=36pt
\let\numberline\nonumberline
{\definecolor{dkblue}{cmyk}{0,0,0,1}
\expandafter\ifx\csname smyellowsquare\endcsname\relax
\else\nobreak\hskip1em\nobreak\smyellowsquare\nobreak\hskip1em\nobreak\fi{\it
{#4}\nobreak\enskip\nobreak#5}}%
\global\let\smyellowsquare\savesmyellowsquare
}

%%
\def\l@tech#1#2{\vskip1pt
\leftskip=0pt\relax\rightskip=0pt
{\definecolor{dkblue}{cmyk}{0,0,0,1}
{\techsc
\noindent\hskip6.25pc Technique #1#2}}}

\def\eattwo#1#2{}

\def\l@section{\vskip-\lastskip\let\smyellowsquare\relax
\vskip1pt\leftskip=0pt\relax\rightskip=0pt
\ifnum\c@tocdepth>1\vskip4pt\fi\nodottedtocline{1}{36pt}{24pt}}%was 54pt

\def\l@subsection{\xnodottedtocline{2}{40pt}{24pt}}
\def\l@subsubsection{\nodots@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

  %%% <<=== end TOC


% 16) %% Bibliography, References ===>>

  %% this formats the entry in the bibliography, redefined in rpbib.sty
\def\@biblabel#1{#1.}

  %%%%  %% Chapter Bibliography Using BibTeX

  %% User supplies \chapbblname{} which defines \currentfilename

\def\chapbblname#1{\def\currentfilename{#1}}

  %% When chapbibliography is used, it will look for \currentfilename.bbl;
  %% \typeout{} will give error message if \currentfilename is not defined;
  %% else \thebibliography will be redefined to be appropriate for appearing
  %% in chapter
  %% {\let\thebibliography\chapreferences
  %% \let\endthebibliography\endchapreferences
  %% then we input the .bbl file with the name given with the
  %% \chapbblname{}
  %%\@input {\currentfilename.bbl}}\fi

  %% \notes will print endnotes if there are any

\def\chapbibliography#1{%
\notes
\if@filesw \immediate \write \@auxout {\string \bibdata {#1}}\fi 
\expandafter\ifx\csname currentfilename\endcsname\relax
\typeout{^^J^^J As soon as your .bbl file is written,
^^J^^J
!! Please write \string\chapbblname\string{<Your .bbl File Name>\string} !!
^^J\space\space\space before \string\chapbibliography{#1}
^^J^^J
The BibTeX Chapter Bibliography, \string\chapbibliography^^J 
\space\space\space Will not print unless you supply this file name!
^^J^^J
}
\else
{\let\thebibliography\chapreferences
\let\endthebibliography\endchapreferences
\@input {\currentfilename.bbl}}\fi
}

\def\newblock{}

  %% Like \thebibliography defined in rpbib.sty, except
  %% not starting new page, and using somewhat less indent
\def\chapreferences{\notes
\markright{References}
\vskip6pt\vskip1sp\section*{References}
    \addcontentsline{toc}{section}{References}
\list
   {[\arabic{enumi}]}{\settowidth\labelwidth{6}
   \leftmargin\labelwidth
   \advance\leftmargin\labelsep
   \advance\leftmargin\bibindent
   \itemindent -\bibindent
   \listparindent \itemindent
   \parsep \z@
   \usecounter{enumi}}
   \def\newblock{}
   \sloppy
   \sfcode`\.=1000
    %% in case there are no entries with \bibitem... we supply this
    %% to make listing env work correctly.
\item[]\relax}

\def\endchapreferences{\vskip1sp\endlist\markright{}}

  %% In case you want to enter bib entries without using bibtex
\def\references{\thebibliography{}\item[]}
\let\endreferences\endthebibliography

  %%%%%%%%  %%%%%%%%  %%%%%%%%  %%
  %% These definitions will not be needed because they will
  %% be redefined if you use rpbib.sty, which includes the xchicago 
  %% definitions

\def\@cite#1#2{{#1\if@tempswa , #2\fi}}

\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
  %%
  %% This is changed from the default so that lengthy citations can
  %% be broken across lines
       {%\hbox{
\csname b@\@citeb\endcsname%}
}}}{#1}}

%
% Commented out due to conflicts with bibtex
% and xchicago styles (AZS - 10/04/2001)
%
%\def\bibitem{\@ifnextchar[\@lbibitem\@bibitem}
%\def\@lbibitem[#1]#2{\item[\@biblabel{#1}\hfill]\if@filesw
%      {\let\protect\noexpand
%       \immediate
%       %\write\@auxout{\string\bibcite{#2}{#1}}}\fi\ignorespaces}
%\def\@bibitem#1{\item\if@filesw \immediate\write\@auxout
%       %{\string\bibcite{#1}{\the\value{\@listctr}}}\fi\ignorespace%s}


%\def\bibitem#1{\vskip3pt\indent\ignorespaces}

%% end Bibliography, and References

% 17) %% Footnotes ===>>>

  %% save these definitions so that we can use them if
  %% we don't like the redefinition
\let\savefootnote\footnote
\let\savefootnotetext\footnotetext

  %%% ruled line above footnote

  \renewcommand{\footnoterule}{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}

\let\savefootnoterule\footnoterule

% turn off footnote rule, line at bottom of page above footnotes
%  \let\footnoterule\relax

% can turn it back on by uncommenting
 \let\footnoterule\savefootnoterule

% Start footnotes renumbering
\@addtoreset{footnote}{chapter}

% Making footnote indent 1em
\long\def\@makefntext#1{%
\noindent\@makefnmark\,\ \ #1}

\newcount\footnum
\newcount\savefootnum
\def\endnote#1{\global\advance\footnum by 1\relax$^{\the\footnum}$%
\long\expandafter\gdef\csname foot\the\footnum\endcsname{%
\vtop{\leftskip=36pt\footnotesize\hsize=\textwidth\relax
\noindent\llap{\thechapter.\the\footnum.\hskip6pt}%
{#1\strut\vskip1sp}}\vskip1pt}}

\def\notes{\ifnum\footnum=0\else
\section*{NOTES}
\markright{Notes}
\savefootnum=\footnum
\footnum=0
\noindent\loop\ifnum\savefootnum>\footnum%
\global\advance\footnum by1\relax%
\csname foot\the\footnum\endcsname\relax%
\expandafter\gdef\csname foot\the\footnum\endcsname{\relax}\relax%
\repeat\global\footnum=0\relax\fi
\vskip1sp
\leftskip=0pt\relax}




  %% Change footnotes to endnotes
\let\footnote\endnote

  %% Uncomment if you want footnotes at the
  %% bottom of the page instead of at the end of the chapter.

 \let\footnote\savefootnote 
 \let\footnotetext\savefootnotetext

  %%% <<<=== End Footnotes

% 18) %% Running heads ===>>>

\def\ps@plain{\let\@mkboth\@gobbletwo
     \let\@oddhead\@empty\def\@oddfoot{\vbox to0pt{\vss\hbox
     to\textwidth{\reset@font\hfil\foliofont\thepage
     \hfil}%\vskip1pc
}}\let\@evenhead\@empty\let\@evenfoot\@oddfoot}


  %% unless we need these, leave these uncommented
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble

  %%

\def\ps@headings{\let\@mkboth\markboth
%% if running foot is needed, have it done with \ps@plain
\def\@oddfoot{\@empty}
\let\@evenfoot\@oddfoot
  %%
\def\@oddhead{%
\hbox to\textwidth{\color{dkgray}\normalsize
\hfill\foliofont{\it\rightmark}\hfill\foliofont\thepage}}
  %%
\def\@evenhead{\hbox to\textwidth{\color{dkgray}\llap{\hbox to
 3pc{\foliofont\thepage\hfill}}\hfill\ifnum\c@chapter>0{\runningheadfont
\ifappendon A{\smrunningheadfont PPENDIX}\else
 C{\smrunningheadfont HAPTER}\fi\
 \thechapter}\foliofont\hskip1em\it\fi\chaphead\hfill}}%
\def\sectionmark##1{\markright{##1}}
}
\markboth{}{}

\def\ps@indexheadings{\let\@mkboth\markboth
%% if running foot is needed, have it done with \ps@plain
\def\@oddfoot{\@empty}
\let\@evenfoot\@oddfoot
  %%
\def\@oddhead{%
\hbox to\textwidth{\color{dkgray}\normalsize
\hfill\foliofont{\smrunningheadfont INDEX}\hfill\foliofont\thepage}}
  %%
\def\@evenhead{\hbox to\textwidth{\color{dkgray}\llap{\hbox to
 3pc{\foliofont\thepage\hfill}}\hfill{\smrunningheadfont INDEX\hfill}}%
}}

  %% After ps@headings is defined, now we use it to activate the definitions
\ps@headings

  %% If you want to supply a different chapter or section running head,
  %% use these commands after the chapter or section command.
\def\shortchaprunninghead#1{\chaptermark{#1}}
\def\shortsectrunninghead#1{\sectionmark{#1}}

  %% start with roman page numbers, switch over to Arabic when
  %% the first part or chapter starts.
\pagenumbering{roman}


% 19) %%%%%%%%%
  %% Algorithm

  %% Tom, I'm not sure if you will ever use these macros
  %% for making algorithms, so I'll leave them in here,
  %% but not add comments, unless you need them.
  %% 
\newcount\algoline
\def\doalgoskip{\vskip6pt}

\def\lookatalgo{\vskip1sp\ifx\next[\let\go\xalgoinsides\else
\let\go\yalgoinsides\fi\go}

\newcount\algocount
\def\algorithm{\vskip2pt
\obeyspaces
\global\algoline=0
\global\advance\algocount by1
\futurelet\next\lookatalgo}

\def\numberedpars{\global\everypar={\ifnonumline
\ifnevernums\else
\global\nonumlinefalse\fi\else
\global\advance\algoline by1
\hskip\parindent\hbox to 0pt{\hss\rm\the\algoline.\hskip8pt}\fi}}

\def\xalgoinsides[#1]{\noindent%
\hskip\parindent{\theoremfont Algorithm \the\algocount\ (#1).}%
\vskip2pt
\bgroup
\let\\ \doalgoskip
\let\note\algonote
\obeylines\obeyspaces
\numberedpars
\gdef\@currentlabel{\the\algoline}}

\def\yalgoinsides{\noindent\hskip\parindent{\theoremfont Algorithm \the\algocount.}
\vskip2pt
\bgroup
\let\note\algonote
\let\\ \doalgoskip
\obeylines\obeyspaces
\numberedpars
\gdef\@currentlabel{\the\algoline}}

\def\endalgorithm{\vskip1sp\egroup\gdef\@currentlabel{}
\vskip2pt\relax\global\nevernumsfalse
\global\nonumlinefalse
\global\everypar={}}

\def\algonote#1{\hfill{\it #1}}

\newif\ifnonumline
\newif\ifnevernums
\def\nonumline{\global\nonumlinetrue\relax}

\def\nonumalgorithm{\global\nonumlinetrue\global\nevernumstrue\relax
\algorithm}

\let\endnonumalgorithm\endalgorithm


% 20) %% Index ===>>>
  
% a) %% Default LaTeX Index

  %% Making an Index, using LaTeX default index,

%% these commands are included later in the .cls file
%% so no need to type \usepackage{makeidx} after \documentclass
%% or to write \makeindex before \begin{document}

  %% Then write \index{term} in the text whereever you want something 
  %% indexed;
  %% if you want subentries, you write the first entry followed by an
  %% exclamation mark, i.e., \index{trees!pointy}, if you want a subsub
  %% entry, follow the second entry with an exclamation mark too:
  %% \index{trees!pointy!green}
 
  %% Run LaTeX on the file. This will produce an .idx file.
  %% If you run each chapter separately you will have to combine all
  %% the separate .idx files into one file.
 
  %% Use the makeindx program to turn the .idx file into an .ind
  %% file. Use the command makeindx filename.idx, outside of LaTeX.
  %% makeindx is a stand-alone program.

  %% Write \printindex in your file, which will bring in
  %% the new filename.ind, formatted in two columns.

% Comments on definition of \theindex code below

% columnseprule is optional ruled line between columns;
% columnsep is space between columns;
% \@makeschapterhead is what you'll get with \chapter*{}
% so this will match the top of table of contents and similar
% environments;
% \addcontentsline adds Index to the Table of Contents; 
% \thispagestyle{plain} will put page number in the center of
% bottom of first page of index;
% \footnotesize makes index print in 8pt fonts

%%%%%%%%%%%%%%%%%%%%%%%
%% Index ===>>>


% latex default
%% Use \latexprintindex instead of \printindex to
%% get the default latex index.

%% Contents of makeidx.sty contained in \latexprintindex command.
%% This is because \printindex is defined in this package so
%% user doing \usepackage{makeidx} will get error message.

\providecommand*\seealso[2]{\emph{\alsoname} #1}
\providecommand*\alsoname{see also}

\usepackage{makeidx} % We use standard LaTeX Indexing commands.
% We are not using the specialized indexing available in the lcdbook class.
% At this point we have no special plans to use other than the
% standard indexing (i.e.  a single index of subjects and authors' names).



\def\printindex{\startonoddpage
\def\see##1##2{\emph{\seename} ##1}
\def\seename{see}
\@input@{\jobname.ind}}

\def\indexname{index}

\def\iletter#1{\def\currletter{#1}%
\hypertarget{\currletter}%
\goodbreak
\vtop{\color{manningblue}%
{\iletterfont\uppercase{#1\vrule depth 4pt width0pt}}%
\vskip-5pt
\hbox to \hsize{\hbox to-3pc{}\medhrulefill%\hbox to 3pc{\hfill}
}%
\nobreak
\vskip9pt%
\bookmark[dest=\currletter, level=1]{\currletter}%
}}



\def\indexsymbols{\vglue-18pt\iletter{S\lowercase{ymbols}}}
\def\indexnumerics{\iletter{N\lowercase{umerics}}}

\newcommand{\@idxitem}  {\par\hangindent 30\p@}

% Next level down, how much additional indent, set with hspace?
\newcommand{\subitem}   {\par\hangindent 30\p@ \hspace*{8\p@}}

% Next level down, how much additional indent, set with hspace?
\newcommand{\subsubitem}{\par\hangindent 30\p@ \hspace*{16\p@}}

% How much vertical space if you use the \indexspace between
% parts of the index starting with a new letter
\newcommand{\indexspace}{\par \vskip 14\p@ \@plus5\p@
\@minus3\p@\relax} 

%%%%%%% To get final page of index to balance columns, we use
%%%%%%% multicols, defined here:

  %%%%%
  %% Frank Mittlebach's multicol macros, minus comments and
  %% irrelevancies.


\def\multicols#1{\col@number#1\relax
  \@ifnextchar[\mult@cols{\mult@cols[]}}


\def\mult@cols[#1]{\@ifnextchar[%
  {\mult@@cols{#1}}%
  {\mult@@cols{#1}[\premulticols]}}


\def\mult@@cols#1[#2]{%
   \enough@room#2%
   #1\nobreak\par%\addvspace\multicolsep 
   \begingroup
   \prepare@multicols\ignorespaces}


\def\enough@room#1{\par \penalty\z@
   \page@free \pagegoal
   \advance \page@free -\pagetotal
   \ifdim \page@free <#1\newpage \fi}


\def\prepare@multicols{%
  \output{\global\setbox\partial@page
                 \vbox{\unvbox\@cclv}}\eject
  \vbadness9999 \hbadness5000
  \tolerance\multicoltolerance 
  \doublecol@number\col@number
  \multiply\doublecol@number\tw@
  \advance\baselineskip\multicolbaselineskip
  \advance\@colroom-\ht\partial@page
  \vsize\col@number\@colroom
  \advance\vsize\c@collectmore\baselineskip
  \hsize\columnwidth
%\advance\hsize by 3pc %%+++
\advance\hsize\columnsep
  \advance\hsize-\col@number\columnsep
  \divide\hsize\col@number 
  \linewidth\hsize 
  \output{\multi@columnout}%
  \multiply\count\footins\col@number
  \multiply\skip \footins\col@number
  \reinsert@footnotes}

\def\endmulticols{\parskip=0pt
\par\penalty\z@
  \output{\balance@columns}\eject\nobreak%
\endgroup
}


\newcount\c@unbalance     \c@unbalance   = 0
\newcount\c@collectmore   \c@collectmore = 0


\newcount\col@number 
\newcount\doublecol@number
\newcount\multicoltolerance
                   \multicoltolerance = 9999
\newdimen\page@free
\newdimen\premulticols  \premulticols = 50pt
\newdimen\postmulticols \postmulticols= 50pt
\newskip\multicolsep 
      \multicolsep =0pt


\newskip\multicolbaselineskip 
                   \multicolbaselineskip=0pt
\newbox\partial@page


\def\process@cols#1#2{\count@#1\relax
     \loop #2%
     \advance\count@\tw@
     \ifnum\count@<\doublecol@number 
   \repeat}



\def\page@sofar{\unvbox\partial@page 
   \process@cols\z@{\wd\count@\hsize}%
\hbox to\textwidth{%
     \process@cols\tw@{\box\count@\hss}%
\box\z@}
}



\def\reinsert@footnotes{\ifvoid\footins\else
         \insert\footins{\unvbox\footins}\fi}


\def\multi@columnout{%
   \ifnum\outputpenalty <-\@Mi
   \speci@ls \else
   \splittopskip\topskip 
   \splitmaxdepth\maxdepth
   \dimen@\@colroom
   \divide\skip\footins\col@number
   \ifvoid\footins \else
      \advance\dimen@-\skip\footins 
      \advance\dimen@-\ht\footins   \fi
   \process@cols\tw@{\setbox\count@
            \vsplit\@cclv to\dimen@}%
   \setbox\z@\vsplit\@cclv to\dimen@
   \ifvoid\@cclv \else 
       \unvbox\@cclv
       \penalty\outputpenalty\fi     
   \setbox\@cclv\vbox{\page@sofar}%
   \@makecol\@outputpage
   \global\@colroom\@colht
   \process@deferreds
   \global\vsize\col@number\@colroom 
   \global\advance\vsize
      \c@collectmore\baselineskip
   \multiply\skip\footins\col@number\fi}


\def\speci@ls{%
   \unvbox\@cclv\reinsert@footnotes
   \gdef\@currlist{}}


\def\process@deferreds{%
   \@floatplacement 
   \begingroup
    \let\@tempb\@deferlist
    \gdef\@deferlist{}%
    \let\@elt\@scolelt
      \@tempb \endgroup}


\newif\ifshr@nking


\def\raggedcolumns{%
   \@bsphack\shr@nkingtrue\@esphack}


\def\flushcolumns{%
   \@bsphack\shr@nkingfalse\@esphack}


\newcount\loopcount


\newdimen\savedimen
\newdimen\fixdimen


\def\escapeloop{\gdef\iterate{}}


\let\saveiterate\iterate


\def\balance@columns{%
\loopcount=0
\fixdimen=0pt
   \splittopskip\topskip
   \splitmaxdepth\maxdepth
   \setbox\z@\vbox{\unvbox\@cclv}\dimen@\ht\z@
   \advance\dimen@\col@number\topskip
   \advance\dimen@-\col@number\baselineskip
   \divide\dimen@\col@number
   \advance\dimen@\c@unbalance\baselineskip
   {\vbadness\@M \loop
   {\process@cols\@ne{\global\setbox\count@
                              \box\voidb@x}}%
     \global\setbox\@ne\copy\z@
     {\process@cols\thr@@{\savedimen\ht\@ne \advance\savedimen by-\dimen@
\global\setbox\count@ \vsplit\@ne to\dimen@ 
\ifdim\savedimen>\ht\@ne % AH: TeX was forced to make box bigger than \dimen@.
\advance\savedimen by-\ht\@ne \advance\savedimen by -7.1pt 
\ifdim\savedimen>\fixdimen \global\fixdimen\savedimen\fi\fi}}%
    \ifdim\ht\@ne >\ht\thr@@
    \global\advance\dimen@\p@%.5\baselineskip
\global\advance\loopcount by1
\ifnum\loopcount=90 \escapeloop\fi
   \repeat}%
\let\iterate\saveiterate
\dimen@\ht\thr@@  
\ifdim\fixdimen>0pt \advance\dimen@ by \fixdimen\fi
   \process@cols\z@{\@tempcnta\count@ 
        \advance\@tempcnta\@ne
        \setbox\count@\vtop to\dimen@
           {\unvbox\@tempcnta
           \ifshr@nking\vfill\fi}
}%
   \global\vsize\@colroom 
   \global\advance\vsize\ht\partial@page
   \page@sofar
}


%% <<== End of Indexing macros


% Nice example of \ifcase which takes a counter and activates
% the slot following the counter that matches the same number;
% \month expands to a number, so ifcase will activate the slot
% matching that number
\newcommand{\today}{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page Size 

\ifebook
\paperwidth=7.38in
\paperheight=9.25in
\else
\paperwidth=8.5in
\paperheight=11in
\fi

\textwidth=31pc %% plus 3 pc for margin material
\textheight=7in



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% 24) Code Box %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Not sure if you use this, but it sets a box that has 8pt fonts
% used and then positions the box at an indentation of the parindent,
% and lets the extra width of text go out into right margin
\def\code{\vskip2pt\setbox0=\vbox\bgroup\footnotesize}
\def\endcode{\egroup\indent\hskip1pt\rlap{\vtop{\unvbox0}}\vskip6pt}

% new environment for codesegment ----------------------
% most of this code is taken from the verbatim environment

{\catcode`\ =\active%
\gdef\@vobeyspaces{\catcode`\ \active\let \@xobeysp}}
\begingroup \catcode `|=0 \catcode `[= 1
\catcode`]=2 \catcode `\{=12 \catcode `\}=12
\catcode`\\=12 |gdef|@xcodesegment#1\end{codesegment}[#1|end[codesegment]]
|gdef|@sxcodesegment#1\end{codesegment*}[#1|end[codesegment*]]
|endgroup
\def\@codesegment{\trivlist \item\relax
  \if@minipage\else\vskip\parskip\fi
  \leftskip\@totalleftmargin\rightskip\z@skip
%\leftskip=16pt%% <<<==== If you don't want indent, comment this out
  \parindent\z@\parfillskip\@flushglue\parskip\z@skip
  \@@par
  \@tempswafalse
  \def\par{%
    \if@tempswa
      \leavevmode \null \@@par\penalty\interlinepenalty
    \else
      \@tempswatrue
      \ifhmode\@@par\penalty\interlinepenalty\fi
    \fi}%
  \let\do\@makeother \dospecials
  \obeylines \codesegment@font \@noligs
  \hyphenchar\font\m@ne
  \everypar \expandafter{\the\everypar \unpenalty}%
}
\def\codesegment{%% below added to original verbatim code
\vskip.5\baselineskip\vskip1sp %
\@codesegment \frenchspacing\@vobeyspaces \@xcodesegment}
\def\endcodesegment{\if@newlist\leavevmode\fi\endtrivlist
%% below added to original verbatim code
\vskip.5\baselineskip} 
\def\codesegment@font{\small\ttfamily}
\@namedef{codesegment*}{\@codesegment\@sxcodesegment}
\expandafter\let\csname endcodesegment*\endcsname =\endcodesegment





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hyphenation Library, add to this
%% list if desired

\hyphenation{
Com-mun-i-space
dem-o-graph-ics
Lueb-ke-man
mi-cro-ec-o-nom-ic
Net-Ratings
off-lineon-line
or-gan-i-za-tion
or-gan-i-za-tions
ra-tion-ale
sys-tem-at-i-cal-ly
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






\makeindex
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% always will want this available
\usepackage{graphicx}
\usepackage{framed}
\usepackage{wrapfig}

%% so that we can have straight quotes in code environment
\usepackage{textcomp}

\let\saveemph\emph
\newif\iffirstprologue
\long\def\prologue#1#2{\iffirstprologue\vskip4pt
\global\firstprologuefalse\else
\vskip12pt\fi
{%\leftskip=1pc
\def\emph##1{{\unskip\normalsize\saveemph{##1}}}
\parindent=0pt \normalsize
\let\\ \newline#1\vskip6pt
\hbox to\textwidth{\hfill\def\two{#2}\ifx\two\empty\else
\hfill\vtop{\advance\hsize by-.2\textwidth
\raggedleft
---\small\sc \two\vskip1pt}\fi}
}\vskip12pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Set up hyperref if ebook is true

\usepackage{xcolor}
%\definecolor{manningblue}{rgb}{.71, 107, 133}
\definecolor{manningblue}{cmyk}{.77, .52, .33, .09}

\definecolor{muddyltyellow}{cmyk}{0,0,.09,.03}
\definecolor{muddyyellow}{cmyk}{0,0,.1,.03}
\definecolor{muddydkyellow}{cmyk}{0,0,1,.2}
\definecolor{newmuddydkyellow}{cmyk}{0,.2,1,.2}
\definecolor{muddydkblue}{cmyk}{.77,.52,.33,.09}
\definecolor{muddyltblue}{cmyk}{.5,0,0,.5}
\definecolor{ltblue}{cmyk}{.45,0,0,.2}
\definecolor{veryltblue}{cmyk}{.2,0,0,.1}
%%
\definecolor{shadecolor}{cmyk}{.1,0,0,.15}
\definecolor{ltgray}{cmyk}{0,0,0,.1}
\definecolor{medgray}{cmyk}{0,0,0,.4}
\definecolor{medltgray}{cmyk}{0,0,0,.35}
\definecolor{dkgray}{cmyk}{0,0,0,.7}
%\definecolor{dkgray}{cmyk}{.3,0,0, .7}
\definecolor{blackorblue}{cmyk}{0,0,0,0}

\global\let\cropmarks\relax
%\definecolor{dkblue}{cmyk}{1,.54,.04,.19}
%\definecolor{dkblue}{cmyk}{.8,0,0,.6}

\definecolor{dkblue}{cmyk}{.77, .52, .33, .09}%{cmyk}{.7,0,0,.7}
\definecolor{savedkblue}{cmyk}{.77, .52, .33, .09}%{cmyk}{.7,0,0,.7}




\def\docode{\FrameSep=24pt
\footnotesize
\@totalleftmargin=8pt
\shaded\hrule\vskip6pt}

\def\enddocode{\vskip6pt\hrule\endshaded\vskip6pt}

\renewenvironment{shaded}{%
  \def\FrameCommand{%\advance\textwidth-2\FrameSep
\fboxsep=0pt
\colorbox{shadecolor}}%
  \MakeFramed {\FrameRestore}}%
 {\endMakeFramed}


\def\runningheadbooktitle#1{\def\xthebooktitle{#1}}
\def\xthebooktitle{The Book Title}

\advance\textheight by 48pt
\advance\voffset-63pt

\ifebook %% no binding offset, since it is an ebook
\oddsidemargin=68pt
\advance\oddsidemargin by -.5in
\advance\oddsidemargin by 1pc
\evensidemargin=68pt
\advance\evensidemargin by -.5in
\else
\oddsidemargin=108pt
\advance\oddsidemargin by -.5in
\advance\oddsidemargin by 18pt
\evensidemargin=108pt
\advance\evensidemargin by -.5in
\advance\evensidemargin by -6pt
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hyphenation Library, add to this
%% list if desired

\hyphenation{
dem-o-graph-ics
or-gan-i-za-tion
or-gan-i-za-tions
ra-tion-ale
sys-tem-at-i-cal-ly
}

\parindent=1pc


\def\note{\bgroup\leftskip=12pt \rightskip\leftskip
{\color{manningblue}
\notefont \noindent NOTE~~}}
\def\endnote{\vskip1pt\egroup}

\def\tip{\vskip6pt\bgroup\leftskip=12pt \rightskip\leftskip
{\color{manningblue}
\notefont \noindent TIP~~}}
\def\endtip{\vskip1pt\egroup}

\def\warning{\bgroup\leftskip=12pt \rightskip\leftskip
{\color{manningblue}
\notefont \noindent WARNING~~}}

\def\endwarning{\vskip1pt\egroup}


%%%
\usepackage{colortbl}
\definecolor{mgray}{gray}{.88}

\def\grayrow#1{
\multicolumn#1c{}\\\hline
\rowcolor{mgray}
}


\long\def\tablenote#1#2{\vskip4pt
\noindent
#1.\ \vtop{\advance\hsize-12pt\raggedright #2\vskip1sp}}

\def\tabnote#1{\,{$^{\hbox{\scriptsize #1}}$}}

\def\tablenotes{\vskip1sp
\tablefootfont}
\let\endtablenotes\relax

\def\arraystretch{1.4}

\let\savetabular\tabular
\let\saveendtabular\endtabular
\def\tabular{\bgroup\let\bf\tableheadfont
\tabtextfont\savetabular}
\def\endtabular{\saveendtabular\egroup}


\def\topcell#1{\hbox
to\tabwidth{\cellcolor{ltblue}
\color{white}
\hfill\tableheadfont #1
\vrule height1.1pc depth .7pc width0pt 
\hfill}}

\newcount\tabnumber
\def\bluetabletop#1{\gdef\tabwidth{#1}
\begin{tabular}{|*{20}{l|}}
\hline\\[-14pt]
}

\def\callout#1#2\par{\vskip6pt\bgroup\leftskip=1pc\relax\rightskip\leftskip
\noindent
{\color{manningblue}\notefont\uppercase{#1}}~~\relax#2\par\egroup\vskip6pt}

\newdimen\leftspace
\newdimen\rightspace
\newdimen\captionwidth
\def\figandcaption#1#2#3{
\setbox0=\hbox{\includegraphics[width=#2]{#1}\hskip12pt}
\captionwidth=\textwidth
\advance\captionwidth-\wd0
\advance\captionwidth-\rightspace
\advance\captionwidth\leftspace
\belowcaptionskip=2pt
\hbox
to\textwidth{\hskip\leftspace\includegraphics[width=#2]{#1}\hskip12pt
\vbox{\hsize=\captionwidth\caption{#3}}\hskip\rightspace}
\global\rightspace=0pt\global\leftspace=0pt}

\def\captionandfig#1#2#3{
\setbox0=\hbox{\includegraphics[width=#3]{#2}\hskip12pt}
\captionwidth=\textwidth
\advance\captionwidth-\wd0
\advance\captionwidth-\rightspace
\advance\captionwidth-\leftspace
\belowcaptionskip=2pt
\hbox
to\textwidth{\hskip\leftspace
\vbox{\hsize=\captionwidth\caption{#1}}\hskip12pt
\includegraphics[width=#3]{#2}
\hskip\rightspace}
\global\rightspace=0pt\global\leftspace=0pt}

\def\figabovecaption#1#2#3{
\setbox0=\hbox{\includegraphics[width=#2]{#1}}
\hbox to\textwidth{\hfill\includegraphics[width=#2]{#1}\hfill}
\vskip6pt
\hbox to\textwidth{\hfill\vbox{\hsize=\wd0\caption[]{#3}}\hfill}}

\def\leftfigabovecaption#1#2#3{
\setbox0=\hbox{\includegraphics[width=#2]{#1}}
\hbox to\textwidth{\includegraphics[width=#2]{#1}\hfill}
\vskip6pt
\hbox to\textwidth{\vbox{\hsize=\wd0\caption[]{#3}}\hfill}}

\def\rightfigabovecaption#1#2#3{
\setbox0=\hbox{\includegraphics[width=#2]{#1}}
\hbox to\textwidth{\hfill\includegraphics[width=#2]{#1}}
\vskip6pt
\hbox to\textwidth{\hfill\vbox{\hsize=\wd0\caption[]{#3}}}}

\def\figoverlap#1#2#3#4{
\hbox to \textwidth{\includegraphics[width=#2]{#1}\hfill}
\noindent\hskip\leftspace\vbox to 0pt{\vss
\hsize=#3
\caption[]{#4}
\vskip12pt}
\global\leftspace=0pt
}

\long\def\sidebyside#1#2{%
\hbox to\textwidth{\vtop{\hsize=.5\textwidth%
\advance\hsize by -.5\columnsep
\parindent=0pt
\centering
 
#1\vskip1sp}\hskip\columnsep\vtop{\hsize=.5\textwidth%
\advance\hsize by -.5\columnsep
\parindent=0pt
\centering
#2

}\hfill}}

\def\stacktwoimages#1#2{%
\hbox to\hsize{\hbox{\includegraphics[width=.49\hsize]{#1}}\hfill 
\hbox{\includegraphics[width=.49\hsize]{#2}}}}

\def\stackfourimages#1#2#3#4{%
\hbox to\hsize{\hbox{\includegraphics[width=.245\hsize]{#1}}\hfill 
\hbox{\includegraphics[width=.245\hsize]{#2}}\hfill
\hbox{\includegraphics[width=.245\hsize]{#1}}\hfill 
\hbox{\includegraphics[width=.245\hsize]{#2}}}
}

\def\imagesandcaption#1#2{
\hbox to\textwidth{\vbox{\hsize .5\textwidth
#1}\hskip12pt\vbox{\hsize.45\textwidth#2}\hfill}
}

% width of fig
% name of fig
% caption
% text to left
\long\def\longandnarrowfigure#1#2#3#4{
\begin{figure}[p]
\hbox to\textwidth{\vbox to .9\textheight{
\hsize=\textwidth
\advance\hsize by -#1
\advance\hsize by -12pt
\linewidth=\hsize
#4\vfill}\hskip12pt\vtop{\hsize=#1
\advance\hsize-24pt\raggedright
\hbox to\hsize{\includegraphics[width=#1]{#2}\hss}{#3}
}}
\end{figure} 
\clearpage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{tikz}
\newcount\technum

\def\dotech#1{{\hskip11pt\rm #1\hskip11pt}}

\def\technique#1{%
%\phantomsection
\global\advance\technum by 1
\def\currtechnique{tech\the\technum}
\markright{{\fontspec{bsc} Technique \the\technum}\ \ #1}
\bookmark[dest=\currtechnique, level=1]{TECHNIQUE \the\technum\ #1}
\plainaddcontentsline{toc}{tech}{\technumberline{\the\technum}
\dotech{#1}}
\vskip18pt
\hypertarget{\currtechnique}%
\noindent\hskip-3pc
\ifnum\technum>99 
\includegraphics[width=106pt, height=11.5pt]{techn.jpg}\else
\ifnum\technum>9
\includegraphics[width=103pt, height=11.5pt]{techn.jpg}\else
\includegraphics[width=99pt, height=11.5pt]{techn.jpg}\fi\fi
\hskip4pt{\color{manningblue}\raise3pt\hbox{\techtitlefont #1}}
\vskip-15pt
\noindent\rlap{\color{white}\techfont\relax TECHNIQUE\ \
\the\technum}
\vskip-9pt
\noindent\hskip-3pc\hbox to\textwidth{\color{manningblue}\bighrulefill\hbox to-3pc{}}
\color{black}\\ }

%%%%%%%%%%%%%
%   \begin{wrapfigure}[12]{r}[34pt]{5cm} <figure> \end{wrapfigure}

\def\colorboxtitle#1{\vskip-3pt{\colorboxtitlefont\color{muddydkblue}#1\vskip-13.5pt}}

\def\scolorboxtitle#1{\vskip-3pt{\colorboxtitlefont\color{muddydkblue}#1\vskip1sp}}

\long\def\textbox#1{\vskip-13.5pt\let\title\colorboxtitle
\fboxsep=10pt\colorbox{muddyyellow}{\vtop{\advance\hsize by -.25in
\colorboxtextfont\parskip=4pt
#1\vskip3pt}}}

\long\def\screenbox#1{\vskip12pt\bgroup\parindent=0pt\let\title\scolorboxtitle
\fboxsep=10pt\noindent\colorbox{muddyyellow}{\vtop{\advance\hsize by
-21pt
\colorboxtextfont\parskip=4pt
#1\vskip3pt}}\egroup\vskip12pt\global\everypar={\hskip-\parindent\global\everypar={}}}
%%%%%%%%%%%%%%%%%%%
%% Code examples

\def\dostraightquotes{{\textquotesingle\hskip-3.5pt\textquotesingle}}

\def\savequote{`}

{\catcode`\_=11 \catcode`\$ =11
\catcode`\"=\active
\catcode`\'=\active
\obeyspaces\obeylines\gdef\seenext{\ifx\next^^M\vskip12pt\else\vskip1sp\fi}%
\gdef\lookahead{\futurelet\next\seenext}

\gdef\code{\vskip12pt\bgroup\catcode`\_=11 \catcode`\$ =11
\catcode`\" \active \let"\dostraightquotes
\catcode`\' \active \let'\textquotesingle
\tt\parskip=0pt \parindent=0pt \baselineskip=11pt
\obeylines\obeyspaces
\let \ 
\def^^M{\lookahead}}

\gdef\endcode{\egroup\vskip12pt}
}

\newcount\listnumber
\gdef\codetitle#1{{\global\advance\listnumber by 1
\gdef\@currentlabel{\thechapter.\the\listnumber}
\fboxsep=3pt\vskip12pt\noindent
\colorbox{ltblue}{\advance\hsize by -6pt
\codetitlefont\hbox to\hsize{\color{white}
Listing \thechapter.\the\listnumber\quad\vrule height 8pt
width0pt\relax\let\tt\btt
#1\hfill}}}\vskip6pt}


\def\xcodenum#1{\leavevmode\lower1.5pt\hbox{%
\begin{tikzpicture}[inner sep=0pt]%% square corners
\filldraw [dkgray] (0,0) circle (5pt);\end{tikzpicture}{\color{white}
\hskip-5.1pt\raise2.7pt\hbox to0pt{\hss\scriptsize\sf
#1\hss}}}}

\def\codenum#1{\leavevmode\lower1pt\hbox{%
\begin{tikzpicture}[inner sep=0pt]%% square corners
\filldraw [dkgray] (0,0) circle (5pt);\end{tikzpicture}{\color{white}
\hskip-5.1pt\raise2.7pt\hbox to0pt{\hss\scriptsize\sf
#1\hss}}\hskip6pt}}


\def\codedescription/#1/#2/{{\catcode`\$=3\xcodenum{#1}}~~~{%
\color{dkgray}\codetitlefont\hsize=2in%
\vtop to0pt{#2\vss}}}

\let\comment\codedescription


\newif\iffirstbio
\global\firstbiotrue
\long\def\bio#1#2#3{\iffirstbio\global\firstbiofalse
\vglue-1pt
\else
\vskip18pt\fi
\hangindent 1.25in
\hangafter -7
\noindent\llap{\vtop to 0pt{\vskip-9pt
\hbox to1.25in{{\includegraphics[width=1.12in]{#2}}
\hfill}\vss}}{\large\smallcaps #1}\ {\looseness=10 #3}\ }

\def\dotfill{%
  \leavevmode
  \cleaders \hb@xt@ .3em{\hss.\hss}\hfill
  \kern\z@}

\def\@starttoc#1{%
  \begingroup
    \makeatletter
\definecolor{dkblue}{cmyk}{0,0,0,.4}
    \@input{\jobname.#1}%
    \if@filesw
      \expandafter\newwrite\csname tf@#1\endcsname
      \immediate\openout \csname tf@#1\endcsname \jobname.#1\relax
    \fi
    \@nobreakfalse
  \endgroup}

\gdef\plainaddcontentsline#1#2#3{\addtocontents 
{#1}{\protect \contentsline {#2}{#3}{\thepage }{\@currentHref }}}

\newcount\acropage
\global\acropage=1

\def\@outputpage{\begingroup \let \protect \noexpand \language \document@default@language 
\@resetactivechars \global \let \@@if@newlist \if@newlist \global \@newlistfalse 
\@parboxrestore \shipout \vbox {\set@typeset@protect \aftergroup \endgroup 
\aftergroup \set@typeset@protect \if@specialpage \global \@specialpagefalse 
\@nameuse{ps@\@specialstyle }\fi \if@twoside \ifodd \count \z@ \let \@thehead \@oddhead
 \let \@thefoot \@oddfoot \let \@themargin \oddsidemargin \else \let \@thehead \@evenhead 
\let \@thefoot \@evenfoot \let \@themargin \evensidemargin \fi \fi 
\reset@font \normalsize \normalsfcodes \let \label \@gobble \let \index \@gobble
 \let \glossary \@gobble \baselineskip \z@skip \lineskip \z@skip \lineskiplimit\z@ 
\@begindvi \vskip \topmargin \moveright \@themargin \vbox {\setbox \@tempboxa 
\vbox to\headheight {\vfil \color@hbox \normalcolor \hb@xt@ \textwidth {\@thehead }
\color@endbox }\dp \@tempboxa \z@ \box \@tempboxa \vskip \headsep \box \@outputbox 
\baselineskip \footskip \color@hbox \normalcolor \hb@xt@ \textwidth
 {\@thefoot }\color@endbox }}\global \let \if@newlist \@@if@newlist 
\global \@colht \textheight 
%% so that we can get book marks right, even with roman/arabic numerals:
\global\advance\acropage by 1\relax
\stepcounter {page}\let \firstmark \botmark}

\newenvironment{theindex}
               {
\pagestyle{indexheadings}
\global\appendonfalse
\global\contentstrue
                \columnseprule \z@
                \columnsep 48\p@ %+++
\gdef\chaphead{\smrunningheadfont\uppercase{Index}}
\markright{Index}
                \multicols{3}[\chapter*{index}\vskip24pt]%
\addtocontents{toc}{\string\vskip12pt}
 \addcontentsline{toc}{schap}{index}
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
\small
                \let\item\@idxitem\global\leftskip=-3pc
\global\rightskip=0pt plus 1fil
}
               {\endmulticols\clearpage}

%% These commands write the index entry for symbols with a
%% preceding aaaaa so that the sort routine will place them at the
%% top of the index.

%% Same for numericindex entries, except in this case it is aaab.

%% Once the index is made with the makeindex command, the <filename>.ind
%% file can be edited to global delete all aaaaa and aaaab instances.

%% Now the symbols and numeric entries will be at the top of the page
%% and only need \iletter{Symbols} and \iletter{Numerics} entered
%% before their section.

\def\symbolindex#1{\index{aaaaa#1}}
\def\numericindex#1{\index{aaaab#1}}

\usepackage[%bookmarksopen=false,
colorlinks=true,      % false: boxed links; true: colored links
    linkcolor=black,                     % color of internal links
    citecolor=black,                     % color of links to bibliography
    filecolor=black,                   % color of file links
    urlcolor=black,                        % color of external links
pagebackref=true,
hyperfigures=true,
hyperindex=true,
pdfstartview=XYZ,
linktoc=all
]{hyperref}


\usepackage[atend,
numbered
]{bookmark}

\makeindex
\endinput
