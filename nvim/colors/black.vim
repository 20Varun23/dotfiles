" slate_mist.vim - Vim/Neovim colorscheme generated from a terminal colors.toml
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.
" No line continuations, so it also loads in compatible mode.
" Needs truecolor: `set termguicolors`.
"
" Palette (from colors.toml):
"   background #14181E  dark #0E1116  darker #080B10  lighter #1C2026
"   foreground #CED6E0  dark_fg #6C7987  light_fg #AFB8C7  bright_fg #E9EEF5
"   accent #CED6E0  selection #363F4A  muted #525D6A
"   red #BD8489  yellow #C3B798  orange #C19F8B  green #89B39B
"   cyan #8FB5BD  blue #8EA7C2  magenta #BC9BBF  brown #876F5E
"   bright: red #D2A2A6  yellow #D8CFB6  green #A6CAB5
"           cyan #ACCCD2  blue #ADC0D7  magenta #D3B9D5

hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'slate_mist'

" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#CED6E0 guibg=#14181E gui=NONE
hi Cursor         guifg=#14181E guibg=#CED6E0 gui=NONE
hi CursorLine     guifg=NONE    guibg=#1C2026 gui=NONE
hi CursorColumn   guifg=NONE    guibg=#1C2026 gui=NONE
hi ColorColumn    guifg=NONE    guibg=#1C2026 gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#363F4A gui=NONE
hi LineNr         guifg=#525D6A guibg=NONE    gui=NONE
hi CursorLineNr   guifg=#CED6E0 guibg=#1C2026 gui=bold
hi SignColumn     guifg=#525D6A guibg=NONE    gui=NONE
hi FoldColumn     guifg=#525D6A guibg=NONE    gui=NONE
hi Folded         guifg=#6C7987 guibg=#0E1116 gui=italic
hi VertSplit      guifg=#363F4A guibg=NONE    gui=NONE
hi NonText        guifg=#363F4A guibg=NONE    gui=NONE
hi EndOfBuffer    guifg=#14181E guibg=NONE    gui=NONE
hi SpecialKey     guifg=#525D6A guibg=NONE    gui=NONE
hi Conceal        guifg=#525D6A guibg=NONE    gui=NONE
hi Directory      guifg=#8EA7C2 guibg=NONE    gui=NONE
hi Title          guifg=#E9EEF5 guibg=NONE    gui=bold

" Selection / search
hi Visual         guifg=NONE    guibg=#363F4A gui=NONE

hi VisualNOS      guifg=NONE    guibg=#363F4A gui=NONE

hi Search         guifg=#14181E guibg=#C3B798 gui=NONE
hi IncSearch      guifg=#14181E guibg=#C19F8B gui=NONE
hi MatchParen     guifg=#D8CFB6 guibg=#363F4A gui=bold

" Status / tabs
hi StatusLine     guifg=#CED6E0 guibg=#1C2026 gui=NONE

hi StatusLineNC   guifg=#525D6A guibg=#0E1116 gui=NONE
hi TabLine        guifg=#6C7987 guibg=#0E1116 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#080B10 gui=NONE
hi TabLineSel     guifg=#E9EEF5 guibg=#363F4A gui=bold
hi WildMenu       guifg=#14181E guibg=#C3B798 gui=NONE

" Popup menu
hi Pmenu          guifg=#CED6E0 guibg=#1C2026 gui=NONE

hi PmenuSel       guifg=#E9EEF5 guibg=#363F4A gui=NONE
hi PmenuSbar      guifg=NONE    guibg=#1C2026 gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#525D6A gui=NONE

" Messages
hi ErrorMsg       guifg=#D2A2A6 guibg=NONE    gui=bold
hi WarningMsg     guifg=#C19F8B guibg=NONE    gui=NONE
hi ModeMsg        guifg=#89B39B guibg=NONE    gui=NONE
hi MoreMsg        guifg=#89B39B guibg=NONE    gui=NONE
hi Question       guifg=#C3B798 guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#BD8489
hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#C3B798
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#8FB5BD
hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#BC9BBF

" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#6C7987 guibg=NONE    gui=italic
hi Constant       guifg=#C19F8B guibg=NONE    gui=NONE
hi String         guifg=#89B39B guibg=NONE    gui=NONE
hi Character      guifg=#A6CAB5 guibg=NONE    gui=NONE
hi Number         guifg=#C19F8B guibg=NONE    gui=NONE
hi Boolean        guifg=#C19F8B guibg=NONE    gui=NONE
hi Float          guifg=#C19F8B guibg=NONE    gui=NONE
hi Identifier     guifg=#BD8489 guibg=NONE    gui=NONE
hi Function       guifg=#8EA7C2 guibg=NONE    gui=NONE
hi Statement      guifg=#BC9BBF guibg=NONE    gui=NONE
hi Conditional    guifg=#BC9BBF guibg=NONE    gui=NONE
hi Repeat         guifg=#BC9BBF guibg=NONE    gui=NONE
hi Label          guifg=#C3B798 guibg=NONE    gui=NONE
hi Operator       guifg=#AFB8C7 guibg=NONE    gui=NONE
hi Keyword        guifg=#BC9BBF guibg=NONE    gui=NONE
hi Exception      guifg=#D2A2A6 guibg=NONE    gui=NONE
hi PreProc        guifg=#8FB5BD guibg=NONE    gui=NONE
hi Include        guifg=#ADC0D7 guibg=NONE    gui=NONE
hi Define         guifg=#D3B9D5 guibg=NONE    gui=NONE
hi Macro          guifg=#BD8489 guibg=NONE    gui=NONE
hi PreCondit      guifg=#8FB5BD guibg=NONE    gui=NONE
hi Type           guifg=#C3B798 guibg=NONE    gui=NONE
hi StorageClass   guifg=#C3B798 guibg=NONE    gui=NONE
hi Structure      guifg=#8FB5BD guibg=NONE    gui=NONE

hi Typedef        guifg=#C3B798 guibg=NONE    gui=NONE
hi Special        guifg=#8FB5BD guibg=NONE    gui=NONE
hi SpecialChar    guifg=#ACCCD2 guibg=NONE    gui=NONE
hi Tag            guifg=#C3B798 guibg=NONE    gui=NONE
hi Delimiter      guifg=#AFB8C7 guibg=NONE    gui=NONE
hi SpecialComment guifg=#876F5E guibg=NONE    gui=bold,italic
hi Debug          guifg=#BD8489 guibg=NONE    gui=NONE
hi Underlined     guifg=#8EA7C2 guibg=NONE    gui=underline
hi Error          guifg=#14181E guibg=#BD8489 gui=NONE
hi Todo           guifg=#14181E guibg=#C3B798 gui=bold

hi Bold           gui=bold
hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#89B39B guibg=#0E1116 gui=NONE
hi DiffChange     guifg=#8EA7C2 guibg=#0E1116 gui=NONE
hi DiffDelete     guifg=#BD8489 guibg=#0E1116 gui=NONE
hi DiffText       guifg=#E9EEF5 guibg=#363F4A gui=NONE
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange

hi GitGutterAdd    guifg=#89B39B guibg=NONE

hi GitGutterChange guifg=#C3B798 guibg=NONE

hi GitGutterDelete guifg=#BD8489 guibg=NONE
hi! link GitSignsAdd    GitGutterAdd
hi! link GitSignsChange GitGutterChange
hi! link GitSignsDelete GitGutterDelete


" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#CED6E0 guibg=#0E1116
  hi FloatBorder  guifg=#525D6A guibg=#0E1116
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch

  hi DiagnosticError guifg=#BD8489
  hi DiagnosticWarn  guifg=#C3B798
  hi DiagnosticInfo  guifg=#8FB5BD
  hi DiagnosticHint  guifg=#8EA7C2
  hi DiagnosticUnderlineError gui=undercurl guisp=#BD8489
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#C3B798
  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#8FB5BD
  hi DiagnosticUnderlineHint  gui=undercurl guisp=#8EA7C2


  hi LspReferenceText  guibg=#363F4A
  hi LspReferenceRead  guibg=#363F4A
  hi LspReferenceWrite guibg=#363F4A

  hi @variable guifg=#CED6E0

  let g:terminal_color_0  = '#0E1116'
  let g:terminal_color_1  = '#BD8489'
  let g:terminal_color_2  = '#89B39B'
  let g:terminal_color_3  = '#C3B798'
  let g:terminal_color_4  = '#8EA7C2'

  let g:terminal_color_5  = '#BC9BBF'
  let g:terminal_color_6  = '#8FB5BD'
  let g:terminal_color_7  = '#AFB8C7'
  let g:terminal_color_8  = '#525D6A'
  let g:terminal_color_9  = '#D2A2A6'
  let g:terminal_color_10 = '#A6CAB5'
  let g:terminal_color_11 = '#D8CFB6'
  let g:terminal_color_12 = '#ADC0D7'
  let g:terminal_color_13 = '#D3B9D5'
  let g:terminal_color_14 = '#ACCCD2'
  let g:terminal_color_15 = '#E9EEF5'
else
  let g:terminal_ansi_colors = ['#0E1116', '#BD8489', '#89B39B', '#C3B798', '#8EA7C2', '#BC9BBF', '#8FB5BD', '#AFB8C7', '#525D6A', '#D2A2A6', '#A6CAB5', '#D8CFB6', '#ADC0D7', '#D3B9D5', '#ACCCD2', '#E9EEF5']
endif
