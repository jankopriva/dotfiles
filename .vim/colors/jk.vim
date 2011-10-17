" Maintainer:	Jan Kopriva (jan.kopriva@email.cz)
" Last Change:	June 12 2011

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#656565 gui=none
hi Normal 		guifg=#C9CBCB guibg=#151d1e gui=none
hi LineNr 		guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
"Invisible character colors
hi NonText guifg=#4a4a59
hi SpecialKey guifg=#4a4a59

" Syntax highlighting
hi Comment		guifg=#666666 gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 	guifg=#53667D gui=none
hi String 		guifg=#5C81B3 gui=none
hi Identifier 	guifg=#708E67 gui=none
hi Function 	guifg=#C9CBCB guibg=#282E36 gui=none
hi Type 		guifg=#C9CBCB gui=none
hi Statement 	guifg=#697A8E gui=bold
hi Keyword		guifg=#697A8E gui=none
hi PreProc 		guifg=#697A8E gui=none
hi Define 		guifg=#697A8E gui=bold
hi Number		guifg=#C1C40A gui=none
hi Special		guifg=#5C81B3 gui=none

" JavaScript stuff
hi javaScriptFuncName guifg=#C9CBCB gui=none
hi javaScriptFunction guifg=#A3D295 gui=bold
hi javaScriptType guifg=#708E67 gui=none
hi javaScriptNumber guifg=#C1C40A gui=none
hi javaScriptStatement guifg=#697A8E gui=none



