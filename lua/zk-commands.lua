local zk = require 'zk'
local commands = require 'zk.commands'

commands.add('ZkJournal', function(options)
  options = vim.tbl_extend('force', options or {}, { group = 'journal', dir = 'journal' })
  zk.new(options)
end)

local create_note = function(input)
  local name = input.args
  local options = { group = 'notes', dir = 'notes', title = name }
  zk.new(options)
end

vim.api.nvim_create_user_command('ZkNote', create_note, { desc = 'Creates a new note', nargs = '*' })

-- commands.add('ZkNote', function(options)
--   options = vim.tbl_extend('force', options or {}, { group = 'journal', dir = 'journal' })
--   zk.new(options)
-- end)
