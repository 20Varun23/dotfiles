" aether_mint.vim - standalone port of aether.nvim (v3) dark teal/mint spec
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.
" No line continuations, so it also loads in compatible mode.
" Needs truecolor: `set termguicolors`.
"
" Palette:
"   bg #0a0a0a  darker_bg #050807  lighter_bg #14201e  selection #182826
"   fg #c8dcdc  dark_fg #aabab6  bright_fg #e4f2f0  muted #6e8e8c
"   red #d35f5f  orange #ff8a4d  yellow #ffd84a  green #8fecd5
"   cyan #63c9c4  blue #adf0e9  purple #ff3d7f  brown #7fa8a0
"   bright: red #ff6a6a  yellow #a9b673  green #b4f5e4
"           cyan #8fe0dc  blue #cbf6f2  purple #c58af5


hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'aether_mint'

" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#c8dcdc guibg=#0a0a0a gui=NONE
hi Cursor         guifg=#0a0a0a guibg=#c8dcdc gui=NONE
hi CursorLine     guifg=NONE    guibg=#14201e gui=NONE
hi CursorColumn   guifg=NONE    guibg=#14201e gui=NONE
hi ColorColumn    guifg=NONE    guibg=#050807 gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#182826 gui=NONE
hi LineNr         guifg=#6e8e8c guibg=NONE    gui=NONE
hi CursorLineNr   guifg=#ffd84a guibg=#14201e gui=bold
hi SignColumn     guifg=#6e8e8c guibg=NONE    gui=NONE

hi FoldColumn     guifg=#6e8e8c guibg=NONE    gui=NONE
hi Folded         guifg=#aabab6 guibg=#050807 gui=italic
hi VertSplit      guifg=#182826 guibg=NONE    gui=NONE
hi NonText        guifg=#182826 guibg=NONE    gui=NONE
hi EndOfBuffer    guifg=#0a0a0a guibg=NONE    gui=NONE
hi SpecialKey     guifg=#6e8e8c guibg=NONE    gui=NONE
hi Conceal        guifg=#6e8e8c guibg=NONE    gui=NONE
hi Directory      guifg=#adf0e9 guibg=NONE    gui=NONE
hi Title          guifg=#ff3d7f guibg=NONE    gui=bold


" Selection / search
hi Visual         guifg=NONE    guibg=#182826 gui=NONE
hi VisualNOS      guifg=NONE    guibg=#182826 gui=NONE
hi Search         guifg=#0a0a0a guibg=#ffd84a gui=NONE
hi IncSearch      guifg=#0a0a0a guibg=#ff8a4d gui=NONE
hi MatchParen     guifg=#ffd84a guibg=#182826 gui=bold

" Status / tabs
hi StatusLine     guifg=#c8dcdc guibg=#14201e gui=NONE
hi StatusLineNC   guifg=#6e8e8c guibg=#050807 gui=NONE
hi TabLine        guifg=#aabab6 guibg=#050807 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#050807 gui=NONE
hi TabLineSel     guifg=#e4f2f0 guibg=#182826 gui=bold
hi WildMenu       guifg=#0a0a0a guibg=#ffd84a gui=NONE

" Popup menu
hi Pmenu          guifg=#c8dcdc guibg=#14201e gui=NONE
hi PmenuSel       guifg=#e4f2f0 guibg=#182826 gui=NONE

hi PmenuSbar      guifg=NONE    guibg=#14201e gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#6e8e8c gui=NONE


" Messages
hi ErrorMsg       guifg=#ff6a6a guibg=NONE    gui=bold
hi WarningMsg     guifg=#ff8a4d guibg=NONE    gui=NONE
hi ModeMsg        guifg=#8fecd5 guibg=NONE    gui=NONE
hi MoreMsg        guifg=#8fecd5 guibg=NONE    gui=NONE
hi Question       guifg=#ffd84a guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#d35f5f
hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#ffd84a
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#63c9c4

hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#c58af5

" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#6e8e8c guibg=NONE    gui=italic
hi Constant       guifg=#ff8a4d guibg=NONE    gui=NONE
hi String         guifg=#8fecd5 guibg=NONE    gui=NONE
hi Character      guifg=#b4f5e4 guibg=NONE    gui=NONE

hi Number         guifg=#ff8a4d guibg=NONE    gui=NONE
hi Boolean        guifg=#ff8a4d guibg=NONE    gui=NONE
hi Float          guifg=#ff8a4d guibg=NONE    gui=NONE
hi Identifier     guifg=#63c9c4 guibg=NONE    gui=NONE
hi Function       guifg=#adf0e9 guibg=NONE    gui=NONE
hi Statement      guifg=#ff3d7f guibg=NONE    gui=NONE
hi Conditional    guifg=#ff3d7f guibg=NONE    gui=NONE
hi Repeat         guifg=#ff3d7f guibg=NONE    gui=NONE

hi Label          guifg=#ffd84a guibg=NONE    gui=NONE
hi Operator       guifg=#aabab6 guibg=NONE    gui=NONE
hi Keyword        guifg=#ff3d7f guibg=NONE    gui=NONE
hi Exception      guifg=#d35f5f guibg=NONE    gui=NONE
hi PreProc        guifg=#c58af5 guibg=NONE    gui=NONE
hi Include        guifg=#cbf6f2 guibg=NONE    gui=NONE
hi Define         guifg=#c58af5 guibg=NONE    gui=NONE
hi Macro          guifg=#d35f5f guibg=NONE    gui=NONE
hi PreCondit      guifg=#c58af5 guibg=NONE    gui=NONE
hi Type           guifg=#ffd84a guibg=NONE    gui=NONE
hi StorageClass   guifg=#ffd84a guibg=NONE    gui=NONE
hi Structure      guifg=#63c9c4 guibg=NONE    gui=NONE
hi Typedef        guifg=#ffd84a guibg=NONE    gui=NONE
hi Special        guifg=#8fe0dc guibg=NONE    gui=NONE
hi SpecialChar    guifg=#8fe0dc guibg=NONE    gui=NONE
hi Tag            guifg=#ffd84a guibg=NONE    gui=NONE
hi Delimiter      guifg=#aabab6 guibg=NONE    gui=NONE
hi SpecialComment guifg=#7fa8a0 guibg=NONE    gui=bold,italic
hi Debug          guifg=#d35f5f guibg=NONE    gui=NONE
hi Underlined     guifg=#adf0e9 guibg=NONE    gui=underline
hi Error          guifg=#0a0a0a guibg=#d35f5f gui=NONE
hi Todo           guifg=#0a0a0a guibg=#ffd84a gui=bold
hi Bold           gui=bold
hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#8fecd5 guibg=#050807 gui=NONE
hi DiffChange     guifg=#ffd84a guibg=#050807 gui=NONE

hi DiffDelete     guifg=#d35f5f guibg=#050807 gui=NONE
hi DiffText       guifg=#e4f2f0 guibg=#182826 gui=NONE
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
hi GitGutterAdd    guifg=#8fecd5 guibg=NONE
hi GitGutterChange guifg=#ffd84a guibg=NONE
hi GitGutterDelete guifg=#d35f5f guibg=NONE
hi! link GitSignsAdd    GitGutterAdd
hi! link GitSignsChange GitGutterChange
hi! link GitSignsDelete GitGutterDelete

" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#c8dcdc guibg=#050807
  hi FloatBorder  guifg=#6e8e8c guibg=#050807
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch

  hi DiagnosticError guifg=#ff6a6a
  hi DiagnosticWarn  guifg=#ffd84a
  hi DiagnosticInfo  guifg=#63c9c4
  hi DiagnosticHint  guifg=#adf0e9
  hi DiagnosticUnderlineError gui=undercurl guisp=#ff6a6a
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#ffd84a
  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#63c9c4
  hi DiagnosticUnderlineHint  gui=undercurl guisp=#adf0e9

  " LSP references (spec: selection bg, bright_fg text)
  hi LspReferenceText  guifg=#e4f2f0 guibg=#182826
  hi LspReferenceRead  guifg=#e4f2f0 guibg=#182826
  hi LspReferenceWrite guifg=#e4f2f0 guibg=#182826


  " Snacks picker (spec overrides)
  hi SnacksPickerDir            guifg=#6e8e8c
  hi SnacksPickerPathHidden     guifg=#6e8e8c
  hi SnacksPickerPathIgnored    guifg=#6e8e8c
  hi SnacksPickerListCursorLine guibg=#14201e

  hi @variable guifg=#c8dcdc

  let g:terminal_color_0  = '#050807'

  let g:terminal_color_1  = '#d35f5f'
  let g:terminal_color_2  = '#8fecd5'

  let g:terminal_color_3  = '#ffd84a'
  let g:terminal_color_4  = '#adf0e9'

  let g:terminal_color_5  = '#ff3d7f'
  let g:terminal_color_6  = '#63c9c4'

  let g:terminal_color_7  = '#aabab6'
  let g:terminal_color_8  = '#6e8e8c'

  let g:terminal_color_9  = '#ff6a6a'
  let g:terminal_color_10 = '#b4f5e4'

  let g:terminal_color_11 = '#a9b673'
  let g:terminal_color_12 = '#cbf6f2'

  let g:terminal_color_13 = '#c58af5'
  let g:terminal_color_14 = '#8fe0dc'
  let g:terminal_color_15 = '#e4f2f0'
else
  let g:terminal_ansi_colors = ['#050807', '#d35f5f', '#8fecd5', '#ffd84a', '#adf0e9', '#ff3d7f', '#63c9c4', '#aabab6', '#6e8e8c', '#ff6a6a', '#b4f5e4', '#a9b673', '#cbf6f2', '#c58af5', '#8fe0dc', '#e4f2f0']

endif
