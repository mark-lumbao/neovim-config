let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'
let g:ale_sign_info = '--'

" Fix for ale highlights
let g:gruvbox_guisp_fallback = 'fg'

let g:ale_linter_aliases = {
\   'svelte': ['javascript']
\}
let g:ale_linters = {
\   'svelte': ['eslint'],
\   'haskell': ['hlint', 'hdevtools', 'hfmt'],
\}
let g:ale_fixers = {
\   'svelte': ['eslint']
\}
