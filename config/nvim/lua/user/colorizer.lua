local status_ok = pcall(require, "colorizer")
if not status_ok then
	return
end

-- vim.cmd("autocmd FileType * lua require'colorizer'.setup()")
require("colorizer").setup()
