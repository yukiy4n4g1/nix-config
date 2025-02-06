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
opt.scrolloff = 10
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
keymap.set('n', 'x', '"_x')

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
        vim.cmd([[colorscheme tokyonight-night]])
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
            theme = "tokyonight-night",
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
          "gn",
          "<Cmd>BufferNext<CR>",
          desc = "Buffer Next",
        },
        {
          "gp",
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
        spec = {}
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
      cmd = { "Telescope" },
      dependencies = {
        { name = "plenary.nvim", dir = "@plenary_nvim@" },
      },
      keys = {
        {
          "<leader>f",
          function()
            require("telescope.builtin").git_files()
          end,
          desc = "Find Files",
        },
        {
          "<leader>b",
          function()
            require("telescope.builtin").buffers()
          end,
          desc = "Buffer Finder",
        },
        {
          "<leader>s",
          function()
            require("telescope.builtin").live_grep()
          end,
          desc = "Live Grep",
        },

      },
      config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
          defaults = {
            mappings = {
              i = {
                ["<esc>"] = actions.close
              }
            },
            layout_config = {
              prompt_position = "top"
            },
            sorting_strategy = "ascending",
          }
        })
      end,
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
        vim.opt.runtimepath:append("@ts_parser_dir@")

        require("nvim-treesitter.configs").setup({
          highlight = {
            enable = true,
          },
        })
      end,
      event = "BufRead",
    },
    {
      name = "nvim-treesitter-context",
      dir = "@nvim_treesitter_context@",
      event = "BufRead",
    },
    {
      name = "nvim-lspconfig",
      dir = "@nvim_lspconfig@",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        lspconfig.nixd.setup {
          capabilities = capabilities
        }
        lspconfig.lua_ls.setup {
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" }
              }
            }
          }
        }
        lspconfig["markdown_oxide"].setup {
          capabilities = capabilities
        }
        lspconfig["ts_ls"].setup {
          capabilities = capabilities
        }
      end,
    },
    {
      name = "nvim-cmp",
      dir = "@nvim_cmp@",
      event = "VeryLazy",
      dependencies = {
        { name = "cmp-nvim-lsp", dir = "@cmp_nvim_lsp@" },
        { name = "cmp-buffer", dir = "@cmp_buffer@" },
        { name = "luasnip", dir = "@luasnip@" },
        { name = "cmp-path", dir = "@cmp_path@"},
        { name = "cmp-cmdline", dir = "@cmp_cmdline@"},
        { name = "lspkind-nvim", dir = "@lspkind_nvim@" },
      },
      config = function()
        local cmp = require("cmp")
        local lspkind = require("lspkind")
        local has_words_before = function()
          if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
          local line, col = unpack(vim.api.nvim_win_get_cursor(0))
          return col ~= 0 and vim.api.nvim_buf_get_text(0, line-1, 0, line-1, col, {})[1]:match("^%s*$") == nil
        end

        cmp.setup({
          formatting = {
            format = lspkind.cmp_format({
              mode = "symbol",
              maxwidth = {
                menu = 50,
                abbr = 50,
              },
              ellipsis_char = '...',
              show_labelDetails = true,
              symbol_map = { Copilot = "" },

              before = function (entry, vim_item)
                return vim_item
              end,
            })
          },
          snippet = {
            expand = function()
            end,
          },
          window = {
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = vim.schedule_wrap(function(fallback)
              if cmp.visible() and has_words_before() then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                fallback()
              end
            end),
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "copilot" },
            { name = "buffer" },
            { name = "luasnip" },
            { name = "path" },
          }),
        })

        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        })

        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources(
            {
              { name = 'path' }
            },
            {
              { name = 'cmdline' }
            }
          ),
          matching = { disallow_symbol_nonprefix_matching = false }
        })
      end,
    },
    {
      name = "copilot.lua",
      dir = "@copilot_lua@",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup({
          suggestion = { enabled = false },
          panel = { enabled = false },
        })
      end,
    },
    {
      name = "copilot-cmp",
      dir = "@copilot_cmp@",
      event = { "InsertEnter", "LspAttach" },
      config = function()
        require("copilot_cmp").setup()
      end,
    },
    {
      name = "bullets.vim",
      dir = "@bullets_vim@",
      ft = "markdown",
    },
    {
      name = "vim-table-mode",
      dir = "@vim_table_mode@",
      ft = "markdown",
    }
  },
})
