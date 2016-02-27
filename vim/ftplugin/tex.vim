map <buffer> z~~~~~~fjkderpa <Plug>Tex_LeftRight
map <buffer> z~~~~~~fjjkderpb <Plug>Tex_InsertItemOnThisLine

" show foldcolumn
function SetAutoFoldColumn(fold_column_value)
    let last_line_number = line('$')
    for i in range(last_line_number)
        if foldlevel(i) != 0
            execute 'set foldcolumn=' . a:fold_column_value
            return
        endif
    endfor
    set foldcolumn=0
    return
endfunction
call SetAutoFoldColumn(2)

" highlight & as a delimeter
syn match Delimeter /&/ containedin=texEnv

" use multiline friendly "home"
noremap <silent><buffer> <home> <C-o>g<home>
