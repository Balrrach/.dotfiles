""" Autopairs
let g:AutoPairs = {'(':')', '[':']', '{':'}'}
" let g:AutoPairsCompleteOnlyOnSpace = 1


""" Treesitter
" lua << EOF
" require'nvim-treesitter.configs'.setup {
"   highlight = {
"     enable = true,
"     disable = {},
"   },
"   indent = {
"     enable = false,
"     disable = {},
"   },
"   ensure_installed = {'c','cpp',},
" }local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
" parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
" EOF
"


" LSP Signature
lua << EOF
require'lsp_signature'.setup({
	hint_enable = false, -- virtual hint enable
	-- floating_window = false,
	})
EOF


" Comment configuration
lua << EOF
	require('Comment').setup()
EOF



""" Gitsigns
" lua << EOF
" require('gitsigns').setup()
" EOF


lua << EOF
require('trouble').setup({
	position = "right", -- position of the list can be: bottom, top, left, right
	width = 96, -- width of the list when position is left or right
	-- auto_preview = false,
})
EOF
