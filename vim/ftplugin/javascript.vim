setlocal shiftwidth=2
setlocal tabstop=2

function! ImportFromLastWindow() abort
    execute "normal! \<C-w>p"
    call setreg('z', substitute(expand('%:r'), getcwd() . '/', "", ""))
    execute "normal! \<C-w>p"
    execute "normal! oimport name from '@\<C-r>z';\<Esc>^w"
endfunction

nnoremap <buffer> yi :call ImportFromLastWindow()<CR>

silent! function! OpenTestFile(test_type) abort
    let current_file_path = substitute(expand('%:r'), getcwd() . '/', "", "")
    let test_file_path = 'src/test/' . a:test_type . '/' . substitute(current_file_path, 'src/', "", "") . '_test.ts'
    " Editing a new TS file during the execution of this function throws an error
    execute "edit " . test_file_path
endfunction

nnoremap <buffer> yt :call OpenTestFile('integration')<CR>
nnoremap <buffer> yu :call OpenTestFile('unit')<CR>

function! Typescriptify() abort
    silent execute "!tsconvert " . expand('%:p')
    execute "e! " . substitute(expand('%:p'), '\V.js', '.ts', "")

    " Remove multiline eslint-disable comments
    execute "%s%\\v/\\*\\neslint-disable\\_.{-}^\\*/%%g"

    write
endfunction

command! Typescriptify call Typescriptify()
