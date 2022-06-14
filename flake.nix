{
  description = "Lyndon Sanche's resume";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils }:
  with flake-utils.lib; eachSystem defaultSystems (system:
  let
    pkgs = nixpkgs.legacyPackages.${system};
    tex = pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-basic latex-bin latexmk titlesec fontawesome
        fontspec xcolor dashrule ifmtarg enumitem hyphenat lato fontaxes
        xkeyval;
    };
  in rec {
    packages = {
      resume = pkgs.stdenvNoCC.mkDerivation rec {
        name = "lsanche-resume";
        src = self;
        buildInputs = [ pkgs.coreutils tex ];
        phases = [ "unpackPhase" "buildPhase" "installPhase" ];
        buildPhase = ''
          export PATH="${pkgs.lib.makeBinPath buildInputs}";
          mkdir -p .cache/texmf-var
          env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
            latexmk -interaction=nonstopmode -pdf -lualatex \
            lsanche.tex
        '';
        installPhase = ''
          mkdir -p $out
          cp lsanche.pdf $out/
        '';
      };
      default = packages.resume;
    };
  });
}
