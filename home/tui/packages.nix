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

  programs.eza = {
    enable = true;
    git = true;
    icons = "auto";
  };

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };
}

