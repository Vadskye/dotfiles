" Vim syntax file
" Language: Java
" Maintainer: Kevin Johnson <vadskye@gmail.com>
" URL:
" Last Change: 2015 December 12

" For version 5.x: Clear all syntax items
" For versions greater than 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Enable option if it's not defined
function! s:enable_by_default(name)
  if !exists(a:name)
    let {a:name} = 1
  endif
endfunction

" Check if option is enabled
function! s:enabled(name)
  return exists(a:name) && {a:name}
endfunction

" set highlighting options

call s:enable_by_default('g:java_highlight_basic')
call s:enable_by_default('g:java_highlight_comments')
call s:enable_by_default('g:java_highlight_javadocs')
call s:enable_by_default('g:java_highlight_strings')

if s:enabled('g:java_highlight_all')
    call s:enable_by_default('g:java_highlight_debug')
    call s:enable_by_default('g:java_highlight_functions_and_variables')
    call s:enable_by_default('g:java_highlight_comment_strings')
endif

if s:enabled('g:java_highlight_basic')
    syn keyword javaBoolean		true false
    syn match javaBuiltInType '\v<(boolean|char|byte|short|int|long|float|double)>'
    syn keyword javaConditional if else switch
    syn keyword javaConstant null
    syn keyword javaConstant this super
    " use syn match instead of keyword to avoid matching 'Thing.class'
    syn match javaConstant '\v(^|[^.])<class>' nextgroup=javaClassDeclaration
    syn match javaConstant '\v<[0-9]+>'
    syn match javaClassDeclaration '\v\s+\w+' contained
    syn keyword javaExternal native package
    syn match javaExternal '\v<import>(\s+static)?' nextgroup=javaImportPath,javaImportType skipwhite
    syn match javaImportPath '\v<[a-z]\w*>[.]?' contained nextgroup=javaImportPath,javaImportType contains=javaDot
    syn match javaImportType '\v<[A-Z]\w*>[.]?' contained nextgroup=javaImportPath,javaImportType contains=javaDot
    syn match javaDot '[.]'
    syn keyword javaRepeat  while for do
    syn keyword javaScope public protected private abstract
    syn keyword javaStatement new instanceof
        \ nextgroup=javaClassIsolated skipwhite
    syn keyword javaStatement return
    syn keyword javaStatement throws 
        \ nextgroup=javaClassIsolated skipwhite
    syn keyword javaStatement extends implements interface
        \ nextgroup=javaClassIsolated skipwhite
    syn match javaClassIsolated '\v<[A-Z]\w*>' contained
    syn keyword javaStorageClass static synchronized transient volatile final strictfp serializable

    " catch can have function arguments after it
    syn keyword javaStatement throw try finally
    if s:enabled('g:java_highlight_functions_and_variables')
        syn keyword javaStatement catch
                    \ nextgroup=javaDeclarationArguments skipwhite
    else
        syn keyword javaStatement catch
    endif
endif

if s:enabled('g:java_highlight_comments')
    syn region  javaComment   start="/\*"  end="\*/" contains=javaTodo,@Spell
    syn match   javaCommentStar  contained "^\s*\*[^/]"me=e-1
    syn match   javaCommentStar  contained "^\s*\*$"
    syn match   javaLineComment  "//.*" contains=javaTodo,@Spell
    if s:enabled('g:java_highlight_comment_strings')
        syn region  javaCommentString    contained start=+"+ end=+"+ end=+$+ end=+\*/+me=s-1,he=s-1 contains=javaCommentStar,@Spell
        syn region  javaCommentString   contained start=+"+ end=+$\|"+  contains=javaSpecial,javaSpecialChar,@Spell
    endif
endif

if s:enabled('g:java_highlight_functions_and_variables')
    " syn region javaFunction start='\v\w+(\s+\w+)?\s*[(]'hs=s+1 end=')'he=e-1
    syn match javaFunctionDeclaration '\v\w+(\s+\w+)?\s*\ze[(]'
                \ nextgroup=JavaDeclarationArguments contains=javaVariableType
    " syn match javaFunction '\v^\s*\w+\s*[(]'he=e-1
    " syn match javaParenthesis contained '\v[()]'
    syn match javaVariableType contained '\v<\w+\ze\s+\w'

    syn match javaVariable '\v<\w+(\s+\w+)?\ze\s*[=]([^=]|$)' contains=javaVariableType
    syn match javaVariable '\v^\s*\w+\ze\s*[=]([^=]|$)'
    syn match javaClass '\v<[A-Z]\w+[(]'he=e-1
    syn match javaClass '\v<[A-Z]\w+[.]'he=e-1 nextgroup=javaFunction,javaProperty
    syn match javaVariable '\v<[a-z]\w+[.]'he=e-1 nextgroup=javaFunction,javaProperty contains=javaDot
    syn match javaFunction '\v<[a-z]\w+[(]'he=e-1
    syn match javaProperty contained '\v<\w+>([^(]|$)'he=e-1
    syn match javaVariableType contained '\v<\w+\s+\w'he=e-2

    " arguments
    syn region javaDeclarationArguments start='\V(' end='\V)' contained
        \ contains=javaArgumentVariable
    syn match javaArgumentVariable '\v<\w+\s+\w+\ze\s*[,)]' contained
        \  contains=javaVariableType
endif

if s:enabled('g:java_highlight_javadocs')
    syn case ignore
    syn region  javaDocComment start="/\*\*"  end="\*/" keepend contains=javaDocTag,javaTodo,@Spell
    syn region javaDocTag  contained start="{@\(code\|link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}"
    syn match  javaDocTag  contained "@\(param\|exception\|throws\|since\)\s\+\S\+" contains=javaDocParam
    syn match  javaDocParam  contained "\s\S\+"
    syn match  javaDocTag  contained "@\(version\|author\|return\|deprecated\|serial\|serialField\|serialData\)\>"
    syn case match
endif

if s:enabled('g:java_highlight_strings')
    syn region  javaString  start=+"+ end=+"+ end=+$+ contains=javaSpecialChar,@Spell
    syn region   javaCharacter start=+'+ end=+'+ end=+$+
    syn match   javaSpecialChar  contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
endif

" link highlight groups
if version >= 508 || !exists("did_java_syn_inits")
    if version <= 508
        let did_java_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink javaArgumentVariable    Identifier
    HiLink javaBoolean             Type
    HiLink javaBuiltInType         Type
    HiLink javaCharacter           Special
    HiLink javaClassIsolated       javaClass
    HiLink javaClass               Type
    HiLink javaClassDeclaration    javaClass
    HiLink javaConditional         Conditional
    HiLink javaComment             Comment
    HiLink javaConstant            Constant
    HiLink javaDocComment          Comment
    HiLink javaDocTag              Special
    HiLink javaDocParam            Identifier
    HiLink javaDot                 Operator
    HiLink javaExternal            Include
    HiLink javaFunction            Function
    HiLink javaFunctionDeclaration Function
    HiLink javaImportPath          PreProc
    HiLink javaImportType          Type
    HiLink javaLineComment         Comment
    HiLink javaProperty            Identifier
    HiLink javaRepeat              Repeat
    HiLink javaScope               Statement
    HiLink javaSpecialChar         Special
    HiLink javaStatement           Statement
    HiLink javaStorageClass        StorageClass
    HiLink javaString              String
    HiLink javaVariable            Identifier
    HiLink javaVariableType        Type

    delcommand HiLink
endif

let b:current_syntax = "java"
