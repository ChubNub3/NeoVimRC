return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	--colorscheme
	use 'RRethy/nvim-base16'


	--fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	use {
		'kyazdani42/nvim-tree.lua', --NERDTree for neovim
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		}
	}


	use "lukas-reineke/indent-blankline.nvim" -- Cool indents

	use "nvim-treesitter/nvim-treesitter" --Treesitter, I have no idea what this is

	use "preservim/nerdcommenter" --Comment multiple lines at once
	use "andweeb/presence.nvim"


	use {
		'nvim-lualine/lualine.nvim', --Lua line
		requires = { 'kyazdani42/nvim-web-devicons', opt = true } --Icons
	}

	use {
		'romgrk/barbar.nvim', -- Tabs
		requires = {'kyazdani42/nvim-web-devicons'} -- Icons, for the third time
	}

	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
		config = function()
			require"startup".setup()
		end
	}


	use { 
		'TimUntersberger/neogit', 
		requires = 'nvim-lua/plenary.nvim' 
	}


	use "ycm-core/YouCompleteMe"
	use "dcampos/nvim-snippy"
	use "honza/vim-snippets"



	
end)
