{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    neofetch
    gh
    htop
    fzf
    fd
    ripgrep
  ];

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };
}

