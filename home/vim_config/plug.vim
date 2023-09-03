call plug#begin("~/.vim/plugged")

" Statusline
	" Plug 'vim-airline/vim-airline'
	" Plug 'vim-airline/vim-airline-themes'
	Plug 'pacha/vem-statusline'

" Icon
	"Plug 'ryanoasis/vim-devicons'

" Colorscheme
	Plug 'w0ng/vim-hybrid'
	Plug 'nanotech/jellybeans.vim'
	Plug 'junegunn/seoul256.vim'
	Plug 'morhetz/gruvbox'
	Plug 'pacha/vem-dark'
	Plug 'joshdick/onedark.vim'
	Plug 'ericbn/vim-solarized'
	Plug 'drsooch/gruber-darker-vim'
	Plug 'KabbAmine/yowish.vim'
	Plug 'Yggdroot/duoduo'
	Plug 'zacanger/angr.vim'

" Better syntax
	"Plug 'sheerun/vim-polyglot'
	"Plug 'uiiaoo/java-syntax.vim'

" Autocomplete
	"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
	" Plug 'vim-scripts/AutoComplPop'
	Plug 'LunarWatcher/auto-pairs'

" Terminal
	Plug 'voldikss/vim-floaterm'

" Function list
	Plug 'preservim/tagbar'

" Find file
	Plug 'junegunn/fzf', 
		\ { 'do': { -> fzf#install() } } 
	Plug 'junegunn/fzf.vim'

" Zoom font gvim
	Plug 'thinca/vim-fontzoom'

" File explorer
	Plug 'preservim/nerdTree'

" Tabline
	Plug 'pacha/vem-tabline'

" Format code without lsp
	Plug 'vim-autoformat/vim-autoformat'
	Plug 'rhysd/vim-clang-format'

" Comment code
	Plug 'tpope/vim-commentary'

" Move text
	Plug 'matze/vim-move'
call plug#end()
