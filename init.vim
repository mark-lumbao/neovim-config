" ---------------------------------------------------------------------------------
" -   __  __       _        __     ___              ____             __ _         -
" -  |  \/  | __ _(_)_ __   \ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _   -
" -  | |\/| |/ _` | | '_ \   \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |  -
" -  | |  | | (_| | | | | |   \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |  -
" -  |_|  |_|\__,_|_|_| |_|    \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |  -
" -                                                                       |___/   -
" ---------------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'L3MON4D3/LuaSnip'
Plug 'Yggdroot/indentLine'
Plug 'goolord/alpha-nvim'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'junegunn/gv.vim'
Plug 'kdheepak/tabline.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox

lua require('init')
