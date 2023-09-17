cmd = vim.cmd

-- Netrw settings
-- Reference :h netrw-browser-settings
cmd([[
  filetype plugin indent on

  set updatetime=100

  let g:netrw_liststyle=3
  let g:netrw_banner=0
  let g:netrw_browse_split = 3

  autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set nu rnu | endif
]])
