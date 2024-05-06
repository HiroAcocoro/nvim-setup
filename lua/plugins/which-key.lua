return {
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({
        plugins = {
          marks = false,
          registers = true,
          spelling = {
            enabled = false,
          },
          presets = {
            operators = true,
            motions = true,
            text_objects = true,
            windows = true,
            nav = true,
            z = true,
            g = true,
          },
        },
        operators = { gc = "Comments" },
        icons = {
          breadcrumb = ">>",
          separator = "→",
          group = "+",
        },
        popup_mappings = {
          scroll_down = "<C-d>",
          scroll_up = "<C-u>",
        },
        window = {
          border = "none",
          position = "bottom",
          margin = { 1, 0, 1, 0 },
          padding = { 1, 2, 1, 2 },
          winblend = 0,
          zindex = 1000,
        },
      })
    end,
  },
}
