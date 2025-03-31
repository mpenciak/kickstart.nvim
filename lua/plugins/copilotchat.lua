return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    opts = {
      model = 'claude-3.7-sonnet',
    },
    init = function()
      vim.keymap.set('n', '<leader>C', '<cmd>CopilotChat<cr>')
    end,
  },
}
