" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer: Ton Kersten, <TonK@Wanadoo.nl>

hi clear
set background=dark
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "tonk"


" map a urxvt cube number to an xterm-256 cube number
fun! <SID>M(a)
    return strpart("0135", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! <SID>X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + <SID>M(l:x) + (6 * <SID>M(l:y)) + (36 * <SID>M(l:z))
        endif
    endif
endfun

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
hi LineNr         ctermbg=none ctermfg=lightcyan guifg=darkred
"hi StatusLine	  term=underline ctermfg=darkblue ctermbg=gray
"hi StatusLineNC   term=none ctermfg=darkblue ctermbg=yellow

exec "hi StatusLine     cterm=BOLD   ctermfg=" . <SID>X(90) . " ctermbg=" . <SID>X(81)
exec "hi StatusLineNC   cterm=NONE   ctermfg=" . <SID>X(84) . " ctermbg=" . <SID>X(81)

" Spelling
hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi clear SpellRare
hi SpellBad       term=standout ctermfg=red term=underline cterm=underline guifg=darkred gui=underline
hi SpellCap       term=underline cterm=underline gui=underline
hi SpellRare      term=underline cterm=underline gui=underline
hi SpellLocal     term=underline cterm=underline gui=underline


hi Pmenu		ctermfg=white	ctermbg=DarkBlue
hi PmenuSel		ctermfg=Black	ctermbg=white
hi PmenuSbar	ctermfg=white	ctermbg=DarkBlue
hi PmenuThumb	ctermfg=white	ctermbg=DarkGreen

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
