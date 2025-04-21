return {
	"theprimeagen/harpoon",

	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add file in harpoon" })
		keymap.set("n", "<leader>he", ui.toggle_quick_menu, { desc = "Harpoon UI" })

		keymap.set("n", "<C-h>", function()
			ui.nav_file(1)
		end, { desc = "Harpoon Switch 1" })
		keymap.set("n", "<C-j>", function()
			ui.nav_file(2)
		end, { desc = "Harpoon Switch 2" })
		keymap.set("n", "<C-k>", function()
			ui.nav_file(3)
		end, { desc = "Harpoon Switch 3" })
		keymap.set("n", "<C-l>", function()
			ui.nav_file(4)
		end, { desc = "Harpoon Switch 4" })

		vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#63698c")
		vim.cmd("highlight! HarpoonActive guibg=NONE guifg=white")
		vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7")
		vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7")
		vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")
	end,
}
