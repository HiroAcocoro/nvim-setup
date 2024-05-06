return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { { 'nvim-lua/plenary.nvim' }, },
    config = function()
      local builtin = require('telescope.builtin')
      local wk = require('which-key')

      wk.register({
        p = {
          name = "telescope",
          f = { builtin.find_files, "Find Files" },
          s = { function() builtin.grep_string({ search = vim.fn.input("Grep >") }) end, "Search keyword" },
        },
      }, { prefix = "<leader>" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extenstions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
