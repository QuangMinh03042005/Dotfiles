local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local cmd = ":e ~/.config/nvim/init.lua <CR>"
local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")
if BinaryFormat == "dll" then
	cmd = ":e ~/Appdata/Local/nvim/init.lua <CR>"
end

local dashboard = require("alpha.themes.dashboard")
-- dashboard.section.header.val = {
-- [[          ████     ██ ████████   ███████   ██      ██ ██ ████     ████    ]],
-- [[         ░██░██   ░██░██░░░░░   ██░░░░░██ ░██     ░██░██░██░██   ██░██    ]],
-- [[         ░██░░██  ░██░██       ██     ░░██░██     ░██░██░██░░██ ██ ░██    ]],
-- [[         ░██ ░░██ ░██░███████ ░██      ░██░░██    ██ ░██░██ ░░███  ░██    ]],
-- [[         ░██  ░░██░██░██░░░░  ░██      ░██ ░░██  ██  ░██░██  ░░█   ░██    ]],
-- [[         ░██   ░░████░██      ░░██     ██   ░░████   ░██░██   ░    ░██    ]],
-- [[         ░██    ░░███░████████ ░░███████     ░░██    ░██░██        ░██    ]],
-- [[         ░░      ░░░ ░░░░░░░░   ░░░░░░░       ░░     ░░ ░░         ░░     ]],
-- }

-- dashboard.section.header.val = {

-- 	[[	███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗	]],
-- 	[[	████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ]],
-- 	[[	██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ]],
-- 	[[	██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ]],
-- 	[[	██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║	]],
-- 	[[	╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝	]],
-- }

dashboard.section.header.val = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("c", "  Configuration", cmd),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "NEOVIM CONFIGURATION BY MINH CODER"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
