"""""""""""""""""
" https://github.com/vim/vim/issues/11811
set kpc=kitty:none
let &term = &term
""""""""""""""""""

" Terminal mode
tnoremap <Esc> <C-\><C-n>

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
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" Delete tab
noremap <C-w> :bdelete<CR>

" New tab
noremap <C-t> :tabnew<CR>

" Format code
nnoremap fm :Autoformat<CR>

" Visual
" Stay in indent mode
vnoremap < <gv
vnoremap > >gv

"vnoremap <silent> gc :call nerdcommenter#Comment('x', 'toggle')<CR>
" vnoremap <silent> gc <Plug> Commentary <CR>


"let s:comment_map = { 
"    \   "c": '\/\/',
"    \   "cpp": '\/\/',
"    \   "go": '\/\/',
"    \   "java": '\/\/',
"    \   "javascript": '\/\/',
"    \   "lua": '--',
"    \   "scala": '\/\/',
"    \   "php": '\/\/',
"    \   "python": '#',
"    \   "ruby": '#',
"    \   "rust": '\/\/',
"    \   "sh": '#',
"    \   "desktop": '#',
"    \   "fstab": '#',
"    \   "conf": '#',
"    \   "profile": '#',
"    \   "bashrc": '#',
"    \   "bash_profile": '#',
"    \   "mail": '>',
"    \   "eml": '>',
"    \   "bat": 'REM',
"    \   "ahk": ';',
"    \   "vim": '"',
"    \   "tex": '%',
"    \ }
"
"function! ToggleComment()
"    if has_key(s:comment_map, &filetype)
"        let comment_leader = s:comment_map[&filetype]
"        if getline('.') =~ "^\\s*" . comment_leader . " " 
"            " Uncomment the line
"            execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
"        else 
"            if getline('.') =~ "^\\s*" . comment_leader
"                " Uncomment the line
"                execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
"            else
"                " Comment the line
"                execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
"            end
"        end
"    else
"        echo "No comment leader found for filetype"
"    end
"endfunction
"
"
"nnoremap <C-/> :call ToggleComment()<cr>
"vnoremap <C-/> :call ToggleComment()<cr>
