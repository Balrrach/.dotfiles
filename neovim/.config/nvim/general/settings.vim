""" General
set nocompatible		" Disable Compatibility with old-time vi
set ignorecase			" Disable Case insensitive in Searches
set hlsearch			" Highlight Search 
set incsearch			" Enable Incremental search
set wildmode=longest,list	" Bash-like Tab Completions
set hidden			" Allows to change buffers that haven't saved their content
set exrc			" Enable Loading local vimrc
set secure			" Dont allow local vimrc to execute command line commands
set splitbelow			" Open horizontal splits bellow
set splitright			" Open vertical splits to the right
autocmd TabNew * wincmd L	" Open all splits vertically
" Averiguar como hacer referencia a commmand-line-window para hacer una excepción

""" System
set mouse=v			" Enable Paste Using Middle-Click Mouse
set mouse=a			" Enable Mouse Clicking
set ttyfast			" Speed Up Mouse Scrolling
set clipboard=unnamedplus	" Enable System Clipboard
filetype plugin indent on	" Allow auto-indenting Depending on File Type
" set noswapfile		" disable creating swap file
" set backupdir=~/.cache/vim	" Directory to store backup files.
" set spell			" Enable spell check (may need to download language package)
autocmd BufRead,BufNewFile *.tex,*.md setlocal spell spelllang=es,en_us	" Spellcheck in markdown files


""" Appereance
syntax off			" syntax highlighting
" set cursorline		" Highlight current cursorline
" set cc=100			" Vertical Line at Given Character Number for proper Coding Style
" set termguicolors		" Correct theme display
" set noshowmode			" Dont show --INSERT--
set pumheight=10		" Size of suggestions window
" let g:asyncrun_open=8		" Tamaño del buffer de compilacion
set cmdheight=1		" More space for error mesagges
set nowrap			" Display lines as one long line
set scrolloff=8			" Lines of preview vertically
set sidescrolloff=8		" Lines of preview horizontally
set number relativenumber	" Relative Numbers in the Margins
set signcolumn=yes		" Diagtostics room in gutter
" set scl=no			" No signcolumn
hi SignColumn ctermbg=256	" Black color for the signcolumn
set guicursor=i:block

set breakindent " Indents word-wrapped lines as much as the 'parent' line
" Ensures word-wrap does not split words
set formatoptions=l
set lbr

au BufRead,BufNewFile *.md,*.tex setlocal wrap linebreak	" Line wrap in Markdown, LaTexfiles
au BufRead,BufNewFile *Trouble setlocal wrap linebreak		" Line wrap in Trouble files


""" Indentation
set tabstop=8			" number of columns occupied by a tab 
set softtabstop=8		" see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=8		" width for autoindents
set cindent			" Enables Smart autoindentation
" set expandtab			" Enables Tabs Conversion to Spaces


""" LAST
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o		" Elimina la inserccion automatica de comentario al pulsar enter u o(normal mode) en una linea comentada

