setlocal shiftwidth=2  " makes it easier to work with jsx

nnoremap <buffer> ;p ggVG:'<,'>!sqlformat -r -<CR>
vnoremap <buffer> ;p :'<,'>!sqlformat -r -<CR>
