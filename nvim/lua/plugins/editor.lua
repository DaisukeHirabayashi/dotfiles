return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      vim.keymap.set('n', ',f', require('telescope.builtin').find_files)
      vim.keymap.set('n', ',p', require('telescope.builtin').git_files)
      vim.keymap.set('n', ',b', require('telescope.builtin').buffers)
      vim.keymap.set('n', ',F', require('telescope.builtin').live_grep)
      vim.keymap.set('n', '<leader>d', function() require('telescope.builtin').diagnostics { bufnr = 0 } end)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

      local actions = require "telescope.actions"
      require('telescope').setup {
        defaults = {
          sorting_strategy = "ascending",
          selection_caret = "> ",
          layout_config = { prompt_position = "top" },
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<Tab>"] = actions.move_selection_next,
              ["<S-Tab>"] = actions.move_selection_previous,
              ["<esc>"] = actions.close
            }
          }
        },
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = false, -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case"         -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          }
        }
      }

      require('telescope').load_extension('fzf')
      require("telescope").load_extension("ui-select")
    end
  },
  {
    'tpope/vim-fugitive',
    dependencies = { 'tpope/vim-rhubarb' },
    config = function()
      vim.api.nvim_command('command! -nargs=1 Browse silent execute \'!open\' shellescape(<q-args>,1)')
      vim.keymap.set('n', ',g', ':GBrowse<CR>') -- open github
      vim.keymap.set('v', ',g', ':GBrowse<CR>') -- open github
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require('gitsigns').setup {
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end, { expr = true })

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, { expr = true })

          -- Actions
          map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>')
          map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>')
          map('n', '<leader>hS', gs.stage_buffer)
          map('n', '<leader>hu', gs.undo_stage_hunk)
          map('n', '<leader>hR', gs.reset_buffer)
          map('n', '<leader>hp', gs.preview_hunk)
          map('n', '<leader>hb', function() gs.blame_line { full = true } end)
          map('n', '<leader>tb', gs.toggle_current_line_blame)
          map('n', '<leader>hd', gs.diffthis)
          map('n', '<leader>hD', function() gs.diffthis('~') end)
          map('n', '<leader>td', gs.toggle_deleted)

          -- Text object
          map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end
      }
    end
  },
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.keymap.set('n', '<leader>f',
        function()
          require("oil").open(vim.fn.getcwd())
        end)
      require("oil").setup(
        {
          view_options = {
            show_hidden = true,
            is_always_hidden = function(name, _)
              return name == ".git"
            end,
          },
        }
      )
    end
  },
  {
    'neoclide/coc.nvim',
    dependencies = {
      'fannheyward/telescope-coc.nvim',
    },
    config = function()
      require('plugin_configs/coc_settings')
    end
  },
  'github/copilot.vim',
  {
    'akinsho/bufferline.nvim',
    config = function()
      vim.opt.termguicolors = true

      require('bufferline').setup{
        options = {
          diagnostics = "coc",
          diagnostics_update_in_insert = false,
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end,
          separator_style = "thin",
        },
      }
      -- キーマッピング
      vim.api.nvim_set_keymap('n', '<C-N>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<C-P>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    end
  },
  {
    'mvllow/modes.nvim',
    event = 'InsertEnter',
    config = function()
      vim.opt.cursorline = true
      require('modes').setup({})
    end
  },
  {
    'petertriho/nvim-scrollbar',
    dependencies = 'kevinhwang91/nvim-hlslens',
    config = function()
      require("scrollbar").setup({})
      require("scrollbar.handlers.search").setup()
    end
  },
  {
    'kevinhwang91/nvim-hlslens',
    config = function()
      local opts = { noremap = true, silent = true }
      vim.api.nvim_set_keymap('n', 'n',
        [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
        opts)
      vim.api.nvim_set_keymap('n', 'N',
        [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
        opts)
      vim.api.nvim_set_keymap('n', '*',
        [[*<Cmd>lua require('hlslens').start()<CR>]],
        opts)
      vim.api.nvim_set_keymap('n', '#',
        [[#<Cmd>lua require('hlslens').start()<CR>]],
        opts)
      vim.api.nvim_set_keymap('n', 'g*',
        [[g*<Cmd>lua require('hlslens').start()<CR>]],
        opts)
      vim.api.nvim_set_keymap('n', 'g#',
        [[g#<Cmd>lua require('hlslens').start()<CR>]],
        opts)
    end
  },
  {
    'mhinz/vim-sayonara',
    config = function()
      vim.keymap.set('n', '<leader>q', ':Sayonara<CR>', { noremap = true, silent = true })
    end
  },
}
