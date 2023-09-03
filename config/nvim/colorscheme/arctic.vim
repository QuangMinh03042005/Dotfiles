colorscheme arctic

lua << EOF
vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@function" })
EOF

hi! link NavicIconsFile              @variable
hi! link NavicIconsModule            Normal
hi! link NavicIconsNamespace         Normal
hi! link NavicIconsPackage           Normal
hi       NavicIconsClass             guifg=#ee9d28 
hi! link NavicIconsMethod            @keyword.return
hi! link NavicIconsProperty          @property
hi! link NavicIconsField             @field
hi! link NavicIconsConstructor       @keyword.return
hi! link NavicIconsEnum              @constant
hi! link NavicIconsInterface         @type 
hi! link NavicIconsFunction          @keyword.return
hi! link NavicIconsVariable          @variable 
hi! link NavicIconsConstant          @constant
hi! link NavicIconsString            @type
hi! link NavicIconsNumber            @number
hi! link NavicIconsBoolean           @Boolean
hi! link NavicIconsArray             @variable
hi! link NavicIconsObject            NavicIconsClass
hi! link NavicIconsKey               @keyword
hi! link NavicIconsNull              @constant
hi! link NavicIconsEnumMember        @constant
hi! link NavicIconsStruct            Normal
hi! link NavicIconsEvent             @constant
hi! link NavicIconsOperator          @operator
hi! link NavicIconsTypeParameter     @type
hi! link NavicText                   Normal
hi! link NavicSeparator              @keyword.operator
