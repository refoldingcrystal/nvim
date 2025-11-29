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
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {},
    },
    {
        "numToStr/Comment.nvim",
        opts = {
            toggler = { line = '<C-_>' },
            opleader = { line = '<C-_>' }
        }
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
            keymap = { preset = 'super-tab' },
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
