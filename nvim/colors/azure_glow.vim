" azure_glow.vim - standalone port of Azure Glow Neovim spec
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.
" No line continuations, so it also loads in compatible mode.
" Needs truecolor: `set termguicolors`.
"
" Palette:
"   bg #0A0E14  fg #E6F0FF  dark #041019  muted #355A66
"   primary #64B5F6  secondary #00CFFF  success #4DD0E1  danger #2979FF
"   warning #81D4FA  info #00E5FF  light #B3E5FC

" Spec UI colors: CursorLine #0F141C  Visual #123C56  Pmenu/StatusLine #0E1620

hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'azure_glow'

" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#E6F0FF guibg=#0A0E14 gui=NONE
hi Cursor         guifg=#0A0E14 guibg=#64B5F6 gui=NONE
hi CursorLine     guifg=NONE    guibg=#0F141C gui=NONE
hi CursorColumn   guifg=NONE    guibg=#0F141C gui=NONE
hi ColorColumn    guifg=NONE    guibg=#0F141C gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#123C56 gui=NONE
hi LineNr         guifg=#355A66 guibg=NONE    gui=NONE
hi CursorLineNr   guifg=#64B5F6 guibg=NONE    gui=bold
hi SignColumn     guifg=#355A66 guibg=NONE    gui=NONE
hi FoldColumn     guifg=#355A66 guibg=NONE    gui=NONE
hi Folded         guifg=#355A66 guibg=#0E1620 gui=italic
hi VertSplit      guifg=#041019 guibg=NONE    gui=NONE
hi NonText        guifg=#355A66 guibg=NONE    gui=NONE

hi EndOfBuffer    guifg=#0A0E14 guibg=NONE    gui=NONE
hi SpecialKey     guifg=#355A66 guibg=NONE    gui=NONE
hi Conceal        guifg=#355A66 guibg=NONE    gui=NONE
hi Directory      guifg=#64B5F6 guibg=NONE    gui=NONE
hi Title          guifg=#64B5F6 guibg=NONE    gui=bold

" Selection / search
hi Visual         guifg=NONE    guibg=#123C56 gui=NONE
hi VisualNOS      guifg=NONE    guibg=#123C56 gui=NONE
hi Search         guifg=#0A0E14 guibg=#64B5F6 gui=NONE
hi IncSearch      guifg=#0A0E14 guibg=#00CFFF gui=NONE

hi MatchParen     guifg=#00E5FF guibg=#123C56 gui=bold

" Status / tabs
hi StatusLine     guifg=#E6F0FF guibg=#0E1620 gui=NONE
hi StatusLineNC   guifg=#355A66 guibg=#0E1620 gui=NONE
hi TabLine        guifg=#355A66 guibg=#0E1620 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#041019 gui=NONE
hi TabLineSel     guifg=#64B5F6 guibg=#0A0E14 gui=bold
hi WildMenu       guifg=#0A0E14 guibg=#64B5F6 gui=NONE

" Popup menu
hi Pmenu          guifg=#E6F0FF guibg=#0E1620 gui=NONE
hi PmenuSel       guifg=#0A0E14 guibg=#64B5F6 gui=NONE
hi PmenuSbar      guifg=NONE    guibg=#0E1620 gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#355A66 gui=NONE

" Messages
hi ErrorMsg       guifg=#0A0E14 guibg=#2979FF gui=bold
hi WarningMsg     guifg=#0A0E14 guibg=#81D4FA gui=NONE
hi MoreMsg        guifg=#4DD0E1 guibg=NONE    gui=NONE
hi ModeMsg        guifg=#64B5F6 guibg=NONE    gui=bold
hi Question       guifg=#4DD0E1 guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#2979FF
hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#81D4FA
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#00CFFF
hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#B3E5FC


" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#355A66 guibg=NONE    gui=italic
hi Constant       guifg=#00CFFF guibg=NONE    gui=NONE
hi String         guifg=#4DD0E1 guibg=NONE    gui=NONE
hi Character      guifg=#4DD0E1 guibg=NONE    gui=NONE
hi Number         guifg=#81D4FA guibg=NONE    gui=NONE
hi Boolean        guifg=#64B5F6 guibg=NONE    gui=bold

hi Float          guifg=#81D4FA guibg=NONE    gui=NONE
hi Identifier     guifg=#00E5FF guibg=NONE    gui=NONE
hi Function       guifg=#64B5F6 guibg=NONE    gui=bold
hi Statement      guifg=#2979FF guibg=NONE    gui=bold
hi Conditional    guifg=#2979FF guibg=NONE    gui=NONE
hi Repeat         guifg=#00CFFF guibg=NONE    gui=NONE
hi Label          guifg=#00CFFF guibg=NONE    gui=NONE
hi Operator       guifg=#E6F0FF guibg=NONE    gui=NONE

hi Keyword        guifg=#64B5F6 guibg=NONE    gui=bold
hi Exception      guifg=#2979FF guibg=NONE    gui=NONE
hi PreProc        guifg=#00CFFF guibg=NONE    gui=NONE
hi Include        guifg=#64B5F6 guibg=NONE    gui=NONE
hi Define         guifg=#64B5F6 guibg=NONE    gui=NONE

hi Macro          guifg=#81D4FA guibg=NONE    gui=NONE
hi PreCondit      guifg=#00CFFF guibg=NONE    gui=NONE
hi Type           guifg=#00E5FF guibg=NONE    gui=NONE
hi StorageClass   guifg=#00E5FF guibg=NONE    gui=NONE
hi Structure      guifg=#00CFFF guibg=NONE    gui=NONE
hi Typedef        guifg=#00CFFF guibg=NONE    gui=NONE
hi Special        guifg=#81D4FA guibg=NONE    gui=NONE
hi SpecialChar    guifg=#81D4FA guibg=NONE    gui=NONE
hi Tag            guifg=#00E5FF guibg=NONE    gui=NONE
hi Delimiter      guifg=#E6F0FF guibg=NONE    gui=NONE
hi SpecialComment guifg=#355A66 guibg=NONE    gui=NONE

hi Debug          guifg=#2979FF guibg=NONE    gui=NONE
hi Underlined     guifg=#B3E5FC guibg=NONE    gui=underline
hi Error          guifg=#0A0E14 guibg=#2979FF gui=NONE
hi Todo           guifg=#0A0E14 guibg=#81D4FA gui=bold
hi Bold           gui=bold

hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#4DD0E1 guibg=#0E1620 gui=NONE
hi DiffChange     guifg=#81D4FA guibg=#0E1620 gui=NONE
hi DiffDelete     guifg=#2979FF guibg=#0E1620 gui=NONE
hi DiffText       guifg=#E6F0FF guibg=#123C56 gui=NONE
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi GitGutterAdd    guifg=#4DD0E1 guibg=NONE
hi GitGutterChange guifg=#81D4FA guibg=NONE
hi GitGutterDelete guifg=#2979FF guibg=NONE
hi! link GitSignsAdd    GitGutterAdd
hi! link GitSignsChange GitGutterChange
hi! link GitSignsDelete GitGutterDelete

" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#E6F0FF guibg=#0E1620
  hi FloatBorder  guifg=#355A66 guibg=#0E1620
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch

  hi DiagnosticError guifg=#2979FF
  hi DiagnosticWarn  guifg=#81D4FA
  hi DiagnosticInfo  guifg=#00E5FF
  hi DiagnosticHint  guifg=#B3E5FC
  hi DiagnosticUnderlineError gui=undercurl guisp=#2979FF

  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#81D4FA
  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#00E5FF
  hi DiagnosticUnderlineHint  gui=undercurl guisp=#B3E5FC

  hi LspReferenceText  guibg=#123C56
  hi LspReferenceRead  guibg=#123C56
  hi LspReferenceWrite guibg=#123C56

  hi @variable guifg=#E6F0FF

  let g:terminal_color_0  = '#0A0E14'
  let g:terminal_color_1  = '#2979FF'
  let g:terminal_color_2  = '#4DD0E1'
  let g:terminal_color_3  = '#81D4FA'
  let g:terminal_color_4  = '#64B5F6'
  let g:terminal_color_5  = '#B3E5FC'
  let g:terminal_color_6  = '#00CFFF'
  let g:terminal_color_7  = '#E6F0FF'
  let g:terminal_color_8  = '#355A66'
  let g:terminal_color_9  = '#2979FF'
  let g:terminal_color_10 = '#4DD0E1'
  let g:terminal_color_11 = '#81D4FA'
  let g:terminal_color_12 = '#64B5F6'
  let g:terminal_color_13 = '#B3E5FC'
  let g:terminal_color_14 = '#00E5FF'
  let g:terminal_color_15 = '#FFFFFF'
else
  let g:terminal_ansi_colors = ['#0A0E14', '#2979FF', '#4DD0E1', '#81D4FA', '#64B5F6', '#B3E5FC', '#00CFFF', '#E6F0FF', '#355A66', '#2979FF', '#4DD0E1', '#81D4FA', '#64B5F6', '#B3E5FC', '#00E5FF', '#FFFFFF']

endif
