" Make sure you install the following in your system:
"
" - Haskell: hfmt, hlint
" - JSON   : jsonlint, fixjson
" - JS, TS : eslint, prettier
" - MD     : alex, prettier

let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'
let g:ale_sign_info = '--'

" Fix for ale highlights
let g:gruvbox_guisp_fallback = 'fg'

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

let g:ale_linter_aliases = {
\   'svelte': ['javascript']
\}
let g:ale_linters = {
\   'haskell': ['hlint', 'hfmt'],
\   'javascript': ['eslint', 'tsserver'],
\   'json': ['jsonlint'],
\   'markdown': ['alex'],
\   'svelte': ['eslint'],
\   'typescript': ['eslint', 'tsserver'],
\   'typescriptreact': ['eslint', 'tsserver'],
\   'javascriptreact': ['eslint', 'tsserver'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'haskell': ['hfmt'],
\   'javascript': ['prettier', 'eslint'],
\   'json': ['fixjson', 'prettier'],
\   'markdown': ['prettier'],
\   'scss': ['prettier'],
\   'svelte': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\}
