{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    fastfetch
    htop
    fd
    ripgrep
    file
    mcat
  ];

  programs.fzf.enable = true;

  programs.gh.enable = true;

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
