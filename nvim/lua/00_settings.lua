-- コマンドの際にはzshを使う
vim.o.shell = "/bin/zsh"

-- Indentの幅
vim.o.shiftwidth = 2

-- タブに変化されるサイズ
vim.o.tabstop = 2

-- タブの入力の際にスペース
vim.o.expandtab = true

-- ワードラッピングなし
vim.o.textwidth = 0

-- 自動インデント
vim.o.autoindent = true

-- Searchのハイライト
vim.o.hlsearch = true

-- クリップボードへの登録
vim.o.clipboard = "unnamed"

-- Syntaxをenable
vim.cmd("syntax on")

-- 行数の表示
vim.wo.number = true

-- mouseの有効化
vim.o.mouse = "a"

-- grepをした際にファイルの一覧表示
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
    pattern = "*grep*",
    command = "cwindow"
})

-- 検索時に大文字小文字を区別しない
vim.opt.ignorecase = true
vim.opt.smartcase = true
