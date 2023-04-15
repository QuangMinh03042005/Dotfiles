local status_ok = pcall(require, "nvim-navic")
if not status_ok then
	return
end

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
