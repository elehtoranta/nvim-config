-- Local shorthand namespace for mapping
local map = vim.keymap.set

-- Reassign <Leader> character. Default: '\'
vim.g.mapleader = " "

-- Move between windows with CTRL+[hjkl] and cycle with CTRL+m
map('', '<C-H>', '<C-W>h')
map('', '<C-J>', '<C-W>j')
map('', '<C-K>', '<C-W>k')
map('', '<C-L>', '<C-W>l')
map('', '<C-W>', '<C-W>w')

-- Switch between buffers with Leader + [jk]
map('n', '<S-Tab>', ':bnext<CR>')

-- Shift+[jk] to scroll with cursor vertically centered
map('n', '<S-j>', 'jzz')
map('n', '<S-k>', 'kzz')

-- Close buffer
map('n', '<leader>bb', ':bd<CR>')

-- Split current window to right and focus it with SHIFT+CTRL+Right.
map('', '<C-S-Right>', ':vsplit<CR><C-W>l')

-- Add :Rexplore toggle for file navigation, ensuring initialization with :Explore
local explorerUsed = false
map('n', '<Leader>pe', function ()
  if not explorerUsed then
    explorerUsed = true
    vim.cmd('Explore!')
  else
    vim.cmd('Rexplore')
  end
end)

-- Toggle search highlighting
map('n', '<Leader>h', function ()
  if vim.o.hlsearch then
    vim.o.hlsearch = false
  else
    vim.o.hlsearch = true
  end
end, {})

-- Editing shorts
map('n', '<Leader>q', ':q<CR>')
map('n', '<Leader>w', ':w<CR>')
map('n', '<Leader>e', ':e<CR>')

-- Source current file
map('', '<Leader><Leader>', ':so %<CR>')

-- Resize windows
