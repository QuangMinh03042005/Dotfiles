vim.cmd([[
try
    "let g:rehash256 = 1
    " seoul256 (dark):
    "   Range:   233 (darkest) ~ 239 (lightest)
    "   Default: 237
    let g:seoul256_background = 234
    " colo seoul256
    let g:gruvbox_contrast_dark='hard'
    let g:material_style = "palenight"

    let g:everforest_background = 'soft'
    " For better performance
    let g:everforest_better_performance = 1

    let g:catppuccin_flavour = "macchiato" " latte, frappe, macchiato, mocha

    colorscheme gruvbox

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
