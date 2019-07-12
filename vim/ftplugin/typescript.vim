setlocal shiftwidth=2
setlocal tabstop=2
setlocal textwidth=100

function! ImportFromLastWindow() abort
    execute "normal! \<C-w>p"
    call setreg('z', substitute(expand('%:r'), getcwd() . '/', "", ""))
    execute "normal! \<C-w>p"
    execute "normal! oimport name from '@\<C-r>z';\<Esc>^w"
endfunction

nnoremap <buffer> ys :call ImportFromLastWindow()<CR>

silent! function! OpenTestFile(test_type) abort
    let current_file_path = substitute(expand('%:r'), getcwd() . '/', "", "")
    let test_file_path = 'src/test/' . a:test_type . '/' . substitute(current_file_path, 'src/', "", "") . '_test.ts'
    " Editing a new TS file during the execution of this function throws an error
    execute "edit " . test_file_path
endfunction

nnoremap <buffer> ye :call OpenTestFile('endpoint')<CR>
nnoremap <buffer> yt :call OpenTestFile('integration')<CR>
nnoremap <buffer> yu :call OpenTestFile('unit')<CR>

" Convert a function into a stateless component
command! TSNewStateless execute "normal €kheexport const odoOa = €@7e=> €khLLLa: StatelessComo€kbponent<uucwoLpaProps>€ku€kd€khe€ku€kueinterface€kb€kb€kb€kb€kb€kb€kb€kb€kbtype paProps = any;G?import import {statelesscompondd/import.*react€khLLa €kb, {StatelessComponent}"
" Add Props/State interfaces to a JS component
command! TSComponent execute "normal /extends (React.?€kb)?c€kbComponent \{€khocw€khe€kupa€khtype €@7Props = any;type paState = any;€kd€@7Ja<paProps,paState>"
" relocate contextTypes to a static property
command! TSContext execute 'normal /\.contextTypes \= \{€khcwBVkbzcbxcw/class x extends€ku€@7static bzp€ku"do€@7=%I/x.contextTypes€@7V%d'
" relocate contextTypes to a static property
command! TSPropTypes execute 'normal /\.propTypes \= \{€khcwBVkbzcbxcw/class x extends€ku€@7static bzp€ku"do€@7=%I/x.propTypes€@7V%d'
command! TSModelify execute 'normal gg/Sequelize.Model€khoocw€ku€kuinterfca€kb€kbace paProperties e€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kb€kbColumns {}interface paProperties extends paColumns {dataValues: Partial<paColumns>;sequelize: DB.SequelizeInstance;// Associations; TOT€kbDO reference proper types for these}gg/Sequelize.Model€khe€ku€ku€@7export type paSequelizeModel = DB>€kb.SequelizeModel<pa, paProperties, paColumns>;export type paInstance = pa;epxp€kb€kb€kbxport type paModel = typeof pa;ggne(La as paM€kbSequelizeModel)€üw€üs€üigg/Columns€@7e€ku€@7€ük/fields€kd€kh'
command! TSModelColumnName execute 'normal €khcw€üipa: €ük/<type:€@7ucw€üipa;€ükK€kd'

function! JsonDate() abort
    %s%\v'(\d{4}-\d{2}-\d{2})T00:00:00\.000Z'%new Date('\1')%cg
endfunction

command! JsonDate :call JsonDate()
