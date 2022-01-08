" icebergのための設定
set background=dark
" colorscheme 設定は source 後に行う必要があるので VimEnter で行う。
" 但し Colorscheme イベントの発生が抑制されないよう nented を付ける。
autocmd VimEnter * ++nested colorscheme iceberg

" Nerd Treeのための設定
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" gitgutterのための設定
" gitの差分をハイライトでわかりやすくする
let g:gitgutter_highlight_lines = 1
