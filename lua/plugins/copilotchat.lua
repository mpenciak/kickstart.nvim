return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    opts = {
      model = 'gemini-2.5-pro',
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
