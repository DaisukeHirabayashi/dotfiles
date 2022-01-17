call plug#begin('~/.config/nvim/plugged')

  Plug 'cocopon/iceberg.vim'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-commentary'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-endwise'

call plug#end()
