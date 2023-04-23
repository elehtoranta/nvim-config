-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Reconfigure after a change with ':PackerRe' (as suggested in 'packer-intro-quickstart')
vim.api.nvim_create_user_command('PackerRe', function()
  vim.cmd('PackerCompile')
  vim.cmd('PackerClean')
  vim.cmd('PackerInstall')
end, {})

-- Start
return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' -- Package manager

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }

  use { 'ThePrimeagen/harpoon', requires = { 'nvim-lua/plenary.nvim' } }

  use 'ellisonleao/gruvbox.nvim'

  -- use { 'folke/zen-mode.nvim' }

  -- Completion

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/nvim-cmp'

  -- Tool configuration
  use {
    'williamboman/mason.nvim', run = ':MasonUpdate',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig' -- LSP preset configurations
  }

  -- Snip snip
  use ({'L3MON4D3/LuaSnip', tag = 'v<CurrentMajor>.*', run = 'make install_jsregexp'})
  use 'saadparwaiz1/cmp_luasnip'

  -- Gifts from god
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-commentary' }

  use { 'windwp/nvim-autopairs'}
  use { 'windwp/nvim-ts-autotag'}

end)
