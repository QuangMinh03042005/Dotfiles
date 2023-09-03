let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

hi! link @variable Normal
hi! link @variable.builtin @keyword
hi! link @namespace @boolean
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#928374
" highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
" highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6

hi! link CmpItemAbbrMatch @function
hi! link CmpItemAbbrMatchFuzzy @function

hi! link @attribute @keyword
