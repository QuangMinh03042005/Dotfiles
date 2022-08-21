local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("kyazdani42/nvim-web-devicons")

    -- File manager
	use("kyazdani42/nvim-tree.lua")

    -- Tab close
	use("moll/vim-bbye")

	-- Status line
	use("nvim-lualine/lualine.nvim")

	-- Tabline
	use("akinsho/bufferline.nvim")

	-- Terminal
	use("akinsho/toggleterm.nvim")

	use("ahmedkhalf/project.nvim")
	use("lewis6991/impatient.nvim")
	use("lukas-reineke/indent-blankline.nvim")

	-- Dashboard
	use("goolord/alpha-nvim")

	use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight

    -- Never forget your key bindings
	use("folke/which-key.nvim")

	-- Colorschemes
	use("morhetz/gruvbox")
	use({
		"dracula/vim",
		as = "dracula",
	})
	use("NTBBloodbath/doom-one.nvim")
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})
	use("Mofiqul/vscode.nvim")
	use("tanvirtin/monokai.nvim")

	-- Cmp plugins
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("ray-x/cmp-treesitter")

	-- Code snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
	use({
		"ray-x/lsp_signature.nvim",
	})

	-- File search
	use("nvim-telescope/telescope.nvim")

	-- Treesitter for syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Git
	use("lewis6991/gitsigns.nvim")

	--Comment
	use("b3nj5m1n/kommentary")

	--Move text
	use("fedepujol/move.nvim")

	--Multiple cursors
	use("terryma/vim-multiple-cursors")
	use("otavioschwanck/cool-substitute.nvim")

	--Using ranger file manager in neovim
	use("kevinhwang91/rnvimr")

	-- Functions list
	-- use("simrat39/symbols-outline.nvim")

	-- Pretty list diagnostics
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Better CodeActionMenu
	-- use{
	--      'weilbith/nvim-code-action-menu',
	--      cmd = 'CodeActionMenu',
	--    }

	-- Better rename
	use({
		"filipdutescu/renamer.nvim",
		branch = "master",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Pretty preview color
	use("norcalli/nvim-colorizer.lua")

	-- Syntax highlight for i3 config file
	use("mboughaba/i3config.vim")

	-- Run command
	use("skywind3000/asyncrun.vim")

	-- Toggle transparent background
	use("xiyaowong/nvim-transparent")

	-- Format code without lsp
	use("vim-autoformat/vim-autoformat")
	use("rhysd/vim-clang-format")

	-- Functions list without lsp
	use("preservim/tagbar")

	-- Picking windows
	use("gbrlsnchs/winpick.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
