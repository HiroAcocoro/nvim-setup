local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		dependencies = { { 'nvim-lua/plenary.nvim' }, },
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'neovim/nvim-lspconfig',
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
		},
	},
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },
	{ "sainnhe/gruvbox-material",        name = "gruvbox-material", priority = 1000 },
	{ 'nvim-treesitter/playground' },

	"vimsence/vimsence",
	"lewis6991/gitsigns.nvim",
	"tpope/vim-fugitive",
}

local opts = {},

	require("lazy").setup(plugins, opts)
