" aether_olive.vim - standalone port of aether.nvim (v2) olive/earthy spec
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.

" No line continuations, so it also loads in compatible mode.
" Needs truecolor: `set termguicolors`.
"
" Palette:
"   bg #22221b  bg_dark #1c1c16  bg_highlight #302f27
"   fg #dcd9d6  fg_dark #929181  comment #6c6b5a
"   red #ba6236  orange #ae7313  yellow #a5980d  green #7d9726

"   cyan #5b9d48  blue #36a166  purple #5f9182  magenta #9d6c7c
" Derived (not in spec): visual #3b3a2f

hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark

let g:colors_name = 'aether_olive'


" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#dcd9d6 guibg=#22221b gui=NONE
hi Cursor         guifg=#22221b guibg=#dcd9d6 gui=NONE
hi CursorLine     guifg=NONE    guibg=#302f27 gui=NONE
hi CursorColumn   guifg=NONE    guibg=#302f27 gui=NONE
hi ColorColumn    guifg=NONE    guibg=#1c1c16 gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#302f27 gui=NONE
hi LineNr         guifg=#6c6b5a guibg=NONE    gui=NONE
hi CursorLineNr   guifg=#ae7313 guibg=#302f27 gui=bold
hi SignColumn     guifg=#6c6b5a guibg=NONE    gui=NONE
hi FoldColumn     guifg=#6c6b5a guibg=NONE    gui=NONE
hi Folded         guifg=#929181 guibg=#1c1c16 gui=italic
hi VertSplit      guifg=#302f27 guibg=NONE    gui=NONE
hi NonText        guifg=#302f27 guibg=NONE    gui=NONE
hi EndOfBuffer    guifg=#22221b guibg=NONE    gui=NONE
hi SpecialKey     guifg=#6c6b5a guibg=NONE    gui=NONE
hi Conceal        guifg=#6c6b5a guibg=NONE    gui=NONE
hi Directory      guifg=#36a166 guibg=NONE    gui=NONE
hi Title          guifg=#ae7313 guibg=NONE    gui=bold


" Selection / search
hi Visual         guifg=NONE    guibg=#3b3a2f gui=NONE
hi VisualNOS      guifg=NONE    guibg=#3b3a2f gui=NONE
hi Search         guifg=#22221b guibg=#a5980d gui=NONE
hi IncSearch      guifg=#22221b guibg=#ae7313 gui=NONE
hi MatchParen     guifg=#ae7313 guibg=#3b3a2f gui=bold

" Status / tabs
hi StatusLine     guifg=#dcd9d6 guibg=#302f27 gui=NONE
hi StatusLineNC   guifg=#6c6b5a guibg=#1c1c16 gui=NONE
hi TabLine        guifg=#929181 guibg=#1c1c16 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#1c1c16 gui=NONE
hi TabLineSel     guifg=#dcd9d6 guibg=#302f27 gui=bold
hi WildMenu       guifg=#22221b guibg=#a5980d gui=NONE

" Popup menu
hi Pmenu          guifg=#dcd9d6 guibg=#1c1c16 gui=NONE
hi PmenuSel       guifg=#dcd9d6 guibg=#3b3a2f gui=NONE

hi PmenuSbar      guifg=NONE    guibg=#1c1c16 gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#6c6b5a gui=NONE


" Messages
hi ErrorMsg       guifg=#ba6236 guibg=NONE    gui=bold
hi WarningMsg     guifg=#ae7313 guibg=NONE    gui=NONE
hi ModeMsg        guifg=#7d9726 guibg=NONE    gui=NONE
hi MoreMsg        guifg=#7d9726 guibg=NONE    gui=NONE
hi Question       guifg=#a5980d guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#ba6236
hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#ae7313
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#5b9d48

hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#9d6c7c

" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#6c6b5a guibg=NONE    gui=italic
hi Constant       guifg=#ae7313 guibg=NONE    gui=NONE
hi String         guifg=#7d9726 guibg=NONE    gui=NONE
hi Character      guifg=#7d9726 guibg=NONE    gui=NONE

hi Number         guifg=#ae7313 guibg=NONE    gui=NONE
hi Boolean        guifg=#ae7313 guibg=NONE    gui=NONE
hi Float          guifg=#ae7313 guibg=NONE    gui=NONE
hi Identifier     guifg=#ba6236 guibg=NONE    gui=NONE
hi Function       guifg=#36a166 guibg=NONE    gui=NONE
hi Statement      guifg=#9d6c7c guibg=NONE    gui=NONE
hi Conditional    guifg=#9d6c7c guibg=NONE    gui=NONE
hi Repeat         guifg=#9d6c7c guibg=NONE    gui=NONE
hi Label          guifg=#a5980d guibg=NONE    gui=NONE
hi Operator       guifg=#5f9182 guibg=NONE    gui=NONE
hi Keyword        guifg=#9d6c7c guibg=NONE    gui=NONE
hi Exception      guifg=#ba6236 guibg=NONE    gui=NONE
hi PreProc        guifg=#5f9182 guibg=NONE    gui=NONE

hi Include        guifg=#36a166 guibg=NONE    gui=NONE
hi Define         guifg=#9d6c7c guibg=NONE    gui=NONE
hi Macro          guifg=#ba6236 guibg=NONE    gui=NONE
hi PreCondit      guifg=#5f9182 guibg=NONE    gui=NONE
hi Type           guifg=#a5980d guibg=NONE    gui=NONE
hi StorageClass   guifg=#a5980d guibg=NONE    gui=NONE
hi Structure      guifg=#5b9d48 guibg=NONE    gui=NONE
hi Typedef        guifg=#a5980d guibg=NONE    gui=NONE
hi Special        guifg=#5b9d48 guibg=NONE    gui=NONE
hi SpecialChar    guifg=#5b9d48 guibg=NONE    gui=NONE
hi Tag            guifg=#a5980d guibg=NONE    gui=NONE
hi Delimiter      guifg=#929181 guibg=NONE    gui=NONE
hi SpecialComment guifg=#6c6b5a guibg=NONE    gui=bold,italic
hi Debug          guifg=#ba6236 guibg=NONE    gui=NONE
hi Underlined     guifg=#5f9182 guibg=NONE    gui=underline
hi Error          guifg=#22221b guibg=#ba6236 gui=NONE
hi Todo           guifg=#22221b guibg=#a5980d gui=bold
hi Bold           gui=bold
hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#7d9726 guibg=#1c1c16 gui=NONE
hi DiffChange     guifg=#a5980d guibg=#1c1c16 gui=NONE

hi DiffDelete     guifg=#ba6236 guibg=#1c1c16 gui=NONE
hi DiffText       guifg=#dcd9d6 guibg=#3b3a2f gui=NONE
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi GitGutterAdd    guifg=#7d9726 guibg=NONE
hi GitGutterChange guifg=#a5980d guibg=NONE
hi GitGutterDelete guifg=#ba6236 guibg=NONE
hi! link GitSignsAdd    GitGutterAdd
hi! link GitSignsChange GitGutterChange
hi! link GitSignsDelete GitGutterDelete

" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#dcd9d6 guibg=#1c1c16
  hi FloatBorder  guifg=#6c6b5a guibg=#1c1c16
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch

  hi DiagnosticError guifg=#ba6236
  hi DiagnosticWarn  guifg=#ae7313
  hi DiagnosticInfo  guifg=#5b9d48
  hi DiagnosticHint  guifg=#5f9182
  hi DiagnosticUnderlineError gui=undercurl guisp=#ba6236
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#ae7313
  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#5b9d48
  hi DiagnosticUnderlineHint  gui=undercurl guisp=#5f9182

  hi LspReferenceText  guibg=#302f27

  hi LspReferenceRead  guibg=#302f27
  hi LspReferenceWrite guibg=#302f27

  hi @variable guifg=#dcd9d6

  let g:terminal_color_0  = '#22221b'
  let g:terminal_color_1  = '#ba6236'
  let g:terminal_color_2  = '#7d9726'
  let g:terminal_color_3  = '#a5980d'
  let g:terminal_color_4  = '#36a166'
  let g:terminal_color_5  = '#9d6c7c'
  let g:terminal_color_6  = '#5f9182'
  let g:terminal_color_7  = '#dcd9d6'
  let g:terminal_color_8  = '#6c6b5a'
  let g:terminal_color_9  = '#ba6236'
  let g:terminal_color_10 = '#7d9726'
  let g:terminal_color_11 = '#ae7313'
  let g:terminal_color_12 = '#36a166'
  let g:terminal_color_13 = '#9d6c7c'
  let g:terminal_color_14 = '#5b9d48'
  let g:terminal_color_15 = '#929181'
else
  let g:terminal_ansi_colors = ['#22221b', '#ba6236', '#7d9726', '#a5980d', '#36a166', '#9d6c7c', '#5f9182', '#dcd9d6', '#6c6b5a', '#ba6236', '#7d9726', '#ae7313', '#36a166', '#9d6c7c', '#5b9d48', '#929181']
endif
