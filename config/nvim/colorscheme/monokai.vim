colorscheme monokai

hi Normal guibg=#2e2e2e
highlight! CmpItemKindFunction guibg=NONE guifg=#a6e22e
highlight! CmpItemKindMethod guibg=NONE guifg=#a6e22e

highlight TSType guifg=#66d9ef gui=italic
highlight TSKeywordFunction guifg=#66d9ef gui=italic
highlight TSParameter guifg=#fd971f gui=italic
highlight TSParameterReference guifg=#fd971f gui=italic
highlight TSTypeBuiltin guifg=#66d9ef gui=italic
highlight TSStructure guifg=#66d9ef gui=italic

hi! link @parameter TSParameter
hi! link @type TSType
hi! link @type.definition TSTypeBuiltin
hi! link @structure TSStructure
