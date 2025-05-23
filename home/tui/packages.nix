{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    neofetch
    htop
    fd
    ripgrep
    file
  ];

  programs.fzf.enable = true;

  programs.gh.enable = true;
}
