vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness


keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- search
keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
