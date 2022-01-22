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

" fzf用のキーマッピング
nnoremap <silent> <leader>f :FZF<CR>

" coc.nvimのための設定
" 定義元へのジャンプ設定等
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" lualineのための設定
lua << EOF
  local options = {
    theme = 'codedark'
  }
  require('lualine').setup {
    options = options,
  }
EOF

" bufferlineのための設定
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
nnoremap <silent> <C-N> :BufferLineCycleNext<CR>
nnoremap <silent> <C-P> :BufferLineCyclePrev<CR>

" sayonara用のキーマッピング
nnoremap <silent> <leader>q :Sayonara<CR>
