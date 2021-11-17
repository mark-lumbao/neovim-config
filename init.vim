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

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-css-color'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/gv.vim'
Plug 'kevinoid/vim-jsonc'
Plug 'leafOfTree/vim-svelte-plugin',
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
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
