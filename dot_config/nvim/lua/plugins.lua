return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {'nvim-telescope/telescope.nvim',
       requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
  use {'neovim/nvim-lspconfig',
        config = function() require 'plugins.nvim-lspconfig' end }
end)
