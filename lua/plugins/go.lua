return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        root_dir = function(bufnr, on_dir)
          local buffer_name = vim.api.nvim_buf_get_name(bufnr)
          if vim.startswith(buffer_name, "diffview://") then
            return
          end

          local root_dir = vim.fs.root(buffer_name, "go.work")
            or vim.fs.root(buffer_name, "go.mod")
            or vim.fs.root(buffer_name, ".git")
          on_dir(root_dir)
        end,
      },
    },
  },
}
