
 -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- rose-pine/neovim colorescheme rose-pine
  use {
	  'rose-pine/neovim',
	  as = 'rese-pine',
	  config = function()
		  vim.cmd[[colorscheme rose-pine]]
	  end
  }
  -- nvvim-treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  -- Harpoon: theprimeagen/harpoon
  use ('ThePrimeagen/harpoon')
  -- Undo tree: file history
  use ('mbbill/undotree')
  -- vim-fugitive: A git wrapper
  use ('tpope/vim-fugitive')
  -- lsp-zero
  use({'neovim/nvim-lspconfig'})
  use({'williamboman/mason.nvim'})
  use({'williamboman/mason-lspconfig.nvim'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'hrsh7th/cmp-buffer'})
  use({'saadparwaiz1/cmp_luasnip'})
  use({'L3MON4D3/LuaSnip'})

end)
