""""""" Color Settings

colorscheme default
hi Comment ctermfg=254
hi NormalFloat ctermfg=255
hi Pmenu ctermbg=0
hi Pmenu ctermfg=255
hi SignColumn ctermbg=0
hi SpellBad ctermfg=255
hi SpellLocal ctermfg=0
hi DiffDelete ctermbg=1
hi DiffDelete ctermfg=255
hi DiffAdd ctermbg=22
hi DiffAdd ctermfg=255
hi DiffChange ctermfg=0
hi DiffText ctermfg=0

hi clear CursorLine
hi CursorLine gui=underline cterm=underline

autocmd BufEnter *.vim TSEnable highlight


" autocmd BufEnter *.c,*.cpp,*.java,*.ts,*.js,*.go,*.py colorscheme fogbell
" colorscheme fogbell
" autocmd BufEnter *.tex,*.md,*.vim colorscheme hybrid

" hi DiagnosticError guifg=#E1171A
" hi Visual  guifg=#000000 guibg=#e5c07b gui=none		" Highlight Color

" highlight Comment ctermfg=Red
" hi LineNr ctermfg=Yellow


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
	severity_sort = true,
})

vim.diagnostic.config({
float = {
	border = 'rounded',
	source = 'always',
	header = '',
	prefix = '',
},
})
EOL

