local vim = vim or {}

local set = vim.o
local setl = vim.opt_local
local let = vim.g
local cmd = vim.cmd

cmd([[
  syntax on
  colorscheme gruvbox
  filetype plugin indent on
]])

--[[
 Autofix with Eslint using nvm-lsp is faster
 rather than using NullLs
 https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint
 Below replaces autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
]]
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" },
	callback = function()
		vim.cmd("EslintFixAll")
	end,
})

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
