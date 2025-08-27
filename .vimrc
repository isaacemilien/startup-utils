:set autoindent

syntax enable
filetype plugin indent on
au BufRead,BufNewFile *.md set filetype=markdown

function! AppendTimeInline(pomo_count, lnum)
  	let t = localtime()
    	let stamp = 'P' . string(a:pomo_count) . ' ' . strftime('%H%M', t) . ' ' . strftime('%H%M', t + 1500) . ': '
        let line = getline(a:lnum)
	let updated = substitute(line, '\S\+', stamp . '\0', '')
	call setline(a:lnum, updated)
endfunction

function! PullContent()
	let cur_line = line('.')
	let cont = getline(cur_line) 
	let ind_level = indent('.') / &shiftwidth
	let i = cur_line - 1
	while i > 0
		let ind_level = indent(i) / &shiftwidth
		
		if ind_level == 1
			let header_line = getline(i)
			let open_idx = stridx(header_line, '[')
			let close_idx = stridx(header_line, ']')
			let x_count = close_idx - open_idx 
			let header_line = header_line[:open_idx] . 'x' . header_line[open_idx + 1:] 
			
			call setline(i, header_line)
			call AppendTimeInline(x_count, cur_line)

			break
		endif

		let i -= 1
	endwhile
endfunction

command! Time call PullContent()
