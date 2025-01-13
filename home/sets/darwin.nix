{ config, pkgs, ... }:

{
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  imports = [
    ../tui/zsh/default.nix
    ../tui/helix.nix
  ];
}