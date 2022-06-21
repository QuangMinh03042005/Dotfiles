"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝

" Vim customized by Minh Coder
" Based on https://github.com/VuNguyenCoder/VimConfig
" https://github.com/QuangMinh03042005

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set nocompatible
set mouse=a 				" Enable mouse
set tabstop=4 				" 
set shiftwidth=4 			" 
"set listchars=tab:\¦\ 		" Tab charactor 
"set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set number 					" Show line number
set ignorecase 				" Enable case-sensitive 
set termguicolors
let mapleader=" "
" Disable backup
set nobackup
set nowb
set noswapfile
set encoding=UTF-8
set linespace=0
set scrolloff=4
set sidescrolloff=4
set laststatus=3
syntax on

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime 
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg 
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used for Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32')
    call plug#begin('~/AppData/Local/plugged')
else
    call plug#begin('~/plugged')
endif

" Theme
	Plug 'joshdick/onedark.vim'
	Plug 'blueshirts/darcula'
	Plug 'morhetz/gruvbox'
	Plug 'nanotech/jellybeans.vim'
	Plug 'junegunn/seoul256.vim'
	Plug 'NTBBloodbath/doom-one.nvim'

" File browser
	Plug 'preservim/nerdTree' 						" File browser  
	Plug 'Xuyuanp/nerdtree-git-plugin' 				" Git status
	Plug 'ryanoasis/vim-devicons' 					" Icon
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync' 				" Sync current file 

" File search
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 			" Fuzzy finder 
	Plug 'junegunn/fzf.vim'

" Status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

" Terminal
	Plug 'voldikss/vim-floaterm' 					" Float terminal

" Code intellisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server 

" Syntax highlighting
	Plug 'sheerun/vim-polyglot'
	Plug 'uiiaoo/java-syntax.vim'
" Function list
	Plug 'preservim/tagbar'
  
" Debugging
	Plug 'puremourning/vimspector' 					" Vimspector

" Source code version control 
	Plug 'tpope/vim-fugitive' 						" Git

" Run code
	Plug 'skywind3000/asyncrun.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Set theme 
"syntax enable
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
"colo seoul256
"source ~/.config/nvim/colorscheme/minh.vim

" Other setting
for setting_file in split(glob(stdpath('config').'/minimal/settings/*.vim'))
	execute 'source' setting_file
endfor

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Tagbar
let g:tagbar_width=30
let g:tagbar_autoshowtag = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

" Resize pane
nmap <M-Right> :vertical resize +1<CR> 		
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

nnoremap <silent> <F1> :FloatermToggle<CR>
nnoremap <silent> <F2> :NERDTreeToggle<cr>
nnoremap <silent> <F3> :FZF<cr>
nnoremap <silent> <F4> :TagbarToggle<cr>

nnoremap <C-y> <C-v>

" Better switching windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal mode
:tnoremap <Esc> <C-\><C-n>

"tab
nnoremap <silent> <tab> :bnext<cr>
nnoremap <silent> <S-tab> :bprevious<cr>
nnoremap <silent> <A-q> :Bdelete<cr>

" AsyncRun
if has('win32')
	nnoremap <silent> <F10> :AsyncRun -mode=term -pos=floatterm -rows=10 make.bat<CR>
else
	nnoremap <silent> <F10> :AsyncRun -mode=term -pos=floatterm -rows=10 make<CR>
endif

