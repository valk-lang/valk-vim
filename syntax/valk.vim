
" Strings
syntax region valkString start=+"+ skip=+\\\\\|\\"+ end=+"+
highlight default link valkString String

" Operators
syntax match valkOperator display "\V\[-+/*=^&?|!><%~\\.:]"
highlight link valkOperator Operator

" Keywords
syntax keyword valkKeyword true false null if else while each fn let return continue break throw cothrow global shared use static class enum extend
highlight link valkKeyword Keyword
syntax match valkAtWord "@[a-zA-Z_][a-zA-Z0-9_]*"
highlight link valkAtWord Keyword

" Brackets
syntax match valkBracket "[(){}[\]]"
highlight link valkBracket Delimiter

" Functions
syntax keyword valkBuiltinFunctions print println
highlight default link valkBuiltinFunctions Function

syntax match valkFunction "[a-zA-Z_][a-zA-Z0-9_]*\\("
highlight link valkFunction Function

" Numbers
syntax match valkDecimal /\<\d\+\(\.\d\+\)\?/
highlight link valkDecimal Number

" Comments
syntax region valkComment start="//" end="$"
highlight default link valkComment Comment
