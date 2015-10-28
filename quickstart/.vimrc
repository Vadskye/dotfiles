let g:vimrc_directory="$DOTFILES/vim"
set shellslash
let &runtimepath="$DOTFILES/vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$DOTFILES/vim/after"

exec "source " . g:vimrc_directory . "/.vimrc"

" set shellquote='
" set shellxquote='
" set shell=C:/msys64/usr/bin/bash\ --login
" set shellcmdflag=-ic
