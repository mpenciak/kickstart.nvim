-- Packages
vim.pack.add({
  { src = "https://github.com/xeind/nightingale.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/folke/lazydev.nvim" },
  { src = "https://github.com/Julian/lean.nvim" },
})

-- Required for completions in config editing
require("lazydev").setup()

-- Colorscheme
vim.cmd.colorscheme "nightingale"

-- Settings and options
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = "$NVIM_PY_ENV/python"
vim.g.mapleader = ' '
vim.g.maplocalleader = '  '
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "number"
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = "menuone,noselect,popup"

-- LSP stuff
vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("gopls")
require("lean").setup {mappings = true}

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    vim.lsp.completion.enable(true, ev.data.client_id, ev.data.buf, { autotrigger = true })
    vim.keymap.set('n', 'K', function()
      vim.lsp.buf.hover()
    end)
  end
})

vim.keymap.set('i', '<C-.>', function()
  vim.lsp.completion.get()
end)

