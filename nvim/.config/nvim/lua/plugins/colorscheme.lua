return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm",
      transparent = true,
      lualine_bold = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        sidebars = "transparent",
        floats = "transparent",
      },

      on_highlights = function(hl, colors)
        hl.CursorLine = { bg = colors.bg_highlight }
        hl.CursorLineNr = { fg = colors.blue, bold = true }
        hl.WinSeparator = { fg = colors.blue }
        hl.SnacksIndent = { fg = colors.bg_highlight }
        hl.SnacksIndentScope = { fg = colors.blue }
      end,

    },
  },
}
