vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
	-- plugin related
	use("nvim-lua/plenary.nvim")
	use("wbthomason/packer.nvim")
	-- neovim additives
	use("Yggdroot/indentLine")
	use("nvim-lualine/lualine.nvim")
	use("tpope/vim-repeat")
	use("tpope/vim-surround")
	-- dev exp enhancer
	use("jose-elias-alvarez/null-ls.nvim")
	use("neovim/nvim-lspconfig")
	use("numToStr/Comment.nvim")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- snippets and completions
	use("L3MON4D3/LuaSnip")
	use("folke/neodev.nvim")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")
	use("hrsh7th/nvim-cmp")
	use("mattn/emmet-vim")
	use("saadparwaiz1/cmp_luasnip")
	-- git
	use("lewis6991/gitsigns.nvim")
	use("tpope/vim-fugitive")
end)
