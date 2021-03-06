" --------------------------------
" Editor settings
" --------------------------------

hi clear

hi Normal          guifg=#e4e4ef    guibg=#181818   
hi Cursor          guifg=#181818    guibg=#ffdd33    
hi CursorLine      guifg=none    guibg=none    
hi LineNr          guifg=none   guibg=none    
hi CursorLineNR    guifg=yellow    guibg=#282828    

" --------------------------------
" Variable types
" --------------------------------
hi Constant        guifg=#95a99f3   gui=none
hi String          guifg=#73c936    guibg=none    gui=none
hi StringDelimiter guifg=none    guibg=none    gui=none
hi Character       guifg=#73c936    guibg=none    gui=none
hi Number          guifg=#95a99f    guibg=none    gui=none
hi Boolean         guifg=#ffdd33    guibg=none    gui=bold
hi Float           guifg=#95a99f    guibg=none    gui=none

hi Identifier      guifg=#e4e4ef    guibg=none    gui=bold
hi Function        guifg=#96a6c8    guibg=none    gui=none

" ----------
" - C like -
" ----------
hi PreProc         guifg=#ffdd33    guibg=none    gui=bold
hi Include         guifg=#95a99f    guibg=none    gui=none
hi Define          guifg=#ffdd33    guibg=none    gui=bold
hi Macro           guifg=#95a99f    guibg=none    gui=none
hi PreCondit       guifg=#ffdd33    guibg=none    gui=bold
hi Type            guifg=#ffdd33    guibg=none    gui=bold
hi StorageClass    guifg=#ffdd33    guibg=none    gui=bold
hi Structure       guifg=#ffdd33    guibg=none    gui=bold
hi Typedef         guifg=#ffdd33    guibg=none    gui=bold


" --------------------------------
" Language constructs
" --------------------------------
hi Statement       guifg=#ffdd33    guibg=none    gui=bold
hi Conditional     guifg=#ffdd33    guibg=none    gui=bold
hi Repeat          guifg=#ffdd33    guibg=none    gui=bold
hi Label           guifg=#ffdd33    guibg=none    gui=none
hi Operator        guifg=#f5f5f5    guibg=none    gui=none
hi Keyword         guifg=#ffdd33    guibg=none    gui=bold
hi Exception       guifg=#ffdd33    guibg=none    gui=bold
hi Comment         guifg=#cc8c3c    guibg=none    gui=none
hi Special         guifg=#ffdd33    guibg=none    gui=bold
hi SpecialChar     guifg=#ffdd33    guibg=none    gui=bold
hi Tag             guifg=red    guibg=none    gui=none
hi Delimiter       guifg=#ffffff    guibg=none    gui=none
hi SpecialComment  guifg=#ffdd33    guibg=none    gui=bold
hi Debug           guifg=red    guibg=none    gui=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           guifg=#e4e4ef    guibg=#282828    gui=none
hi PmenuSel        guifg=#e4e4ef    guibg=#101010    gui=none
hi PmenuSbar       guibg=#181818
hi PmenuThumb      guibg=#181818

" --------------
" - Visual aid -
" --------------
hi MatchParen      guifg=none    guibg=none    gui=none
hi Visual          guifg=none    guibg=#484848    gui=none
hi VisualNOS       guifg=none    guibg=none    gui=none
hi NonText         guifg=none    guibg=none    gui=none
hi Todo            guifg=#ffdd33    guibg=none    gui=bold
hi Underlined      guifg=#f43841    guibg=none    gui=none
hi Error           guifg=#f43841    guibg=none    gui=none
hi ErrorMsg        guifg=none    guibg=none    gui=none
hi WarningMsg      guifg=none    guibg=none    gui=none
hi Ignore          guifg=none    guibg=#181818    gui=none
hi SpecialKey      guifg=none    guibg=#181818    gui=none


" -----------------
" - Number column -
" -----------------
hi CursorColumn    guifg=none    guibg=none    gui=none
hi FoldColumn      guifg=none    guibg=#101010    gui=none
hi SignColumn      guifg=none    guibg=none    gui=none
hi Folded          guifg=#cc8c3c    guibg=#101010    gui=none


" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      guifg=none    guibg=#101010    gui=none
hi StatusLineNC    guifg=none    guibg=none    gui=none
hi WildMenu        guifg=none    guibg=none    gui=none
hi Question        guifg=none    guibg=none    gui=none
hi Title           guifg=none    guibg=none    gui=none
hi ModeMsg         guifg=none    guibg=none    gui=none
hi MoreMsg         guifg=none    guibg=none    gui=none

hi WinSeparator guibg=none

" Treesitter
" Misc
highlight TSError guifg=#f43841
highlight TSPunctDelimiter guifg=#ABB2BF
highlight TSPunctBracket guifg=#ABB2BF
highlight TSPunctSpecial guifg=#ABB2BF

" Constants
highlight TSConstant guifg=#95a99f gui=none
highlight TSConstBuiltin guifg=#95a99f gui=none
" Not sure about this guy
highlight TSConstMacro guifg=#95a99f
highlight TSString guifg=#73c936
highlight TSStringRegex guifg=#73c936
highlight TSStringEscape guifg=#73c936
highlight TSCharacter guifg=#73c936
highlight TSNumber guifg=#95a99f
highlight TSBoolean guifg=#ffdd33 gui=bold
highlight TSFloat guifg=#95a99f
highlight TSAnnotation guifg=yellow gui=italic
highlight TSAttribute guifg=#95a99f gui=italic
highlight TSNamespace guifg=#95a99f


" Functions
" highlight TSFuncBuiltin guifg=#4EC9B0
highlight TSFuncBuiltin guifg=#96a6c8
highlight TSFunction guifg=#96a6c8
highlight TSFuncMacro guifg=#96a6c8
highlight TSParameter guifg=#e4e4ef
highlight TSParameterReference guifg=#e4e4ef
highlight TSMethod guifg=#96a6c8
highlight TSField guifg=#565f73
highlight TSProperty guifg=#565f73
highlight TSConstructor guifg=#96a6c8

" Keywords
highlight TSConditional guifg=#Cffdd33 gui=bold
highlight TSRepeat guifg=#ffdd33 gui=bold
highlight TSLabel guifg=#ffdd33 gui=bold
" Does not work for yield and return they should be diff then class and def
highlight TSKeyword guifg=#ffdd33 gui=bold
highlight TSKeywordFunction guifg=#ffdd33 gui=bold
highlight TSKeywordOperator guifg=#96a6c8
highlight TSOperator guifg=#ABB2BF
highlight TSException guifg=#ffdd33 gui=bold
highlight TSType guifg=#ffdd33 gui=bold
highlight TSTypeBuiltin guifg=#FF00FF
highlight TSStructure guifg=#FF00FF
highlight TSInclude guifg=#95a99f

" Variable
highlight TSVariable guifg=#e4e4ef
highlight TSVariableBuiltin guifg=#e4e4ef

" Text
highlight TSText guifg=#FF00FF
highlight TSStrong guifg=#FF00FF
highlight TSEmphasis guifg=#FF00FF
highlight TSUnderline guifg=#FF00FF
highlight TSTitle guifg=#FF00FF
highlight TSLiteral guifg=#FF00FF
highlight TSURI guifg=#FF00FF

" Tags
highlight TSTag guifg=#569CD6
highlight TSTagDelimiter guifg=#5C6370

highlight TSComment guifg=#cc8c3c
