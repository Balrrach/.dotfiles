""""""" Autocompletion

""" Autocompletion configuration
set completeopt=menu,menuone,noinsert



""" Mason
lua <<EOF
require("mason").setup()
EOF



""" LSP Servers
lua << EOF
local lspconfig = require 'lspconfig'

-- C++
require'lspconfig'.clangd.setup{
	on_attach = on_attach,
	flags = lsp_flags,
}
EOF



""" nvim-cmp
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
	['<C-e>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
	['<C-Esc>'] = cmp.mapping.abort(),
    }),
    sources = cmp.config.sources({
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'nvim_lsp' },
      -- { name = 'cmp_tabnine' },
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline({
	  -- ['<C-n>'] = cmp.select_next_item(),
	  -- ['<C-e>'] = cmp.select_prev_item(),
	  ['<C-e>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    }),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

EOF



""" Tabnine
" lua << EOF
" local tabnine = require('cmp_tabnine.config')
" tabnine:setup({
" 	max_lines = 1000;
" 	max_num_results = 20;
" 	sort = true;
" 	run_on_every_keystroke = true;
" 	snippet_placeholder = '..';
" 	ignored_file_types = { -- default is not to ignore
" 		-- uncomment to ignore in lua:
" 		-- lua = true
" 	};
" })
" EOF

