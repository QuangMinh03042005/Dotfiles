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
set noshowmode
set shiftwidth=4 			" set listchars=tab:\¦\ 		" Tab charactor 
" set cursorline
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
set cmdheight=0
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
	Plug 'overcache/NeoSolarized'
	Plug 'sainnhe/everforest'

" Pretty preview color
	Plug 'norcalli/nvim-colorizer.lua'

" File browser
	Plug 'preservim/nerdTree'   
	Plug 'Xuyuanp/nerdtree-git-plugin' 
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync'

" File search
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 
	Plug 'junegunn/fzf.vim'
	Plug 'ctrlpvim/ctrlp.vim'

" Status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

" Terminal
	Plug 'voldikss/vim-floaterm' 

" Code intellisense
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Function list
	Plug 'preservim/tagbar'
  
" Debugging
	Plug 'puremourning/vimspector' 

" Source code version control 
	Plug 'tpope/vim-fugitive' 

" Run code
	Plug 'skywind3000/asyncrun.vim'

" Comment code
	Plug 'b3nj5m1n/kommentary'

" Foramt code if not use lsp
	Plug 'vim-autoformat/vim-autoformat'

" Multipile cursor
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Buffer
	Plug 'famiu/bufdelete.nvim'

" Dashboard
	Plug 'goolord/alpha-nvim'
	Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Set theme 
"syntax enable
set background=dark
let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 234
" colo seoul256

" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest


" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
	execute 'source' setting_file
endfor


for setting_file in split(glob(stdpath('config').'/settings/*.lua'))
	execute 'luafile' setting_file
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
nnoremap <silent> <F5> : ColorizerToggle<cr>

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

let g:ctrlp_show_hidden = 1

lua << EOF
require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})
EOF

"hor50
"block
" set guicursor=i:block

lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
}
EOF

" source ~/.config/nvim/colorscheme/gruber-darker.vim
