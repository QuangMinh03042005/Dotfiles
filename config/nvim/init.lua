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
-- vim.cmd([[
--     source ~/.config/nvim/colorscheme/gruber-darker.vim
-- ]])
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
require("user.symbols-outline")
require("user.trouble")
require("user.signature")
require("user.colorizer")
require("user.autocommands")

vim.cmd([[ 
    hi TSType guifg=#569cd6
    " gray
    highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
    " blue
    highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
    highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
    " light blue
    highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
    highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
    " pink
    highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
    highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
    " front
    highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
]])
