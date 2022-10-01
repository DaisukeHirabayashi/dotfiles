" icebergのための設定
set background=dark
" colorscheme 設定は source 後に行う必要があるので VimEnter で行う。
" 但し Colorscheme イベントの発生が抑制されないよう nented を付ける。
autocmd VimEnter * ++nested colorscheme iceberg

" Nerd Treeのための設定
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
let NERDTreeShowHidden=1

" gitgutterのための設定
" gitの差分をハイライトでわかりやすくする
let g:gitgutter_highlight_lines = 1

" fzf用のキーマッピング
nnoremap <leader>fp :FZFFileList<CR>
command! FZFFileList call fzf#run(fzf#wrap({
            \ 'source': 'find . -type d -name .git -prune -o ! -name .DS_Store',
            \ 'down': '40%'}))

nnoremap <leader>p :FZF<CR>

" coc.nvimのための設定
" 定義元へのジャンプ設定等
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" tab補完用の設定
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ale(静的解析ツール)のための設定
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }

" lualineのための設定
lua << EOF
  local options = {
    theme = 'codedark'
  }
  require('lualine').setup {
    options = options,
  }
EOF

" vim-fugitiveのための設定(git)
nnoremap <silent> <leader>gs :Git<CR><C-w>T
nnoremap <silent> <leader>gc :Git commit -v<CR>
nnoremap <silent> <leader>gf :Ggrep<space>

" bufferlineのための設定
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
nnoremap <silent> <C-N> :BufferLineCycleNext<CR>
nnoremap <silent> <C-P> :BufferLineCyclePrev<CR>

" sayonara用のキーマッピング
nnoremap <silent> <leader>q :Sayonara<CR>
