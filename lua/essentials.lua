local vim = vim or {}

local set = vim.o
local setl = vim.opt_local
local setenv = vim.fn.setenv
local let = vim.g
local cmd = vim.cmd

cmd([[
  syntax on
  colorscheme habamax
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

let.mapleader = " "
set.autoindent = true
set.backup = false
set.clipboard = vim.o.clipboard .. "unnamedplus"
set.cp = false
set.encoding = "utf-8"
set.errorbells = false
set.expandtab = true
set.incsearch = true
set.nu = true
set.path = vim.o.path .. "src/**"
set.rnu = true
set.shiftwidth = 2
set.smartcase = true
set.smartindent = true
set.softtabstop = 2
set.swapfile = false
set.tabstop = 2
set.termguicolors = true
set.undofile = true
set.wrap = false
setenv("AUTO_FMT", 1)
