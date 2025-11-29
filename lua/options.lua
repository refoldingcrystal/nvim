local o = vim.opt

o.completeopt = {'menu', 'menuone', 'noselect'}
o.undofile = true

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Indentation
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Interface
o.number = true
o.cursorline = true
o.scrolloff = 8
o.showmode = false

o.splitbelow = true
o.splitright = true

-- Search
o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true
