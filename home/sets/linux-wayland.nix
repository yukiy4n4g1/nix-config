{ nixpkgs-unstable, ... }:
{ config, pkgs, system, ... }:
let
  system = "x86_64-linux";
  pkgs-unstable = import nixpkgs-unstable { inherit system; config.allowUnfree = true; };
in {
  programs.vscode.package = pkgs-unstable.vscode.fhs;

  imports = [
    ../home.nix

    ../gui/packages.nix
    ../gui/fcitx.nix
    ../gui/fonts.nix
    ../gui/foot.nix
    ../gui/fusuma.nix
    ../gui/gtk.nix
    ../gui/hyprland.nix
    ../gui/sway/default.nix
    ../gui/vscode.nix
    ../gui/waybar.nix

    ../tui/packages.nix
    ../tui/bash/default.nix
  ];
}
