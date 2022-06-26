set gfn=Iosevka\ regular\ 10
if has("gui_running")
	noremap <C-ScrollWheelUp> <Plug>(fontzoom-larger) 
	noremap <C-ScrollWheelDown> <Plug>(fontzoom-smaller)
endif

map <m-o> :Fontzoom!<cr>
map <m--> <Plug>(fontzoom-smaller)
map <m-=> <Plug>(fontzoom-larger)
