local vim = vim

-- don't show parse errors in a separate window
vim.g.zig_fmt_parse_errors = 0
-- disable format-on-save from `ziglang/zig.vim`
vim.g.zig_fmt_autosave = 0
-- enable  format-on-save from nvim-lspconfig + ZLS
--
-- Formatting with ZLS matches `zig fmt`.
-- The Zig FAQ answers some questions about `zig fmt`:
-- https://github.com/ziglang/zig/wiki/FAQ
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.zig', '*.zon' },
  callback = function(ev)
    vim.lsp.buf.format()
  end,
})

local lspconfig = require 'lspconfig'
lspconfig.zls.setup {
  -- Server-specific settings. See `:help lspconfig-setup`

  -- omit the following line if `zls` is in your PATH
  cmd = { '/home/matej/Sources/zls/zig-out/bin/zls' },
  -- There are two ways to set config options:
  --   - edit your `zls.json` that applies to any editor that uses ZLS
  --   - set in-editor config options with the `settings` field below.
  --
  -- Further information on how to configure ZLS:
  -- https://zigtools.org/zls/configure/
  settings = {
    zls = {
      -- Whether to enable build-on-save diagnostics
      --
      -- Further information about build-on save:
      -- https://zigtools.org/zls/guides/build-on-save/
      enable_build_on_save = true,

      -- omit the following line if `zig` is in your PATH
      -- zig_exe_path = '/path/to/zig_executable',
    },
  },
}
