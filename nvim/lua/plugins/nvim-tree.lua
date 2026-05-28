return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()

      local api = require("nvim-tree.api")

      local function on_attach(bufnr)
          local opts = function(desc)
              return { desc = desc, buffer = bufnr, noremap = true, silent = true }
          end

          api.config.mappings.default_on_attach(bufnr)

          vim.keymap.set("n", "v", api.node.open.vertical, opts("NvimTree: Toggle"))   
          vim.keymap.set("n", "h", api.node.open.horizontal, opts("NvimTree: Toggle"))

          -- Maping it easier to more between windows
          vim.keymap.set('n', "J", "<C-w>j", opts("Move focus down"))
          vim.keymap.set('n', "K", "<C-w>k", opts("Move focus up"))
          vim.keymap.set('n', "H", "<C-w>h", opts("Move focus left"))
          vim.keymap.set('n', "L", "<C-w>l", opts("Move focus Right"))
      end
	  require("nvim-tree").setup({on_attach = on_attach})
  end,
}
