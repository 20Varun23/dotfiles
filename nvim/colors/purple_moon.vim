" purple_moon.vim - standalone port of aether.nvim "purple moon" spec (base16 layout)
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.
" No line continuations, so it also loads in compatible mode.
" Needs truecolor: `set termguicolors`.
"
" Palette:
"   base00 #020007  background         base08 #ee78b0  variables, errors
"   base01 #0b0714  lighter background base09 #f4b28d  numbers, constants
"   base02 #22193d  selection          base0A #e2acf0  types, classes
"   base03 #6f5e94  comments, linenr   base0B #cf7fdd  strings
"   base04 #a08fbd  dark foreground    base0C #8fd0e6  regex, special
"   base05 #dfd0f0  foreground         base0D #b8a4ff  functions
"   base06 #f6ebe3  light foreground   base0E #a066e8  keywords

"   base07 #ffffff  light background   base0F #9c6cd0  delimiters, misc
" Overrides (from on_colors / autocmd):
"   visual #2e1f52  search #5b3a9e  diff.change #1c1436  diff.text #3a2a6a

"   property / member #c9b0f0

hi clear

if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'purple_moon'

" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#dfd0f0 guibg=#020007 gui=NONE
hi Cursor         guifg=#020007 guibg=#dfd0f0 gui=NONE
hi CursorLine     guifg=NONE    guibg=#0b0714 gui=NONE
hi CursorColumn   guifg=NONE    guibg=#0b0714 gui=NONE
hi ColorColumn    guifg=NONE    guibg=#0b0714 gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#22193d gui=NONE
hi LineNr         guifg=#6f5e94 guibg=NONE    gui=NONE

hi CursorLineNr   guifg=#b8a4ff guibg=#0b0714 gui=bold
hi SignColumn     guifg=#6f5e94 guibg=NONE    gui=NONE
hi FoldColumn     guifg=#6f5e94 guibg=NONE    gui=NONE
hi Folded         guifg=#a08fbd guibg=#0b0714 gui=italic
hi VertSplit      guifg=#22193d guibg=NONE    gui=NONE

hi NonText        guifg=#22193d guibg=NONE    gui=NONE
hi EndOfBuffer    guifg=#22193d guibg=NONE    gui=NONE
hi SpecialKey     guifg=#6f5e94 guibg=NONE    gui=NONE
hi Conceal        guifg=#6f5e94 guibg=NONE    gui=NONE

hi Directory      guifg=#b8a4ff guibg=NONE    gui=NONE
hi Title          guifg=#b8a4ff guibg=NONE    gui=bold

" Selection
hi Visual         guifg=NONE    guibg=#2e1f52 gui=NONE

hi VisualNOS      guifg=NONE    guibg=#2e1f52 gui=NONE

" Search
hi Search         guifg=#f6ebe3 guibg=#5b3a9e gui=NONE
hi IncSearch      guifg=#020007 guibg=#f4b28d gui=NONE
hi MatchParen     guifg=#f4b28d guibg=#22193d gui=bold

" Status / tabs
hi StatusLine     guifg=#dfd0f0 guibg=#22193d gui=NONE
hi StatusLineNC   guifg=#6f5e94 guibg=#0b0714 gui=NONE
hi TabLine        guifg=#a08fbd guibg=#0b0714 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#0b0714 gui=NONE
hi TabLineSel     guifg=#f6ebe3 guibg=#22193d gui=bold
hi WildMenu       guifg=#f6ebe3 guibg=#5b3a9e gui=NONE

" Popup menu

hi Pmenu          guifg=#dfd0f0 guibg=#0b0714 gui=NONE
hi PmenuSel       guifg=#f6ebe3 guibg=#2e1f52 gui=NONE
hi PmenuSbar      guifg=NONE    guibg=#0b0714 gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#6f5e94 gui=NONE

" Messages
hi ErrorMsg       guifg=#ee78b0 guibg=NONE    gui=bold
hi WarningMsg     guifg=#f4b28d guibg=NONE    gui=NONE
hi ModeMsg        guifg=#cf7fdd guibg=NONE    gui=NONE
hi MoreMsg        guifg=#cf7fdd guibg=NONE    gui=NONE
hi Question       guifg=#b8a4ff guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#ee78b0
hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#e2acf0
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#8fd0e6
hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#a066e8


" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#6f5e94 guibg=NONE    gui=italic

hi Constant       guifg=#f4b28d guibg=NONE    gui=NONE
hi String         guifg=#cf7fdd guibg=NONE    gui=NONE
hi Character      guifg=#ee78b0 guibg=NONE    gui=NONE
hi Number         guifg=#f4b28d guibg=NONE    gui=NONE
hi Boolean        guifg=#f4b28d guibg=NONE    gui=NONE
hi Float          guifg=#f4b28d guibg=NONE    gui=NONE
hi Identifier     guifg=#ee78b0 guibg=NONE    gui=NONE
hi Function       guifg=#b8a4ff guibg=NONE    gui=bold
hi Statement      guifg=#a066e8 guibg=NONE    gui=italic
hi Conditional    guifg=#a066e8 guibg=NONE    gui=italic
hi Repeat         guifg=#a066e8 guibg=NONE    gui=italic
hi Label          guifg=#e2acf0 guibg=NONE    gui=NONE
hi Operator       guifg=#dfd0f0 guibg=NONE    gui=NONE
hi Keyword        guifg=#a066e8 guibg=NONE    gui=italic
hi Exception      guifg=#ee78b0 guibg=NONE    gui=italic
hi PreProc        guifg=#e2acf0 guibg=NONE    gui=NONE
hi Include        guifg=#b8a4ff guibg=NONE    gui=NONE
hi Define         guifg=#a066e8 guibg=NONE    gui=NONE
hi Macro          guifg=#ee78b0 guibg=NONE    gui=NONE
hi PreCondit      guifg=#e2acf0 guibg=NONE    gui=NONE

hi Type           guifg=#e2acf0 guibg=NONE    gui=NONE
hi StorageClass   guifg=#e2acf0 guibg=NONE    gui=NONE
hi Structure      guifg=#a066e8 guibg=NONE    gui=NONE
hi Typedef        guifg=#e2acf0 guibg=NONE    gui=NONE
hi Special        guifg=#8fd0e6 guibg=NONE    gui=NONE

hi SpecialChar    guifg=#9c6cd0 guibg=NONE    gui=NONE
hi Tag            guifg=#e2acf0 guibg=NONE    gui=NONE
hi Delimiter      guifg=#9c6cd0 guibg=NONE    gui=NONE
hi SpecialComment guifg=#6f5e94 guibg=NONE    gui=bold,italic
hi Debug          guifg=#ee78b0 guibg=NONE    gui=NONE
hi Underlined     guifg=#8fd0e6 guibg=NONE    gui=underline

hi Error          guifg=#020007 guibg=#ee78b0 gui=NONE

hi Todo           guifg=#020007 guibg=#e2acf0 gui=bold
hi Bold           gui=bold
hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#8fd0e6 guibg=#0b0714 gui=NONE
hi DiffChange     guifg=NONE    guibg=#1c1436 gui=NONE
hi DiffDelete     guifg=#ee78b0 guibg=#0b0714 gui=NONE
hi DiffText       guifg=#f6ebe3 guibg=#3a2a6a gui=NONE

hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi GitGutterAdd    guifg=#8fd0e6 guibg=NONE
hi GitGutterChange guifg=#e2acf0 guibg=NONE
hi GitGutterDelete guifg=#ee78b0 guibg=NONE
hi! link GitSignsAdd    GitGutterAdd
hi! link GitSignsChange GitGutterChange

hi! link GitSignsDelete GitGutterDelete

" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#dfd0f0 guibg=#0b0714
  hi FloatBorder  guifg=#6f5e94 guibg=#0b0714
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch


  hi DiagnosticError guifg=#ee78b0

  hi DiagnosticWarn  guifg=#f4b28d

  hi DiagnosticInfo  guifg=#8fd0e6

  hi DiagnosticHint  guifg=#b8a4ff

  hi DiagnosticUnderlineError gui=undercurl guisp=#ee78b0
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#f4b28d

  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#8fd0e6

  hi DiagnosticUnderlineHint  gui=undercurl guisp=#b8a4ff

  hi LspReferenceText  guibg=#22193d
  hi LspReferenceRead  guibg=#22193d
  hi LspReferenceWrite guibg=#22193d

  " Treesitter
  hi @variable        guifg=#dfd0f0
  hi @property        guifg=#c9b0f0
  hi @variable.member guifg=#c9b0f0
  hi! link @keyword   Keyword


  let g:terminal_color_0  = '#020007'
  let g:terminal_color_1  = '#ee78b0'

  let g:terminal_color_2  = '#cf7fdd'
  let g:terminal_color_3  = '#e2acf0'

  let g:terminal_color_4  = '#b8a4ff'
  let g:terminal_color_5  = '#a066e8'

  let g:terminal_color_6  = '#8fd0e6'
  let g:terminal_color_7  = '#dfd0f0'
  let g:terminal_color_8  = '#6f5e94'
  let g:terminal_color_9  = '#ee78b0'
  let g:terminal_color_10 = '#cf7fdd'
  let g:terminal_color_11 = '#e2acf0'
  let g:terminal_color_12 = '#b8a4ff'
  let g:terminal_color_13 = '#a066e8'

  let g:terminal_color_14 = '#8fd0e6'
  let g:terminal_color_15 = '#ffffff'

else
  let g:terminal_ansi_colors = ['#020007', '#ee78b0', '#cf7fdd', '#e2acf0', '#b8a4ff', '#a066e8', '#8fd0e6', '#dfd0f0', '#6f5e94', '#ee78b0', '#cf7fdd', '#e2acf0', '#b8a4ff', '#a066e8', '#8fd0e6', '#ffffff']
endif
