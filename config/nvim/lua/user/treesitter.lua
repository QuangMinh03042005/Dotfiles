local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "html", "css" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml", "html" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})

require("hlargs").setup({
	paint_arg_declarations = true,
	paint_arg_usages = true,
	paint_catch_blocks = {
		declarations = false,
		usages = false,
	},
	extras = {
		named_parameters = false,
	},
	hl_priority = 10000,
	excluded_argnames = {
		declarations = {},
		usages = {
			python = { "self", "cls" },
			lua = { "self" },
			rust = { "self" },
			cpp = { "this" },
			c = { "this" },
		},
	},
	performance = {
		parse_delay = 1,
		slow_parse_delay = 0,
	},
})
-- (You may omit the settings whose defaults you're ok with)
