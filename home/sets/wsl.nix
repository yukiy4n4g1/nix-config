{ config, pkgs, system, ... }:

{

  imports = [
    ../home.nix

    ../tui/git.nix
    ../tui/lazygit.nix
    ../tui/packages.nix
    ../tui/starship.nix
    ../tui/wslu.nix
    ../tui/bash/default.nix
  ];
}
