" Vim color file
" Maintainer:   Gerald S. Williams
" Last Change:  2007 Jun 13

" This is a dark version/opposite of "seashell". The cterm version of this is
" very similar to "evening".
"
" Only values that differ from defaults are specified.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "BlackSea"

hi Normal guibg=Black guifg=seashell ctermfg=White
hi NonText guifg=LavenderBlush ctermfg=LightMagenta
hi DiffDelete guibg=DarkRed guifg=Black ctermbg=DarkRed ctermfg=White
hi DiffAdd guibg=DarkGreen ctermbg=DarkGreen ctermfg=White
hi DiffChange guibg=Gray30 ctermbg=DarkCyan ctermfg=White
hi DiffText gui=NONE guibg=DarkCyan ctermbg=DarkCyan ctermfg=Black
hi Comment guifg=LightBlue ctermfg=LightBlue
hi PreProc ctermfg=Magenta
hi StatusLine guibg=#1f001f guifg=DarkSeaGreen cterm=NONE ctermfg=White ctermbg=DarkGreen
hi StatusLineNC guifg=Gray
hi VertSplit guifg=Gray
hi Type gui=NONE ctermfg=LightGreen
hi Identifier guifg=Cyan
hi Statement guifg=brown3 ctermfg=DarkRed
hi IncSearch ctermfg=Black
hi Search guibg=Gold3 ctermfg=Black
hi Folded guibg=gray10 ctermbg=Black ctermfg=DarkCyan
hi FoldColumn guibg=gray10 ctermbg=DarkGray ctermfg=DarkRed

hi PMenu guibg=Black guifg=LightGreen ctermbg=Black ctermfg=LightGreen
hi PmenuSel guibg=gray30 guifg=LightGreen ctermbg=DarkGray ctermfg=LightGreen
hi PmenuSbar ctermbg=LightGray ctermfg=Black
hi PmenuThumb ctermbg=LightGray ctermfg=Black

"added for Perl
"hi perlComment ctermfg=Dark

" Original values:
"hi Constant guifg=DeepPink
"hi PreProc guifg=Magenta ctermfg=Magenta
