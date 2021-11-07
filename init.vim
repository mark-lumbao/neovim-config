" ---------------------------------------------------------------------------------
" -   __  __       _        __     ___              ____             __ _         -
" -  |  \/  | __ _(_)_ __   \ \   / (_)_ __ ___    / ___|___  _ __  / _(_) __ _   -
" -  | |\/| |/ _` | | '_ \   \ \ / /| | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |  -
" -  | |  | | (_| | | | | |   \ V / | | | | | | | | |__| (_) | | | |  _| | (_| |  -
" -  |_|  |_|\__,_|_|_| |_|    \_/  |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |  -
" -                                                                       |___/   -
" ---------------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-css-color'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/gv.vim'
Plug 'kevinoid/vim-jsonc'
Plug 'leafOfTree/vim-svelte-plugin',
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox

source $HOME/.config/nvim/config/init.vim
