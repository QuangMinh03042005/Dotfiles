local status_ok, configs = pcall(require, "lualine")
if not status_ok then
	return
end

local mode = {
	"mode",
	fmt = function(str)
		return " " .. str
	end,
}
local visual_str = {
	["v"] = true, -- Visual by character
	["vs"] = true, -- Visual by character using |v_CTRL-O| in Select mode
	["V"] = true, -- Visual by line
	["Vs"] = true, -- Visual by line using |v_CTRL-O| in Select mode
	["CTRL-V"] = true, -- Visual blockwise
	["^V"] = true, -- Visual blockwise <--- this never hits, why?
	["CTRL-Vs"] = true, -- Visual blockwise using |v_CTRL-O| in Select mode
}
local function char_and_line_count()
	if visual_str[tostring(vim.fn.mode())] then
		local ln_beg = vim.fn.line("v")
		local ln_end = vim.fn.line(".")

		local lines = ln_beg <= ln_end and ln_end - ln_beg + 1 or ln_beg - ln_end + 1

		return tostring(vim.fn.wordcount().visual_chars) .. " chars" .. " / " .. tostring(lines) .. " lines"
	else
		return ""
		-- return "[" .. tostring(vim.fn.mode()) .. "]" -- for debugging
	end
end

local function lsp_server_name()
	local msg = "No Active Lsp"
	local icon = " LSP: "
	local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
	local clients = vim.lsp.get_active_clients()
	if next(clients) == nil then
		return icon .. msg
	end
	for _, client in ipairs(clients) do
		local filetypes = client.config.filetypes
		if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
			return icon .. client.name
		end
	end
	return icon .. msg
end

configs.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		--[[ component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" }, ]]
		--[[ component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" }, ]]
		disabled_filetypes = {},
		always_divide_middle = true,
	},
	sections = {
		-- lualine_a = { "mode" },
		lualine_a = { mode },
		lualine_b = { "branch", "diff" },
		lualine_c = {
            {
                "filetype",
                icons_enabled = true, -- Enables the display of icons alongside the component.
                colored = true, -- Displays filetype icon in color if set to true
                icon_only = true, -- Display only an icon for filetype
                separator = "",
                padding = {left = 1,right = -1},
            },
            "filename",
			lsp_server_name,
			"lsp_progress",
		},
		--lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_x = { "diagnostics" },
		--lualine_y = {'progress'},
		lualine_y = {
			{
				"fileformat",
				symbols = {
					unix = "", -- e712
					dos = "", -- e70f
					mac = "", -- e711
				},
			},
            "encoding",
		},
		-- lualine_z = { "location" },

		lualine_z = {
			char_and_line_count,
		},
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
