noremap <leader>t :NERDTreeToggle<CR>

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeNodeDelimiter = "\u00a0"

if $USE_SYMBOLS == 1
    let g:NERDTreeDirArrowExpandable=$SYMFOLDEREXPAND
    let g:NERDTreeDirArrowCollapsible=$SYMFOLDERCOLLAPSE
endif


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
            \ "Modified"  : $SYMGITMODIFIED,
            \ "Staged"    : $SYMGITSTAGED,
            \ "Untracked" : $SYMGITUNTRACKED,
            \ "Renamed"   : $SYMGITRENAMED,
            \ "Unmerged"  : $SYMGITUNMERGED,
            \ "Deleted"   : $SYMGITDELETED,
            \ "Dirty"     : $SYMGITDIRTY,
            \ "Clean"     : "",
            \ "Unknown"   : ""
            \ }
