local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=main",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

lazy.setup({
	"nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
	"nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
	"windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter

	-- File manager
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	-- Tab close
	"moll/vim-bbye",

	-- Status line
	"nvim-lualine/lualine.nvim",

	-- Tabline
	{ "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Terminal
	-- { "akinsho/toggleterm.nvim", tag = "main" },
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	"ahmedkhalf/project.nvim",

	-- This plugin adds indentation guides to all lines (including empty lines,.
	"lukas-reineke/indent-blankline.nvim",

	-- Dashboard
	"goolord/alpha-nvim",

	-- Never forget your key bindings
	"folke/which-key.nvim",

	-- Colorschemes
	"morhetz/gruvbox",
	{
		"dracula/vim",
		name = "dracula",
	},
	"NTBBloodbath/doom-one.nvim",
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	"tanvirtin/monokai.nvim",
	"projekt0n/github-nvim-theme",
	"lunarvim/Onedarker.nvim",
	"ishan9299/nvim-solarized-lua",
	"ii14/onedark.nvim",
	{ "briones-gabriel/darcula-solid.nvim", dependencies = "rktjmp/lush.nvim" },
	"rebelot/kanagawa.nvim",
	"marko-cerovac/material.nvim",
	"AlexvZyl/nordic.nvim",
	"cranberry-clockworks/coal.nvim",
	{ "rockyzhang24/arctic.nvim", dependencies = "rktjmp/lush.nvim" },
	"gbprod/nord.nvim",
	{ "metalelf0/jellybeans-nvim", dependencies = "rktjmp/lush.nvim" },
	"folke/tokyonight.nvim",

	-- Better syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/playground",
	},

	-- Cmp plugins
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",
	"saadparwaiz1/cmp_luasnip",
	-- "hrsh7th/cmp-cmdline",

	-- Code snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- LSP
	"neovim/nvim-lspconfig", -- enable LSP
	{ "williamboman/mason.nvim" }, -- simple to use language server installer
	{ "williamboman/mason-lspconfig.nvim" },
	"tamago324/nlsp-settings.nvim", -- language server settings defined in json for
	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	{
		"ray-x/lsp_signature.nvim",
	},
	{
		"SmiteshP/nvim-navic",
		dependencies = "neovim/nvim-lspconfig",
	},
	"onsails/lspkind.nvim",
	"weilbith/nvim-code-action-menu",
	"filipdutescu/renamer.nvim",

	-- Debugging
	"mfussenegger/nvim-dap",

	-- File search
	"nvim-telescope/telescope.nvim",

	-- Treesitter for syntax highlighting
	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	run = ":TSUpdate",
	-- },
	-- "nvim-treesitter/playground",
	-- {
	-- 	"m-demare/hlargs.nvim",
	-- 	dependencies = { "nvim-treesitter/nvim-treesitter" },
	-- },

	-- Git
	"lewis6991/gitsigns.nvim",

	--Comment
	"b3nj5m1n/kommentary",

	--Move text
	"booperlv/nvim-gomove",

	--Multiple cursors
	"terryma/vim-multiple-cursors",
	"otavioschwanck/cool-substitute.nvim",

	--Using ranger file manager in neovim
	"kevinhwang91/rnvimr",

	-- Functions list
	"simrat39/symbols-outline.nvim",

	-- Pretty list diagnostics
	{
		"folke/trouble.nvim",
	},

	-- Pretty preview color
	"norcalli/nvim-colorizer.lua",

	-- Syntax highlight for i3 config file
	"mboughaba/i3config.vim",

	-- Run command
	"skywind3000/asyncrun.vim",

	-- Toggle transparent background
	-- "xiyaowong/nvim-transparent",

	-- Format code without lsp
	"vim-autoformat/vim-autoformat",
	"rhysd/vim-clang-format",

	-- Functions list without lsp
	"preservim/tagbar",

	-- Picking windows
	"gbrlsnchs/winpick.nvim",

	-- Surround
	{
		"kylechui/nvim-surround",
		--tag = "main", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},


},
	{
		ui = {
			border = "rounded",
		},

		performance = {
			rtp = {
				disabled_plugins = {
					"gzip",
					"netrwPlugin",
					"tarPlugin",
					"tohtml",
					"tutor",
					"zipPlugin",
                    "editorconfig",
				},
			},
		},
	}

)

-- close lazy panel with esc
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lazy",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "<Esc>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end
})
