vim.cmd([[
try

    if has('win32')
        source ~/AppData/Local/nvim/colorscheme/monokai.vim
    else
       " source ~/.config/nvim/colorscheme/monokai.vim
    endif
    colorscheme dracula
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
