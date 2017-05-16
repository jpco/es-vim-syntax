# es vim syntax

Syntax coloring file for es in vim.

This is still early in progress.  The goal here is to be as correct as possible for all syntax rules, so fixes to a rule will happen more quickly than new rules added.

Copy or symlink to `~/.vim/syntax/` and write a corresponding file:

```
~/.vim/ftdetect/es.vim:

au BufRead,BufNewFIle *.es,.esrc setf es
```

as well as:

```
~/.vim/scripts.vim

if did_filetype()
    finish
endif
if getline(1) =~ '^#!.*\<es\>'
    setf es
endif
```

(if you already have scripts.vim, just append the `if getline(1) ... endif` bit to it)
