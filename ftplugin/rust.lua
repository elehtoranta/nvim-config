vim.api.nvim_create_user_command('CargoCheck', '!cargo check', {})
vim.api.nvim_create_user_command('CargoRun', '!cargo run', {})
vim.keymap.set('n', '<Leader>cc', ':CargoCheck<CR>')
vim.keymap.set('n', '<Leader>cr', ':CargoRun<CR>')

-- Start Rust LSP (rust-analyzer). See 'vim.lsp.start()'
vim.lsp.start({
  name = 'rust-analyzer',
  cmd = { 'rust-analyzer' },
  root_dir = vim.fs.dirname(vim.fs.find({'Cargo.toml'}, { upward = true })[1])
})
