\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lsanche_cv}[2021/04/21 Lyndon Sanche Reumse Class]
\LoadClass{article}

\RequirePackage{titlesec}

\titleformat{\section}
    {\Large\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\raggedright}
    {}{0em}
    {}

\newcommand{\workexp}[4]{
    {\noindent\large #1} \\
    \textbf{#2} \\
    \small\makebox[0.59\linewidth][l]{#3} \makebox[0.39\linewidth][l]{#4}
}

\newcommand{\eduexp}[4]{
    {\noindent\large#3} \\
    \textbf{#1} \\
    \small\makebox[0.59\linewidth][l]{#2} \makebox[0.39\linewidth][l]{#4}
}

\newcommand{\name}[1]{
    {\noindent\Huge{#1}}
}

\newcommand{\tagline}[1]{
    \noindent #1
}

\newcommand{\sepdot}{\large\textperiodcentered}

\newcommand{\contact}[7]{
    \noindent #1 {\sepdot} #2 {\sepdot} #3 {\sepdot} #4 \\
    \noindent #5 {\sepdot} #6 {\sepdot} #7
}
