vim.g.mapleader = " "
local map = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}

-- Lsp
map({ "n", "i" }, "<C-.>", "<Cmd>:lua vim.lsp.buf.code_action()<CR>", opts)
map({ "n", "i" }, "<leader>f", "<Cmd>:lua vim.lsp.buf.format()<CR>", opts)

-- System clipboard
map("v", "<C-c>", '"+y', opts)
map("v", "<C-x>", '"+ygvd', opts)

map("n", "<C-c>", 'V"+y', opts)
map("n", "<C-x>", 'V"+ygvd', opts)

-- Moving lines
map({ "n", "i" }, "<A-Up>", "<Cmd>m .-2<CR>==", opts)
map({ "n", "i" }, "<A-Down>", "<Cmd>m .+1<CR>==", opts)
-- TODO: Allow doing this in visual mode

-- Movement
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Indentation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Barbar
map({ "n", "v", "i" }, "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map({ "n", "v", "i" }, "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map({ "n", "v", "i" }, "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map({ "n", "v", "i" }, "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map({ "n", "v", "i" }, "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map({ "n", "v", "i" }, "<A-0>", "<Cmd>BufferLast<CR>", opts)
map({ "n", "v", "i" }, "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- NvimTree
map({ "n" }, "<C-n>", "<Cmd>NvimTreeToggle<CR>")
