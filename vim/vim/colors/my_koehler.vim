" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Miek Gieben <miek@miek.nl>

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "koehler"
hi Normal		  guifg=white  guibg=black
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi MatchParen     term=bold  ctermfg=blue ctermbg=black guibg=black guifg=blue
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=Red
hi NonText		  term=bold  cterm=bold  ctermfg=blue  gui=bold	guifg=blue
hi Directory	  term=bold  cterm=bold  ctermfg=brown	guifg=Blue
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=White  ctermbg=Red  guifg=White  guibg=Red
hi Search		  term=reverse	ctermfg=white  ctermbg=red	guifg=white  guibg=Red
hi ModeMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  ctermbg=blue ctermfg=white gui=bold guifg=White guibg=Blue
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkblue  guifg=Red
hi Cursor		  guifg=bg	guibg=Green
hi Comment		  term=none  cterm=none ctermfg=green  guifg=green gui=none
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=magenta
hi Special		  term=bold  cterm=bold ctermfg=red  guifg=red
hi Identifier	  term=underline   ctermfg=darkcyan  guifg=darkcyan
hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=yellow
hi PreProc		  term=underline  ctermfg=blue	guifg=SteelBlue
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=green
hi Error          term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo			  term=standout  ctermfg=black	ctermbg=Yellow  guifg=black  guibg=Yellow
hi cursorline     cterm=underline ctermbg=none ctermfg=none gui=underline guibg=black
hi LineNr         ctermbg=none ctermfg=darkred guifg=darkred
"hi StatusLine	  term=underline ctermfg=black ctermbg=grey 
"hi StatusLineNC   term=bold ctermfg=white ctermbg=black 
" Spelling
hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi clear SpellRare
hi SpellBad       term=standout ctermfg=red term=underline cterm=underline guifg=darkred gui=underline
hi SpellCap       term=underline cterm=underline gui=underline
hi SpellRare      term=underline cterm=underline gui=underline
hi SpellLocal     term=underline cterm=underline gui=underline

hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
