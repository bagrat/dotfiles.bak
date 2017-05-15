noremap <leader>t :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeHijackNetrw = 0

function! g:CloseBuffer()
    let ntopen = 0
    if exists("t:NERDTreeBufName")
        let ntopen = bufwinnr(t:NERDTreeBufName) > 0 ? 1 : 0
    endif

    if ntopen == 1
        exec "NERDTreeClose"
    endif
    exec "bd"
    if ntopen == 1
        exec "NERDTreeToggle"
    endif
endfunction

let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "*",
            \ "Staged"    : "+",
            \ "Untracked" : "-",
            \ "Renamed"   : ">",
            \ "Unmerged"  : "=",
            \ "Deleted"   : "x",
            \ "Dirty"     : "!",
            \ "Clean"     : "v",
            \ "Unknown"   : "?"
            \ }
