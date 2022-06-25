""""""" Autocompletion

""" Autocompletion configuration
set completeopt=menu,menuone,noinsert


""" LSP Servers
lua <<EOF
require'lspconfig'.clangd.setup{}
require'lspconfig'.jdtls.setup{}
EOF




""" nvim-cmp
lua <<EOF
local cmp = require('cmp')
local lspkind = require('lspkind')
local lspconfig = require('lspconfig')

cmp.setup({

formatting = {
	format = 
	function(entry, vim_item)
		vim_item.kind = lspkind.presets.default[vim_item.kind]
		return vim_item
	end
	},

completion = {keyword_length = 1,},

snippet = {
	expand = function(args)
	-- For `vsnip` user.
	vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

	-- For `luasnip` user.
	-- require('luasnip').lsp_expand(args.body)

	-- For `ultisnips` user.
	-- vim.fn["UltiSnips#Anon"](args.body)
end,
},

mapping = {
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	-- ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
	['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
	['<C-e>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
	-- ['<Tab>'] = cmp.mapping.confirm({ select = true }),
	['<Esc>'] =
	function(fallback)
		cmp.mapping.abort()
		fallback()
	end,
	-- ['<CR>'] = function()
	-- if not cmp.confirm({ select = false }) then
	-- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<CR>', true, true, true), 'n', true)
	-- ['<CR>'] = vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<CR>', true, true, true), 'n', true),
},

sources = cmp.config.sources(
{
	{ name = 'vsnip' }, -- For vsnip users.
	{ name = 'nvim_lsp' },
	{ name = 'cmp_tabnine' },
	-- { name = 'luasnip' }, -- For luasnip users.
	-- { name = 'ultisnips' }, -- For ultisnips users.
	-- { name = 'snippy' }, -- For snippy users.
},
{ { name = 'buffer' }, }
)

})



-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = { { name = 'buffer' } }
	})


-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({ { name = 'path' } }, { { name = 'cmdline' } })
})


-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
	-- capabilities = capabilities
	-- }

EOF



""" Tabnine
lua << EOF
local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
})
EOF



""" nvim-lsp-installer
lua <<EOF
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(
function(server)
	local opts = {}

	-- (optional) Customize the options passed to the server
	-- if server.name == "tsserver" then
	--     opts.root_dir = function() ... end
	-- end

	-- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
	server:setup(opts)
	vim.cmd [[ do User LspAttachBuffers ]]
end
)
EOF

