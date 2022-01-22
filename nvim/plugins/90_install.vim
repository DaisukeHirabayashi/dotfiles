call plug#begin('~/.config/nvim/plugged')

  " テーマのプラグイン
  Plug 'cocopon/iceberg.vim'

  " ファイルツリーのプラグイン 
  Plug 'preservim/nerdtree'

  " fzfのプラグイン
  Plug 'junegunn/fzf'

  " gitのコマンドが使えるようにする
  Plug 'tpope/vim-fugitive'

  " ファイル内にgitの差分を色付けて表示
  Plug 'airblade/vim-gitgutter'

  " gccでコメントアウト
  Plug 'tpope/vim-commentary'

  " lsp(lungadge server protocol) 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " goのプラグイン
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }

  " 鉤括弧や""などの補完
  Plug 'jiangmiao/auto-pairs'

  " 閉じタグ(if-end)等の補完
  Plug 'tpope/vim-endwise'

  " windowサイズ用(ctrl+E)のプラグイン
  Plug 'simeji/winresizer'

  " bufferの表示
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'akinsho/bufferline.nvim'
  
  " buffer用のplugin(さよならー)
  Plug 'mhinz/vim-sayonara'
call plug#end()
