require("my-config.plugins")
require("my-config.options")
require("my-config.keymaps")
require("my-config.colorscheme")
--vim.cmd"source ~/.config/nvim/colorscheme/minh.vim"
require("my-config.cmp")
require("user.lsp")
require("my-config.telescope").setup()
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.gitsigns")
require("my-config.nvim-tree")
--require("test")
require("my-config.lualine2")
require("my-config.bufferline")
require("my-config.toggleterm")
require("user.project")
require("user.impatient")
require("user.indentline")
require("my-config.alpha")
require("my-config.whichkey")
require("my-config.autocommands")
require("my-config.fold")
require "my-config.renamer"
require("my-config.symbols-outline")
require("my-config.trouble")
require("my-config.signature")
require("my-config.fzflua")

--[[vim.cmd[[
    hi Pmenu guibg=#3E4452 guifg=#ABB2BF
    hi PmenuSel guibg=#61AFEF guifg=#2C323C
    hi PmenuSbar guibg=#2C323C
    hi PmenuThumb guibg=#ABB2BF
]]


