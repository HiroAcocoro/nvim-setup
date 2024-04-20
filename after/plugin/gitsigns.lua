require('gitsigns').setup({
    on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk)
        vim.keymap.set('n', '<leader>ht', gitsigns.toggle_current_line_blame)

end
})
