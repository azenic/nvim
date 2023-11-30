vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	require('packer').startup(function(use)
		use({ 'rose-pine/neovim', as = 'rose-pine' })
	end)

	use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})

	use('mbbill/undotree')

	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
     {'williamboman/mason.nvim'},
     {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

use('nvim-lua/plenary.nvim')
use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
}
use('jiangmiao/auto-pairs')
use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons" ,
    wants = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup {
        hijack_cursor = true,
        view = {
          width = 40
        }
      }
    end
  }
end)
