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
"   but there will be an option for this in the future, because accessibility is
"   important.)
" - All hues are multiples of 15 degrees apart on the color wheel, because why
"   not.
" - Within these parameters, saturation and luminance levels are chosen based on
"   what I think looks good while dogfooding the themes.
"
" Much of the basis for this code and approach comes from Chris Kempson's
" venerable Tomorrow theme.

" Grays {{{

let s:lightwhitehex           = "#f5f3f0"
let s:lightlightgrayhex       = "#eceae7"
let s:lightmediumlightgrayhex = "#e3e1dd"
let s:lightmediumgrayhex      = "#848689"
let s:lightmediumdarkgrayhex  = "#444340"
let s:lightdarkgrayhex        = "#23211f"
let s:lightblackhex           = "#1f1e1c"

let s:darkwhitehex            = "#d4d6d9"
let s:darklightgrayhex        = "#cdcfd2"
let s:darkmediumlightgrayhex  = "#b0b2b5"
let s:darkmediumgrayhex       = "#848689"
let s:darkmediumdarkgrayhex   = "#414346"
let s:darkdarkgrayhex         = "#202224"
let s:darkblackhex            = "#1d1e21"

if &background == "light"
  let s:white = [s:lightwhitehex, 255]
  let s:black = [s:lightblackhex, 234]

  let s:lightgray       = [s:lightlightgrayhex, 254]
  let s:mediumlightgray = [s:lightmediumlightgrayhex, 253]
  let s:mediumgray      = [s:lightmediumgrayhex, 102]
  let s:mediumdarkgray  = [s:lightmediumdarkgrayhex, 238]
  let s:darkgray        = [s:lightdarkgrayhex, 235]

  let s:grayone=s:lightgray
  let s:graytwo=s:mediumlightgray
  let s:graythree=s:mediumdarkgray
  let s:grayfour=s:mediumdarkgray

  let s:fg=s:black
  let s:bg=s:white
else " &background == 'dark'
  let s:white = [s:darkwhitehex, 188]
  let s:black = [s:darkblackhex, 234]

  let s:lightgray       = [s:darklightgrayhex, 252]
  let s:mediumlightgray = [s:darkmediumlightgrayhex, 249]
  let s:mediumgray      = [s:darkmediumgrayhex, 102]
  let s:mediumdarkgray  = [s:darkmediumdarkgrayhex, 238]
  let s:darkgray        = [s:darkdarkgrayhex, 235]

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

let s:darkredhex     = "#cd2a00"
let s:darkgreenhex   = "#437a00"
let s:darkyellowhex  = "#926600"
let s:darkbluehex    = "#2566cd"
let s:darkmagentahex = "#ab34c2"
let s:darkcyanhex    = "#007c66"
let s:lightredhex     = "#eb502b"
let s:lightgreenhex   = "#79c237"
let s:lightyellowhex  = "#ffc334"
let s:lightbluehex    = "#709ce4"
let s:lightmagentahex = "#be64d1"
let s:lightcyanhex    = "#35c1a3"

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
    let g:terminal_color_0  = s:lightblackhex
    let g:terminal_color_7  = s:lightmediumlightgrayhex
    let g:terminal_color_8  = s:lightmediumdarkgrayhex
    let g:terminal_color_15 = s:lightwhitehex
  else " &background == 'dark'
    let g:terminal_color_0  = s:darkdarkgrayhex
    let g:terminal_color_7  = s:darkmediumlightgrayhex
    let g:terminal_color_8  = s:darkmediumdarkgrayhex
    let g:terminal_color_15 = s:darklightgrayhex
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
    let g:terminal_ansi_colors[0]  = s:lightblackhex
    let g:terminal_ansi_colors[7]  = s:lightmediumlightgrayhex
    let g:terminal_ansi_colors[8]  = s:lightmediumdarkgrayhex
    let g:terminal_ansi_colors[15] = s:lightwhitehex
  else " &background == 'dark'
    let g:terminal_ansi_colors[0]  = s:darkdarkgrayhex
    let g:terminal_ansi_colors[7]  = s:darkmediumlightgrayhex
    let g:terminal_ansi_colors[8]  = s:darkmediumdarkgrayhex
    let g:terminal_ansi_colors[15] = s:darklightgrayhex
  endif
endif
" }}}

let s:darkyellow  = [s:darkyellowhex, 136]
let s:darkgreen   = [s:darkgreenhex, 64]
let s:darkcyan    = [s:darkcyanhex, 36]
let s:darkblue    = [s:darkbluehex, 31]
let s:darkmagenta = [s:darkmagentahex, 133]
let s:darkred     = [s:darkredhex, 160]
let s:lightyellow  = [s:lightyellowhex, 221]
let s:lightgreen   = [s:lightgreenhex, 107]
let s:lightcyan    = [s:lightcyanhex, 73]
let s:lightblue    = [s:lightbluehex, 38]
let s:lightmagenta = [s:lightmagentahex, 170]
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
call s:hl("NormalFloat", s:fg, s:grayone)
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
call s:hl("StatusLine", s:graytwo, s:graymid, "reverse")
call s:hl("StatusLineNC", s:grayone, s:graymid, "reverse")
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
