{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
  };
  xdg.configFile = {
    "nvim/init.lua".source = pkgs.substituteAll {
      src = ./init.lua;
      lazy_nvim = pkgs.vimPlugins.lazy-nvim;
      tokyonight_nvim = pkgs.vimPlugins.tokyonight-nvim;
      neo_tree_nvim = pkgs.vimPlugins.neo-tree-nvim;
      plenary_nvim = pkgs.vimPlugins.plenary-nvim;
      nvim_web_devicons = pkgs.vimPlugins.nvim-web-devicons;
      nui_nvim = pkgs.vimPlugins.nui-nvim;
      lualine_nvim = pkgs.vimPlugins.lualine-nvim;
      barbar_nvim = pkgs.vimPlugins.barbar-nvim;
      gitsigns_nvim = pkgs.vimPlugins.gitsigns-nvim;
      which_key_nvim = pkgs.vimPlugins.which-key-nvim;
      comment_nvim = pkgs.vimPlugins.comment-nvim;
      nvim_autopairs = pkgs.vimPlugins.nvim-autopairs;
      telescope_nvim = pkgs.vimPlugins.telescope-nvim;
      toggleterm_nvim = pkgs.vimPlugins.toggleterm-nvim;
    };
  };
}
