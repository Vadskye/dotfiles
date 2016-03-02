" highlight long lines
syn match OverLength /\%>80v.\+/

" highlight + and = as delimeters
syn match Delimeter /\v[+=]+/

" enable full highlighting
let g:python_highlight_all = 1
let g:python_version_2 = 1
