-- Netrw settings
-- Reference :h netrw-browser-settings
vim.cmd([[
  filetype plugin indent on

  set updatetime=100

  let g:netrw_banner=0
  let g:netrw_keepdir=0

  autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set nu rnu | endif
]])
