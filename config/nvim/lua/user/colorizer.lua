local status_ok = pcall(require, "colorizer")
if not status_ok then
	return
end

vim.cmd("autocmd FileType * lua require'colorizer'.setup()")

local ok, navic = pcall(require, "nvim-navic")
if not ok then
  return
end

navic.setup {
  highlight = true,
  -- separator = " " .. icons.ui.ChevronRight .. " ",
  depth_limit = 0,
  depth_limit_indicator = "..",
}
