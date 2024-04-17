{
  description = "Lyndon Sanche's resume";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    pre-commit-hooks,
  }:
    with flake-utils.lib; eachSystem defaultSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      tex = pkgs.texlive.withPackages (ps:
        with ps; [
          scheme-basic
          latex-bin
          latexmk
          titlesec
          fontawesome
          fontspec
          xcolor
          dashrule
          ifmtarg
          enumitem
          hyphenat
          lato
          fontaxes
          xkeyval
        ]);
    in rec {
      checks = {
        pre-commit-check = pre-commit-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            alejandra.enable = true;
            hunspell.enable = true;
          };
        };
      };
      packages = {
        resume = pkgs.stdenvNoCC.mkDerivation rec {
          name = "lsanche-resume";
          src = self;
          buildInputs = [pkgs.gnumake pkgs.coreutils tex];
          phases = ["unpackPhase" "buildPhase" "installPhase"];
          installPhase = ''
            mkdir -p $out
            cp lsanche.pdf $out/
          '';
        };
        default = packages.resume;
      };
      devShells = {
        default = pkgs.mkShell {
          buildInputs = [packages.default.buildInputs];
        };
      };
    });
}
