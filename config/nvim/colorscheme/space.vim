"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235
let g:space_vim_dark_background = 235
color space-vim-dark
highlight @variable guifg=#7590db
highlight @type guifg=#ce537a gui=bold
highlight @parameter guifg=#7590db
highlight @namespace guifg=#a45bad

hi! link TSVariable @variable
hi! link TSType @type
hi! link TSParameter @parameter
hi! link TSNamespace @namespace
