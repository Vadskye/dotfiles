let g:airline#themes#jam#palette = {}

" N1: mode
" N2: info
" N3: statusline
" N4: mode modified

" The name of the function must be 'refresh'.
function! airline#themes#jam#refresh()
    let s:N1 = airline#themes#get_highlight('DbgBreakPt') " White on purple
    if has('gui_running')
        let s:N2 = airline#themes#get_highlight('CursorColumn') " White on dark gray
        let s:N3 = airline#themes#get_highlight('CursorLine') " White on gray
    else
        let s:N2 = ['', '', 'Black', 'DarkGray']
        let s:N3 = ['', '', 'Black', 'Gray']
    endif
    " let s:N4 = airline#themes#get_highlight('Constant') " Red on black
    let g:airline#themes#jam#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    " blue
    let g:airline#themes#jam#palette.normal_modified = {
        \ 'airline_c': [ '#bb0000', '', 215, '', '' ]
    \ }

    let s:I1 = airline#themes#get_highlight('DiffAdd') " White on red
    let s:I2 = s:N2
    let s:I3 = s:N3
    let g:airline#themes#jam#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#jam#palette.insert_modified = g:airline#themes#jam#palette.normal_modified

    let s:R1 = airline#themes#get_highlight('DiffDelete') " Black on red
    let s:R2 = s:N2
    let s:R3 = s:N3
    let g:airline#themes#jam#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#jam#palette.replace_modified = g:airline#themes#jam#palette.normal_modified

    let s:V1 = airline#themes#get_highlight('DbgCurrent') " White on blue
    let s:V2 = s:N2
    let s:V3 = s:N3
    let g:airline#themes#jam#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#jam#palette.visual_modified = g:airline#themes#jam#palette.normal_modified

    let s:IA1 = s:N2
    let s:IA2 = s:N2
    let s:IA3 = s:N3
    let g:airline#themes#jam#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
    let g:airline#themes#jam#palette.inactive_modified = g:airline#themes#jam#palette.normal_modified
endfunction

call airline#themes#jam#refresh()
