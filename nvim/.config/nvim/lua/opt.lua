local profile = vim.fn.expand("$HOME")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = { profile .. "/.vim/undodir"}
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'auto'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50
vim.opt.colorcolumn = '100'


vim.opt.relativenumber = true
vim.opt.shiftwidth=4
vim.opt.mouse=v
vim.opt.syntax = 'on'
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.clipboard = unnamedplus
vim.opt.cursorline = true
vim.opt.ttyfast = true               
