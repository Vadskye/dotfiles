setlocal shiftwidth=2
setlocal tabstop=2
setlocal textwidth=90

" enable full highlighting
let g:java_highlight_all = 1

function! ExtractGS() abort
    let line_text = getline('.')
    let pattern = '\v^(\s*)private\s+([^ ]+)\s+(\w+)'

    let matched_stuff = matchlist(line_text, pattern)
    if len(matched_stuff)
        let indentation   = matched_stuff[1]
        let variable_type = matched_stuff[2]
        let variable_name = matched_stuff[3]
        let upper_variable_name = toupper(variable_name[0]) . variable_name[1:]

        let original_cursor_position = [line('.'), col('.')]
        " check if the g/s already exist
        let gs_exists = search('\v(get' . upper_variable_name . '|set' . upper_variable_name . ')', 'W')
        call cursor(original_cursor_position)
        if gs_exists
            echomsg "Getter or setter for '" . variable_name . "' already exists"
            return
        endif

        " insert just before the end of the class
        " or private classes are at the end, before the private class
        " or go back one indentation level and look for the end of the class
        let previous_indentation = indentation[&tabstop:]
        let gs_start_position = search('\v^(' . indentation . 'private class|' . previous_indentation . '[}])')
        if gs_start_position == 0
            throw "Error: could not find end of the class"
        else
            " go up to the previous line
            " if the current line is a private class, go up an extra line
            if match(getline('.'), 'private class') != -1
                call cursor(line('.')-2, 0)
            else
                call cursor(line('.')-1, 0)
            endif
        endif

        call append(line('.'), [
            \ "",
            \ indentation . 'public ' . variable_type . ' get' . upper_variable_name . '() {',
            \ indentation . '    return ' . variable_name . ';',
            \ indentation . '}',
            \ "",
            \ indentation . 'public void set' . upper_variable_name . '(' . variable_type . ' ' . variable_name . ') {',
            \ indentation . '    this.' . variable_name . ' = ' . variable_name . ';',
            \ indentation . '}',
        \ ])

        call cursor(original_cursor_position)
    else
        echomsg "No match found in '" . line_text . "'"
    endif

endfunction

command! ExtractGS call ExtractGS()

nnoremap b :ExtractGS<CR>
