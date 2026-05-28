return {
    cmd = {vim.fn.stdpath("data") .. "/mason/bin/clangd"},
    filetypes = {"c", "cpp", "objc", "objcpp" },
    root_markers = { "compile_commands.json", "compile_flags.txt", ".git" },
}
