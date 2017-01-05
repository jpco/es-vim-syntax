# es vim syntax

Syntax coloring file for es in vim.

This is still early in progress.  The goal here is to be as correct as possible for all syntax rules, so fixes to a rule will happen more quickly than new rules added.

Install to `~/.vim/syntax/` and write a corresponding ftdetect rule.  Mine is:

```
au BufRead,BufNewFIle *es   set filetype=es
au BufRead,BufNewFIle .esrc set filetype=es
```
