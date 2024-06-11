" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.sage		setfiletype mine
  au! BufRead,BufNewFile *.python	setfiletype drawing
augroup END
