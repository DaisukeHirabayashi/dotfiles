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
    dependencies = 'SmiteshP/nvim-navic',
    config = function()
      local navic = require("nvim-navic")
      local colors = {
        black = '#383a42',
        white = '#f3f3f3',
        blue = '#32b9ff',
        orange = '#ff7832',
        red = '#ca1243',
        green = '#8ec07c',
        yellow = '#ecff32',
        purple = '#c792ea',
      }
      local theme = {
        normal = {
          a = { fg = colors.black, bg = colors.blue },
          b = { fg = colors.black, bg = colors.orange },
          c = { fg = colors.white, bg = colors.black },
          x = { fg = colors.white, bg = colors.black },
          y = { fg = colors.white, bg = colors.red },
          z = { fg = colors.black, bg = colors.green },
        },
        insert = { z = { fg = colors.black, bg = colors.purple } },
        visual = { z = { fg = colors.black, bg = colors.yellow } },
        replace = { z = { fg = colors.black, bg = colors.green } },
      }
      local options = {
        theme = theme,
        component_separators = { left = ' ', right = ' ' },
        section_separators = { left = ' ', right = ' ' },
        globalstatus = true
      }
      local sections = {
        lualine_a = { { 'branch', colored = false } },
        lualine_b = { { 'diff', colored = false }, { 'diagnostics', colored = false, always_visible = true },
          { 'g:coc_status', colored = false, always_visible = true } },
        lualine_c = { { 'filename', path = 1 },
          { navic.get_location, cond = navic.is_available }
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'encoding', 'fileformat' },
        lualine_z = { 'mode' }
      }
      local inactive_sections = {
        lualine_c = { { 'filename', path = 1 } }
      }

      require('lualine').setup { options = options, sections = sections, inactive_sections = inactive_sections }
    end
  },
}

