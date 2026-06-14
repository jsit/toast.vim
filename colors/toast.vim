" Vim color file Toast
" Maintainer: [jsit] <jay@jaysitter.com>
" Last Change: 2026 Jun 14
" URL: https://github.com/jsit/toast.vim
" Version: 0.2.5
" Description: Toast! A colorful, medium-contrast theme with full Vim and Neovim
" support, true color and 256-color support, and automatic light and dark
" variants. Easy to read without frying your retinae.
"
" Toast is not meant to be a "color system" or anything fancy like that,
" although it does operate within a few parameters to make its development
" easier and to aim for some degree of theoretical color harmony.
"
" - All text has (or should have) a contrast ratio of at least 3:1, meeting WCAG
"   level A. (Level AA across the board makes the colors too drab for my taste,
"   but there will be an option for this in the future, because a11y is
"   important.)
" - All hues are multiples of 15 degrees apart on the color wheel, because why
"   not.
" - Within these parameters, saturation and luminance levels are chosen based on
"   what I think looks good while dogfooding the themes.
"
" Much of the basis for this code and approach comes from Chris Kempson's
" venerable Tomorrow theme.

" Grays {{{

if &background == "light"
  let s:white = ["#f4f3ef", 231]
  let s:black = ["#323434", 16]

  let s:lightgray       = ["#eae8e1", 188]
  let s:mediumlightgray = ["#e4e2d8", 188]
  let s:mediumgray      = ["#7f7757", 101]
  let s:mediumdarkgray  = ["#4f4a36", 52]
  let s:darkgray        = ["#423e2e", 16]

  let s:grayone=s:lightgray
  let s:graytwo=s:mediumlightgray
  let s:graythree=s:mediumdarkgray
  let s:grayfour=s:mediumdarkgray

  let s:fg=s:black
  let s:bg=s:white
else " &background == 'dark'
  let s:white = ["#c3d2df", 188]
  let s:black = ["#17222b", 234]

  let s:lightgray       = ["#b9cbda", 152]
  let s:mediumlightgray = ["#acc1d3", 146]
  let s:mediumgray      = ["#547d9c", 242]
  let s:mediumdarkgray  = ["#253846", 236]
  let s:darkgray        = ["#1e2d38", 235]

  let s:grayone=s:darkgray
  let s:graytwo=s:mediumdarkgray
  let s:graythree=s:mediumlightgray
  let s:grayfour=s:lightgray

  let s:fg=s:white
  let s:bg=s:black
endif

let s:graymid=s:mediumgray

" }}}

" Colors {{{

let s:darkredhex     = "#D12D00"
let s:darkyellowhex  = "#B68200"
let s:darkgreenhex   = "#427B00"
let s:darkbluehex    = "#006fd1"
let s:darkmagentahex = "#a53bce"
let s:darkcyanhex    = "#119c97"
let s:lightredhex     = "#E74D23"
let s:lightyellowhex  = "#ffc233"
let s:lightgreenhex   = "#7dc030"
let s:lightbluehex    = "#5aa2e0"
let s:lightmagentahex = "#b968d9"
let s:lightcyanhex    = "#15c1bb"

" Terminal Colors {{{
if has('nvim')
  let g:terminal_color_1  = s:darkredhex
  let g:terminal_color_2  = s:darkgreenhex
  let g:terminal_color_3  = s:darkyellowhex
  let g:terminal_color_4  = s:darkbluehex
  let g:terminal_color_5  = s:darkmagentahex
  let g:terminal_color_6  = s:darkcyanhex
  let g:terminal_color_9  = s:lightredhex
  let g:terminal_color_10 = s:lightgreenhex
  let g:terminal_color_11 = s:lightyellowhex
  let g:terminal_color_12 = s:lightbluehex
  let g:terminal_color_13 = s:lightmagentahex
  let g:terminal_color_14 = s:lightcyanhex

  if &background == "light"
    let g:terminal_color_0  = "#323434"
    let g:terminal_color_7  = "#e4e2d8"
    let g:terminal_color_8  = "#4f4a36"
    let g:terminal_color_15 = "#f4f3ef"
  else " &background == 'dark'
    let g:terminal_color_0  = "#1e2d38"
    let g:terminal_color_7  = "#acc1d3"
    let g:terminal_color_8  = "#253846"
    let g:terminal_color_15 = "#b9cbda"
  endif
else
  let g:terminal_ansi_colors = repeat([0], 16)
  let g:terminal_ansi_colors[1]  = s:darkredhex
  let g:terminal_ansi_colors[2]  = s:darkgreenhex
  let g:terminal_ansi_colors[3]  = s:darkyellowhex
  let g:terminal_ansi_colors[4]  = s:darkbluehex
  let g:terminal_ansi_colors[5]  = s:darkmagentahex
  let g:terminal_ansi_colors[6]  = s:darkcyanhex
  let g:terminal_ansi_colors[9]  = s:lightredhex
  let g:terminal_ansi_colors[10] = s:lightgreenhex
  let g:terminal_ansi_colors[11] = s:lightyellowhex
  let g:terminal_ansi_colors[12] = s:lightbluehex
  let g:terminal_ansi_colors[13] = s:lightmagentahex
  let g:terminal_ansi_colors[14] = s:lightcyanhex

  if &background == "light"
    let g:terminal_ansi_colors[0]  = "#323434"
    let g:terminal_ansi_colors[7]  = "#e4e2d8"
    let g:terminal_ansi_colors[8]  = "#4f4a36"
    let g:terminal_ansi_colors[15] = "#f4f3ef"
  else " &background == 'dark'
    let g:terminal_ansi_colors[0]  = "#1e2d38"
    let g:terminal_ansi_colors[7]  = "#acc1d3"
    let g:terminal_ansi_colors[8]  = "#253846"
    let g:terminal_ansi_colors[15] = "#b9cbda"
  endif
endif
" }}}

let s:darkyellow  = [s:darkyellowhex, 136]
let s:darkgreen   = [s:darkgreenhex, 28]
let s:darkcyan    = [s:darkcyanhex, 36]
let s:darkblue    = [s:darkbluehex, 26]
let s:darkmagenta = [s:darkmagentahex, 128]
let s:darkred     = [s:darkredhex, 160]
let s:lightyellow  = [s:lightyellowhex, 214]
let s:lightgreen   = [s:lightgreenhex, 106]
let s:lightcyan    = [s:lightcyanhex, 37]
let s:lightblue    = [s:lightbluehex, 74]
let s:lightmagenta = [s:lightmagentahex, 134]
let s:lightred     = [s:lightredhex, 166]

if &background == "light"
  let s:yellow  = s:darkyellow 
  let s:green   = s:darkgreen  
  let s:cyan    = s:darkcyan   
  let s:blue    = s:darkblue   
  let s:magenta = s:darkmagenta
  let s:red     = s:darkred    
  let s:altyellow  = s:lightyellow  
  let s:altgreen   = s:lightgreen   
  let s:altcyan    = s:lightcyan    
  let s:altblue    = s:lightblue    
  let s:altmagenta = s:lightmagenta 
  let s:altred     = s:lightred     
else " &background == 'dark'
  let s:yellow  = s:lightyellow 
  let s:green   = s:lightgreen  
  let s:cyan    = s:lightcyan   
  let s:blue    = s:lightblue   
  let s:magenta = s:lightmagenta
  let s:red     = s:lightred    
  let s:altyellow  = s:darkyellow  
  let s:altgreen   = s:darkgreen   
  let s:altcyan    = s:darkcyan    
  let s:altblue    = s:darkblue    
  let s:altmagenta = s:darkmagenta 
  let s:altred     = s:darkred     
endif

" }}}

" References {{{

let s:truered     = s:red
let s:truegreen   = s:green
let s:trueyellow  = s:lightyellow
let s:trueblue    = s:blue
let s:truemagenta = s:magenta
let s:truecyan    = s:cyan

if &background == "light"
  let s:constant   = s:red
  let s:identifier = s:yellow
  let s:statement  = s:blue
  let s:preproc    = s:magenta
  let s:type       = s:green
  let s:special    = s:cyan
else " &background == 'dark'
  let s:constant   = s:red
  let s:identifier = s:yellow
  let s:statement  = s:cyan
  let s:preproc    = s:magenta
  let s:special    = s:green
  let s:type       = s:blue
endif

let s:none = ["NONE", "NONE"]

" }}}

" }}}

"
" Everthing from this point forward can probably be ignored
"

" Setup {{{

hi clear
syntax on

let g:colors_name = "toast"

if exists("syntax_on")
  syntax reset
endif

" }}}

" Highlight shorthand {{{
" From chriskempson/vim-tomorrow-theme
function! s:hl(...)
  if len(a:000) > 1 && len(a:2) > 0
    exec "hi " . a:1 . " guifg=" . a:2[0] . " ctermfg=" . a:2[1]
  endif
  if len(a:000) > 2 && len(a:3) > 0
    exec "hi " . a:1 . " guibg=" . a:3[0] . " ctermbg=" . a:3[1]
  endif
  if len(a:000) > 3 && a:4 != ""
    exec "hi " . a:1 . " gui=" . a:4 . " cterm=" . a:4
  endif
endfunction
" }}}

" UI {{{

call s:hl("ColorColumn", s:none, s:none)
call s:hl("CursorColumn", [], s:grayone)
call s:hl("CursorLine", [], s:grayone, "NONE")
call s:hl("Conceal", [])
call s:hl("Cursor", s:none, s:none, "reverse")
call s:hl("CursorIM", [], [], "")
call s:hl("CursorLineNr", s:graymid, s:grayone, "NONE")
call s:hl("Directory", s:blue)
call s:hl("DiffAdd", s:green, s:white, "reverse")
call s:hl("DiffDelete", s:red, s:white, "reverse")
call s:hl("DiffChange", s:altmagenta, s:white, "reverse")
call s:hl("DiffText", s:magenta, s:white, "reverse")
exec "hi link EndOfBuffer NonText"
call s:hl("ErrorMsg", s:white, s:truered)
call s:hl("VertSplit", s:bg, s:graytwo, "reverse")
call s:hl("Folded", s:none, s:grayone)
call s:hl("FoldColumn", s:yellow, s:bg)
call s:hl("SignColumn", s:none, s:bg)
call s:hl("IncSearch", s:trueyellow, '', "reverse")
call s:hl("LineNr", s:graymid)
hi clear MatchParen
call s:hl("MatchParen", s:cyan, '', "bold,underline")
call s:hl("ModeMsg", s:green)
call s:hl("Error", s:truered, s:white, "reverse")
call s:hl("Ignore", s:grayone)
call s:hl("InfoPopup", s:fg, s:grayone)
call s:hl("MoreMsg", s:green)
call s:hl("NonText", s:graytwo)
call s:hl("Normal", s:fg, s:bg)
call s:hl("NvimInternalError", s:red, s:red)
call s:hl("PMenu", s:graymid, s:grayone)
call s:hl("PMenuSbar", s:fg, s:grayone)
call s:hl("PMenuSel", s:fg, s:graytwo)
call s:hl("PMenuThumb", s:fg, s:grayone)
call s:hl("Question", s:green)
call s:hl("RedrawDebugClear", s:fg, s:yellow)
call s:hl("RedrawDebugComposed", s:fg, s:green)
call s:hl("RedrawDebugRecompose", s:fg, s:red)
call s:hl("Search", s:trueyellow, s:black, "reverse")
call s:hl("SpecialKey", s:blue)
call s:hl("SpellBad", s:truered, s:white, "reverse")
call s:hl("SpellCap", s:truered, s:white, "reverse")
call s:hl("SpellLocal", s:truered, s:white, "reverse")
call s:hl("SpellRare", s:truered, s:white, "reverse")
call s:hl("StatusLine", s:graymid, s:grayone, "reverse")
call s:hl("StatusLineNC", s:grayone, s:graymid, "reverse,underline")
call s:hl("StatusLineTerm", s:green, s:none, "reverse")
call s:hl("StatusLineTermNC", s:green, s:none, "reverse")
call s:hl("TabLine", s:graymid, s:grayone)
call s:hl("TabLineFill", s:grayone, s:grayone)
call s:hl("TabLineSel", s:fg, s:bg, "NONE")
call s:hl("Title", s:magenta)
call s:hl("Todo", s:yellow, s:none, "reverse")
call s:hl("ToolbarButton", s:fg, s:graythree, "NONE")
call s:hl("ToolbarLine", "", s:grayone)
exec "hi Underlined gui='underline'"
call s:hl("Visual", [], s:graytwo)
call s:hl("VisualNOS", s:graytwo)
call s:hl("WarningMsg", s:red, s:none)
call s:hl("WildMenu", s:green, s:grayone)

" }}}

" Group Names (:h group-name) {{{

call s:hl("Comment", s:graymid, "")

call s:hl("Constant", s:constant)
hi! link String Constant " https://github.com/neovim/neovim/issues/4549
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Constant

call s:hl("Identifier", s:identifier, [], "NONE")
hi! link Function Identifier " https://github.com/neovim/neovim/issues/4549

call s:hl("Statement", s:statement, "", "NONE")
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi! link Operator Statement " https://github.com/neovim/neovim/issues/4549
hi link Keyword Statement
hi link Exception Statement

call s:hl("PreProc", s:preproc)
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

call s:hl("Type", s:type, "", "NONE")
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

call s:hl("Special", s:special)
hi link SpecialChar Special
hi link Tag Special
hi! link Delimiter Special " https://github.com/neovim/neovim/issues/4549
hi link SpecialComment Special
hi link Debug Special

" End Group Names }}}

" ex: set tabstop=2 expandtab nolist foldmethod=marker:
