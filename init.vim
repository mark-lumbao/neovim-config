call plug#begin('~/.vim/plugged')

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'ap/vim-css-color'
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
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox "Theming

source $HOME/.config/nvim/config/init.vim " Custom configs
