-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Basic Autocommands ]]
require 'autocmds'

-- [[ Initialize lazy.nvim ]]
require 'lazy-init'

-- [[ Configure and install plugins ]]
require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Adds git related signs to the gutter, as well as utilities for managing changes
  require 'plugins.gitsigns',

  -- Useful plugin to show you pending keybinds.
  require 'plugins.which-key',

  -- Fuzzy Finder (files, lsp, etc)
  require 'plugins.telescope',

  -- LSP Configuration & Plugins
  require 'plugins.lspconfig',

  -- Autoformat
  require 'plugins.conform',

  -- Completions
  require 'plugins.nvim-cmp',

  -- Colorscheme
  require 'colorscheme',

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  -- Mini plugins
  require 'plugins.mini',

  -- Treesitter
  require 'plugins.treesitter',

  -- Vimtex
  require 'plugins.vimtex',

  -- LazyGit
  require 'plugins.lazygit',

  -- Trouble
  require 'plugins.trouble',

  -- Lean.nvim
  require 'plugins.lean',

  -- ToggleTerm
  require 'plugins.toggleterm',

  -- Trim Whitespace
  require 'plugins.trim',

  -- Zen mode
  'folke/zen-mode.nvim',

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns',
}, {
  ui = require 'lazy-ui',
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
