-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Run all configuration after a change with ':PackerRe'
vim.api.nvim_create_user_command('PackerRe', function() vim.cmd(':PackerCompile :PackerClean :PackerInstall') end, {})

-- Start
return require('packer').startup(function(use)

  use { 'wbthomason/packer.nvim' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'ThePrimeagen/harpoon', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'ellisonleao/gruvbox.nvim' }

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

  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-surround' }

  -- Plugin manager Packer (wbthomason/packer.nvim)

  --  use 'scrooloose/nerdtree'
  --  use 'scrooloose/nerdcommenter'
  --  use 'airblade/vim-gitgutter'
  --  use 'luochen1990/rainbow'
  --  use 'valloric/youcompleteme'


end)
