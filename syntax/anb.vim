" Vim syntax file
" Language: AnB
" Maintainer: Salvador Jacobi
" Latest Revision: 18 September 2014

if exists("b:current_synax")
	finish
endif

syntax match anbComment /\v#.*$/
syntax keyword anbSection Protocol Knowledge Actions Goals
syntax region anbTypesSection matchgroup=anbSection start=/\v<Types>/ end=/\v(<Knowledge>)@=/ contains=ALLBUT,anbSpecial
syntax match anbType /\v(Agent|Number|SeqNumber|PublicKey|Symmetric_key|Function|Untyped)(\s+([a-zA-Z][a-zA-Z0-9_]*|[0-9]+))@=/ containedin=anbTypesSection contained
syntax keyword anbKeyword where authenticates on weakly secret secret between
syntax keyword anbSpecial inv exp xor
syntax match anbOperator /\v-\>/
syntax match anbOperator /\v\*-\>/
syntax match anbOperator /\v-\>\*/
syntax match anbOperator /\v\*-\>\*/
syntax match anbOperator /\v\*-\>\>/
syntax match anbOperator /\v\*-\>\>\*/
syntax match anbOperator /\v\%/
syntax match anbOperator /\v\!/
syntax match anbOperator /\v\!\=/
syntax match anbOperator /\v\./
syntax match anbNumber /\v<[0-9]+/

highlight link anbComment Comment
highlight link anbSection Function
highlight link anbType Type
highlight link anbKeyword Keyword
highlight link anbSpecial Special
highlight link anbOperator Operator
highlight link anbNumber Number

let b:current_syntax = "anb"
