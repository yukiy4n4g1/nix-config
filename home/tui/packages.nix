{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    neofetch
    gh
    htop
    fd
    ripgrep
  ];

  programs.fzf.enable = true;

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };
}

