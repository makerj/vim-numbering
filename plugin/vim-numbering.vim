"Let vim as a pdf reader
if exists("g:vim_numbering_loaded")
  finish
endif
let g:vim_numbering_loaded = 1

let s:is_rel = 0
func! s:ToggleNumbering()
	if s:is_rel
		set norelativenumber
		let s:is_rel = 0
	else
		set relativenumber
		let s:is_rel = 1
	endif
endfunc

command! ToggleNumbering call <SID>ToggleNumbering()

