local status_ok, configs = pcall(require, "lualine")
if not status_ok then
    return
end

configs.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
		--[[ component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" }, ]]
		--[[ component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" }, ]]
		disabled_filetypes = {},
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = { "filename" },
		--lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_x = { "diagnostics" },
		--lualine_y = {'progress'},
		lualine_y = { "filetype", "encoding" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = { "nvim-tree" },
})

