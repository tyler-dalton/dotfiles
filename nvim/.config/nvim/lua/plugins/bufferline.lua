return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        -- Clearly distinguish the active file
        indicator = {
          style = "underline",
        },

        -- Keep tabs visually understated
        separator_style = "thin",
        show_close_icon = false,
        show_buffer_close_icons = true,

        -- Show useful diagnostic counts
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(_, _, diagnostics)
          local errors = diagnostics.error or 0
          local warnings = diagnostics.warning or 0
          local parts = {}

          if errors > 0 then
            table.insert(parts, " " .. errors)
          end

          if warnings > 0 then
            table.insert(parts, " " .. warnings)
          end

          return #parts > 0 and (" " .. table.concat(parts, " ")) or ""
        end,
      },
    },
  },
}
