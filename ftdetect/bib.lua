vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.bib',
  callback = function()
    vim.cmd 'set colorcolumn=100'
    vim.cmd 'set textwidth=100'
    vim.cmd 'set shiftwidth=4'
    vim.cmd 'set tabstop=4'
  end,
})
