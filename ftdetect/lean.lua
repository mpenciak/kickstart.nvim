vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.lean',
  callback = function()
    vim.cmd 'set colorcolumn=100'
    vim.cmd 'set textwidth=100'
  end,
})
