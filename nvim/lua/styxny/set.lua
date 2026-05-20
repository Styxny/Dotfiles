--" Add in absolute line number
--:set number
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set no wrap
vim.opt.wrap = false

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--No highlight and incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

--COLORS!
vim.opt.termguicolors = true

--Always some lines at the bottom
vim.opt.scrolloff = 8

-- show me 80 columns
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
