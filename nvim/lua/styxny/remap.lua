vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Maping it easier to more between windows
vim.keymap.set('n', "J", "<C-w>j", {noremap = true, silent = true})
vim.keymap.set('n', "K", "<C-w>k", {noremap = true, silent = true})
vim.keymap.set('n', "H", "<C-w>h", {noremap = true, silent = true})
vim.keymap.set('n', "L", "<C-w>l", {noremap = true, silent = true})

-- Maping for window resizing
vim.keymap.set('n', "-", "<C-w>-", {noremap = true, silent = true})
vim.keymap.set('n', "+", "<C-w>+", {noremap = true, silent = true})
vim.keymap.set('n', "=", "<C-w>=", {noremap = true, silent = true})
vim.keymap.set('n', "<", "<C-w><", {noremap = true, silent = true})
vim.keymap.set('n', ">", "<C-w>>", {noremap = true, silent = true})

-- Move things that are selected in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
