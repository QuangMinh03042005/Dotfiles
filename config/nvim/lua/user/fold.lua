local status_ok, configs = pcall(require, "pretty-fold")
if not status_ok then
    return
end

configs.setup({
	custom_function_arg = "Hello from inside custom function!",
	sections = {
		left = {
			function(config)
				return config.custom_function_arg
			end,
		},
	},
})
