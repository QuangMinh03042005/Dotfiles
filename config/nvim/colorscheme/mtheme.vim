" " --------------------------------
" " Editor settings
" " --------------------------------

hi clear

hi Normal          guifg=#e4e4ef    guibg=#181818   
hi Cursor          guifg=#181818    guibg=#ffdd33    
hi CursorLine      guifg=none    guibg=none    
hi LineNr          guifg=none   guibg=none    
hi CursorLineNR    guifg=yellow    guibg=#282828    

" " " --------------------------------
" " " Variable types
" " " --------------------------------
hi Constant        guifg=#95a99f3   gui=none
hi String          guifg=#73c936    guibg=none    gui=none
hi StringDelimiter guifg=#73c936       guibg=none    gui=none
hi Character       guifg=#73c936    guibg=none    gui=none
hi Number          guifg=#95a99f    guibg=none    gui=none
hi Boolean         guifg=#ffdd33    guibg=none    gui=bold
hi Float           guifg=#95a99f    guibg=none    gui=none

hi Identifier      guifg=#e4e4ef    guibg=none    gui=none
hi Function        guifg=#96a6c8    guibg=none    gui=none

" " " ----------
" " " - C like -
" " " ----------
hi PreProc         guifg=#ffdd33    guibg=none    gui=bold
hi Include         guifg=#95a99f    guibg=none    gui=none
hi Define          guifg=#ffdd33    guibg=none    gui=bold
hi Macro           guifg=#95a99f    guibg=none    gui=none
hi PreCondit       guifg=#ffdd33    guibg=none    gui=bold
hi Type            guifg=#95a99f    guibg=none    gui=none
hi StorageClass    guifg=#ABB2BF    guibg=none    gui=none
hi Structure       guifg=#ABB2BF    guibg=none    gui=none
hi Typedef         guifg=#ffdd33    guibg=none    gui=bold


" " " --------------------------------
" " " Language constructs
" " " --------------------------------
hi Statement       guifg=#ffdd33    guibg=none    gui=bold
hi Conditional     guifg=#ffdd33    guibg=none    gui=bold
hi Repeat          guifg=#ffdd33    guibg=none    gui=bold
hi Label           guifg=#f5f5f5    guibg=none    gui=none
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

" " " --------------------------------
" " " Completion menu
" " " --------------------------------
hi Pmenu           guifg=#e4e4ef    guibg=#282828    gui=none
hi PmenuSel        guifg=#e4e4ef    guibg=#101010    gui=none
hi PmenuSbar       guibg=#181818
hi PmenuThumb      guibg=#181818

" " " --------------
" " " - Visual aid -
" " " --------------
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


" " " -----------------
" " " - Number column -
" " " -----------------
hi CursorColumn    guifg=none    guibg=none    gui=none
hi FoldColumn      guifg=none    guibg=#101010    gui=none
hi SignColumn      guifg=none    guibg=none    gui=none
hi Folded          guifg=#cc8c3c    guibg=#101010    gui=none


" " " -----------------
" " " - Prompt/Status -
" " " -----------------
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
highlight TSAnnotation guifg=#95a99f gui=none
highlight TSAttribute guifg=#95a99f gui=none
highlight TSNamespace guifg=#95a99f

" Functions
highlight TSFuncBuiltin guifg=#96a6c8
highlight TSFunction guifg=#96a6c8
highlight TSFuncMacro guifg=#96a6c8
highlight TSParameter guifg=#e4e4ef
highlight TSParameterReference guifg=#e4e4ef
highlight TSMethod guifg=#96a6c8
highlight TSField guifg=#e4e4ef
highlight TSProperty guifg=#ABB2BF
highlight TSConstructor guifg=#96a6c8

" Keywords
highlight TSConditional guifg=#ffdd33 gui=bold
highlight TSRepeat guifg=#ffdd33 gui=bold
highlight TSLabel guifg=#ffdd33 gui=bold
" Does not work for yield and return they should be diff then class and def
highlight TSKeyword guifg=#ffdd33 gui=bold
highlight TSKeywordFunction guifg=#ffdd33 gui=bold
highlight TSKeywordOperator guifg=#96a6c8
highlight TSOperator guifg=#ABB2BF
highlight TSException guifg=#ffdd33 gui=bold
highlight TSType guifg=#95a99f gui=none
highlight TSTypeBuiltin guifg=#95a99f gui=none
highlight TSStructure guifg=#ABB2BF gui=none
highlight TSInclude guifg=#95a99f gui=none

" Variable
highlight TSVariable guifg=#e4e4ef
highlight TSVariableBuiltin guifg=#e4e4ef

" Text
hi! link TSText @string
hi! link TSStrong @string
hi! link TSEmphasis @string
highlight TSUnderline guifg=#cc8c3c
hi! link TSTitle @string
hi! link TSLiteral @string
hi! link TSURI @string

" Tags
highlight TSTag guifg=#569CD6
highlight TSTagDelimiter guifg=#5C6370

highlight TSComment guifg=#cc8c3c

" Nvim cmp
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
highlight! CmpItemKindVariable guibg=NONE guifg=#e4e4ef
highlight! CmpItemKindInterface guibg=NONE guifg=#e4e4ef
highlight! CmpItemKindText guibg=NONE guifg=#73c936
highlight! CmpItemKindFunction guibg=NONE guifg=#96a6c8
highlight! CmpItemKindMethod guibg=NONE guifg=#96a6c8
highlight! CmpItemKindKeyword guibg=NONE guifg=#ffdd33
highlight! CmpItemKindProperty guibg=NONE guifg=#e4e4ef
highlight! CmpItemKindUnit guibg=NONE guifg=#ffdd33
highlight! CmpItemKindSnippet guibg=NONE guifg=#D4D4D4


" -- NvimTree
hi NvimTreeFolderIcon guifg=#96a6c8 guibg=none
hi NvimTreeIndentMarker guifg=#e4e4ef guibg=none
hi NvimTreeNormal guifg=#e4e4ef guibg=none
hi NvimTreeVertSplit guifg=#282828 guibg=none
hi NvimTreeFolderName guifg=#e4e4ef guibg=none
hi NvimTreeOpenedFolderName guifg=#e4e4ef guibg=none
hi NvimTreeEmptyFolderName guifg=#e4e4ef guibg=none gui=italic
hi NvimTreeGitIgnored guifg=#e4e4ef guibg=none gui=italic
hi NvimTreeImageFile guifg=#cc8c3c guibg=none
hi! link NvimTreeSpecialFile Typedef
hi NvimTreeEndOfBuffer guifg=#e4e4ef guibg=none
hi! link  NvimTreeCursorLine CursorLine 
" hi! link NvimTreeGitStaged 
" hi! link NvimTreeGitNew
" hi! link NvimTreeGitRenamed
" hi! link NvimTreeGitDeleted
" hi! link NvimTreeGitMerge
" hi! link NvimTreeGitDirty
" hi! link NvimTreeSymlink 
hi NvimTreeRootFolder guifg=#96a6c8 guibg=none gui=bold
hi NvimTreeExecFile guifg=#ffdd33 guibg=none gui=bold

hi! link @variable.builtin @type
