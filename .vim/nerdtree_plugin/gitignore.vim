call NERDTreeAddPathFilter('NERDTreeGitIgnoreFilter')

" Git ignore filter
if exists("loaded_nerdtree_gitignore_filter")
    finish
endif
let loaded_nerdtree_gitignore_filter = 1

function NERDTreeGitIgnoreFilter(params)
    let root = a:params['nerdtree'].root.path.str()
    let fname = root . '/.gitignore'
    if !filereadable(fname)
        return
    endif

    let item = a:params['path'].str()
    let item = substitute(item, escape(root, '/'), '', 'g')
    let item = item[1:]

    let b:hello = item

    return item =~ g:GitIgnoreRegex(fname)
endfunction

let s:default_patterns = [
            \   '\.git',
            \ ]

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

    for d in s:default_patterns
        call add(regexes, d)
    endfor

    let b:NERDTreeGitIgnoreRegex = '^\(' . join(regexes, '\|') . '\)$'
    return b:NERDTreeGitIgnoreRegex
endfunction

" TODO: enhance from albfan
