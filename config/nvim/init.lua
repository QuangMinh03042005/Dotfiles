--                         ██          ██   ██       ██
--                        ░░          ░░   ░██      ░██
--                         ██ ███████  ██ ██████    ░██ ██   ██  ██████
--                        ░██░░██░░░██░██░░░██░     ░██░██  ░██ ░░░░░░██
--                        ░██ ░██  ░██░██  ░██      ░██░██  ░██  ███████
--                        ░██ ░██  ░██░██  ░██   ██ ░██░██  ░██ ██░░░░██
--                        ░██ ███  ░██░██  ░░██ ░██ ███░░██████░░████████
--                        ░░ ░░░   ░░ ░░    ░░  ░░ ░░░  ░░░░░░  ░░░░░░░░

require("user.plugins")
require("user.options")
require("user.keymaps")
require("user.colorscheme")
require("user.lsp")
require("user.cmp")
require("user.telescope").setup()
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.gitsigns")
require("user.nvim-tree")
require("user.lualine")
require("user.bufferline")
require("user.toggleterm")
require("user.project")
require("user.impatient")
require("user.indentline")
require("user.alpha")
require("user.whichkey")
require("user.autocommands")
require("user.renamer")
require("user.symbolsoutline")
require("user.trouble")
require("user.signature")
require("user.colorizer")
require("user.autocommands")
require("user.cool-substitute")

vim.cmd [[ 
    " Vertical split (NERDtree style).
    let g:fff#split = "10new"
]]

vim.cmd[[ 
    "set guicursor=n-v-c-i:block
    "set guicursor=i:hor50
]]
