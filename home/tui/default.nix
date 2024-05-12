{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    neofetch
    gh
    htop
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

  programs.git = {
    enable = true;
    userName = "yukiy4n4g1";
    userEmail = "40228235+yukiy4n4g1@users.noreply.github.com";
  };

  programs.eza = {
    enable = true;
    git = true;
    icons = true;
  };
}

