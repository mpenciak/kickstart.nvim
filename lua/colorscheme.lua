return {
  {
    'folke/tokyonight.nvim',
    -- init = function()
    --   vim.cmd.colorscheme 'tokyonight-night'
    --   vim.cmd.hi 'Comment gui=none'
    -- end,
  },
  {
    'rebelot/kanagawa.nvim',
    -- init = function()
    --   vim.cmd.colorscheme 'kanagawa'
    --   vim.cmd.hi 'Comment gui = none'
    -- end,
  },
  { 'sekke276/dark_flat.nvim' },
  { 'miikanissi/modus-themes.nvim' },
  { 'bluz71/vim-moonfly-colors' },
  {
    'navarasu/onedark.nvim',
    init = function()
      require('onedark').setup {
        style = 'warmer',
      }
    end,
  },
  { 'Mofiqul/vscode.nvim' },
  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup {
        style = 'darker',
      }
    end,
  },
}
