noremap <leader>t :NERDTreeToggle<CR>

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer=1

" let g:NERDTreeDirArrowExpandable="\uf138"
" let g:NERDTreeDirArrowCollapsible="\uf13a"

let g:NERDTreeDirArrowExpandable="\uf460"
let g:NERDTreeDirArrowCollapsible="\uf47c"


" TODO: Move this into workspace.vim
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
            \ "Modified"  : "\uf4a7",
            \ "Staged"    : "\uf431",
            \ "Untracked" : "\uf128",
            \ "Renamed"   : "\uf432",
            \ "Unmerged"  : "\uf066",
            \ "Deleted"   : "\uf00d",
            \ "Dirty"     : "\uf4a7",
            \ "Clean"     : "",
            \ "Unknown"   : ""
            \ }
