local vim = vim
-- vim.keymap.set('n', '<leader><leader>', ':source %<CR>') -- For configuring

vim.g.mapleader = ' '

-- General
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

-- CWD
vim.keymap.set('n', '<leader>..', ':cd ..<CR>')
vim.keymap.set('n', '<leader>./', ':cd -<CR>')
vim.keymap.set('n', '<leader>sp', ':cd %:p:h<CR>')

-- TODO Plug map for vimgrep (:h :vimgrep)
vim.keymap.set('n', '<leader>cw', ':cw<CR>')
vim.keymap.set('n', '<leader>cn', ':cn<CR>')
vim.keymap.set('n', '<leader>cp', ':cp<CR>')
vim.keymap.set('n', '<leader>cd', ':cclose<CR>')

vim.keymap.set('n', '<M-j>', 'jzz')
vim.keymap.set('n', '<M-k>', 'kzz')

-- Yank all
vim.keymap.set('n', '<leader>ya', ':%y<CR>')

-- Git
vim.keymap.set('n', '<leader>ga', ':Git add %<CR>')
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>')
vim.keymap.set('n', '<leader>gs', ':Git status<CR>')
vim.keymap.set('n', '<leader>gdd', ':Gdiffsplit!<CR>')
vim.keymap.set('n', '<leader>gdl', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>gdh', ':diffget //3<CR>')

-- LSP
-- Replace with LspAttach event autocmd if errors
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)           -- ReName
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references)       -- List references
vim.keymap.set('n', '<leader>dd', vim.lsp.buf.definition)       -- Go to definition
vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation)   -- List implementation
vim.keymap.set('n', '<leader>jt', vim.lsp.buf.type_definition)  -- Jump to type
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float)    -- Diagnostic float
vim.keymap.set('n', '<leader>=', vim.lsp.buf.format)            -- Format

vim.keymap.set('n', '<leader>]', vim.diagnostic.goto_next)      -- Next diagnostic/error
vim.keymap.set('n', '<leader>[', vim.diagnostic.goto_prev)      -- Previous diagnostic/error

-- Telescope
local ts = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', ts.find_files)
vim.keymap.set('n', '<leader>fw', ts.grep_string)
vim.keymap.set('n', '<leader>fg', ts.live_grep)
vim.keymap.set('n', '<leader>fm', ts.man_pages)
vim.keymap.set('n', '<leader>fb', ts.current_buffer_fuzzy_find)
vim.keymap.set('n', '<leader>fs', ts.git_status)
vim.keymap.set('n', '<leader>fl', ts.buffers)
-- Visual mode find word
vim.keymap.set('v', '<leader>fw', function()
    vim.cmd('normal! "zy')
    local text = vim.fn.getreg('z')

    ts.grep_string({ search = text })
end, { desc = '[S]earch selected [W]ord (Visual)' })

vim.keymap.set('n', '<leader>cp', function() vim.g.copilot_enabled = not vim.g.copilot_enabled; print(string.format("Copilot enabled: %s", vim.g.copilot_enabled)) end)

-- Netrw
vim.keymap.set('n', '<leader>ld', ':Lexplore<CR>')              -- List directory

vim.cmd('colorscheme retrobox')
