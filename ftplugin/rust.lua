vim.api.nvim_create_user_command('CargoCheck', '!cargo check', {})
vim.keymap.set('n', '<Leader>cc', ':CargoCheck<CR>')
