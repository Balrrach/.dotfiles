""""""" General

" Set dashboard search engine
let g:dashboard_default_executive ='telescope'


""" Key Hint
lua << EOF
require("which-key").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
}
EOF


""" Lualine
lua << EOF
require'lualine'.setup{ options = { icons_enabled = true, theme = 'onedark' } }

local colors = {
	bg = '#202328',
	fg = '#bbc2cf',
	yellow = '#ECBE7B',
	cyan = '#008080',
	darkblue = '#081633',
	green = '#98be65',
	orange = '#FF8800',
	violet = '#a9a1e1',
	magenta = '#c678dd',
	blue = '#51afef',
	red = '#ec5f67'
}

local conditions = {
	buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
	hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
	check_git_workspace =
	function()
		local filepath = vim.fn.expand('%:p:h')
		local gitdir = vim.fn.finddir('.git', filepath .. ';')
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end
}

require('lualine').setup({
options = {
	icons_enabled = true,
	component_separators = {'', ''},
	section_separators = {'', ''},
	disabled_filetypes = {}
	},
sections = {
	lualine_a = {'mode'},
	lualine_b = {'branch',
	-- color_added = colors.green,
	-- color_modified = colors.orange,
	-- color_removed = colors.red,
	-- symbols = {added = ' ', modified = '柳 ', removed = ' '},
	-- condition = conditions.hide_in_width
	},
lualine_c = {'filename'},
lualine_x = {'diagnostics', 'encoding', 'fileformat', 'filetype'},
lualine_y = {'progress'},
lualine_z = {'location'}
},
inactive_sections = {
	lualine_a = {},
	lualine_b = {},
	lualine_c = {'filename'},
	lualine_x = {'location'},
	lualine_y = {},
	lualine_z = {}
	},
tabline = {},
extensions = {}
})
EOF


""" Telescope
lua << EOF
	require("telescope").setup({
	defaults = {
		-- preview = false,
		layout_config = {
			width=0.90,
			preview_width=0.6,
			vertical = { width = 0.9 },
			-- other layout configuration here
			},

		file_ignore_patterns = {
			"node_modules",
			"build",
			"CMakeFiles",
			},

		mappings = {
			n = {
				["n"] = require('telescope.actions').move_selection_next,
				["e"] = require('telescope.actions').move_selection_previous,
				},
			}
		-- other defaults configuration here
		},
	-- other configuration values here
	})
EOF

