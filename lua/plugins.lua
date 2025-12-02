local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {'lua_ls', 'clangd'},
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗"
                        }
                    }
                }
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                section_separators = { left = '', right = ''},
                component_separators = { left = '|', right = '|'},
            }
        }
    },
    {
        "numToStr/Comment.nvim",
        opts = {
            toggler = { line = ' _' },
            opleader = { line = ' _' }
        }
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            close_if_last_window = true,
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {},
    },
    {
        "windwp/nvim-autopairs",
        config = true,
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = '1.*',
        opts = {
            keymap = {
                preset = 'super-tab',
                ['<CR>'] = { 'accept', 'fallback' },
            },
        },
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() vim.g.barbar_auto_setup = true end,
    },
    { "mason-org/mason.nvim", opts = {} },
})
