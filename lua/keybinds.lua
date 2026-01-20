local opts = {
    noremap = true,
    silent = true,
}

vim.g.mapleader = ' '
vim.keymap.set({ "n", "i" }, "<A-Up>", "<Cmd>m .-2<CR><ESC>==", opts)
vim.keymap.set({ "n", "i" }, "<A-Down>", "<Cmd>m .+1<CR><ESC>==", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<C-c>", 'V"+y', opts)
vim.keymap.set("v", "<C-c>", '"+y', opts)
vim.keymap.set("n", "<leader>e", function()
    if vim.bo.filetype == "NvimTree" then
        vim.cmd.NvimTreeClose()
    else
        vim.cmd.NvimTreeFocus()
    end
end)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-0>", "<Cmd>BufferLast<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<A-x>", "<Cmd>BufferClose<CR>", opts)

vim.keymap.set('n', '<leader>o', ':source<CR>')
vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>fr', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>fs', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fg', ':Pick grep_live<CR>')
