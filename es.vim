" Vim syntax file
" Language:     es
" Maintainer:   Jack Conger <mail@jpco.io>
" Last Change:  right now

if exists("b:current_syntax")
  finish
endif

" TODO: files that don't end in .es but have the appropriate #! should be
" colored correctly!

" word chars:     $ * - [0-9] [A-Z] _ [a-z]
" non-word chars: ' ' \t \n # ; & | ^ $ = ` ' ! { } ( ) < > \

" This must be before esVar
syn match   esComment "\v#.*$" contains=esTodo
syn keyword esTodo TODO FIXME XXX NOTE contained

" TODO do this correctly:
"   ; echo $($a(1))
syn match esVar "\$\(\^\|&\|#\)\?\$*\(\*\|[0-9a-zA-Z%*_-]\+\)" nextgroup=esSubscript,esDegen
syn match esVar "\$\(\^\|&\|#\)\?\$*(\(\*\|[0-9a-zA-Z%*_-]\+\))" nextgroup=esSubscript,esDegen
" syn match esDegen "(.\{-})" contained
syn match esSubscript "(\(\d\+\|\.\.\.\| \+\)*)" contains=esNumber,esVar contained

syn region  esQuote start="'" end="'" contains=esQuoteChar
syn match   esQuoteChar "''" contained
syn match   esNumber "\<\d\+\>"

syn match esOperator "[!&;|\^`]"

" block folding
syn region esFoldBraces start="{" end="}" transparent fold

" many useful functions defined in initial.es
syn keyword esDefaultFn access break catch echo exec forever fork if newpgrp result throw umask wait eval true false break exit return limit time var whatis while cd vars

" defined as keywords or binders in parse.y
syn keyword esKeyword local let for
syn keyword esKeyword fn                    skipwhite nextgroup=esFnName
" TODO fix 'fn-foo' highlighting
syn match   esFnName  "[0-9a-zA-Z%*_-]\+"   contained

syn match esAssign "[0-9a-zA-Z%*_-]\+\s*=" contains=esIdent
syn match esAssign "([0-9a-zA-Z%*_ -]\+)\s*=" contains=esMultident
syn match esMultident "(\([0-9a-zA-Z%*_-]\+\|\s\)\+)" contained contains=esIdent
syn match esIdent "[0-9a-zA-Z%*_-]\+" contained

" TODO redirections
" TODO operators
" TODO backslash escape
" TODO fn arguments, also macro defs
" syn match esEscape "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
 
let b:current_syntax = "es"

" main links
hi def link esOperator      Operator
hi def link esVar           PreProc
" hi def link esSubscript     Repeat
hi def link esDegen         Error
hi def link esKeyword       Keyword
hi def link esIdent         Identifier
hi def link esFnName        Function
hi def link esDefaultFn     Keyword
hi def link esTodo          Todo
hi def link esComment       Comment
hi def link esQuote         String
hi def link esNumber        Number
hi def link esQuoteChar     Special
" hi def link esEscape SpecialChar
