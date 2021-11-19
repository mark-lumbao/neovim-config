" Apply html highlights to .ejs files
au BufNewFile,BufRead *.ejs set filetype=html

" Add @ to iskeyword option.
autocmd FileType scss setl iskeyword+=@-@

" Function to clear quickfixlist items
function ClearQuickfixList()
  call setqflist([])
endfunction
command! ClearQuickfixList call ClearQuickfixList()
