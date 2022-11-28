vim.cmd([[
try
    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/monokai.vim
        source ~/AppData/Local/nvim/colorscheme/navic.vim
    else
        source ~/.config/nvim/colorscheme/onedarker.vim
        source ~/.config/nvim/colorscheme/navic_highlight.vim
    endif
    hi! link Hlargs @parameter
    hi! link @function.builtin @function
    hi! link @function.call @function
    hi! link TSFunctionBuiltin @function
    hi! link TSFuncBuiltin @function

catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
    set background=dark
endtry
]])
