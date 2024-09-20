vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<C-k>", ':execute "move-2"<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ':execute "move+1"<CR>', { noremap = true, silent = true })
