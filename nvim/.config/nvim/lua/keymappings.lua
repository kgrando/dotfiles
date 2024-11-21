vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<leader>ex", ":Ex<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n","n", "nzzzv") 
vim.keymap.set("n","N", "Nzzzv") 
vim.keymap.set("n","<leader>w", "<C-w><C-w>")
vim.keymap.set("n","<leader>q", ":q<CR>")

vim.keymap.set("n","<leader>pw",":lua print(require('window-picker').pick_window())<CR>")
