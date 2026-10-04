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
      },
    },
  },
}
