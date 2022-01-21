set shell=/bin/zsh " コマンドの際にはzshを使う
set shiftwidth=2 " Indentの幅
set tabstop=2 " タブに変化されるサイズ
set expandtab " タブの入力の際にスペース
set textwidth=0 " ワードラッピングなし
set autoindent " 自動インデント
set hlsearch " Searchのハイライト
set clipboard=unnamed " クリップボードへの登録
syntax on " Syntaxをenable
set number

autocmd QuickFixCmdPost *grep* cwindow " grepをした際にファイルの一覧表示
