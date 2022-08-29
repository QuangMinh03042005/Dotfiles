vim.cmd([[
try

    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/monokai.vim
    else
        source ~/.config/nvim/colorscheme/catppucin.vim
    endif
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
