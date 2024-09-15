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


lua << EOF
-- require('neoscroll').setup({
--     -- All these keys will be mapped to their corresponding default scrolling animation
--     mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
--                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
--     hide_cursor = true,          -- Hide cursor while scrolling
--     stop_eof = true,             -- Stop at <EOF> when scrolling downwards
--     respect_scrolloff = true,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
--     cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
--     easing_function = sin,       -- Default easing function
--     pre_hook = nil,              -- Function to run before the scrolling animation starts
--     post_hook = nil,             -- Function to run after the scrolling animation ends
--     performance_mode = false,    -- Disable "Performance Mode" on all buffers.
-- })
--
-- local t = {}
-- t['<C-u>'] = {'scroll', {'-10', 'true', '100'}}
-- t['<C-d>'] = {'scroll', {'10', 'true', '100'}}
-- require('neoscroll.config').set_mappings(t)

require('neoscroll').setup({
  mappings = {                 -- Keys to be mapped to their corresponding default scrolling animation
    '<C-u>', '<C-d>',
    '<C-b>', '<C-f>',
    '<C-y>', '<C-e>',
    'zt', 'zz', 'zb',
  },
  hide_cursor = true,          -- Hide cursor while scrolling
  stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  easing = 'linear',           -- Default easing function
  pre_hook = nil,              -- Function to run before the scrolling animation starts
  post_hook = nil,             -- Function to run after the scrolling animation ends
  performance_mode = false,    -- Disable "Performance Mode" on all buffers.
  ignored_events = {           -- Events ignored while scrolling
      'WinScrolled', 'CursorMoved'
  },
})
EOF

