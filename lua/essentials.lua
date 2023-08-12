local vim = vim or {}

local set = vim.o
local let = vim.g
local cmd = vim.cmd

--[[
-- Autofix with Eslint using nvm-lsp is faster
-- rather than using NullLs
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint
]]
cmd([[
  syntax on
  colorscheme gruvbox
  filetype plugin indent on
  autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
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
