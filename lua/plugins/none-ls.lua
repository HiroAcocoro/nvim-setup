return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        --lua
				null_ls.builtins.formatting.stylua,
				--TS
        null_ls.builtins.formatting.biome,
        --Go
				null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.formatting.golines,
      },
		})

		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
	end,
}
