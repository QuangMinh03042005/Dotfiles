"set guifont=Iosevka\ 20
"set guiheadroom=0
set hidden
set laststatus=2
set nu rnu
set showtabline=2
set showmode
set wildmenu
syntax on
set hlsearch
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set ttimeoutlen=0
filetype plugin indent on
:set mouse=a 				" Enable mouse
set tabstop=4 				" 
set shiftwidth=4 			" 
"set listchars=tab:\¦\ 		" Tab charactor 
"set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set number 					" Show line number
set ignorecase 				" Enable case-sensitive 
" set termguicolors
let mapleader=" "
" Disable backup
set nobackup
set nowb
set noswapfile
set encoding=UTF-8
set linespace=0
set scrolloff=4
set sidescrolloff=4
" set laststatus=1
set cmdheight=1

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

source ~/vim_config/plug.vim
source ~/vim_config/coc.vim
source ~/vim_config/ctrlp.vim
source ~/vim_config/keymaps.vim
source ~/vim_config/floatterm.vim
source ~/vim_config/airline.vim

"let g:acp_behaviorKeywordLength = 1

" Set colorscheme
set background=dark
let g:gruvbox_contrast_dark='hard'
" colorscheme jellybeans

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 235 
colo seoul256
