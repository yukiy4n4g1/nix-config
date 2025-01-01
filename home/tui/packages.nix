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

  programs.vim = {
    enable = true;
    settings = { number = true; };
    extraConfig = ''
      set autoindent
      set smartindent
      set smartcase
      inoremap <silent> jk <esc>
      noremap x "_x
    '';
  };

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

