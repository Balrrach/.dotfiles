""" Autopairs
let g:AutoPairs = {'(':')', '[':']', '{':'}'}
" let g:AutoPairsCompleteOnlyOnSpace = 1


""" Treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {'c','cpp',},
}local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF



" LSP Signature
lua << EOF
require'lsp_signature'.setup({
	hint_enable = false, -- virtual hint enable
	-- floating_window = false,
	})
EOF



" Load local vimrc
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0
let g:localvimrc_name = [ ".lvimrc", ".vimrc" ]


" Formatter options
let g:autoformat_verbosemode = 2
" let g:formatdef_clangformat = '"clang-format -style=file"'
" let g:formatters_typescript = ['clangformat']
" let g:formatdef_clangformat_file = '"clang-format -style={IndentWidth: 2}"'
" let g:formatters_typescript = ['clangformat_file']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" 
" let g:neoformat_typescript_personal = {
"             \ 'exe': 'clang-format',
"             \ 'args': ['-style=file'],
"	      \ 'env': ["DEBUG=1"],
"             \ }
"
" let g:neoformat_enabled_typescript = ['personal']


" Comment configuration
lua << EOF
	require('Comment').setup()
EOF


""" Project Manager
lua << EOF
require("project_nvim").setup{}
require('telescope').load_extension('projects')
EOF


""" Gitsigns
lua << EOF
require('gitsigns').setup()
EOF


""" Tabout
lua << EOF
require('tabout').setup {
	tabkey = '<Tab>', -- key to trigger tabout
	enable_backwards = true,
	-- act_as_tab = true, -- shift content if tab out is not possible
	-- completion = true, -- if the tabkey is used in a completion pum
	tabouts = {
		{open = "'", close = "'"},
		{open = '"', close = '"'},
		{open = '`', close = '`'},
		{open = '(', close = ')'},
		{open = '[', close = ']'},
		{open = '{', close = '}'}
		},
	ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
	}
EOF


""" Asyn-Tasks
let g:asynctasks_term_pos = 'TAB'
