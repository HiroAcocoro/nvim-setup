return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				on_attach = function(bufnr)
					local gitsigns = require("gitsigns")
					local wk = require("which-key")

					wk.register({
						h = {
							name = "gitsigns",
							p = { gitsigns.preview_hunk, "Preview Hunk" },
							t = { gitsigns.toggle_current_line_blame, "Toggle Line Blame" },
						},
					}, { prefix = "<leader>" })
				end,
			})
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		end,
	},
}
