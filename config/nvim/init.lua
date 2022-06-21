--   							  __  __ _       _      ____          _
--   							 |  \/  (_)_ __ | |__  / ___|___   __| | ___ _ __
--   							 | |\/| | | '_ \| '_ \| |   / _ \ / _` |/ _ \ '__|
--   							 | |  | | | | | | | | | |__| (_) | (_| |  __/ |
--   							 |_|  |_|_|_| |_|_| |_|\____\___/ \__,_|\___|_|

-- neovim minimal
--[[vim.cmd[[
    if has('win32')
        source ~/AppData/Local/nvim/minimal/init.vim
    else
        source ~/.config/nvim/minimal/init.vim
    endif
]]
-- neovim with lua
require("nvim-lua")
--[[vim.cmd[[
"hor50
"block
set guicursor=i:block
]]

--https://github.com/vaxerski/Hyprland
--[[vim.cmd[[
let g:transparent_enabled = v:false
]]


