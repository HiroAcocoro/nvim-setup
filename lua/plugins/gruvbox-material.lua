return {
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox-material",
		priority = 1000,
		config = function()
			vim.o.background = "dark"
			vim.cmd([[colorscheme gruvbox-material]])
		end
	}
}
