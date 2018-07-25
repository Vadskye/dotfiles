set nocompatible

" vim-plug
if has('nvim')
    call plug#begin('~/.local/share/nvim/plugged')
else
    call plug#begin(expand('$DOTFILES/vim/plugged'))
endif
Plug 'tpope/vim-abolish'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'vadskye/vim-checkpoint'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/Conque-Shell'
Plug 'coot/CRDispatcher'
Plug 'chrisbra/csv.vim'
Plug 'vim-scripts/dbext.vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'junegunn/vim-easy-align'
" Plug 'vadskye/vim-emotions'
Plug 'coot/EnchantedVim'
" Plug 'Konfekt/Fastfold'
Plug 'dag/vim-fish', {'for': ['fish']}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'michaeljsmith/vim-indent-object'
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx' " for: javascript doesn't work here
Plug 'vim-scripts/L9'
Plug 'vim-latex/vim-latex', {'for': ['tex', 'latex']}
Plug 'vadskye/vim-meta'
Plug 'vim-scripts/mru.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'scrooloose/nerdtree'
Plug 'moll/vim-node'
Plug 'vim-perl/vim-perl', {'for': 'perl'}
Plug 'vadskye/vim-psql', {'for': 'sql'}
Plug 'digitaltoad/vim-pug', {'for': ['jade', 'pug']}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'vim-python/python-syntax', {'for': 'python'}
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
Plug 'tomtom/tlib_vim'
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'SirVer/ultisnips'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
elseif has('lua')
    Plug 'Shougo/neocomplete.vim'
endif
call plug#end()

source $VIMRUNTIME/mswin.vim

function SourceVimrcFile(name, ...)
    if a:0 >= 1
        let l:directory = a:1
    endif
    if a:0 >= 2
        let l:prefix = a:2
    endif

    if ! exists("l:directory")
        if exists("g:vimrc_directory")
            let l:directory = g:vimrc_directory
        elseif has("win32")
            let l:directory = "$HOME/vimfiles"
        elseif has("unix")
            let l:directory = "$HOME/.vim"
        endif
    endif

    if ! exists("l:prefix")
        if exists("g:vimrc_prefix")
            let l:prefix = g:vimrc_prefix
        else
            let l:prefix = "."
        endif
    endif

    let filename = expand(l:directory . "/" . l:prefix . "vimrc_" . a:name)
    try
        exec "source " . filename
    catch
        echo "Sourcing '" . filename . "' failed: " . string(v:exception)
    endtry
endfunction

source $VIMRUNTIME/macros/matchit.vim
call SourceVimrcFile("basic")
call SourceVimrcFile("remappings")
call SourceVimrcFile("appearance")
call SourceVimrcFile("command_management")
call SourceVimrcFile("files")
call SourceVimrcFile("folding")
call SourceVimrcFile("internal")
call SourceVimrcFile("motion")
call SourceVimrcFile("plugins")
call SourceVimrcFile("searching")
call SourceVimrcFile("tags")
call SourceVimrcFile("text")
call SourceVimrcFile("windows_and_buffers")
if has('python')
    call SourceVimrcFile("terminal")
endif
