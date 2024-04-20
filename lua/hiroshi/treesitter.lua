local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
    ensure_installed = {"lua", "javascript", "typescript", "go"},
    highlight = { enable = true },
    indent = { enable = true },
})
