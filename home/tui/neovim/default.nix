{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];
  };
}
