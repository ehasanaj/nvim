-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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
