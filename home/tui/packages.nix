{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    neofetch
    htop
    fd
    ripgrep
  ];

  programs.fzf.enable = true;

  programs.gh.enable = true;

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };
}

