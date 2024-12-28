vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.sage',
  callback = function()
    vim.bo.filetyp = 'python'
  end,
})
