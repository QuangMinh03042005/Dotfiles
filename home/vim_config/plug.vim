call plug#begin("~/.vim/plugged")

" Statusline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Plug 'pacha/vem-tabline'
	" Plug 'pacha/vem-statusline'

" Icon
	Plug 'ryanoasis/vim-devicons'

" Colorscheme
	Plug 'w0ng/vim-hybrid'
	Plug 'nanotech/jellybeans.vim'
	Plug 'junegunn/seoul256.vim'
	Plug 'morhetz/gruvbox'
	Plug 'pacha/vem-dark'
	Plug 'joshdick/onedark.vim'
	Plug 'ericbn/vim-solarized'
	Plug 'mhinz/vim-janah'
	Plug 'drsooch/gruber-darker-vim'
    Plug 'nordtheme/vim'

" Better syntax
	"Plug 'sheerun/vim-polyglot'
	"Plug 'uiiaoo/java-syntax.vim'

" Autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Plug 'vim-scripts/AutoComplPop'
	"Plug 'LunarWatcher/auto-pairs'

" Terminal
	Plug 'voldikss/vim-floaterm'

" Function list
	Plug 'preservim/tagbar'

" Find file
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 
	Plug 'junegunn/fzf.vim'
	Plug 'ctrlpvim/ctrlp.vim'

" Zoom font gvim
	Plug 'thinca/vim-fontzoom'

" File explorer
	Plug 'preservim/nerdTree'
	Plug 'dylanaraps/fff.vim'

" Tabline
	" Plug 'pacha/vem-tabline'

" Format code without lsp
	Plug 'vim-autoformat/vim-autoformat'

" Comment code
	Plug 'tpope/vim-commentary'
	"Plug 'preservim/nerdcommenter'

" Move text
	Plug 'matze/vim-move'
call plug#end()
