return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add nord theme
  { "arcticicestudio/nord-vim", name = "nord" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
