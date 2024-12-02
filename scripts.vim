if did_filetype()
	finish
endif

" if you already have a scripts.vim, just add the following to it:
if getline(1) =~ '^#!.*\<es\>'
	setfiletype es
endif
