" Set space as leader key
let mapleader=" "


nnoremap <C-l> <C-e>


" Scroll Down with C-n and up with C-e
nnoremap <C-l> <C-e>
nnoremap <C-u> <C-y>

" move between panes to left/bottom/top/right
map <C-h> <C-w>h
" map <C-n> <C-w>j
map <C-n> <C-w>j
" map <C-e> <C-w>k
map <C-e> <C-w>k
map <C-i> <C-w>l

" Next buffer with C-j, previous buffer with C-y
nnoremap <silent> <C-j> :bnext<CR>
nnoremap <silent> <C-y> :bprevious<CR>



" LSP 
lua << EOF
local wk = require("which-key")
wk.register({
["<leader>"] = {
	f = {
		name = "+find",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { "<cmd>Telescope buffers<cr>", "Live Grep" },
		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "Help" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		},
	},
["<leader>e"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show Line Diagnostics" },
["<leader>h"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show Function Info" },
["<leader>w"] = { "<cmd>w<cr>", "Write Buffer" },
["<leader>W"] = { "<cmd>wq<cr>", "Write Buffer and Exit" },
-- ["<leader>c"] = { "<cmd>close<cr>", "Close Buffer" },
["<leader>c"] = { "<cmd>bd<cr>", "Close Buffer" },
["<leader>q"] = { "<cmd>q<cr>", "Quit Buffer" },
["<leader>Q"] = { "<cmd>q!<cr>", "Force Quit Buffer" },
["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Go to Declaration" },
["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
["gr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "List References" },
["gR"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Function Information" },
["gp"] = { "<cmd>lua vim.lsp.buf.peekDefinition()<CR>", "Go to Definition" },
["gh"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Token Information" },
["gF"] = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format File" },
})
EOF
" vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
" nnoremap <silent> <C-p> :lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = O.lsp.popup_border}})<CR>
" nnoremap <silent> <C-n> :lua vim.lsp.diagnostic.goto_next({popup_opts = {border = O.lsp.popup_border}})<CR>


""" Snippets
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab>   vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab>   vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

