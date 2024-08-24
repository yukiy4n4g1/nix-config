{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ./tui/default.nix
    ./gui/default.nix
  ];
}
