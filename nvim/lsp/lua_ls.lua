return {
	cmd = {vim.fn.stdpath("data") .. "/mason/bin/lua-language-server"},
	filetypes = {"lua"},
	root_markers = {'.luarc.json', '.luarc.jsonc'},
}
