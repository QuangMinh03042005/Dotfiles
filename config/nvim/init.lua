require("user.plugins")
require("user.options")
require("user.keymaps")
require("user.colorscheme")
require("user.cmp")
require("user.lsp")
require("user.telescope").setup()
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.gitsigns")
require("user.nvim-tree")
require("user.lualine2")
require("user.bufferline")
require("user.toggleterm")
require("user.project")
require("user.impatient")
require("user.indentline")
require("user.alpha")
require("user.whichkey")
require("user.autocommands")
require("user.fold")
require("user.renamer")
require("user.symbols-outline")
require("user.trouble")
require("user.signature")
require("user.fzflua")

--[[vim.cmd[[
    hi Pmenu guibg=#3E4452 guifg=#ABB2BF
    hi PmenuSel guibg=#61AFEF guifg=#2C323C
    hi PmenuSbar guibg=#2C323C
    hi PmenuThumb guibg=#ABB2BF
]]

