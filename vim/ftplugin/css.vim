" treat - as a keyword
setlocal iskeyword+=-

" turn a single line of CSS into multiple lines of properly formatted CSS
function! BreakCSS() abort
    " break the commands into multiple lines
    execute "normal! V:s%\\v(;|[{]) %\\1\\r%g\<CR>"
    " add space after the :
    " start one line after the visual selection to skip the non-CSS
    execute "normal! v%\<Esc>:'<+1,'>s%\\v:\\ze[^ ]%: %g\<CR>"
    " indent everything
    " `>$ goes to the end of the last brace
    normal! `>$=%
endfunction

command! BreakCSS call BreakCSS()

setlocal omnifunc=csscomplete#CompleteCSS noci
