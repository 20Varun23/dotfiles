" aether.vim - standalone port of aether.nvim palette (base16 layout)
" Only :hi, :let, :set background. No exec, no autocmd, no shell, no plugins.
" Needs truecolor: `set termguicolors` (Neovim, or Vim in a modern terminal).
"
" Palette:
"   base00 #1b1d1e  background         base08 #e6dc44  variables, errors
"   base01 #505354  lighter background base09 #fff78e  numbers, constants
"   base02 #fcef0c  selection          base0A #f4fd22  types, search
"   base03 #62605f  comments           base0B #c8be46  strings
"   base04 #c6c5bf  dark foreground    base0C #62605f  support, regex
"   base05 #dadbd6  foreground         base0D #737174  functions
"   base06 #dadbd6  light foreground   base0E #747271  keywords
"   base07 #c6c5bf  light background   base0F #feed6c  delimiters

hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'aether'

" --- Editor UI ---------------------------------------------------------------
hi Normal         guifg=#dadbd6 guibg=#1b1d1e gui=NONE
hi Cursor         guifg=#1b1d1e guibg=#dadbd6 gui=NONE
hi CursorLine     guifg=NONE    guibg=NONE    gui=underline
hi CursorColumn   guifg=NONE    guibg=#505354 gui=NONE
hi ColorColumn    guifg=NONE    guibg=#505354 gui=NONE
hi QuickFixLine   guifg=NONE    guibg=#505354 gui=NONE
hi LineNr         guifg=#62605f guibg=NONE    gui=NONE
hi CursorLineNr   guifg=#f4fd22 guibg=#505354 gui=bold
hi SignColumn     guifg=#62605f guibg=NONE    gui=NONE
hi FoldColumn     guifg=#62605f guibg=NONE    gui=NONE
hi Folded         guifg=#c6c5bf guibg=NONE    gui=italic
hi VertSplit      guifg=#505354 guibg=NONE    gui=NONE
hi NonText        guifg=#62605f guibg=NONE    gui=NONE
hi EndOfBuffer    guifg=#62605f guibg=NONE    gui=NONE
hi SpecialKey     guifg=#62605f guibg=NONE    gui=NONE
hi Conceal        guifg=#737174 guibg=NONE    gui=NONE
hi Directory      guifg=#f4fd22 guibg=NONE    gui=NONE
hi Title          guifg=#f4fd22 guibg=NONE    gui=bold

" Selection (matches spec override: black on yellow)

hi Visual         guifg=#000000 guibg=#fcef0c gui=NONE

hi VisualNOS      guifg=#000000 guibg=#fcef0c gui=NONE

" Search
hi Search         guifg=#1b1d1e guibg=#f4fd22 gui=NONE
hi IncSearch      guifg=#1b1d1e guibg=#fff78e gui=NONE
hi MatchParen     guifg=#f4fd22 guibg=#62605f gui=bold

" Status / tabs

hi StatusLine     guifg=#dadbd6 guibg=#505354 gui=NONE
hi StatusLineNC   guifg=#62605f guibg=#1b1d1e gui=NONE
hi TabLine        guifg=#c6c5bf guibg=#505354 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#505354 gui=NONE
hi TabLineSel     guifg=#1b1d1e guibg=#f4fd22 gui=bold

hi WildMenu       guifg=#1b1d1e guibg=#f4fd22 gui=NONE

" Popup menu
hi Pmenu          guifg=#dadbd6 guibg=#505354 gui=NONE
hi PmenuSel       guifg=#1b1d1e guibg=#fcef0c gui=NONE
hi PmenuSbar      guifg=NONE    guibg=#505354 gui=NONE
hi PmenuThumb     guifg=NONE    guibg=#c6c5bf gui=NONE

" Messages

hi ErrorMsg       guifg=#e6dc44 guibg=NONE    gui=bold

hi WarningMsg     guifg=#fff78e guibg=NONE    gui=NONE
hi ModeMsg        guifg=#c8be46 guibg=NONE    gui=NONE

hi MoreMsg        guifg=#c8be46 guibg=NONE    gui=NONE
hi Question       guifg=#f4fd22 guibg=NONE    gui=NONE

" Spelling
hi SpellBad       guifg=NONE    guibg=NONE    gui=undercurl guisp=#e6dc44

hi SpellCap       guifg=NONE    guibg=NONE    gui=undercurl guisp=#f4fd22
hi SpellLocal     guifg=NONE    guibg=NONE    gui=undercurl guisp=#62605f
hi SpellRare      guifg=NONE    guibg=NONE    gui=undercurl guisp=#747271


" --- Syntax ------------------------------------------------------------------
hi Comment        guifg=#62605f guibg=NONE    gui=italic
hi Constant       guifg=#fff78e guibg=NONE    gui=NONE

hi String         guifg=#c8be46 guibg=NONE    gui=NONE
hi Character      guifg=#e6dc44 guibg=NONE    gui=NONE
hi Number         guifg=#fff78e guibg=NONE    gui=NONE
hi Boolean        guifg=#fff78e guibg=NONE    gui=NONE
hi Float          guifg=#fff78e guibg=NONE    gui=NONE
hi Identifier     guifg=#e6dc44 guibg=NONE    gui=NONE
hi Function       guifg=#737174 guibg=NONE    gui=NONE
hi Statement      guifg=#e6dc44 guibg=NONE    gui=NONE

hi Conditional    guifg=#747271 guibg=NONE    gui=NONE
hi Repeat         guifg=#f4fd22 guibg=NONE    gui=NONE
hi Label          guifg=#f4fd22 guibg=NONE    gui=NONE
hi Operator       guifg=#dadbd6 guibg=NONE    gui=NONE
hi Keyword        guifg=#747271 guibg=NONE    gui=NONE
hi Exception      guifg=#e6dc44 guibg=NONE    gui=NONE
hi PreProc        guifg=#f4fd22 guibg=NONE    gui=NONE
hi Include        guifg=#737174 guibg=NONE    gui=NONE
hi Define         guifg=#747271 guibg=NONE    gui=NONE
hi Macro          guifg=#e6dc44 guibg=NONE    gui=NONE
hi PreCondit      guifg=#f4fd22 guibg=NONE    gui=NONE
hi Type           guifg=#f4fd22 guibg=NONE    gui=NONE
hi StorageClass   guifg=#f4fd22 guibg=NONE    gui=NONE
hi Structure      guifg=#747271 guibg=NONE    gui=NONE
hi Typedef        guifg=#f4fd22 guibg=NONE    gui=NONE

hi Special        guifg=#62605f guibg=NONE    gui=NONE
hi SpecialChar    guifg=#feed6c guibg=NONE    gui=NONE
hi Tag            guifg=#f4fd22 guibg=NONE    gui=NONE
hi Delimiter      guifg=#feed6c guibg=NONE    gui=NONE
hi SpecialComment guifg=#62605f guibg=NONE    gui=bold
hi Debug          guifg=#e6dc44 guibg=NONE    gui=NONE

hi Underlined     guifg=#e6dc44 guibg=NONE    gui=underline
hi Error          guifg=#1b1d1e guibg=#e6dc44 gui=NONE
hi Todo           guifg=#1b1d1e guibg=#f4fd22 gui=bold
hi Bold           gui=bold
hi Italic         gui=italic

" --- Diff / git --------------------------------------------------------------
hi DiffAdd        guifg=#c8be46 guibg=#505354 gui=NONE
hi DiffChange     guifg=#c6c5bf guibg=#505354 gui=NONE
hi DiffDelete     guifg=#e6dc44 guibg=#505354 gui=NONE

hi DiffText       guifg=#1b1d1e guibg=#f4fd22 gui=NONE
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange

hi GitGutterAdd    guifg=#c8be46 guibg=NONE
hi GitGutterChange guifg=#f4fd22 guibg=NONE
hi GitGutterDelete guifg=#e6dc44 guibg=NONE
hi! link GitSignsAdd    GitGutterAdd

hi! link GitSignsChange GitGutterChange
hi! link GitSignsDelete GitGutterDelete

" --- Neovim only -------------------------------------------------------------
if has('nvim')
  hi NormalFloat  guifg=#dadbd6 guibg=#1b1d1e
  hi FloatBorder  guifg=#62605f guibg=#1b1d1e
  hi! link WinSeparator VertSplit
  hi! link CurSearch    IncSearch

  hi DiagnosticError guifg=#e6dc44
  hi DiagnosticWarn  guifg=#fff78e
  hi DiagnosticInfo  guifg=#737174
  hi DiagnosticHint  guifg=#62605f
  hi DiagnosticUnderlineError gui=undercurl guisp=#e6dc44
  hi DiagnosticUnderlineWarn  gui=undercurl guisp=#fff78e
  hi DiagnosticUnderlineInfo  gui=undercurl guisp=#737174
  hi DiagnosticUnderlineHint  gui=undercurl guisp=#62605f

  hi LspReferenceText  guibg=#505354
  hi LspReferenceRead  guibg=#505354
  hi LspReferenceWrite guibg=#505354


  " Treesitter: keep plain variables at foreground color
  hi @variable guifg=#dadbd6

  let g:terminal_color_0  = '#1b1d1e'
  let g:terminal_color_1  = '#e6dc44'
  let g:terminal_color_2  = '#c8be46'
  let g:terminal_color_3  = '#f4fd22'
  let g:terminal_color_4  = '#737174'
  let g:terminal_color_5  = '#747271'
  let g:terminal_color_6  = '#62605f'
  let g:terminal_color_7  = '#dadbd6'
  let g:terminal_color_8  = '#62605f'
  let g:terminal_color_9  = '#e6dc44'
  let g:terminal_color_10 = '#c8be46'
  let g:terminal_color_11 = '#f4fd22'
  let g:terminal_color_12 = '#737174'
  let g:terminal_color_13 = '#747271'
  let g:terminal_color_14 = '#62605f'
  let g:terminal_color_15 = '#c6c5bf'
else
  let g:terminal_ansi_colors = ['#1b1d1e', '#e6dc44', '#c8be46', '#f4fd22', '#737174', '#747271', '#62605f', '#dadbd6', '#62605f', '#e6dc44', '#c8be46', '#f4fd22', '#737174', '#747271', '#62605f', '#c6c5bf']
endif
