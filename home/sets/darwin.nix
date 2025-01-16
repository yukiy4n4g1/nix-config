{ config, pkgs, ... }:

{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../tui/vim/default.nix
    ../tui/zsh/default.nix
    ../tui/eza.nix
    ../tui/helix.nix
    ../tui/lazygit.nix
    ../tui/packages.nix
    ../tui/starship.nix
  ];
}