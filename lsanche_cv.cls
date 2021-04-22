\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lsanche_cv}[2021/04/21 Lyndon Sanche Reumse Class]
\LoadClass{article}

\RequirePackage{titlesec}

\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\Large\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\datedsubsection}[2]{
    \subsection[#1]{#1 \hfill #2}
}

\newcommand{\name}[1]{
    \centerline{\Huge{#1}}
}
