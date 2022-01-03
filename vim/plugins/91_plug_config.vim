" icebergのための設定
set background=dark
" colorscheme 設定は source 後に行う必要があるので VimEnter で行う。
" 但し Colorscheme イベントの発生が抑制されないよう nented を付ける。
autocmd VimEnter * ++nested colorscheme iceberg
