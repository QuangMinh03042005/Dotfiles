--                            ██          ██   ██       ██
--                           ░░          ░░   ░██      ░██
--                            ██ ███████  ██ ██████    ░██ ██   ██  ██████
--                           ░██░░██░░░██░██░░░██░     ░██░██  ░██ ░░░░░░██
--                           ░██ ░██  ░██░██  ░██      ░██░██  ░██  ███████
--                           ░██ ░██  ░██░██  ░██   ██ ░██░██  ░██ ██░░░░██
--                           ░██ ███  ░██░██  ░░██ ░██ ███░░██████░░████████
--                           ░░ ░░░   ░░ ░░    ░░  ░░ ░░░  ░░░░░░  ░░░░░░░░
-- caching needs to be first
vim.loader.enable()
require("user.lazy")
require("user.options")
require("user.keymaps")
require("user.colorscheme")
require("user.project")
require("user.lsp")
require("user.navic")
require("user.cmp")
require("user.autopairs")
require("user.telescope").setup()
require("user.comment")
require("user.nvim-tree")
require("user.lualine")
require("user.toggleterm")
require("user.indentline")
require("user.alpha")
require("user.whichkey")
require("user.autocommands")
require("user.symbolsoutline")
require("user.trouble")
require("user.signature")
require("user.colorizer")
require("user.autocommands")
require("user.cool-substitute")
require("user.gitsigns")
require("user.gomove")
require("user.tree-sitter")
require("user.bufferline")

-- vim.cmd([[
--     "set cursor style set guicursor=n-v-c-i:block
--     "set guicursor=i:hor75
-- ]])

-- local function getfoldcolumn()
--   if vim.fn.foldlevel(vim.v.lnum) > vim.fn.foldlevel(vim.v.lnum - 1) then
--     if vim.fn.foldclosed(vim.v.lnum) == -1 then
--       return "%#FoldColumn#▼"
--     else
--       return "%#FoldColumn#⏵"
--     end
--   else
--     return ' '
--   end
-- end

-- _G.statuscolumn = function()
--   local foldcolumn = getfoldcolumn()
--   local lnum = vim.v.relnum ~= 0 and vim.v.relnum or vim.v.lnum
--   return string.format('%d%s', lnum, foldcolumn)
-- end

-- vim.opt.statuscolumn = '%s%=%{%v:lua.statuscolumn()%}
