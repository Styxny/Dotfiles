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

          -- BEGIN_ON_ATTACH_DEFAULT
          vim.keymap.set("n",          "<C-d>",          api.tree.change_root_to_node,       opts("CD"))
          vim.keymap.set("n",          "<C-e>",          api.node.open.replace_tree_buffer,  opts("Open: In Place"))
          vim.keymap.set("n",          "<C-k>",          api.node.show_info_popup,           opts("Info"))
          vim.keymap.set("n",          "<C-r>",          api.fs.rename_sub,                  opts("Rename: Omit Filename"))
          vim.keymap.set("n",          "<C-t>",          api.node.open.tab,                  opts("Open: New Tab"))
          vim.keymap.del("n",          "<C-v>",          {buffer = bufnr})
          vim.keymap.del("n",          "<C-x>",          {buffer = bufnr})
          vim.keymap.set("n",          "<BS>",           api.node.navigate.parent_close,     opts("Close Directory"))
          vim.keymap.set("n",          "<CR>",           api.node.open.edit,                 opts("Open"))
          vim.keymap.set({ "n", "x" }, "<Del>",          api.fs.remove,                      opts("Delete"))
          vim.keymap.set("n",          "<Tab>",          api.node.open.preview,              opts("Open Preview"))

          -- Resize nvimtree match vim
          vim.keymap.set('n', '>', ':NvimTreeResize +1<CR>', opts("REsize nvim tree"))
          vim.keymap.set('n', '<', ':NvimTreeResize -1<CR>', opts("REsize nvim tree"))
         
          vim.keymap.set("n",          ".",              api.node.run.cmd,                   opts("Run Command"))
          vim.keymap.set("n",          "-",              api.tree.change_root_to_parent,     opts("Up"))
          vim.keymap.set("n",          "a",              api.fs.create,                      opts("Create File Or Directory"))
          vim.keymap.set("n",          "bd",             api.marks.bulk.delete,              opts("Delete Bookmarked"))
          vim.keymap.set("n",          "bt",             api.marks.bulk.trash,               opts("Trash Bookmarked"))
          vim.keymap.set("n",          "bmv",            api.marks.bulk.move,                opts("Move Bookmarked"))
          vim.keymap.set("n",          "B",              api.filter.no_buffer.toggle,        opts("Toggle Filter: No Buffer"))
          vim.keymap.set({ "n", "x" }, "c",              api.fs.copy.node,                   opts("Copy"))
          vim.keymap.set("n",          "C",              api.filter.git.clean.toggle,        opts("Toggle Filter: Git Clean"))
          vim.keymap.set("n",          "[c",             api.node.navigate.git.prev,         opts("Prev Git"))
          vim.keymap.set("n",          "]c",             api.node.navigate.git.next,         opts("Next Git"))
          vim.keymap.set({ "n", "x" }, "d",              api.fs.remove,                      opts("Delete"))
          vim.keymap.set({ "n", "x" }, "D",              api.fs.trash,                       opts("Trash"))
          vim.keymap.set("n",          "E",              api.tree.expand_all,                opts("Expand All"))
          vim.keymap.set("n",          "e",              api.fs.rename_basename,             opts("Rename: Basename"))
          vim.keymap.set("n",          "]e",             api.node.navigate.diagnostics.next, opts("Next Diagnostic"))
          vim.keymap.set("n",          "[e",             api.node.navigate.diagnostics.prev, opts("Prev Diagnostic"))
          vim.keymap.set("n",          "F",              api.filter.live.clear,              opts("Live Filter: Clear"))
          vim.keymap.set("n",          "f",              api.filter.live.start,              opts("Live Filter: Start"))
          vim.keymap.set("n",          "g?",             api.tree.toggle_help,               opts("Help"))
          vim.keymap.set({ "n", "x" }, "gy",             api.fs.copy.absolute_path,          opts("Copy Absolute Path"))
          vim.keymap.set("n",          "ge",             api.fs.copy.basename,               opts("Copy Basename"))
          vim.keymap.set("n",          "I",              api.filter.git.ignored.toggle,      opts("Toggle Filter: Git Ignored"))
          -- Make swapping between panes match vim keys 
          vim.keymap.set('n',          "J", "<C-w>j", opts("Move focus down"))
          vim.keymap.set('n',          "K", "<C-w>k", opts("Move focus up"))
          vim.keymap.set('n',          "H", "<C-w>h", opts("Move focus left"))
          vim.keymap.set('n',          "L", "<C-w>l", opts("Move focus Right"))

          vim.keymap.set("n",          "M",              api.filter.no_bookmark.toggle,      opts("Toggle Filter: No Bookmark"))
          vim.keymap.set({ "n", "x" }, "m",              api.marks.toggle,                   opts("Toggle Bookmark"))
          vim.keymap.set("n",          "o",              api.node.open.edit,                 opts("Open"))
          vim.keymap.set("n",          "O",              api.node.open.no_window_picker,     opts("Open: No Window Picker"))
          vim.keymap.set("n",          "p",              api.fs.paste,                       opts("Paste"))
          vim.keymap.set("n",          "gp",             api.fs.move,                        opts("Move"))
          vim.keymap.set("n",          "P",              api.node.navigate.parent,           opts("Parent Directory"))
          vim.keymap.set("n",          "q",              api.tree.close,                     opts("Close"))
          vim.keymap.set("n",          "r",              api.fs.rename,                      opts("Rename"))
          vim.keymap.set("n",          "R",              api.tree.reload,                    opts("Refresh"))
          -- Make open in vertical/horizonal pane
          vim.keymap.set("n", "s", api.node.open.vertical, opts("NvimTree: Toggle"))   
          vim.keymap.set("n", "h", api.node.open.horizontal, opts("NvimTree: Toggle"))

          vim.keymap.set("n",          "S",              api.tree.search_node,               opts("Search"))
          vim.keymap.set("n",          "u",              api.fs.rename_full,                 opts("Rename: Full Path"))
          vim.keymap.set("n",          "U",              api.filter.custom.toggle,           opts("Toggle Filter: Custom"))
          vim.keymap.set("n",          "W",              api.tree.collapse_all,              opts("Collapse All"))
          vim.keymap.set({ "n", "x" }, "x",              api.fs.cut,                         opts("Cut"))
          vim.keymap.set("n",          "y",              api.fs.copy.filename,               opts("Copy Name"))
          vim.keymap.set("n",          "Y",              api.fs.copy.relative_path,          opts("Copy Relative Path"))
          vim.keymap.set("n",          "<2-LeftMouse>",  api.node.open.edit,                 opts("Open"))
          vim.keymap.set("n",          "<2-RightMouse>", api.tree.change_root_to_node,       opts("CD"))
          -- END_ON_ATTACH_DEFAULT

      end
	  require("nvim-tree").setup({on_attach = on_attach,
            filters = {
                dotfiles = false,
                custom = {},
                exclude = {},
            },
            git = {
                enable = true,
                ignore = false,
            }

      })
  end,
}
