local set = vim.o
local let = vim.g
local cmd = vim.cmd

cmd = [[
  syntax on
  filetype plugin indent on
]]

let.mapleader     = " "
set.autoindent    = true
set.backup        = false
set.clipboard     = "unnamedplus"
set.cp            = false
set.encoding      = "utf-8"
set.errorbells    = false
set.expandtab     = true
set.incsearch     = true
set.nu            = true
set.rnu           = true
set.shiftwidth    = 2
set.smartcase     = true
set.smartindent   = true
set.softtabstop   = 2
set.swapfile      = false
set.tabstop       = 2
set.termguicolors = true
set.undofile      = true
set.undodir       = ".undodir"
set.wrap          = false
