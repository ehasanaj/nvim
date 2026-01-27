return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
  -- add nord theme
  --{ "arcticicestudio/nord-vim", name = "nord" },
  -- add alternarive nord.nvim theme
  { "shaunsingh/nord.nvim", name = "nord" },
  -- add onedark theme
  { "navarasu/onedark.nvim", name = "onedark" },
  -- add catppuccin theme
  { "catppuccin/nvim", name = "catppuccin" },
  -- add everforest theme
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    name = "everforest",
  },

  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
