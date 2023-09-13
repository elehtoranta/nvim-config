local vim = vim

-- Move to mason.lua
require('mason').setup {}
require('mason-lspconfig').setup({
  ensure_installed = {
    'rust_analyzer',
    'tsserver',
    'clangd',
  }
})

-- Setup language servers
local lspconfig = require('lspconfig')
lspconfig.clangd.setup{}
lspconfig.pyright.setup{}
lspconfig.tsserver.setup{}
-- lspconfig.lua_ls.setup{} -- f this slow ass server
lspconfig.rust_analyzer.setup{
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}
lspconfig.svelte.setup{}
lspconfig.html.setup{}
lspconfig.marksman.setup{}
lspconfig.hls.setup{
  filetypes = {'haskell', 'lhaskell', 'cabal',}
}
lspconfig.sqlls.setup{}

-- Just do ffs don't be lazyboi
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<Leader>df', vim.diagnostic.open_float)
vim.keymap.set('n', '<Leader>dl', vim.diagnostic.setloclist)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- -- Use LspAttach autocommand to only map the following keys
-- -- after the language server attaches to the current buffer
 vim.api.nvim_create_autocmd('LspAttach', {
   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
   callback = function(ev)
     -- Enable completion triggered by <c-x><c-o>
     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

     -- Buffer local mappings.
     -- See `:help vim.lsp.*` for documentation on any of the below functions
     local opts = { buffer = ev.buf }
     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
     vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
     vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
     vim.keymap.set('n', '<Leader>wl', function()
       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
     end, opts)
     vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
     vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
     vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, opts)
     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
     -- vim.keymap.set('n', '<Leader>f', function() -- Dunno how this works lol I don't need formats + clashes with fzf binds
     --   vim.lsp.buf.format { async = true }
     -- end, opts)
   end,
 })
