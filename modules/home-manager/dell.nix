{ pkgs-unstable, ... }:

{
  programs.helix.package = pkgs-unstable.helix;

  imports = [
    ./home.nix

    ./dotfiles/vscode/default.nix
    ./dotfiles/gui-packages.nix
    ./dotfiles/brave.nix
    ./dotfiles/fcitx.nix
    ./dotfiles/fonts.nix
    ./dotfiles/foot.nix
    ./dotfiles/fusuma.nix
    ./dotfiles/gtk.nix
    ./dotfiles/hyprland.nix
    ./dotfiles/kanshi.nix
    ./dotfiles/sway/default.nix
    ./dotfiles/swaylock.nix
    ./dotfiles/waybar.nix

    ./dotfiles/bash/default.nix
    ./dotfiles/neovim/default.nix
    ./dotfiles/vim/default.nix
    ./dotfiles/eza.nix
    ./dotfiles/git.nix
    ./dotfiles/helix/default.nix
    ./dotfiles/k8s.nix
    ./dotfiles/lazygit.nix
    ./dotfiles/cli-packages.nix
    ./dotfiles/starship.nix
    ./dotfiles/yazi.nix
  ];
}
