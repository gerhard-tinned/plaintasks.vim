" Vim syntax file
" Language: PlainTasks
" Maintainer: github.com/gerhard-tinned
"             based on elentok/plaintasks.vim 
" Filenames: *.TODO
"
if exists("b:current_syntax")
  finish
endif

hi def link ptTask Function
hi def link ptCompleteTask Comment
hi def link ptCancelTask Comment
hi def link ptSection Statement
hi def link ptContext Question
hi def link ptLine Function

syn match ptSection "^.*: *$"
syn match ptTask "^ *\[ \].*" contains=ptContext
syn match ptCompleteTask "^ *\[x\].*" contains=ptContext
syn match ptCancelTask "^ *\[-\].*" contains=ptContext
syn match ptContext "@[^ ]*"
syn match ptLine "^----*"
