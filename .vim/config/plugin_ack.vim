let g:ack_autofold_results = 1

cnoreabbrev Ack Ack!

let g:ack_mappings = {
      \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
      \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }


function! FoldText()
    let plus = "\uf0fe "
    let line = getline(v:foldstart)
    let line_count = v:foldend - v:foldstart + 1

    if &filetype == 'qf'
        let parts = split(line, '|')
        echom parts
        
        if len(parts) > 0
            let line = parts[0]
        endif
    elseif matchstr(line, '^ ') == ' '
        echom hehe
        let line = line[2:]
    endif

    let width = winwidth(0)
    let line_len = strlen(line)
    let line_fit = float2nr(width * 0.3)

    if line_fit < line_len
        let trunc_line = strpart(line, 0, line_fit) . "\.\.\.     "
    else
        let num_space = line_fit - line_len
        let padding = repeat(' ', num_space + 3 + 5)
        let trunc_line = line . padding
    endif

    let line_info = "\uf036 " . line_count

    return plus . trunc_line . line_info
endfunction
