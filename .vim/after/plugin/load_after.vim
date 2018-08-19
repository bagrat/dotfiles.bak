" Source the the rest of the config files
for f in split(glob('~/.vim/config/__*.vim'), '\n')
    if f =~ "^__[^_]"
        exe 'source' f
    endif
endfor
