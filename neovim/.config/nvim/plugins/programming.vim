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
lua << EOF
require('gitsigns').setup()
EOF


""" Trouble
lua << EOF
require('trouble').setup({
	position = "right", -- position of the list can be: bottom, top, left, right
	width = 96, -- width of the list when position is left or right
	-- auto_preview = false,
})
EOF

""" DAP
lua << EOF
local dap = require('dap')

-- c++
dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "/usr/bin/codelldb",
        args = { "--port", "${port}" },
    },
}

-- UI
local dapui = require("dapui")
require("dapui").setup()
dapui.setup({
    layouts = {
        {
            elements = {
                "watches",
                { id = "breakpoints", size = 0.3 },
                { id = "scopes", size = 0.5 },
                { id = "repl", size = 0.2 },
            },
            size = 90,
            position = "left",
        },
        {
            elements = {
                "console",
            },
            size = 0.2,
            position = "bottom",
        },
    },
    controls = {
        -- Requires Neovim nightly (or 0.8 when released)
        enabled = true,
        -- Display controls in this element
        element = "repl",
    },
})


vim.fn.sign_define(
    "DapBreakpoint",
    { text = "●", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
)
vim.fn.sign_define(
    "DapBreakpointCondition",
    { text = "◆", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
)
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "", linehl = "debugPC", numhl = "debugPC" })

dap.defaults.fallback.force_external_terminal = true

-- Virtual Text
local daptext = require("nvim-dap-virtual-text")
daptext.setup()

EOF

