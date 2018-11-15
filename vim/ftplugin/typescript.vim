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

" Convert a function into a stateless component
command! TSNewStateless execute "normal €kheexport const odoOa = €@7e=> €khLLLa: StatelessComo€kbponent<uucwoLpaProps>€ku€kd€khe€ku€kueinterface€kb€kb€kb€kb€kb€kb€kb€kb€kbtype paProps = any;G?import import {statelesscompondd/import.*react€khLLa €kb, {StatelessComponent}"
" Add Props/State interfaces to a JS component
command! TSComponent execute "normal /extends (React.?€kb)?c€kbComponent \{€khocw€khe€kupa€khtype €@7Props = any;type paState = any;€kd€@7Ja<paProps,paState>"
" relocate contextTypes to a static property
command! TSContext execute 'normal /\.contextTypes \= \{€khcwBVkbzcbxcw/class x extends€ku€@7static bzp€ku"do€@7=%I/x.contextTypes€@7V%d'
" relocate contextTypes to a static property
command! TSPropTypes execute 'normal /\.propTypes \= \{€khcwBVkbzcbxcw/class x extends€ku€@7static bzp€ku"do€@7=%I/x.propTypes€@7V%d'
