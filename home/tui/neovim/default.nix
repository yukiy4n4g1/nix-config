{ pkgs, ... }:
let
  parsers = with pkgs.vimPlugins.nvim-treesitter-parsers; [
    yaml
    json
    html
    javascript
    typescript
    rust
    go
    nix
    lua
    python
    markdown
    markdown_inline
  ];
in
{
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      nixd
      lua-language-server
      markdown-oxide
      nodejs-slim # for copilot-lua
    ];
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
      indent_blankline_nvim = pkgs.vimPlugins.indent-blankline-nvim;
      nvim_treesitter = pkgs.vimPlugins.nvim-treesitter;
      ts_parser_dir = pkgs.symlinkJoin { name = "nvim-ts-parser"; paths = parsers; };
      nvim_lspconfig = pkgs.vimPlugins.nvim-lspconfig;
      nvim_cmp = pkgs.vimPlugins.nvim-cmp;
      cmp_nvim_lsp = pkgs.vimPlugins.cmp-nvim-lsp;
      cmp_buffer = pkgs.vimPlugins.cmp-buffer;
      luasnip = pkgs.vimPlugins.luasnip;
      cmp_path = pkgs.vimPlugins.cmp-path;
      cmp_cmdline = pkgs.vimPlugins.cmp-cmdline;
      lspkind_nvim = pkgs.vimPlugins.lspkind-nvim;
      nvim_treesitter_context = pkgs.vimPlugins.nvim-treesitter-context;
      copilot_lua = pkgs.vimPlugins.copilot-lua;
      copilot_cmp = pkgs.vimPlugins.copilot-cmp;
      bullets_vim = pkgs.vimPlugins.bullets-vim;
      vim_table_mode = pkgs.vimPlugins.vim-table-mode;
    };
  };
}
