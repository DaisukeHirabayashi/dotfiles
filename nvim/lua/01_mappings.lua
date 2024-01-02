-- リーダーキーの設定
vim.g.mapleader = " "

-- Spaceキーを無効化
vim.keymap.set('n', '<Space>', '<Nop>')

-- ウィンドウ移動
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- command + s的な
vim.keymap.set('n', '<Leader>w', ':w<CR>')

-- escキーの変更
vim.keymap.set('i', 'jk', '<ESC>')

-- Esc2回押しでハイライト削除
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR>')

