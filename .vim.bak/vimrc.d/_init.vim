if has('nvim')
    function! GetPythonVersion()
        let out = systemlist('python --version')
        let full = split(out[0], ' ')[1]
        let major = split(full, '\.')[0]

        return major
    endfunction

    let g:current_python_version = GetPythonVersion()
else
    " Vim has certain problems while executing the upper
    " code at the startup. So I will assume that I am not
    " going to use vim for Python 3 development, so will
    " set this variable to '2' by default in case of Vim
    let g:current_python_version = '2'
endif
