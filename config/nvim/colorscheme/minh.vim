" --------------------------------
" Editor settings
" --------------------------------

hi clear

hi Normal          guifg=#e4e4ef    guibg=#181818   
hi Cursor          guifg=none    guibg=none    
hi CursorLine      guifg=none    guibg=none    
hi LineNr          guifg=none   guibg=none    
hi CursorLineNR    guifg=yellow    guibg=#282828    

" --------------------------------
" Variable types
" --------------------------------
hi Constant        guifg=#ffdd33   gui=bold
hi String          guifg=#73c936    guibg=none    gui=none
hi StringDelimiter guifg=none    guibg=none    gui=none
hi Character       guifg=#73c936    guibg=none    gui=none
hi Number          guifg=#95a99f    guibg=none    gui=none
hi Boolean         guifg=#ffdd33    guibg=none    gui=bold
hi Float           guifg=#ffdd33    guibg=none    gui=bold

hi Identifier      guifg=#e4e4ef    guibg=none    gui=bold
hi Function        guifg=#96a6c8    guibg=none    gui=none

" ----------
" - C like -
" ----------
hi PreProc         guifg=#ffdd33    guibg=none    gui=bold
hi Include         guifg=#ffdd33    guibg=none    gui=bold
hi Define          guifg=#ffdd33    guibg=none    gui=bold
hi Macro           guifg=#ffdd33    guibg=none    gui=bold
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
