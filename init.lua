require('nvimtree-close')
require('options')
require('keybinds')

vim.pack.add({
    'https://github.com/catppuccin/nvim',
    'https://github.com/chomosuke/typst-preview.nvim',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/lewis6991/gitsigns.nvim',
    'https://github.com/romgrk/barbar.nvim',
    'https://github.com/nvim-tree/nvim-tree.lua',
    'https://github.com/nvim-mini/mini.nvim', -- <3
    'https://github.com/m4xshen/autoclose.nvim',
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/lukas-reineke/indent-blankline.nvim',
    'https://github.com/rafamadriz/friendly-snippets',
})

vim.cmd('colorscheme catppuccin-macchiato')

require('mason').setup()
require('nvim-tree').setup()
require('autoclose').setup()
require('lualine').setup()
require('ibl').setup({
    scope = { enabled = false }
})

-- Awesome mini
require('mini.pick').setup()
require('mini.completion').setup()
require('mini.comment').setup()
require('mini.cmdline').setup()

vim.lsp.enable({ 'lua_ls', 'clangd', 'tinymist' })
vim.lsp.config.clangd = {
    init_options = {
        cmd = {
            "--fallback-style={BasedOnStyle: Google, UseTab: Never, IndentWidth: 4, TabWidth: 4, AllowShortIfStatementsOnASingleLine: true}"
        },
    },
}

