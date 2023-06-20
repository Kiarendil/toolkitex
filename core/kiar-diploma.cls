\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kiar-diploma}
\ProcessOptions

\LoadClass
    [12pt, a4paper, oneside, final]{extreport}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 Математика                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{extsizes}
\RequirePackage{xspace}
\RequirePackage{mathtext}
\RequirePackage{mathtools}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[all,warning]
               {onlyamsmath}
    \AtBeginDocument{\catcode`\$=3}
\RequirePackage{cancel}
% \RequirePackage{icomma}
\RequirePackage{mathrsfs}
\RequirePackage{bigints}
\RequirePackage{mathrsfs}
%\RequirePackage{physics}
\RequirePackage{indentfirst}
\mathtoolsset{showonlyrefs=true} % Показывать номера только у тех формул, на которые есть \eqref{} в тексте.

%\RequirePackage{deff}
\RequirePackage{udef}
\RequirePackage{iunits}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Формат документа                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{cmap}					% поиск в PDF
%\RequirePackage[T2A,OT1]           {fontenc}
%\RequirePackage[utf8]              {inputenc}
\RequirePackage[english, russian]  {babel}
\RequirePackage[no-math]{fontspec}   %% подготавливает загрузку шрифтов Open Type, True Type и др.
\defaultfontfeatures{Ligatures={TeX},Renderer=Basic}  %% свойства шрифтов по умолчанию
\RequirePackage[ left     = 2.0cm,
                 right    = 2.0cm,
                 top      = 2.0cm,
                 bottom   = 2.0cm,
                 includefoot,
                 footskip = 1.25cm ]{geometry}
\setlength    {\parskip}        { .5em plus .15em minus .08em }
\setlength    {\parindent}      {1.25cm }
\renewcommand {\baselinestretch}{ 1.25 }


\RequirePackage{hyperref}
\RequirePackage[usenames,dvipsnames,svgnames,table,rgb]{xcolor}

\renewenvironment{abstract}{%
    \begin{minipage}{0.85\textwidth}
        \begin{center}
            {\large \section*{Аннотация}}
        \end{center} 
    } {
\end{minipage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  Графика                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{wrapfig}
\RequirePackage{color}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
    \pgfplotsset{compat=newest}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Нумерация, заголовки и подписи                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyref}
\RequirePackage{fancyhdr}

\RequirePackage{secdot}
\RequirePackage{caption}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Таблицы и списки                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{enumitem}
    \setlist{leftmargin =   1cm,
             topsep     =  .0\parskip,
             itemsep    = -.0\parskip,
             resume
            }
\RequirePackage{booktabs}
\RequirePackage{array}
    \renewcommand{\arraystretch}{ 1.20 }
\RequirePackage{tabularx,tabulary,booktabs} % Дополнительная работа с таблицами
\RequirePackage{longtable}  % Длинные таблицы
\RequirePackage{multirow} % Слияние строк в таблице
