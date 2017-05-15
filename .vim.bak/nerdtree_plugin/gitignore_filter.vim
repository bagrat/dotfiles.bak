call NERDTreeAddPathFilter('NERDTreeGitIgnoreFilter')

" Git ignore filter
if exists("loaded_nerdtree_gitignore_filter")
    finish
endif
let loaded_nerdtree_gitignore_filter = 1

function NERDTreeGitIgnoreFilter(params)
    let fname = a:params['nerdtree'].root.path.str() . '/.gitignore'
    if !filereadable(fname)
        return
    endif

    return a:params['path'].str() =~ g:GitIgnoreRegex(fname)
endfunction

function g:GitIgnoreRegex(fname)
    if exists('b:NERDTreeGitIgnoreRegex')
        return b:NERDTreeGitIgnoreRegex
    endif

    let lines = readfile(a:fname)
    let regexes = []

    for l in lines
        if l =~ '^#' || l =~ '^\s*$'
            continue
        endif

        let regex = l
        let regex = substitute(regex, '\.', '\\.', 'g')
        let regex = substitute(regex, '*', '.*', 'g')
        let regex = substitute(regex, '?', '.', 'g')
        if regex =~ '^.*\/$'
            let regex = regex[:-2]
        endif
        let regex = escape(regex, '/~')

        call add(regexes, regex)
    endfor

    let b:NERDTreeGitIgnoreRegex = '\(' . join(regexes, '\|') . '\)$'
    return b:NERDTreeGitIgnoreRegex
endfunction

" TODO: enhance from albfan
