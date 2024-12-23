return {
  -- TODO: Add and configure adapters

  -- Debugger (DAP)
  { 'mfussenegger/nvim-dap' },
  -- Debugger UI (DAP)
  { 'rcarriga/nvim-dap-ui', dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' } },
}
