vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local opts = {buffer = args.buf }

        vim.keymap.set("n", "gd",           vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr",           vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>rn",   vim.lsp.buf.rename,     opts)

    end
})
