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

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };

  home.shellAliases = {
    yz = "yazi";
  };
}
