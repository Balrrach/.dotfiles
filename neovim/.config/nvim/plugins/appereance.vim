""""""" Color Settings
" colorscheme fogbell
autocmd BufEnter *.c,*.cpp,*.java,*.ts,*.js,*.go,*.py colorscheme fogbell
colorscheme hybrid

hi DiagnosticError guifg=#E1171A
" hi Visual  guifg=#000000 guibg=#e5c07b gui=none		" Highlight Color


""" Change Icons
lua << EOL
local signs = { Error = "", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
EOL


""" Disable Virtual Text
lua << EOL
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = false,
	signs = true,
	underline = false,
	update_in_insert = false,
})
EOL

