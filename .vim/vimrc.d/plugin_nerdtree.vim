noremap <leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

let g:NERDTreeIndicatorMap = {
            \ "Modified"  : "*",
            \ "Staged"    : "+",
            \ "Untracked" : "-",
            \ "Renamed"   : ">",
            \ "Unmerged"  : "=",
            \ "Deleted"   : "x",
            \ "Dirty"     : "#",
            \ "Clean"     : "v",
            \ "Unknown"   : "?"
            \ }
