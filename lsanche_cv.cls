\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lsanche_cv}[2021/04/21 Lyndon Sanche Reumse Class]
\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{fontawesome}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{dashrule}

\colorlet{subheading}{black!80!white}

\newcommand{\iconlocation}{\faMapMarker}
\newcommand{\icondate}{\faCalendar}
\newcommand{\iconaddress}{\faEnvelope}
\newcommand{\iconphone}{\faPhone}
\newcommand{\iconemail}{\faAt}
\newcommand{\iconlinkedin}{\faLinkedin}
\newcommand{\iconwebsite}{\faChain}

\titleformat{\section}
    {\bfseries\Large\raggedright}
    {}{0em}
    {}
    [{\titlerule[1.5pt]}]

\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}

\titleformat{\subsection}
    {\raggedright}
    {}{0em}
    {}

\newcommand{\workexp}[5]{
    {\color{subheading}\noindent\large #1}

    {\color{subheading}\noindent #2}

    \noindent\textbf{#3}

    \smallskip

    \noindent\small\makebox[0.55\linewidth][l]{\icondate \hspace{0em} #4} \makebox[0.44\linewidth][l]{\iconlocation \hspace{0em} #5}
}

\newcommand{\eduexp}[4]{
    {\color{subheading}\noindent\large#3}
    \smallskip

    \noindent\textbf{#1}

    \smallskip
    \noindent\small\makebox[0.55\linewidth][l]{\icondate \hspace{0em} #2} \makebox[0.44\linewidth][l]{\iconlocation \hspace{0em} #4}
}

\newcommand{\name}[1]{
    \noindent{\Huge#1}
}

\newcommand{\tagline}[1]{
    {\noindent\large\textbf{#1}}
}

\newcommand{\project}[1] {
    \noindent{\textbf{#1}}
}

\newcommand{\sepdot}{\large\textperiodcentered}

\newcommand{\contact}[4]{
    \noindent \iconphone \hspace{0em} #1 \hspace{1em} \iconemail \hspace{0em} #2 \hspace{1em} \iconwebsite \hspace{0em} #3 \hspace{1em} \iconlinkedin \hspace{0em} #4
}

\newcommand{\divider}{
    %\smallskip
    {\color{subheading!40}\noindent\rule[5pt]{\linewidth}{1pt}}
}
