call plug#begin("~/.vim/plugged")

" Colorscheme
	Plug 'w0ng/vim-hybrid'
	Plug 'nanotech/jellybeans.vim'
	Plug 'junegunn/seoul256.vim'
	Plug 'morhetz/gruvbox'

" Better syntax
	Plug 'sheerun/vim-polyglot'
	Plug 'uiiaoo/java-syntax.vim'

" Autocomplete
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'vim-scripts/AutoComplPop'

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

" Tabline
	Plug 'pacha/vem-tabline'

" Format code without lsp
	Plug 'vim-autoformat/vim-autoformat'

" Comment code
	Plug 'tpope/vim-commentary'

call plug#end()
