{ config, pkgs, system, ... }:

{

  imports = [
    ../home.nix

    ../tui/packages.nix
    ../tui/wslu.nix
    ../tui/bash/default.nix
  ];
}
