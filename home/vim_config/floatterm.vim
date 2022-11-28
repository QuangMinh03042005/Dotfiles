let g:floaterm_title = 'Terminal'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Floaterm
let g:floaterm_position = 'topright'
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.6
let g:floaterm_height=0.6
let g:floaterm_wintitle=0
let g:floaterm_autoclose=2
