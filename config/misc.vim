" Apply html highlights to .ejs files
au BufNewFile,BufRead *.ejs set filetype=html

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

autocmd FileType scss setl iskeyword+=@-@ " Add @ to iskeyword option.

let g:ale_pattern_options = {
\   '.*\.json$': {'ale_enabled': 0},
\}
