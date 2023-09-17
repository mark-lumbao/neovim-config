local vim = vim or {}

local set = vim.o
local setl = vim.opt_local
local setenv = vim.fn.setenv
local let = vim.g
local cmd = vim.cmd

cmd([[
  syntax on
  colorscheme habamax
  filetype plugin indent on
]])

-- bypass default settings for markdowns only for the current buffer
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*.md" },
	callback = function()
		setl.sw = 2
		setl.ts = 2
		setl.sts = 2
	end,
})

-- Netrw settings
-- Reference :h netrw-browser-settings
cmd([[
set updatetime=100
let g:netrw_liststyle=3
let g:netrw_banner=0
autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set nu rnu | endif
]])

set.path = vim.o.path .. "src/**"

let.mapleader = " "
set.backup = false
set.clipboard = vim.o.clipboard .. "unnamedplus"
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
setenv("AUTO_FMT", 1)
