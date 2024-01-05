return {
  'jiangmiao/auto-pairs',
  'tpope/vim-endwise',
  'tpope/vim-commentary',
  'simeji/winresizer',
  {
    'junegunn/fzf',
    config = function()
      -- fzf用のキーマッピング
      vim.api.nvim_set_keymap('n', '<leader>fp', ':FZFFileList<CR>', { noremap = true, silent = true })

      vim.api.nvim_create_user_command('FZFFileList', function()
        require('fzf').run(require('fzf').wrap({
          source = 'find . -type d -name .git -prune -o ! -name .DS_Store',
          down = '40%'
        }))
      end, {})
      vim.api.nvim_set_keymap('n', '<leader>p', ':FZF<CR>', { noremap = true, silent = true })
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      local options = {
        theme = 'codedark'
      }
      require('lualine').setup {
        options = options,
      }
    end
  },
}

