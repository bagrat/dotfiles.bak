let g:lightline = {}
let g:lightline.enable = {}
let g:lightline.enable.statusline = 1 
let g:lightline.enable.tabline = 0

let g:lightline.colorscheme = 'solarized_dark_bagrat'

let g:lightline.separator = {}
let g:lightline.separator.left = $SYMSR
let g:lightline.separator.right = $SYMSL
let g:lightline.subseparator = {}
let g:lightline.subseparator.left = $SYMDDL
let g:lightline.subseparator.right = $SYMSSR

let g:lightline.inactive = {}
let g:lightline.inactive.left = [
            \   ['nerdtree_icon'],
            \   ['filename', 'modified']
            \ ]
let g:lightline.inactive.right = []

let g:lightline.active = {}
let g:lightline.active.left = [
            \   ['nerdtree_icon', 'ctrlp_icon', 'mode', 'paste'],
            \   ['filename', 'ctrlp_mode'],
            \   ['ctrlp_next', 'modified', 'branch'],
            \ ]
" TODO: Add virtual env
let g:lightline.active.right = [
            \   ['vim_icon'],
            \   ['alenumbers'],
            \]

let g:lightline.component = {}
let g:lightline.component.blank = "%{\"". $SYMVIM_ICON . "\"}"

let g:lightline.component_function = {}
let g:lightline.component_function.paste = 'LightLinePaste'
let g:lightline.component_function.modified = 'LightLineModified'
let g:lightline.component_function.filename = 'LightLineFilename'
let g:lightline.component_function.mode = 'LightLineMode'
let g:lightline.component_function.branch= 'LightLineBranch'
let g:lightline.component_function.nerdtree_icon = 'LightLineNerdTreeIcon'
let g:lightline.component_function.ctrlp_icon = 'LightLineCtrlpIcon'
let g:lightline.component_function.ctrlp_mode = 'LightLineCtrlpMode'
let g:lightline.component_function.ctrlp_next = 'LightLineCtrlpNext'
let g:lightline.component_function.alenumbers = 'LightLineAleNumbers'
let g:lightline.component_function.vim_icon = 'LightLineVimIcon'

function! LightLineVimIcon()
    if winwidth(0) > 20
        return $SYMVIM_ICON
    endif

    return ''
endfunction

function! LightLineModified()
    let fname = expand('%:t')

    if fname =~ "NERD_tree"
        return ''
    endif

    if fname =~ "ControlP"
        return ''
    endif


    return &modified ? $SYMFLOPPY : &modifiable ? &readonly ? $SYMREADONLY : '' : $SYMLOCKED
endfunction

function! LightLinePaste()
    let fname = expand('%:t')

    if fname =~ "NERD_tree"
        return ''
    endif

    if fname =~ "ControlP"
        return ''
    endif

    return &paste ? $SYMPASTE : ''
endfunction

function! LightLineFilename()
    let fname = expand('%:t')

    if fname =~ 'ControlP'
        return ''
    endif
    
    if fname =~ 'NERD_tree'
        if winwidth(0) > 17
            return 'Project'
        endif
        return ''
    endif

    if fname == ''
        return $SYMSTAR
    endif

    let icon = ''
    if exists('*WebDevIconsGetFileTypeSymbol') && $USE_SYMBOLS == 1
        let icon = WebDevIconsGetFileTypeSymbol(fname)
    endif

    return icon . ' ' . fname
endfunction

function! LightLineMode()
    let fname = expand('%:t')

    if fname =~ 'NERD_tree'
        return ''
    endif

    if fname =~ 'ControlP'
        return ''
    endif

    if winwidth(0) > 50
        return lightline#mode()
    else
        return lightline#mode()[0]
    endif

endfunction

function! LightLineBranch()
    if !exists('*fugitive#head')
        return ''
    endif
    let fname = expand('%:t')

    if fname =~ 'NERD_tree'
        return ''
    endif

    let branch = fugitive#head()

    if !strlen(branch)
        return ''
    endif

    return $SYMBRANCH . " " . branch
endfunction

function! LightLineNerdTreeIcon()
    let fname = expand('%:t')

    if fname =~ 'NERD_tree'
        if winwidth(0) > 9
            return $SYMPROJECT
        endif
        return ''
    endif

    return ''
endfunction

function! LightLineCtrlpIcon()
    let fname = expand('%:t')

    if fname =~ 'ControlP'
        return $SYMSEARCH
    endif

    return ''
endfunction

let s:ctrlp_mode_map = {
            \   "mru": $SYMMRU . " mru",
            \   "mru files": $SYMMRU . " mru",
            \   "files": $SYMFILE . " files",
            \   "fil": $SYMFILE . " files",
            \   "buf": $SYMBUFFER . " buffers",
            \   "buffers": $SYMBUFFER . " buffers",
            \}

function! LightLineCtrlpMode()
    let fname = expand('%:t')

    if fname =~ 'ControlP'
        let current_mode = get(s:ctrlp_mode_map, g:lightline.ctrlp_item, g:lightline.ctrlp_item)

        if exists('current_mode')
            return current_mode
        else
            ''
        endif
    endif

    return ''
endfunction

function! LightLineCtrlpNext()
    let fname = expand('%:t')

    if fname =~ 'ControlP'
        let next_mode = get(s:ctrlp_mode_map, g:lightline.ctrlp_next, g:lightline.ctrlp_next)
        let prev_mode = get(s:ctrlp_mode_map, g:lightline.ctrlp_prev, g:lightline.ctrlp_prev)
        let modes = next_mode . ' ' . g:lightline.subseparator.left . ' ' . prev_mode

        if exists('modes')
            return modes
        else
            ''
        endif
    endif

    return ''
endfunction

function! LightLineAleNumbers()
    if !exists('*ALEGetStatusLine')
        return ''
    endif

    let fname = expand('%:t')

    if fname =~ 'NERD_tree'
        return ''
    endif

    if fname =~ 'ControlP'
        return ''
    endif

    return ALEGetStatusLine()
endfunction


" CtrlP scpeific settings
let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
endfunction
