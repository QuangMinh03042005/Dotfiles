vim.cmd([[
try

    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/monokai.vim
        source ~/AppData/Local/nvim/colorscheme/navic.vim
    else
        source ~/.config/nvim/colorscheme/onedarker.vim
        source ~/.config/nvim/colorscheme/navic_highlight.vim
    endif

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
