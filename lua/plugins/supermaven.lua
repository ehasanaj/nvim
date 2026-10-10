return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      ignore_filetypes = { rust = true, go = true, python = true, c = true },
    })
  end,
}
