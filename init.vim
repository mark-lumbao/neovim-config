" ---------------------------------------------------------------------------------
" -   __  __       _        __     ___              ____             __ _         -
" -  |  \/  | __ _(_)_ __   \ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _   -
" -  | |\/| |/ _` | | '_ \   \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |  -
" -  | |  | | (_| | | | | |   \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |  -
" -  |_|  |_|\__,_|_|_| |_|    \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |  -
" -                                                                       |___/   -
" ---------------------------------------------------------------------------------

let g:ale_disable_lsp = 1

call plug#begin('~/.vim/plugged')

Plug 'L3MON4D3/LuaSnip'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'junegunn/gv.vim'
Plug 'kdheepak/tabline.nvim'
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox

source $HOME/.config/nvim/config/init.vim

" Lua modules

lua require('init')

" This only works here and I don't know why
" ¯\_(ツ)_/¯
hi QuickFixLine guibg='#b8bb26' guifg='#282828'
