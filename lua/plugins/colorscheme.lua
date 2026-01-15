return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add nord theme
  --{ "arcticicestudio/nord-vim", name = "nord" },
  -- add alternarive nord.nvim theme
  { "shaunsingh/nord.nvim", name = "nord" },
  -- add onedark theme
  { "navarasu/onedark.nvim", name = "onedark" },
  -- add catppuccin theme
  { "catppuccin/nvim", name = "catppuccin" },

  -- Configure LazyVim to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
