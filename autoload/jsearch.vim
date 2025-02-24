function! jsearch#ImportPackage()
    let cursorWord = expand('<cword>')
    let package = system("jsearch -is -c " . cursorWord)
    call setline('.', package)
endfunction
