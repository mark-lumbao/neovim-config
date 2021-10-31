" Enable Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

nnoremap <C-P> :Prettier<CR>
