" Make sure you install the following in your system:
"
" - Haskell: hfmt, hlint
" - JSON   : jsonlint, fixjson
" - JS, TS : eslint, prettier
" - MD     : alex, prettier

let g:ale_disable_lsp = 1

let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'
let g:ale_sign_info = '--'

" Fix for ale highlights
let g:gruvbox_guisp_fallback = 'fg'

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

let g:ale_linter_aliases = {
\   'javascriptreact': ['javascript'],
\   'svelte': ['javascript'],
\   'typescript': ['javascript'],
\   'typescriptreact': ['javascript'],
\}

let g:ale_linters = {
\   'elm': ['elm_ls', 'make'],
\   'haskell': ['hlint', 'hfmt'],
\   'javascript': ['eslint', 'tsserver'],
\   'json': ['jsonlint'],
\   'markdown': ['alex'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'elm': ['elm-format'],
\   'haskell': ['hfmt'],
\   'javascript': ['prettier', 'eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\   'json': ['fixjson', 'prettier'],
\   'markdown': ['prettier'],
\   'scss': ['prettier'],
\   'svelte': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\}

let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1
