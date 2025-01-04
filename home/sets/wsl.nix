{ config, pkgs, system, ... }:

{

  imports = [
    ../home.nix

    ../tui/bash/default.nix
    ../tui/eza.nix
    ../tui/git.nix
    ../tui/lazygit.nix
    ../tui/neovim/default.nix
    ../tui/packages.nix
    ../tui/starship.nix
    ../tui/vim/default.nix
    ../tui/wslu.nix
  ];
}
