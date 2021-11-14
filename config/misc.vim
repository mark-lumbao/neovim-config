" Apply html highlights to .ejs files
au BufNewFile,BufRead *.ejs set filetype=html

autocmd FileType scss setl iskeyword+=@-@ " Add @ to iskeyword option.
