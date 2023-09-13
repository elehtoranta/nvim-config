require('telescope').setup {
  defaults = {
    mappings = {
      -- Close Telescope intuitively
      i = {
        ['<leader>q'] = "close",
      },
      n = {
        ['<leader>q'] = "close",
      },
    },
  },
}

local builtin = require('telescope.builtin')
local map = vim.keymap.set
map('n', '<Leader>ff', builtin.find_files, {})
map('n', '<Leader>fg', builtin.live_grep, {})
map('n', '<Leader>fb', builtin.buffers, {})
map('n', '<Leader>fh', builtin.help_tags, {})
map('n', '<Leader>fc', builtin.commands, {})

