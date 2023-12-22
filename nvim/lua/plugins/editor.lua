return {
  {
    'neoclide/coc.nvim',
    config = function()
      vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })
      vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
      vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
      vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { silent = true })
    end
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup{}

      -- キーマッピング
      vim.api.nvim_set_keymap('n', '<C-N>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<C-P>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    end
  },
  {
    'mhinz/vim-sayonara',
    config = function()
      vim.keymap.set('n', '<leader>q', ':Sayonara<CR>', { noremap = true, silent = true })
    end
  },
}
