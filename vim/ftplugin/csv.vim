" Functions:
    function! TxSort() abort
        CSVSort 7
        CSVSort 15 n
        CSVSort 2
    endfunction

" Commands:
    command! TxSort call TxSort()
