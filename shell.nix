{ pkgs ? import ./nixpkgs.nix
}:
let
  inherit (pkgs) mkShell;
  inherit (pkgs) purescript spago git;

  nodejs = pkgs.nodejs-12_x;
  yarn = pkgs.yarn.override { nodejs = pkgs.nodejs-12_x; };
in mkShell {
  buildInputs = [
    purescript
    spago
    yarn
    nodejs
    git
  ];

  shellHook = ''
    if [ -f $PWD/.env ]; then
      source $PWD/.env
    else
      echo "Warning: You don't have .env file in the root of your project."
    fi
  '';
}
