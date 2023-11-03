local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	"nvim-lua/plenary.nvim",
	-- neovim additives
	"nvim-lualine/lualine.nvim",
	"tpope/vim-repeat",
	"tpope/vim-surround",
	-- dev exp enhancer
	"jose-elias-alvarez/null-ls.nvim",
	"neovim/nvim-lspconfig",
	"numToStr/Comment.nvim",
	"nvim-telescope/telescope.nvim",
	{ "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
	-- snippets and completions
	"L3MON4D3/LuaSnip",
	"folke/neodev.nvim",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"hrsh7th/nvim-cmp",
	"mattn/emmet-vim",
	"saadparwaiz1/cmp_luasnip",
	-- git
	"lewis6991/gitsigns.nvim",
	"tpope/vim-fugitive",
})
