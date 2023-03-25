local map = vim.keymap.set

map('n', '<Leader>ga', ':Git add ')
map('n', '<Leader>ga.', ':Git add .<CR>')
map('n', '<Leader>gc', ':Git commit<CR>')
map('n', '<Leader>gp', ':Git push<CR>')
map('n', '<Leader>gs', ':Git status<CR>')
