return {
  {
    'folke/tokyonight.nvim',
  },
  {
    'rebelot/kanagawa.nvim',
  },
  {
    'sekke276/dark_flat.nvim',
    opts = {
      colors = {
        bg = '#121314',
      },
      themes = function(colors)
        return {
          ['@lsp.type.keyword.lean'] = { fg = colors.aqua },
          ['leanCommand'] = { fg = colors.aqua },
          ['leanKeyword'] = { fg = colors.aqua },

          -- 'nomcompuatable' or 'scoped'
          ['leanCommandPrefix'] = { fg = colors.aqua },

          -- Dots, :=, etc
          ['leanOp'] = { fg = colors.light_gray },

          -- Comments
          ['leanComment'] = { fg = colors.peanut },

          -- Types
          ['leanEncl'] = { fg = colors.red },

          -- Parentheses
          ['leanDelim'] = { fg = colors.dark_cyan },

          -- function names
          ['leanDeclarationName'] = { fg = colors.green },

          -- Bound variables
          ['@lsp.type.variable.lean'] = { fg = colors.cyan },

          -- Lean names
          ['leanNameLiteral'] = { fg = colors.green },

          -- dots
          ['@lsp.type.property.lean'] = { fg = '#FFA500' },

          -- sorries
          ['@lsp.type.leanSorryLike.lean'] = { fg = '#FF0000' },
          ['leanSorry'] = { fg = '#FF0000' },

          -- Text of things underlined
          -- ['DiagnosticUnderlineError'] = { fg = colors.red },
          -- ['DiagnosticUnderlineWarn'] = { fg = colors.orange },
          ['DiagnosticUnderlineInfo'] = { sp = colors.dark_cyan, underline = true },

          -- Virtual text colors
          ['DiagnosticVirtualTextHint'] = { fg = colors.gray },
          ['DiagnosticVirtualTextError'] = { fg = colors.red },
          ['DiagnosticVirtualTextInfo'] = { fg = colors.dark_cyan },
          ['DiagnosticVirtualTextWarn'] = { fg = colors.orange },

          -- `Type`s and `Sort`s
          ['leanSort'] = { fg = colors.light_green },

          -- numbers
          ['leanNumber'] = { fg = colors.purple },

          -- ['widgetElement'] = { fg = '#00FF00' },
          ['widgetElementHighlight'] = { fg = colors.white },
          -- ['leanInfoDiagnosticInfo'] = { fg = '#00FF00' },
          -- ['leanInfoGoalHyp'] = { fg = '#00FF00' },
          -- ['leanInfoGoalVDash'] = { fg = '#00FF00' },
          -- ['leanInfoDiagnosticWarn'] = { fg = '#00FF00' },
          -- ['leanInfoDiagnosticError'] = { fg = '#00FF00' },
          -- ['leanInfoExpectedType'] = { fg = '#00FF00' },
          -- ['leanInfoInaccessibleHyp'] = { fg = '#00FF00' },
          -- ['leanInfoGoals'] = { fg = '#00FF00' },

          -- Escaped chars in Strings
          ['leanStringEscape'] = { fg = colors.red },

          -- Lean strings. Things like "..."
          ['leanString'] = { fg = colors.light_green },

          -- Interpolated string portions?
          ['leanInterpolation'] = { fg = colors.aqua },

          ['@lsp.mod.documentation.rust'] = { link = 'Comment' },
        }
      end,
    },
  },
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
  { 'cpea2506/one_monokai.nvim', opts = {
    transparent = false,
    colors = {
      bg = '#141516',
    },
  } },
}
