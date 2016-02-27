" highlight long lines
syn match OverLength /\%>80v.\+/

" treat : as a keyword
setlocal iskeyword+=:

" highlight subroutine names
syn match Function /\<[a-zA-Z_]\{3,}(/he=e-1
