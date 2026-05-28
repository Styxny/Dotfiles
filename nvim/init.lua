require("styxny")

vim.lsp.enable('luals')

-- Disable netrw becuase we want to use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit colorv
vim.opt.termguicolors = true

