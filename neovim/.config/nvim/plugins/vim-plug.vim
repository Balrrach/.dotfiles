call plug#begin('~/.config/nvim/autoload/plugged')

""""""" General
Plug 'glepnir/dashboard-nvim'				" Intro screen
Plug 'nvim-lualine/lualine.nvim'			" Status line
" Plug 'hoob3rt/lualine.nvim'				" Status line(Abandonned)
Plug 'nvim-lua/plenary.nvim'				" General vim functions
Plug 'nvim-telescope/telescope.nvim'			" Searcher Based on Regular Expressions
Plug 'ahmedkhalf/lsp-rooter.nvim'			" Automatically Change to Working Directory Thanks to LSP(allows to call nvim from outside project folder)
Plug 'embear/vim-localvimrc'				" Access Local .vimrc
Plug 'lambdalisue/suda.vim'				" Allows to read/write super user files
" Plug 'sheerun/vim-polyglot'				" Better Syntax Support(Investigar)
" Plug 'kevinhwang91/nvim-bqf'				" Improved Quickfix Window
Plug 'soywod/himalaya', {'rtp': 'vim'}
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'Mofiqul/vscode.nvim'

""""""" Themes
Plug 'EdenEast/nightfox.nvim'
" Plug 'morhetz/gruvbox'
" Plug 'joshdick/onedark.vim'
" Plug 'pacokwon/onedarkhc.vim'
" Plug 'w0ng/vim-hybrid'
" Plug 'ajmwagar/vim-deus'
" Plug 'Shatur/neovim-ayu'
" Plug 'embark-theme/vim'

""""""" Icons
Plug 'onsails/lspkind-nvim'				" vscode like icons for autocompletion fields
Plug 'kyazdani42/nvim-web-devicons'			" Programming language icons



""""""" Autocompletion
Plug 'neovim/nvim-lspconfig'				" LSP configurations
Plug 'nvim-treesitter/nvim-treesitter'			" Treesitter
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }	" Autocompletion engine
Plug 'williamboman/nvim-lsp-installer'			" Lenguage Server Installer
" Plug 'kabouzeid/nvim-lspinstall'			" Lenguage Server Installer Alternative



""""""" Snippets
Plug 'hrsh7th/vim-vsnip'				" Snippets Engine
Plug 'hrsh7th/cmp-vsnip'				" Snippets Integration with Completion
Plug 'rafamadriz/friendly-snippets'			" Snippets Collection
" Plug 'SirVer/ultisnips'				" Alternative Snippet Engine
" Plug 'honza/vim-snippets'				" Alternative Provider Collection



""""""" Programming
Plug 'ahmedkhalf/project.nvim'				" Project Management
Plug 'folke/trouble.nvim'				" LSP Error Viewer
Plug 'Chiel92/vim-autoformat'				" File Formating According to a Formatter
" Plug 'sbdchd/neoformat'				" Alternative File Formatter
Plug 'mfussenegger/nvim-dap'				" Debugging
Plug 'skywind3000/asynctasks.vim'			" Tasks Runner
Plug 'skywind3000/asyncrun.vim'				" Async Task Runner
Plug 'windwp/nvim-spectre'				" Search and Replace(Study)
Plug 'ray-x/lsp_signature.nvim'				" Show Function Signature/Information
Plug 'numToStr/Comment.nvim'				" Comments
Plug 'abecodes/tabout.nvim'				" Allows to exit (), {}, [] etc... using tab
Plug 'jiangmiao/auto-pairs'				" Auto pair completion for (, [, {
" Plug 'LunarWatcher/auto-pairs'
Plug 'norcalli/nvim-colorizer.lua'

""" Git related
Plug 'lewis6991/gitsigns.nvim'				" Git Signs in Gutter and Chuck Management
Plug 'sindrets/diffview.nvim'				" View diff Between a File Git Versions
Plug 'tpope/vim-fugitive'				" Complete Git Management
Plug 'rhysd/git-messenger.vim'				" Access Git Blame

""" Language Related
" Plug 'lervag/vimtex'
Plug 'mfussenegger/nvim-jdtls'				" Java LSP full functionality
" Plug 'jalvesaq/Nvim-R'					" R IDE tools
" Plug 'Groctel/pddl.vim'


call plug#end()



source $HOME/.config/nvim/plugins/general.vim
source $HOME/.config/nvim/plugins/appereance.vim
source $HOME/.config/nvim/plugins/autocompletion.vim
source $HOME/.config/nvim/plugins/programming.vim

