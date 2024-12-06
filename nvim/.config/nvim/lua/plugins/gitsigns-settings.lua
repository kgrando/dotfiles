require('gitsigns').setup({

  current_line_blame = true
  
})
vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", {})
