local function on_attach(_, _)
  vim.keymap.set('n', '<C-w>i', '<C-w>K20<C-w>-')
  vim.keymap.set('n', '<leader>lx', '<cmd>LeanRestartFile<CR>')
end

return {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    -- you also will likely want nvim-cmp or some completion engine
  },

  -- see details below for full configuration options
  opts = {
    lsp = {
      on_attach = on_attach,
    },
    mappings = true,
  },
}
