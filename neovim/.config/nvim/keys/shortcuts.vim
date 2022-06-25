" Set space as leader key
let mapleader=" "

" Scroll Down with C-n and up with C-e
" nnoremap <C-l> <C-e>
" nnoremap <C-u> <C-y>

" Next/previous buffer
nnoremap <silent> E :bnext<CR>
nnoremap <silent> N :bprevious<CR>
" Next/previous tab
map <silent> <C-e> :tabprevious<CR>
" Next/previous window 
nnoremap <silent> <C-w>h :wincmd h<CR>
nnoremap <silent> <C-w>n :wincmd j<CR>
nnoremap <silent> <C-w>e :wincmd k<CR>
nnoremap <silent> <C-w>i :wincmd l<CR>

" Map ; to :
nnoremap ; :
vnoremap ; :

" Paste copied(not deleted) content

" Exit from terminal
tnoremap <silent> <Esc> <C-\><C-n>


" System managment
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wq<CR>
nnoremap <leader>c :bd<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>

" LSP shortcuts
nnoremap <silent> <leader>e :vim.diagnostic.open_float()<CR>
nnoremap <silent> <leader>h :vim.lsp.buf.hover()<CR>
nnoremap <silent> gd :vim.lsp.buf.definition()<CR>
nnoremap <silent> gD :vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi :vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr :vim.lsp.buf.references()<CR>
nnoremap <silent> gR :vim.lsp.buf.rename()<CR>
nnoremap <silent> gp :vim.lsp.buf.peekDefinition()<CR>
nnoremap <silent> gh :vim.lsp.buf.hover()<CR>
nnoremap <silent> gF :vim.lsp.buf.formatting()<CR>
" vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
" nnoremap <silent> <C-p> :lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = O.lsp.popup_border}})<CR>
" nnoremap <silent> <C-n> :lua vim.lsp.diagnostic.goto_next({popup_opts = {border = O.lsp.popup_border}})<CR>

" Telescope
nnoremap <silent> ff :Telescope find_files<CR>
nnoremap <silent> fg :Telescope live_grep<CR>
nnoremap <silent> fb :Telescope buffers<CR>
nnoremap <silent> fh :Telescope help_tags<CR>
nnoremap <silent> fr :Telescope oldfiles<CR>


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



""" Copia
" ["<leader>e"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show Line Diagnostics" },
" ["<leader>h"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show Function Info" },
" ["<leader>w"] = { "<cmd>w<cr>", "Write Buffer" },
" ["<leader>W"] = { "<cmd>wq<cr>", "Write Buffer and Exit" },
" -- ["<leader>c"] = { "<cmd>close<cr>", "Close Buffer" },
" ["<leader>c"] = { "<cmd>bd<cr>", "Close Buffer" },
" ["<leader>q"] = { "<cmd>q<cr>", "Quit Buffer" },
" ["<leader>Q"] = { "<cmd>q!<cr>", "Force Quit Buffer" },
" ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
" ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Go to Declaration" },
" ["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
" ["gr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "List References" },
" ["gR"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Function Information" },
" ["gp"] = { "<cmd>lua vim.lsp.buf.peekDefinition()<CR>", "Go to Definition" },
" ["gh"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Token Information" },
" ["gF"] = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format File" },
" lua << EOF
" local wk = require("which-key")
" wk.register({
" ["<leader>"] = {
" 	f = {
" 		name = "+find",
" 		f = { "<cmd>Telescope find_files<cr>", "Find File" },
" 		g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
" 		b = { "<cmd>Telescope buffers<cr>", "Buffers" },
" 		h = { "<cmd>Telescope help_tags<cr>", "Help" },
" 		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
" 		},
" 	},
" })
" EOF
" " vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
" " nnoremap <silent> <C-p> :lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = O.lsp.popup_border}})<CR>
" " nnoremap <silent> <C-n> :lua vim.lsp.diagnostic.goto_next({popup_opts = {border = O.lsp.popup_border}})<CR>
" 

