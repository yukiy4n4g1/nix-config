{ nixpkgs-unstable, ... }:
{ config, pkgs, system, ... }:
let
  system = "x86_64-linux";
  pkgs-unstable = import nixpkgs-unstable { inherit system; config.allowUnfree = true; };
in {
  programs.vscode.package = pkgs-unstable.vscode.fhs;

  imports = [
    ./home.nix
    ./tui/default.nix
    ./gui/default.nix
  ];
}
