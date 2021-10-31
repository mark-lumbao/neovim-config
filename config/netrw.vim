" References
" https://blog.stevenocchipinti.com/2016/12/28/using-netrw-instead-of-nerdtree-for-vim/
" https://shapeshed.com/vim-netrw/

" Adds number lines to default vim file browser
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Hides the banner
let g:netrw_banner = 0

" Set list style to tree
let g:netrw_liststyle = 3

" Keybinds
" Open Vertical file browser
nnoremap <leader>v :Vex<CR>
" Open Full file browser
nnoremap <leader>e :Ex<CR>
