let g:startify_custom_header = [
            \ '              ___              __   ',
            \ '         ___ / _ \_______  ___/ /__ ',
            \ '        / _ \\_, / __/ _ \/ _  / -_)',
            \ '       /_//_/___/\__/\___/\_,_/\__/ ',
            \ '                                    '
            \ ]

let g:startify_custom_footer = [
            \ '             __                  _ __ ',
            \ '        ____/ / __ _________    (_/ /_',
            \ '       / __/ _ / // / __/ _ \  / / __/',
            \ '       \__/_//_\_,_/_/ /_//_/ /_/\__/ ',
            \ '                                      '
            \ ]

autocmd User Startified setlocal buftype=

hi default link StartifyHeader StartifyFooter
hi StartifyFooter ctermfg=3 ctermbg=NONE cterm=bold
hi default link StartifyNumber StartifyBracket
hi StartifyBracket ctermfg=10 ctermbg=NONE cterm=NONE
hi default link StartifySlash StartifyPath

let g:better_whitespace_filetypes_blacklist = [
            \ 'startify',
            \ 'diff', 'gitcommit', 'unite', 'qf', 'help'
            \ ]
