return {
  {
    'shortcuts/no-neck-pain.nvim',
    opts = {
      -- The width of the focused window that will be centered. When the terminal width is less than the `width` option, the side buffers won't be created.
      ---@type integer|"textwidth"|"colorcolumn"
      width = 128,
      -- Adds autocmd (@see `:h autocmd`) which aims at automatically enabling the plugin.
      ---@type table
      autocmds = {
        -- When `true`, enables the plugin when you start Neovim.
        -- If the main window is  a side tree (e.g. NvimTree) or a dashboard, the command is delayed until it finds a valid window.
        -- The command is cleaned once it has successfuly ran once.
        ---@type boolean
        enableOnVimEnter = true,
      },
    },
  },
}
