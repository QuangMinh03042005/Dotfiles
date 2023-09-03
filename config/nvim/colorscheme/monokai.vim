colorscheme monokai

highlight Include guifg=#f92672 gui=none
highlight @include guifg=#f92672 gui=none

highlight Type guifg=#66d9ef gui=italic
highlight @type guifg=#66d9ef gui=italic
highlight @type.builtin guifg=#66d9ef gui=italic

highlight Structure guifg=#66d9ef gui=italic

highlight Function guifg=#a6e22e gui=none
highlight @function guifg=#a6e22e gui=none

highlight Normal guibg=#272822 guifg=#f8f8f2
highlight LineNr guibg=#272822 guifg=#88846f

highlight @parameter guifg=#fd971f gui=italic
highlight @macro guifg=#a6e22e gui=none

hi! link  @define @keyword
hi! link @namespace @type
