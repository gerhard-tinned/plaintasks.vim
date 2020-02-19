" Vim syntax file
" Language: PlainTasks
" Maintainer: github.com/gerhard-tinned
"             based on elentok/plaintasks.vim 
" Filenames: *.TODO
"
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "pt"

hi Section  guifg=#df0087 guibg=NONE    guisp=NONE gui=bold ctermfg=162 ctermbg=NONE cterm=bold
hi Green    guifg=#00ff00 guibg=NONE    guisp=NONE gui=bold ctermfg=10  ctermbg=NONE cterm=bold
hi Red      guifg=#ff0000 guibg=NONE    guisp=NONE gui=bold ctermfg=9   ctermbg=NONE cterm=bold
hi Grey     guifg=#808080 guibg=NONE    guisp=NONE gui=bold ctermfg=8   ctermbg=NONE cterm=bold
hi PHigh    guifg=#000000 guibg=#df5f00 guisp=NONE gui=bold ctermfg=16  ctermbg=166  cterm=bold
hi Tag      guifg=#005fff guibg=NONE    guisp=NONE gui=bold ctermfg=32  ctermbg=NONE cterm=bold
hi Inactive guifg=#808080 guibg=NONE    guisp=NONE gui=bold ctermfg=8   ctermbg=NONE cterm=bold
hi Line     guifg=#808080 guibg=NONE    guisp=NONE gui=bold ctermfg=8   ctermbg=NONE cterm=bold

hi def link ptSection      Section
hi def link ptCompleteTask Green
hi def link ptCancelTask   Red
hi def link ptContext      Grey
hi def link ptPrioHigh     PHigh
hi def link ptTagDate      Tag
hi def link ptTag          Tag
hi def link ptInactiveTask Inactive
hi def link ptLine         Line


syn match ptSection      "^.*: *$"
syn match ptOpenTask     "^ *\[ \].*"      contains=ptTagDate,ptTag
syn match ptCompleteTask "^ *\[x\]"
syn match ptCancelTask   "^ *\[-\]" 
syn match ptTagDate      "@[^ ]* *(.*)"
syn match ptTag          "@[^ ]*"          contains=ptPrioHigh
syn match ptPrioHigh     "@high"
syn match ptInactiveTask "^ *\[[x-]\] .*$" contains=ptCompleteTask,ptCancelTask
syn match ptLine         "^----*"
