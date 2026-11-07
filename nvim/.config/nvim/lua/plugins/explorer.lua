return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              auto_hide = { "input" },
            },
            hidden = true,
            auto_close = false,
            jump = {
              close = false,
            },
          },
        },
      },
    },
  },
}
