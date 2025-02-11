{ pkgs-unstable, ... }:

{
  programs.helix.package = pkgs-unstable.helix;

  imports = [
    ../home.nix

    ../gui/packages.nix
    ../gui/brave.nix
    ../gui/fcitx.nix
    ../gui/fonts.nix
    ../gui/foot.nix
    ../gui/fusuma.nix
    ../gui/gtk.nix
    ../gui/hyprland.nix
    ../gui/kanshi.nix
    ../gui/sway/default.nix
    ../gui/swaylock.nix
    ../gui/vscode.nix
    ../gui/waybar.nix

    ../tui/bash/default.nix
    ../tui/neovim/default.nix
    ../tui/vim/default.nix
    ../tui/eza.nix
    ../tui/git.nix
    ../tui/helix.nix
    ../tui/lazygit.nix
    ../tui/packages.nix
    ../tui/starship.nix
  ];
}
