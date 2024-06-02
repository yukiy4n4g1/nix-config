{ config, pkgs, ... }:

{
  imports = [
    ./tui/default.nix
    ./gui/default.nix
  ];

  home.username = "yukiy4n4g1";
  home.homeDirectory = "/home/yukiy4n4g1";

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
