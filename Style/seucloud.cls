


\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{seucloud}[东南大学云计算开题报告]%


\LoadClass[UTF8,a4paper,zihao=-4]{ctexart}

\RequirePackage[a4paper,left=3cm,right=3cm,top=2.6cm,bottom=2.38cm,includeheadfoot]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage{fontspec}
\RequirePackage[backend=bibtex,style=numeric]{biblatex}
\RequirePackage{xparse}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage[section]{placeins}
\RequirePackage[colorlinks,linkcolor=red,anchorcolor=blue,citecolor=green]{hyperref}
\RequirePackage{caption}
\RequirePackage{subfigure}
\RequirePackage{enumitem}
\RequirePackage{url}
\RequirePackage{amsmath}
\RequirePackage{makecell}

\DeclareCaptionFont{kaishu}{\kaishu}

\captionsetup[figure]{font={kaishu},position=bottom,skip=5pt}
\captionsetup[table]{font={kaishu},position=top,skip=5pt}


\makeatletter

\renewcommand{\labelenumi}{\arabic{enumi})}


\newcommand{\titleup}[1]{\newcommand{\value@titleup}{#1}}
\newcommand{\titledown}[1]{\newcommand{\value@titledown}{#1}}

\renewcommand{\author}[1]{\newcommand{\value@author}{#1}}
\newcommand{\advisor}[1]{\newcommand{\value@advisor}{#1}}
\newcommand{\college}[1]{\newcommand{\value@college}{#1}}
\newcommand{\subject}[1]{\newcommand{\value@subject}{#1}}
\newcommand{\enrollmenttime}[1]{\newcommand{\value@enrollmenttime}{#1}}
\newcommand{\reporttime}[1]{\newcommand{\value@reporttime}{#1}}
\newcommand{\advisortitle}[1]{\newcommand{\value@advisortitle}{#1}}

\newcommand{\setfancyheadfoot}{
    \fancyhf{}
    \fancyhead[l]{\fontsize{10.5pt}{10.5pt}\selectfont{硕士论文开题报告{} \value@author}}
    \fancyfoot[c]{\fontsize{9pt}{9pt}\selectfont{\thepage}}
}

\newcommand{\titleupinfo}{
    \value@titleup
}
\newcommand{\titledowninfo}{
    \value@titledown
}


\newcommand{\studentinfo}{
    {
        \renewcommand{\arraystretch}{1.5}
        \heiti\large
        \xeCJKDeclareCharClass{CJK}{`0 -> `9}
        \begin{center}
        \begin{tabular}[b]{rl}
            \makebox[8em][s]{院  （系、所）}  & \underline{\makebox[10em][c]{\value@college}} \\
            \makebox[8em][s]{学科（专 业）}   & \underline{\makebox[10em][c]{\value@subject}} \\
            \makebox[8em][s]{研究生姓名}      & \underline{\makebox[10em][c]{\value@author}} \\
            \makebox[8em][s]{导师姓名}        & \underline{\makebox[10em][c]{\value@advisor}} \\
            \makebox[8em][s]{入学年月}        & \underline{\makebox[10em][c]{\value@enrollmenttime}} \\
            \makebox[8em][s]{开题报告日期}    & \underline{\makebox[10em][c]{\value@reporttime}} \\
        \end{tabular}
        \end{center}
    }
}


\newcommand{\substudentinfo}{
    {
        \renewcommand{\arraystretch}{1.1}
        \kaishu
        \begin{tabular}[b]{rl}
            \makebox[6em][s]{硕士研究生:}   & \value@author \\
            \makebox[6em][s]{指导老师:}     & \value@advisor \/ \value@advisortitle \\
        \end{tabular}
    }
}


\NewDocumentCommand{\insertgraph}{m m m O{0.7}}{
    % #1 图片文件名称（默认都在Img/下）
    % #2 图片的标题
    % #3 图片label
    % #4 图片宽度
    \begin{figure}[H] %H为当前位置，!htb为忽略美学标准，htbp为浮动图形
        \centering %图片居中
        \includegraphics[width=#4\textwidth]{Img/#1} %插入图片，[]中设置图片大小，{}中是图片文件名
        \setlength{\belowcaptionskip}{-10pt}
        \caption{#2} %最终文档中希望显示的图片标题
        \label{#3} %用于文内引用的标签
    \end{figure}
}


\NewDocumentCommand{\inserttwograph}{m m m m m m O{0.4} O{0.4}}{
    % #1 图片(a)文件名称（默认都在Img/下）
    % #2 图片(b)文件名称（默认都在Img/下）
    % #3 图片的标题
    % #4 图片label
    % #5 图片(a)的标题
    % #6 图片(b)的标题
    % #7 图片(a)的宽度
    % #8 图片(b)的宽度
    \begin{figure}[htbp]
        \centering %居中
        \subfigure[#5]{
            \includegraphics[width=#7\textwidth]{Img/#1}
        }
        \subfigure[#6]{
            \includegraphics[width=#8\textwidth]{Img/#2}
        }
        \setlength{\belowcaptionskip}{-10pt}
        \caption{#3} % %大图名称
        \label{#4} %图片引用标记
    \end{figure}
}



\newenvironment{inserttable}[3]{%
    % #1 表标题
    % #2 表label
    % #3 tabular的结构和参数
    \begin{table}[hbtp]% 
        \centering%
        \caption{#1}% use the stored caption
        \label{#2}%
        \begin{tabular}{#3}%
    }{%
        \end{tabular}%
    \end{table}%
}


\newcommand{\challenge}[2]{
    {
        \medskip\noindent
        \zihao{4} \textbf{#1 ：#2}
        \medskip\par
    }  
}

\newcommand{\subtitle}[2]{
    \noindent\textbf{#1\/#2}
    \par
}



%%
% 设置一级标题、二、三级标题格式
% 一级标题
\ctexset{
    section={
        format = \linespread{1.0}\zihao{3}\sffamily\raggedright,
        numberformat = \rmfamily,
        aftername = \quad,
        beforeskip = {24pt},
        afterskip = {6pt},
    }
}
% 二级标题
\ctexset {
    subsection = {
        format = \linespread{1.0}\zihao{-3}\sffamily\raggedright,
        numberformat = \rmfamily,
        aftername = \quad,
        beforeskip = {12pt},
        afterskip = {6pt},
    }
}
