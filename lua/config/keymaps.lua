-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function run_dir_sync(command, title)
  local cwd = vim.fn.getcwd()

  Snacks.notify.info(string.format("Running `%s` in %s", command, cwd), {
    title = title,
  })

  Snacks.terminal({ vim.o.shell, "-ic", command }, {
    cwd = cwd,
    auto_close = false,
    win = {
      title = title,
    },
  })
end

vim.api.nvim_create_user_command("GPushDir", function()
  run_dir_sync("gpushdir", "GDrive Push")
end, { desc = "Push current directory to Google Drive" })

vim.api.nvim_create_user_command("GPullDir", function()
  run_dir_sync("gpulldir", "GDrive Pull")
end, { desc = "Pull current directory from Google Drive" })

vim.keymap.set("n", "<leader>mu", "<cmd>GPushDir<cr>", { desc = "Google Drive Push Dir", silent = true })
vim.keymap.set("n", "<leader>md", "<cmd>GPullDir<cr>", { desc = "Google Drive Pull Dir", silent = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.keymap.set("n", "<leader>ci", "<cmd>GoInstall<cr>", { desc = "Install Go dependencies" })
    vim.keymap.set("n", "<leader>cr", "<cmd>GoRun<cr>", { desc = "Run Go file" })
    vim.keymap.set("n", "<leader>ct", "<cmd>GoTest<cr>", { desc = "Test Go file" })
  end,
})

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })
