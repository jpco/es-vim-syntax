" Vim filetype plugin file
" Language:     es 0.10.0
" Last Change:  today
" Author:       Jack Conger (mail@jpco.io)
" Repository:   https://github.com/jpco/es-vim-syntax

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal matchpairs=(:),{:}
setlocal comments=:#
setlocal commentstring=#%s
setlocal formatoptions+=croqlj formatoptions-=t

" vim: nowrap sw=2 sts=2 ts=8 noet:
