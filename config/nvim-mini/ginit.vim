"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings for neovim-qt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable qt popup
" GuiPopupmenu 0

" " Enable line
" GuiLinespace 1

" " Disable qt tab line 
" GuiTabline 0

" Set format of tab name 
set guitablabel=\[%N\]\ %t\ %M 
" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

let s:fontsize = 18
set guifont=Hack:h18

function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
:execute "GuiFont! Hack:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a


function! NeovideAdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
:execute "set guifont=Iosevka:h" . s:fontsize
endfunction



if exists('g:neovide')
    " set guifont=Iosevka:h15
    set guifont=Iosevka:h15
    let g:neovide_cursor_vfx_mode = "railgun"
    noremap <C-ScrollWheelUp> :call NeovideAdjustFontSize(1)<CR>
    noremap <C-ScrollWheelDown> :call NeovideAdjustFontSize(-1)<CR>
    inoremap <C-ScrollWheelUp> <Esc>:call NeovideAdjustFontSize(1)<CR>a
    inoremap <C-ScrollWheelDown> <Esc>:call NeovideAdjustFontSize(-1)<CR>a
endif


