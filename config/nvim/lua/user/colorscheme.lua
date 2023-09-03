vim.cmd([[
try
    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/catppucin.vim
        source ~/AppData/Local/nvim/colorscheme/navic.vim
        source ~/AppData/Local/nvim/colorscheme/cmp.vim
    else
        source ~/.config/nvim/colorscheme/catppucin.vim
        source ~/.config/nvim/colorscheme/navic_highlight.vim
        source ~/.config/nvim/colorscheme/cmp.vim
        source ~/.config/nvim/colorscheme/lsp.vim
    endif

hi! link @type.qualifier @keyword
hi! link @function.builtin @function
hi! link @function.call @function
hi! link @method @function
hi! link @method.call @function
hi! link @constant.builtin Constant
hi! link @constant.macro Constant
hi WinSeparator guibg=none

catch /^Vim\%((\a\+)\)\=:E185/
    set background=dark
    colorscheme retrobox
endtry
]])
