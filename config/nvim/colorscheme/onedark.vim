colorscheme onedark

lua << EOF
vim.api.nvim_set_hl(0, "Normal", { bg = "#1e222a" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
EOF

highlight Pmenu guibg=#1b1f27 guifg=#c8ccd4

hi! link @keyword       @repeat
hi! link @namespace     @keyword
hi! link @operator      @keyword
hi! link @include       @keyword
hi! link Preproc        @include
hi! link Include        @include

hi! link Macro @constant

hi! link @function.call     @function
hi! link @function.builtin  @function
hi! link @function.macro    @function
hi! link @error             @parameter
hi! link @constant.builtin  @constant
hi! link @keyword.function  @keyword
hi! link Keyword            @keyword
hi! link @variable.builtin  @keyword

hi! link @type.builtin @type

hi! link TSKeyword          @keyword
hi! link TSKeywordFunction  @keyword
hi! link TSKeywordOperator  @keyword
hi! link TSOperator         @operator
hi! link TSNamespace        @namespace

hi! link CmpItemAbbrDeprecated  Normal 
hi! link CmpItemAbbrMatch       @function 
hi! link CmpItemAbbrMatchFuzzy  @function

