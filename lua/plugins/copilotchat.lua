return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    opts = {
      model = 'claude-sonnet-4',
      mappings = {
        reset = {
          normal = '<C-R>',
          insert = '<C-R>',
        },
      },
    },
    init = function()
      vim.keymap.set('n', '<leader>C', '<cmd>CopilotChat<cr>')
    end,
  },
}
