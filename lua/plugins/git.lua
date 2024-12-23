return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- Conflict solving
  { 'akinsho/git-conflict.nvim', version = '*', config = true },

  --Lazy Git
  {
    'kdheepak/lazygit.nvim',
    lazy = false,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('telescope').load_extension 'lazygit'
    end,
  },
  -- Git UI
  -- {
  --   'SuperBo/fugit2.nvim',
  --   opts = {
  --     width = 100,
  --     libgit2_path = '/nix/store/gi2n9v8n5n37rmzjvcp0r3b3a5w17qfs-libgit2-1.8.4-lib/lib/libgit2.so',
  --   },
  --   dependencies = {
  --     'MunifTanjim/nui.nvim',
  --     'nvim-tree/nvim-web-devicons',
  --     'nvim-lua/plenary.nvim',
  --     {
  --       'chrisgrieser/nvim-tinygit', -- optional: for Github PR view
  --       dependencies = { 'stevearc/dressing.nvim' },
  --     },
  --   },
  --   cmd = { 'Fugit2', 'Fugit2Diff', 'Fugit2Graph' },
  --   keys = {
  --     { '<leader>F', mode = 'n', '<cmd>Fugit2<cr>' },
  --   },
  --   config = function()
  --     -- libgit2_path = '/nix/store/gi2n9v8n5n37rmzjvcp0r3b3a5w17qfs-libgit2-1.8.4-lib/lib/libgit2.so'
  --   end,
  -- },
  -- {  },
}
