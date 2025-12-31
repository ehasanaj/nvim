return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add nord theme
  --{ "arcticicestudio/nord-vim", name = "nord" },
  -- add alternarive nord.nvim theme
  { "shaunsingh/nord.nvim", name = "nord" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
