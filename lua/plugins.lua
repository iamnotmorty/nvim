return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
	-- lsp
	use { 
		-- 'williamboman/mason.nvim',
		-- 'williamboman/mason-lspconfig.nvim',
		'williamboman/nvim-lsp-installer',
		'neovim/nvim-lspconfig',
	}

	-- Color Scheme 
	use { 'ellisonleao/gruvbox.nvim' }
	use { 'folke/tokyonight.nvim' }

	-- dashboard开屏插件
	-- use { 'glepnir/dashboard-nvim' }

	-- bufferline状态栏
	use { 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' }}

	-- lualine标签栏美化
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons'}}
	use 'arkav/lualine-lsp-progress'

	-- file explorer nvim-tree.lua
	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	}
	-- highlighting nvim-treesitter
	use { 
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

end)
