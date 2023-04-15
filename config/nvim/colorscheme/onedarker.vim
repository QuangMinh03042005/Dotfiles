colorscheme onedarker

highlight Type guifg=#d5b06b guibg=none gui=bold
highlight Repeat guifg=#b668cd guibg=none
highlight Statement guifg=#b668cd guibg=none
highlight Conditional guifg=#b668cd guibg=none
highlight Operator guifg=#b668cd guibg=none
highlight Define          guifg=#b668cd    guibg=none

highlight @parameter guifg=#d05c65
highlight @field guifg=#d05c65
hi! link @property @field
hi! link @variable.builtin @repeat
hi! link @namespace @keyword

hi! link TSOperator @operator 
hi! link TSConstMacro @define
hi! link TSType @type
