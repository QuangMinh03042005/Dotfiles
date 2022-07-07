
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
--require("user.colorscheme")
vim.cmd[[ 
    source ~/.config/nvim/colorscheme/gruber-darker.vim
]]
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
require("user.fold")
require("user.renamer")
require("user.symbols-outline")
require("user.trouble")
require("user.signature")
require("user.colorizer")

vim.cmd([[
    hi WinSeparator guibg=none
]])
