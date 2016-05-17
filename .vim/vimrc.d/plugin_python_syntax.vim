if g:current_python_version == '2'
    let g:python_version_2 = 1
else
    let g:python_version_2 = 0
endif

let g:python_highlight_all = 1

hi String ctermfg=13 ctermbg=8
hi link Number String
hi link Boolean String
