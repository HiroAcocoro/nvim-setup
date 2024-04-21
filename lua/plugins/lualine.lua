return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		options = {
			theme = "seoul256",
		}
  require('lualine').setup(options)
	end,
}
