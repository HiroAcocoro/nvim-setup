return {
  "mg979/vim-visual-multi",

  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Find Under"] = "",
    }
    vim.g.VM_add_cursor_at_pos_no_mappings = 1
  end,

  config = function()
    local wk = require("which-key")

    local function visual_cursor_with_delay()
      -- Execute the vm-visual-cursors command
      vim.cmd('silent! execute "normal! \\<Plug>(VM-Visual-Cursors)"')
      -- Introduce delay via VimScript's 'sleep' (set to 500 milliseconds here)
      vim.cmd("sleep 200m")
      -- Press 'A' in normal mode after the delay
      vim.cmd('silent! execute "normal! A"')
    end

    wk.register({
      m = {
        name = "Visual Multi",
        a = { "<Plug>(VM-Select-All)<Tab>", "Select All", mode = { "n" } },
        r = { "<Plug>(VM-Start-Regex-Search)", "Start Regex Search", mode = { "n" } },
        p = { "<Plug>(VM-Add-Cursor-At-Pos)", "Add Cursor At Pos", mode = { "n" } },
        v = { visual_cursor_with_delay, "Visual Cursors", mode = { "v" } },
        o = { "<Plug>(VM-Toggle-Mappings)", "Toggle Mapping", mode = { "n" } },
      },
    }, { prefix = "<leader>" })
  end,
}
