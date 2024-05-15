-- Local shorthand namespace for mapping
local map = vim.keymap.set

-- Reassign <Leader> character. Default: '\'
vim.g.mapleader = " "

-- Source current file, handy when configuring
-- map('', '<Leader><Leader>', ':so %<CR>')

-- Move between windows with CTRL+[hjkl] and cycle with CTRL+m
map('', '<C-H>', '<C-W>h')
map('', '<C-J>', '<C-W>j')
map('', '<C-K>', '<C-W>k')
map('', '<C-L>', '<C-W>l')
-- map('', '<C-W>', '<C-W>w') -- This overrides default Vim

-- Switch between buffers with Leader + [jk]
map('n', '<Leader>bn', ':bnext<CR>')
map('n', '<Leader>bp', ':bprevious<CR>')
map('n', '<leader>bd', ':bdelete<CR>') -- Close
map('n', '<leader>bs', ':bdelete!<CR>') -- Scrap buffer
map('n', '<leader>bb', ':enew<CR>') -- New buffer
map('n', '<leader>bm', ':bmod<CR>') -- Next modified buffer

-- Tab controls. Vim has next/previous tab (gt/gT) internally.
map('n', '<leader>tt', ':tabnew<CR>')
map('n', '<leader>tc', ':tabclose<CR>')
-- map('n', '<leader>tf', ':tabfind $1') -- TODO, find and open file as tab

-- Shift+[jk] to scroll with cursor vertically centered
-- map('n', '<S-j>', 'jzz')
-- map('n', '<S-k>', 'kzz') -- TODO Conflict with LSP/TS <S-K>: diagnostics
--
-- Scroll with cursor on first non-whitespace character of line.
map('n', '<M-k>', '-')
map('n', '<M-j>', '+')

-- Split current window to right and focus it with SHIFT+CTRL+Right.
map('', '<C-S-Right>', ':vsplit<CR><C-W>l')

-- map('n', '<Leader>pe', ':Lexplore %:p:h<CR>')
map('n', '<Leader>pe', ':Explore<CR>')
-- Add :Rexplore toggle for file navigation, ensuring initialization with :Explore
-- local explorerUsed = false
-- map('n', '<Leader>pe', function ()
--   if not explorerUsed then
--     explorerUsed = true
--     vim.cmd('Explore!')
--   else
--     vim.cmd('Rexplore')
--   end
-- end)

-- Toggle search highlighting
map('n', '<Leader>h', function ()
  if vim.o.hlsearch then
    vim.o.hlsearch = false
  else
    vim.o.hlsearch = true
  end
end, {})

-- Editing shorts
map('n', '<Leader>q', ':quit<CR>')
map('n', '<Leader>qa', ':qall<CR>')
map('n', '<Leader>qw', ':wq<CR>')
map('n', '<Leader>qs', ':xa<CR>') -- Write and quit all buffers
map('n', '<Leader>w', ':w<CR>')
map('n', '<Leader>e', ':e<CR>')

-- Align cursor on inserting matching pairs
map('i', '{}', '{}<Left>')
map('i', '<>', '<><Left>')
map('i', '()', '()<Left>')
map('i', '[]', '[]<Left>')
map('i', '\"\"', '\"\"<Left>')
map('i', '\'\'', '\'\'<Left>')

-- Copy to slow clipboard register '+' (C-v paste)
map('v', '<C-c>', '\"+y')

-- TODO Resize windows

-- Bracket motions on non-first-column brackets. (Oddball syntax langs like
-- Python still need special treatment)
-- map('n', '[[', '?{<CR>w99[{')
-- map('n', '][', '/}<CR>b99]}')
-- map('n', ']]', 'j0[[%/{<CR>')
-- map('n', '[]', 'k$][%?}<CR>')

-- Tabs
map('n', '<Leader>te', ':tabedit<CR>')
map('n', '<Leader>tn', ':tabnext<CR>')
map('n', '<Leader>tp', ':tabprevious<CR>')

-- Quickfix list error movement
map('n', '<Leader>cc', ':cc<CR>')
map('n', '<Leader>cn', ':cn<CR>')
map('n', '<Leader>cp', ':cp<CR>')

map('n', '<Leader>cd', ':cd %:p:h<CR>')
