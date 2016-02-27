" execute line in current vim window
nnoremap <buffer> <Leader>e ^"vy$:<C-r>v<CR>

" use markers for folding
setlocal foldmethod=marker

" use shift+enter to start a new line with a \ to continue multiline code
" structures
inoremap <buffer> <S-CR> <CR>\ 
