local status, packer = pcall(require, 'packer')

if not status then
  print('Packer is not installed yet')
  return
end

vim.cmd [[packadd packer.nvim]]

-- 'svrana/neosolarized.nvim',
packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tjdevries/colorbuddy.nvim'
  use 'folke/tokyonight.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'onsails/lspkind-nvim' -- vscode like pictograms for lsp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- User neovim as a language server
  use 'MunifTanjim/prettier.nvim' -- Prettier

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
end)
