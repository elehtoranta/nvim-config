-- Local shorthand namespace for mapping
local map = vim.keymap.set

-- Reassign <Leader> character. Default: '\'
vim.g.mapleader = " "

-- Move between windows with CTRL+[hjkl] and cycle with CTRL+m
map('', '<C-H>', '<C-W>h')
map('', '<C-J>', '<C-W>j')
map('', '<C-K>', '<C-W>k')
map('', '<C-L>', '<C-W>l')
map('', '<C-M>', '<C-W>w')

-- Switch between buffers with Leader + [jk]
map('n', '<S-Tab>', ':bnext<CR>')

-- Shift+[jk] to scroll with cursor vertically centered
map('n', '<S-j>', 'jzz')
map('n', '<S-k>', 'kzz')

-- Close buffer
map('n', '<leader>bd', ':bd<CR>')

-- Split current window to right and focus it with SHIFT+CTRL+Right.
map('', '<C-S-Right>', ':vsplit<CR><C-W>l')

-- Add :Explore for file navigation
map('n', '<leader>e', ':Explore<CR>')

map('n', '<Leader>q', ':q<CR>')

-- Source current file
map('', '<Leader><Leader>', ':so %<CR>')
