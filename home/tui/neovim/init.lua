local lazypath = "@lazy_nvim@"

local opt = vim.opt

opt.rtp:prepend(lazypath)

opt.clipboard:append({ "unnamedplus" })
opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.hidden = true
opt.mouse = 'a'
opt.number = true
opt.ruler = false
opt.shiftround = true
opt.shiftwidth = 2
opt.smartcase = true
opt.smartindent = true
opt.swapfile = false
opt.wrap = false

-- command
vim.opt.wildmenu = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.showcmd = true

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true

local keymap = vim.keymap

keymap.set('n', 'j', 'gj')
keymap.set('n', 'k', 'gk')

keymap.set('i', 'jk', '<ESC>')

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  defaults = { lazy = true },
  spec = {
    {
      name = "tokyonight.nvim",
      dir = "@tokyonight_nvim@",
      lazy = false,
      config = function()
        vim.cmd([[colorscheme tokyonight]])
      end,
    },
    {
      name = "neo-tree.nvim",
      dir = "@neo_tree_nvim@",
      dependencies = {
        { name = "plenary.nvim", dir = "@plenary_nvim@" },
        { name = "nvim-web-devicons", dir = "@nvim_web_devicons@" },
        { name = "nui.nvim", dir = "@nui_nvim@" },
      },
      config = true,
      cmd = { "Neotree" },
      opts = {
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_hidden = false,
          },
        },
      },
      keys = {
        {
          "<leader>e",
          function()
            require("neo-tree.command").execute({ toggle = true, position = "right" })
          end,
          desc = "file Explorer",
        },
        {
          "<leader>be",
          function()
            require("neo-tree.command").execute({ source = "buffers", toggle = true, position = "right" })
          end,
          desc = "Buffer Explorer",
        },
      },
    },
    {
      name = "lualine.nvim",
      dir = "@lualine_nvim@",
      dependencies = {
        { name = "nvim-web-devicons", dir = "@nvim_web_devicons@" },
      },
      config = function()
        require("lualine").setup({
          options = {
            globalstatus = true,
          },
        })
      end,
      event = "VeryLazy",
    },
    {
      name = "barbar.nvim",
      dir = "@barbar_nvim@",
      dependencies = {
        { name = "gitsigns.nvim", dir = "@gitsigns_nvim@" },
        { name = "nvim-web-devicons", dir = "@nvim_web_devicons@" },
      },
      init = function() vim.g.barbar_auto_setup = false end,
      config = function()
        require("barbar").setup()
      end,
      event = "VeryLazy",
      keys = {
        {
          "<leader>bn",
          "<Cmd>BufferNext<CR>",
          desc = "Buffer Next",
        },
        {
          "<leader>bp",
          "<Cmd>BufferPrevious<CR>",
          desc = "Buffer Previous",
        },
      },
    },
    {
      name = "which-key.nvim",
      dir = "@which_key_nvim@",
      event = "VeryLazy",
      opts = {
        spec = {
          { "<leader>f", group = "File/Find" },
          { "<leader>g", group = "Git" },
          {
            "<leader>b",
            group = "Buffer",
            expand = function()
              return require("which-key.extras").expand.buf()
            end,
          },
        }
      },
      keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        },
      },
    },
    {
      name = "Comment.nvim",
      dir = "@comment_nvim@",
      config = function()
         require("Comment").setup()
      end,
    },
    {
      name = "nvim-autopairs",
      dir = "@nvim_autopairs@",
      event = "InsertEnter",
      config = true,
    },
    {
      name = "telescope.nvim",
      dir = "@telescope_nvim@",
      dependencies = {
        { name = "plenary.nvim", dir = "@plenary_nvim@" },
      },
      keys = {
        {
          "<leader>ff",
          function()
            require("telescope.builtin").git_files()
          end,
          desc = "Find Files",
        },
        {
          "<leader>fb",
          function()
            require("telescope.builtin").buffers()
          end,
          desc = "Find Buffers",
        },
        {
          "<leader>bf",
          function()
            require("telescope.builtin").buffers()
          end,
          desc = "Buffer Finder",
        },
      },
    },
    {
      name = "gitsigns.nvim",
      dir = "@gitsigns_nvim@",
      config = function()
        require("gitsigns").setup()
      end,
    },
    {
      name = "toggleterm.nvim",
      dir = "@toggleterm_nvim@",
      cmd = { "ToggleTerm" },
      config = function()
        require("toggleterm").setup({
          direction = 'float',
          start_in_insert = true,
          insert_mappings = true,
          terminal_mappings = true,
        })
      end,
      keys = {
        {
          [[<C-\>]],
          [[<Cmd>exe v:count1 . "ToggleTerm"<CR>]],
          desc = "ToggleTerm",
        },
        {
          [[<C-\>]],
          [[<Cmd>exe v:count1 . "ToggleTerm"<CR>]],
          mode = "i",
          desc = "ToggleTerm",
        },
        {
          [[<C-\>]],
          [[<Cmd>exe v:count1 . "ToggleTerm"<CR>]],
          mode = "t",
          desc = "ToggleTerm",
        },
        {
          "<leader>g",
          function()
            local Terminal = require("toggleterm.terminal").Terminal
            local lazygit = Terminal:new({
              cmd = "lazygit",
              direction = "float",
              hidden = true
            })
            lazygit:toggle()
          end,
          desc = "lazygit",
        },
      },
    },
    {
      name = "indent-blankline.nvim",
      dir = "@indent_blankline_nvim@",
      config = function()
        require("ibl").setup({
        indent = {
          char = "▏",
        },
      })
      end,
      event = "VeryLazy",
    },
    {
      name = "nvim-treesitter",
      dir = "@nvim_treesitter@",
      config = function()
        require("nvim-treesitter.configs").setup({
          parser_install_dir = "@ts_parser_dir@",
        })
      end,
      event = "BufRead",
    },
  },
})
