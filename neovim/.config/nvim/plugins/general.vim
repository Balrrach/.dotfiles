""""""" General

" Set dashboard search engine
let g:dashboard_default_executive ='telescope'


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
			".git",
			},

		mappings = {
			n = {
				["n"] = require('telescope.actions').move_selection_next,
				["e"] = require('telescope.actions').move_selection_previous,
				},
			},
		-- other defaults configuration here
		extensions = {"dap"},
	-- other configuration values here
	}
	})
EOF

