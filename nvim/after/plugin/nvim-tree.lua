local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>nt", api.tree.toggle, {desc = "NvimTree: Toggle"})
