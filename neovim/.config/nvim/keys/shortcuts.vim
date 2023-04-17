" Set space as leader key
let mapleader=" "

" Move through the command history with easy
cnoremap <A-n> <Down>
cnoremap <A-e> <Up>

" Scroll Down with C-n and up with C-e
nnoremap <C-l> <C-e>
nnoremap <C-u> <C-y>

" Navigation
nnoremap <silent> E {
vnoremap <silent> E {
nnoremap <silent> N }
vnoremap <silent> N }
nnoremap <silent> <C-y> <C-o><CR>

" Next/previous buffer
nnoremap <silent> <C-,> :bnext<CR>
nnoremap <silent> <C-.> :bprevious<CR>

" Window management 
nnoremap <silent> <C-n> :wincmd h<CR>
nnoremap <silent> <C-e> :wincmd j<CR>
nnoremap <silent> <C-i> :wincmd k<CR>
nnoremap <silent> <C-o> :wincmd l<CR>

""" Paste copied(not deleted) content

" Exit from terminal
tnoremap <silent> <Esc> <C-\><C-n>

""" System management
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>W :wq<CR>
nnoremap <silent> <leader>c :bd<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

" LSP
lua << EOF
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, bufopts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	local bufopts = { noremap=true, silent=true, buffer=bufnr }
 	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
 	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
 	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
 	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
 	vim.keymap.set('n', 'gR', vim.lsp.buf.rename, bufopts)
 	vim.keymap.set('n', 'gF', vim.lsp.buf.formatting, bufopts)
	vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', 'gh', vim.lsp.buf.signature_help, bufopts)
end
EOF


""" Telescope
nnoremap <silent> <leader>ff :Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>
nnoremap <silent> <leader>fg :Telescope live_grep find_command=rg,--ignore,--hidden,--files<CR>
nnoremap <silent> <leader>fb :Telescope buffers<CR>
nnoremap <silent> <leader>fh :Telescope help_tags<CR>
nnoremap <silent> <leader>fr :Telescope oldfiles find_command=rg,--ignore,--hidden,--files<CR>
nnoremap <silent> <leader>t  :Telescope file_browser<CR>

""" Nvim Tree

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


" DAP
nnoremap <silent> <F4> <Cmd>lua require'dapui'.toggle()<CR>
nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F6> <Cmd>lua require'dap'.close()<CR>
nnoremap <silent> <F7> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F8> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F9> <Cmd>lua require'dap'.step_out()<CR>

nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
nnoremap <silent> <Leader>gd <Cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>

