local cmp = require('cmp')

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
     end,
  },

  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- ['<C-e>'] = cmp.mapping.close(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
  },

  -- The order matters, i.e. completion sources are parsed in (this) order (:h cmp-config.sources)
  sources = cmp.config.sources ({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer', keyword_length = 4 },
    { name = 'path' },
  }),

  experimental = {
    native_menu = false,
    ghost_text = true,
  },

  window = {
    completion = {
      scrolloff = 5,
      col_offset = 5,
    }
  },
}

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- `:` cmdline setup.
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['rust_analyzer'].setup {
  capabilities = capabilities
}
require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}
require('lspconfig')['tsserver'].setup {
  capabilities = capabilities
}
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}
require('lspconfig')['lua_ls'].setup {
  capabilities = capabilities
}
require('lspconfig')['eslint'].setup {
  capabilities = capabilities
}
require('lspconfig')['cssls'].setup {
  capabilities = capabilities
}
