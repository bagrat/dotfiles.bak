let g:lightline = {
            \ 'colorscheme': 'solarized_dark_n9code',
            \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
            \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
            \ 'component': {
            \   'readonly': '%{&readonly?"\ue0a2":""}',
            \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":""}',
            \ },
            \ 'inactive': {
            \   'right': [
            \   ],
            \ },
            \ 'active': {
            \   'left': [
            \       [ 'mode', 'paste' ],
            \       [ 'fugitive', 'venv', 'readonly', 'filename', 'modified' ]
            \   ],
            \   'right': [
            \       ['lineinfo'],
            \       ['percent'],
            \   ],
            \ },
            \ 'component_function': {
            \   'fugitive': 'LightLineFugitive',
            \   'filename': 'LightLineFilename',
            \   'mode': 'LightLineMode',
            \   'venv': 'LightLineVenv',
            \   'ctrlpmark': 'CtrlPMark'
            \ },
            \ }

hi StatusLine ctermbg=10 ctermfg=2 cterm=None guibg=NONE guifg=NONE gui=NONE
hi WildMenu ctermbg=10 ctermfg=3 cterm=bold,underline guibg=NONE guifg=NONE gui=NONE
hi StatusLineNC ctermbg=10 ctermfg=10 cterm=NONE guibg=NONE guifg=NONE gui=NONE
" hi LightlineMiddle_active ctermfg=0 ctermbg=0 cterm=NONE guibg=NONE guifg=NONE gui=NONE
" hi LightlineLeft_active ctermfg=0 ctermbg=0 cterm=NONE guibg=NONE guifg=NONE gui=NONE
" hi LightlineRight_active ctermfg=0 ctermbg=0 cterm=NONE guibg=NONE guifg=NONE gui=NONE

function! LightLineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = "\ue0a0 "  " edit here for cool mark
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineModified()
      return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! LightLineReadonly()
        return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightLineFilename()
  let fname = expand('%:t')
  if fname == 'ControlP'
    return g:lightline.ctrlp_prev . ' ' . g:lightline.subseparator.left . ' ' .
          \ g:lightline.ctrlp_item . ' ' . g:lightline.subseparator.left . ' ' .
          \ g:lightline.ctrlp_next
  endif
  return fname == 'ControlP' ? '' :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! LightLineVenv()
    if &filetype != 'python'
        return ''
    endif
    try
        if exists('*virtualenv#statusline')
            return "\u233e ".virtualenv#statusline()
        endif
    catch
    endtry
    return ''
endfunction

function! CtrlPMark()
  return expand('%:t') =~ 'ControlP' ? g:lightline.ctrlp_marked : ''
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }
function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  let g:lightline.ctrlp_marked = a:marked
  return lightline#statusline(0)
endfunction
function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction
