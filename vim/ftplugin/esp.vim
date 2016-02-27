function EspHighlight()
    setf aspperl
    syn match htmlPreAttr contained "\w\+=[^"][^-]\+" contains=htmlPreProcAttrError,htmlPreProcAttrName
endfunction
call EspHighlight()
