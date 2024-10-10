return {
  'zk-org/zk-nvim',
  config = function()
    require('zk').setup {
      picker = 'telescope',
      lsp = {
        config = {
          on_attach = on_attach,
        },
      },
    }
  end,
}
