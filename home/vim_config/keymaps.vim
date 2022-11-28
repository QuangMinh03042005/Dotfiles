" Terminal mode
:tnoremap <Esc> <C-\><C-n>

" Better switching windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <F1> :FloatermToggle<CR>
nnoremap <silent> <F2> :NERDTreeToggle<cr>
nnoremap <silent> <F3> :FZF<CR>
nnoremap <silent> <F4> :TagbarToggle<cr>

nnoremap <C-y> <C-v>

" Better switching buffer
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
nnoremap <A-q> :bdelete<CR>

" Delete tab
noremap bd :bd<CR>

" New tab
noremap <C-t> :tabnew<CR>

" Format code
nnoremap fm :Autoformat<CR>

" Visual
" Stay in indent mode
vnoremap < <gv
vnoremap > >gv
