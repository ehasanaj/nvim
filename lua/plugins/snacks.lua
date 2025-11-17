return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false,
    },
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
        {
          section = "terminal",
          cmd = "ascii-image-converter ~/.config/nvim/logo.png -C -b --dither",
          random = 10,
          pane = 2,
          indent = 4,
          height = 30,
        },
      },
    },
  },
}
