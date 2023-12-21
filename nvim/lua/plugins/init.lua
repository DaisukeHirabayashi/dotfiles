return {
  'jiangmiao/auto-pairs',
  'tpope/vim-endwise',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'simeji/winresizer',
  {
    'cocopon/iceberg.vim',
    config = function()
      -- icebergのための設定
      vim.opt.background = 'dark'

      -- VimEnterイベントでcolorscheme icebergを設定
      vim.api.nvim_create_autocmd("VimEnter", {
        pattern = '*',
        command = 'colorscheme iceberg',
        nested = true
      })
    end
  },
  {
    -- Nerd Tree
    'preservim/nerdtree',
    config = function()
      -- StdinReadPre イベントが発生したら s:std_in をセット
      vim.api.nvim_create_autocmd("StdinReadPre", {
        pattern = "*",
        callback = function()
          vim.g.std_in = 1
        end,
      })

      -- VimEnter イベントが発生したら NERDTree を開く
      vim.api.nvim_create_autocmd("VimEnter", {
        pattern = "*",
        callback = function()
          if vim.fn.argc() == 0 and vim.g.std_in == nil then
            vim.cmd("NERDTree")
          end
        end,
      })

      -- NERDTree の設定
      vim.g.NERDTreeShowHidden = 1
    end
  },
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
    'neoclide/coc.nvim',
    config = function()
      vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })
      vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
      vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
      vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { silent = true })
    end
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<CR><C-w>T', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit -v<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>gf', ':Ggrep<space>', { noremap = true, silent = true })
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

