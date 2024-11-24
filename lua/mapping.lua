local vim = vim
-- vim.keymap.set('n', '<leader><leader>', ':source %<CR>') -- For configuring

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>h', function()
    vim.o.hlsearch = vim.o.hlsearch == false and true or false
end)
vim.keymap.set('n', '<leader>te', ':tabedit<CR>')

vim.keymap.set('n', '<leader>ls', ':ls<CR>')
vim.keymap.set('n', '<leader>bn', ':bnext<CR>')
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>')
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>')

-- TODO Plug map for vimgrep (:h :vimgrep)
vim.keymap.set('n', '<leader>cw', ':cw<CR>')
vim.keymap.set('n', '<leader>cn', ':cn<CR>')


-- LSP
-- Replace with LspAttach event autocmd if errors
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)          -- ReName
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references)      -- List references
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)      -- Go to definition
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation)  -- List implementation
vim.keymap.set('n', '<leader>jt', vim.lsp.buf.type_definition) -- Jump to type
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float)   -- Diagnostic float

-- Netrw
vim.keymap.set('n', '<leader>ld', ':Lexplore<CR>') -- List directory

vim.cmd('colorscheme retrobox')
