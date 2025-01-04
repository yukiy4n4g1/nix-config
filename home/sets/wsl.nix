{ config, pkgs, system, ... }:

{

  imports = [
    ../home.nix

    ../tui/bash/default.nix
    ../tui/git.nix
    ../tui/lazygit.nix
    ../tui/neovim/default.nix
    ../tui/packages.nix
    ../tui/starship.nix
    ../tui/wslu.nix
  ];
}
