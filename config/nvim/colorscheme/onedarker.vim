colorscheme onedarker

highlight @type guifg=#d5b06b guibg=none gui=bold
highlight @repeat guifg=#b668cd guibg=none
highlight @statement guifg=#b668cd guibg=none
highlight @conditional guifg=#b668cd guibg=none
highlight @operator guifg=#b668cd guibg=none
highlight @define          guifg=#b668cd    guibg=none

highlight @parameter guifg=#d05c65
highlight @field guifg=#d05c65
hi! link @property @field
hi! link @variable.builtin @repeat
hi! link @namespace @keyword

hi! link TSOperator @operator 
hi! link TSConstMacro @define
hi! link TSType @type
