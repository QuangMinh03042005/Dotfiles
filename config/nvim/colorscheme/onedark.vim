colorscheme onedark

highlight TSVariable guifg=#ABB2BF
hi! link @variable      TSVariable
hi! link @keyword       @repeat
hi! link @namespace     @keyword
hi! link @operator      @keyword
hi! link @include       @keyword
hi! link Preproc        @include
hi! link Include        @include
hi! link Structure      @keyword

hi! link @function.call     @function
hi! link @function.builtin  @function
hi! link @function.macro    @function
hi! link @error             @parameter
hi! link @constant.builtin  @constant
hi! link @keyword.function  @keyword
hi! link Keyword            @keyword
hi! link @variable.builtin  @keyword

hi! link TSKeyword          @keyword
hi! link TSKeywordFunction  @keyword
hi! link TSKeywordOperator  @keyword
hi! link TSOperator         @operator
hi! link TSNamespace        @namespace

hi! link CmpItemAbbrDeprecated  Normal 
hi! link CmpItemAbbrMatch       @function 
hi! link CmpItemAbbrMatchFuzzy  @function
