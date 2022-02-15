let g:vimrc_directory = "$DOTFILES/vim"

let &runtimepath="$DOTFILES/vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$DOTFILES/vim/after"
let g:python_flavor = 'python3'

exec "source " . g:vimrc_directory . "/vimrc"

colo jellybeans

noremap Ã <C-d>zz
inoremap Ã <Esc><C-d>zzi
noremap À <C-u>zz
inoremap À <Esc><C-u>zzi

" this just makes the headers bold
hi CSVColumnHeaderOdd ctermfg=71 cterm=bold
hi CSVColumnHeaderEven ctermfg=183 cterm=bold

let g:python3_host_prog = '/usr/bin/python3'
