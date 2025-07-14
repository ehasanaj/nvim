-- ~/.config/nvim/lua/plugins/lazygit.lua
return {
  {
    "jesseduffield/lazygit",
    cmd = "LazyGit", -- This defines the command to open LazyGit
    -- Keymaps to open LazyGit
    keys = {
      {
        "<leader>gg",
        "<cmd>LazyGit<CR>",
        desc = "LazyGit",
      },
    },
  },
}
