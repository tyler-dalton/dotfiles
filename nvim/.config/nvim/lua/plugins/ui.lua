return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        sources = {
          files = { hidden = true },
          grep = { hidden = true },
          explorer = { hidden = true },
        },
      },
      indent = {
        enabled = true,
        char = "|",
        only_current = true,
        scope = {
          enabled = true,
          char = "|",
          only_current = true,
        },
      },
      dashboard = {
        width = 60,
        preset = {
          header = [[
     ██████╗  █████╗ ██╗  ████████╗██╗   ██╗██╗███╗   ███╗
     ██╔══██╗██╔══██╗██║  ╚══██╔══╝██║   ██║██║████╗ ████║
     ██║  ██║███████║██║     ██║   ██║   ██║██║██╔████╔██║
     ██║  ██║██╔══██║██║     ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
     ██████╔╝██║  ██║███████╗██║    ╚████╔╝ ██║██║ ╚═╝ ██║
     ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
]],
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          {
            icon = " ",
            title = "Recent Files",
            section = "recent_files",
            ident = 2,
            padding = { 1, 1 },
          },
          {
            icon = " ",
            title = "Projects",
            section = "projects",
            indent = 2,
            padding = { 1, 1 },
          },
          { section = "startup" },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.theme = "tokyonight"
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
      return opts
    end,
  },
}
