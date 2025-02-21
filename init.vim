call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
 Plug 'L3MON4D3/LuaSnip'
 Plug 'saadparwaiz1/cmp_luasnip'


call plug#end()

lua <<EOF

require("nvim-autopairs").setup {}
require("nvim-ts-autotag").setup {}

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
	expand = function(args)
	require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
	end,
},
window = {
	-- completion = cmp.config.window.bordered(),
	-- documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
['<C-b>'] = cmp.mapping.scroll_docs(-4),
['<C-f>'] = cmp.mapping.scroll_docs(4),
['<C-Space>'] = cmp.mapping.complete(),
['<C-e>'] = cmp.mapping.abort(),
['<CR>'] = cmp.mapping.confirm({ select = true }),
}),
sources = cmp.config.sources({
{ name = 'nvim_lsp' },
{ name = 'luasnip' }, -- For luasnip users.
}, {
	{ name = 'buffer' },
})
})

-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
-- Set configuration for specific filetype.
--[[ cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
{ name = 'git' },
}, {
{ name = 'buffer' },
})
})
require("cmp_git").setup() ]]-- 

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
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
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require'lspconfig'.clangd.setup { capabilities = capabilities }
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.cssls.setup { capabilities = capabilities }
require'lspconfig'.html.setup { capabilities = capabilities }
require'lspconfig'.gopls.setup {}

require 'erkka'
EOF
