require("styxny")

vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('jdtls')

-- Disable netrw becuase we want to use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit colorv
vim.opt.termguicolors = true

-- Turn off startup screen
-- vim.opt.shortmess:append("I")

