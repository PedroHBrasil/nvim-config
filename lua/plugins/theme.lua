return {
  -- Theme
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = true,
    opts = ...,
    init = function()
      vim.o.background = 'dark'
      vim.cmd [[colorscheme gruvbox]]
    end,
  },

  -- Rainbow delimiters
  { 'HiPhish/rainbow-delimiters.nvim' },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },

  -- Indent line
  { 'nvimdev/indentmini.nvim', opts = { only_current = true } },

  -- Better folding aesthetics
  {
    'anuvyklack/pretty-fold.nvim',
    config = {
      sections = {
        left = {
          'content',
        },
        right = {
          ' ',
          'number_of_folded_lines',
          ': ',
          'percentage',
          ' ',
          function(config)
            return config.fill_char:rep(3)
          end,
        },
      },
      fill_char = '•',

      remove_fold_markers = true,

      -- Keep the indentation of the content of the fold string.
      keep_indentation = true,

      -- Possible values:
      -- "delete" : Delete all comment signs from the fold string.
      -- "spaces" : Replace all comment signs with equal number of spaces.
      -- false    : Do nothing with comment signs.
      process_comment_signs = 'spaces',

      -- Comment signs additional to the value of `&commentstring` option.
      comment_signs = {},

      -- List of patterns that will be removed from content foldtext section.
      stop_words = {
        '@brief%s*', -- (for C++) Remove '@brief' and all spaces after.
      },

      add_close_pattern = true, -- true, 'last_line' or false

      matchup_patterns = {
        { '{', '}' },
        { '%(', ')' }, -- % to escape lua pattern char
        { '%[', ']' }, -- % to escape lua pattern char
      },

      ft_ignore = { 'neorg' },
    },
  },
}
