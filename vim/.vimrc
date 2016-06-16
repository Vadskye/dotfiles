set nocompatible
silent! call pathogen#infect()

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
    if filereadable(filename)
        exec "source " . filename
    endif
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
call SourceVimrcFile("local")
