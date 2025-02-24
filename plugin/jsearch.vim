" vim: fdm=marker:et:ts=4:sw=2:sts=2

" Description: Call jsearch
"
" Maintainer: Eustáquio Rangel
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("g:loaded_jsearch")
    finish
endif

let g:loaded_jsearch = 1

command! -nargs=0 ImportPackage call jsearch#ImportPackage()

noremap <C-P> :ImportPackage<CR>
