vim.cmd([[
try
    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/monokai.vim
        source ~/AppData/Local/nvim/colorscheme/navic.vim
        source ~/AppData/Local/nvim/colorscheme/cmp.vim
    else
        source ~/.config/nvim/colorscheme/catppucin.vim
        source ~/.config/nvim/colorscheme/navic_highlight.vim
        source ~/.config/nvim/colorscheme/cmp.vim
    endif
    hi! link Hlargs @parameter
    hi! link TSFunctionBuiltin @function
    hi! link TSFuncBuiltin @function
    hi! link @function.builtin @function
    hi! link @function.call @function

catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
    set background=dark
endtry
]])
