local set = vim.o
local let = vim.g
local cmd = vim.cmd

cmd([[
  syntax on
  colorscheme gruvbox
  filetype plugin indent on
  let g:nvim_tree_show_icons = {
      \ 'git': 1,
      \ 'folders': 1,
      \ 'files': 1,
      \ 'folder_arrows': 0,
      \ }
]])

let.mapleader = " "
set.backup = false
set.clipboard = "unnamedplus"
set.cp = false
set.encoding = "utf-8"
set.errorbells = false
set.expandtab = true
set.incsearch = true
set.nu = true
set.rnu = true
set.shiftwidth = 2
set.smartcase = true
set.smartindent = true
set.softtabstop = 2
set.swapfile = false
set.tabstop = 2
set.termguicolors = true
set.autoindent = true
set.undofile = true
set.wrap = false
