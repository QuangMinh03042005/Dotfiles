vim.cmd([[
try
    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/monokai.vim
        source ~/AppData/Local/nvim/colorscheme/navic.vim
        source ~/AppData/Local/nvim/colorscheme/cmp.vim
    else
        source ~/.config/nvim/colorscheme/dracula.vim
        source ~/.config/nvim/colorscheme/navic_highlight.vim
        source ~/.config/nvim/colorscheme/cmp.vim
    endif
    hi! link @type.qualifier @keyword
    hi! link TSFunctionBuiltin @function
    hi! link TSFuncBuiltin @function
    hi! link @function.builtin @function
    hi! link @function.call @function
    hi! link @method @function
    "hi! link @constant.builtin Constant
    "hi! link @constant.macro Constant
    "hi! link IndentBlanklineChar @character.special
    hi WinSeparator guibg=none

catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme habamax
    set background=dark
endtry
]])
