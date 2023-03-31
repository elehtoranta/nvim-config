-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Reconfigure after a change with ':PackerRe' (as suggested in 'packer-intro-quickstart')
vim.api.nvim_create_user_command('PackerRe', function()
  vim.cmd('PackerCompile')
  vim.cmd('PackerClean')
  vim.cmd('PackerInstall')
end, {})

-- Start
return require('packer').startup(function(use)

  use { 'wbthomason/packer.nvim' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'ThePrimeagen/harpoon', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'ellisonleao/gruvbox.nvim' }

  -- use { 'folke/zen-mode.nvim' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Gifts from god
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-commentary' }

  -- Plugin manager Packer (wbthomason/packer.nvim)

  --  use 'scrooloose/nerdtree'
  --  use 'scrooloose/nerdcommenter'
  --  use 'airblade/vim-gitgutter'
  --  use 'luochen1990/rainbow'
  --  use 'valloric/youcompleteme'


end)
