return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local notify = require("notify")

		conform.setup({
			formatters = {
				prettier = {
					command = "prettier",
					args = { "--stdin-filepath", "$FILENAME" },
					stdin = true,
				},

				eslint = {
					command = "eslint",
					args = { "--stdin", "--stdin-filename", "$FILENAME", "--fix" },
					stdin = true,
				},
			},
			formatters_by_ft = {
				typescript = { "biome", "eslint", "prettier" },
				javascript = { "biome", "eslint", "prettier" },
				typescriptreact = { "biome", "eslint", "prettier" },
				javascriptreact = { "biome", "eslint", "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				yaml = { "prettier" },
				graphql = { "prettier" },
				lua = { "stylua" },
				sql = { "sql-formatter" },
			},
			format_on_save = function(bufnr)
				if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
					return
				end
				return {
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				}
			end,
		})

		local function show_notification(message, level)
			notify(message, level, { title = "conform.nvim" })
		end

		vim.api.nvim_create_user_command("FormatToggle", function(args)
			local is_global = not args.bang
			if is_global then
				vim.g.disable_autoformat = not vim.g.disable_autoformat
				if vim.g.disable_autoformat then
					show_notification("Autoformat-on-save disabled globally", "warn")
				else
					show_notification("Autoformat-on-save enabled globally", "info")
				end
			else
				vim.b.disable_autoformat = not vim.b.disable_autoformat
				if vim.b.disable_autoformat then
					show_notification("Autoformat-on-save disabled for this buffer", "warn")
				else
					show_notification("Autoformat-on-save enabled for this buffer", "info")
				end
			end
		end, {
			desc = "Toggle autoformat-on-save",
			bang = true,
		})

		-- Add the keymap
		vim.keymap.set("n", "<leader>fx", ":FormatToggle<CR>", { desc = "Toggle format on save", silent = true })
	end,
}
