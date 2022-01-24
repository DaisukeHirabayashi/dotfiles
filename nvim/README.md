# nvimのinstall
## 最低限のinstall
`make init`

## nvimの設定ファイルも含めたinstall
`make minmal`

## pliginも含めたinstall
`make full`

## pluginのinstall
vimないで以下を実行
```
:PlugInstall
```

## よく使うmapping
### Nerdtree
- m
  - a: 新規作成
  - m: リネーム
  - d: 削除
- s: 新規タブで開く

### vim-fugitive
- <leader>gs: Gitstatusに移動
  - P: 変更ごとにstageに上げる
  - (-): stageとunstageにする
  - X: 変更を取り消す
  - i: 変更のプレビュー
- <leader>gc: Gitcommit -v

### winresizer
- <C-E>: windowリサイズモード
