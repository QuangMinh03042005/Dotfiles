require("pretty-fold").setup({
	custom_function_arg = "Hello from inside custom function!",
	sections = {
		left = {
			function(config)
				return config.custom_function_arg
			end,
		},
	},
})
