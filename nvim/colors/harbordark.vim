" aether_sand.vim - standalone port of aether.nvim (v3) warm/sand spec
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.
" No line continuations, so it also loads in compatible mode.
" Needs truecolor: `set termguicolors`.
"

" Palette:
"   bg #1B1B1B  darker_bg #141414  lighter_bg/selection #323232
"   fg #efebdc  dark_fg #C0AF7F  light_fg #f4f2e8  muted #817f68
"   red #F44336  orange #e67e22  yellow #E1CE98  green #a99b7a
"   cyan #77868a  blue #9ba2a6  purple #9683a1  brown #e58980

"   accent #e75a50  cursor #C0AF7F

hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'aether_sand'

" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#efebdc guibg=#1B1B1B gui=NONE
hi Cursor         guifg=#1B1B1B guibg=#C0AF7F gui=NONE
hi CursorLine     guifg=NONE    guibg=NONE gui=underline
hi CursorColumn   guifg=NONE    guibg=#323232 gui=NONE
hi ColorColumn    guifg=NONE    guibg=#141414 gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#323232 gui=NONE

hi LineNr         guifg=#817f68 guibg=NONE    gui=NONE
hi CursorLineNr   guifg=#e67e22 guibg=#323232 gui=bold
hi SignColumn     guifg=#817f68 guibg=NONE    gui=NONE
hi FoldColumn     guifg=#817f68 guibg=NONE    gui=NONE
hi Folded         guifg=#C0AF7F guibg=#141414 gui=italic
hi VertSplit      guifg=#323232 guibg=NONE    gui=NONE

hi NonText        guifg=#323232 guibg=NONE    gui=NONE
hi EndOfBuffer    guifg=#323232 guibg=NONE    gui=NONE
hi SpecialKey     guifg=#817f68 guibg=NONE    gui=NONE
hi Conceal        guifg=#817f68 guibg=NONE    gui=NONE

hi Directory      guifg=#9ba2a6 guibg=NONE    gui=NONE
hi Title          guifg=#e75a50 guibg=NONE    gui=bold

" Selection
hi Visual         guifg=#efebdc guibg=#323232 gui=NONE
hi VisualNOS      guifg=#efebdc guibg=#323232 gui=NONE


" Search

hi Search         guifg=#1B1B1B guibg=#E1CE98 gui=NONE
hi IncSearch      guifg=#1B1B1B guibg=#e67e22 gui=NONE
hi MatchParen     guifg=#e75a50 guibg=#323232 gui=bold

" Status / tabs
hi StatusLine     guifg=#efebdc guibg=#323232 gui=NONE
hi StatusLineNC   guifg=#817f68 guibg=#141414 gui=NONE
hi TabLine        guifg=#C0AF7F guibg=#141414 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#141414 gui=NONE
hi TabLineSel     guifg=#f4f2e8 guibg=#323232 gui=bold
hi WildMenu       guifg=#1B1B1B guibg=#E1CE98 gui=NONE

" Popup menu
hi Pmenu          guifg=#efebdc guibg=#141414 gui=NONE
hi PmenuSel       guifg=#f4f2e8 guibg=#323232 gui=NONE
hi PmenuSbar      guifg=NONE    guibg=#141414 gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#817f68 gui=NONE

" Messages

hi ErrorMsg       guifg=#F44336 guibg=NONE    gui=bold
hi WarningMsg     guifg=#e67e22 guibg=NONE    gui=NONE
hi ModeMsg        guifg=#a99b7a guibg=NONE    gui=NONE
hi MoreMsg        guifg=#a99b7a guibg=NONE    gui=NONE
hi Question       guifg=#E1CE98 guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#F44336
hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#e67e22
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#77868a
hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#9683a1

" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#817f68 guibg=NONE    gui=italic
hi Constant       guifg=#e67e22 guibg=NONE    gui=NONE
hi String         guifg=#a99b7a guibg=NONE    gui=NONE

hi Character      guifg=#e58980 guibg=NONE    gui=NONE
hi Number         guifg=#e67e22 guibg=NONE    gui=NONE
hi Boolean        guifg=#e67e22 guibg=NONE    gui=NONE
hi Float          guifg=#e67e22 guibg=NONE    gui=NONE
hi Identifier     guifg=#e58980 guibg=NONE    gui=NONE
hi Function       guifg=#9ba2a6 guibg=NONE    gui=NONE
hi Statement      guifg=#9683a1 guibg=NONE    gui=NONE
hi Conditional    guifg=#9683a1 guibg=NONE    gui=NONE
hi Repeat         guifg=#9683a1 guibg=NONE    gui=NONE
hi Label          guifg=#E1CE98 guibg=NONE    gui=NONE
hi Operator       guifg=#C0AF7F guibg=NONE    gui=NONE

hi Keyword        guifg=#9683a1 guibg=NONE    gui=NONE
hi Exception      guifg=#F44336 guibg=NONE    gui=NONE
hi PreProc        guifg=#E1CE98 guibg=NONE    gui=NONE
hi Include        guifg=#9ba2a6 guibg=NONE    gui=NONE
hi Define         guifg=#9683a1 guibg=NONE    gui=NONE
hi Macro          guifg=#e58980 guibg=NONE    gui=NONE
hi PreCondit      guifg=#E1CE98 guibg=NONE    gui=NONE
hi Type           guifg=#E1CE98 guibg=NONE    gui=NONE
hi StorageClass   guifg=#E1CE98 guibg=NONE    gui=NONE
hi Structure      guifg=#77868a guibg=NONE    gui=NONE
hi Typedef        guifg=#E1CE98 guibg=NONE    gui=NONE
hi Special        guifg=#77868a guibg=NONE    gui=NONE
hi SpecialChar    guifg=#e75a50 guibg=NONE    gui=NONE
hi Tag            guifg=#E1CE98 guibg=NONE    gui=NONE
hi Delimiter      guifg=#C0AF7F guibg=NONE    gui=NONE

hi SpecialComment guifg=#817f68 guibg=NONE    gui=bold,italic
hi Debug          guifg=#F44336 guibg=NONE    gui=NONE
hi Underlined     guifg=#77868a guibg=NONE    gui=underline
hi Error          guifg=#1B1B1B guibg=#F44336 gui=NONE
hi Todo           guifg=#1B1B1B guibg=#E1CE98 gui=bold
hi Bold           gui=bold
hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#a99b7a guibg=#141414 gui=NONE
hi DiffChange     guifg=#9ba2a6 guibg=#141414 gui=NONE
hi DiffDelete     guifg=#F44336 guibg=#141414 gui=NONE
hi DiffText       guifg=#E1CE98 guibg=#323232 gui=NONE
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi GitGutterAdd    guifg=#a99b7a guibg=NONE
hi GitGutterChange guifg=#E1CE98 guibg=NONE

hi GitGutterDelete guifg=#F44336 guibg=NONE
hi! link GitSignsAdd    GitGutterAdd
hi! link GitSignsChange GitGutterChange
hi! link GitSignsDelete GitGutterDelete

" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#efebdc guibg=#141414
  hi FloatBorder  guifg=#817f68 guibg=#141414
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch

  hi DiagnosticError guifg=#F44336
  hi DiagnosticWarn  guifg=#e67e22
  hi DiagnosticInfo  guifg=#77868a
  hi DiagnosticHint  guifg=#9ba2a6
  hi DiagnosticUnderlineError gui=undercurl guisp=#F44336
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#e67e22

  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#77868a

  hi DiagnosticUnderlineHint  gui=undercurl guisp=#9ba2a6


  " LSP references (spec: selection bg, bright_fg text)
  hi LspReferenceText  guifg=#f4f2e8 guibg=#323232
  hi LspReferenceRead  guifg=#f4f2e8 guibg=#323232
  hi LspReferenceWrite guifg=#f4f2e8 guibg=#323232

  " Snacks picker (spec overrides)
  hi SnacksPickerDir            guifg=#817f68
  hi SnacksPickerPathHidden     guifg=#817f68
  hi SnacksPickerPathIgnored    guifg=#817f68
  hi SnacksPickerListCursorLine guibg=#323232

  " Treesitter
  hi @variable guifg=#efebdc

  let g:terminal_color_0  = '#1B1B1B'
  let g:terminal_color_1  = '#F44336'
  let g:terminal_color_2  = '#a99b7a'
  let g:terminal_color_3  = '#E1CE98'
  let g:terminal_color_4  = '#9ba2a6'

  let g:terminal_color_5  = '#9683a1'
  let g:terminal_color_6  = '#77868a'
  let g:terminal_color_7  = '#efebdc'
  let g:terminal_color_8  = '#817f68'

  let g:terminal_color_9  = '#F44336'
  let g:terminal_color_10 = '#a99b7a'
  let g:terminal_color_11 = '#E1CE98'
  let g:terminal_color_12 = '#9ba2a6'
  let g:terminal_color_13 = '#9683a1'

  let g:terminal_color_14 = '#77868a'
  let g:terminal_color_15 = '#f4f2e8'

else
  let g:terminal_ansi_colors = ['#1B1B1B', '#F44336', '#a99b7a', '#E1CE98', '#9ba2a6', '#9683a1', '#77868a', '#efebdc', '#817f68', '#F44336', '#a99b7a', '#E1CE98', '#9ba2a6', '#9683a1', '#77868a', '#f4f2e8']
endif
