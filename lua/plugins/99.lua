return {
  {
    "ThePrimeagen/99",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      local _99 = require("99")

      _99.setup({
        display_errors = true,
        tmp_dir = "./tmp",
        md_files = {
          "AGENTS.md",
          "AGENT.md",
          "CLAUDE.md",
        },
        completion = {
          custom_rules = {
            "~/.config/opencode/skills",
            "~/.claude/skills",
            ".opencode/skills",
            ".agents/skills",
          },
          files = {
            enabled = true,
          },
        },
      })

      vim.keymap.set("n", "<leader>9s", function()
        _99.search()
      end, { desc = "99 Search" })

      vim.keymap.set("n", "<leader>9a", function()
        _99.vibe()
      end, { desc = "99 Vibe" })

      vim.keymap.set("v", "<leader>9v", function()
        _99.visual()
      end, { desc = "99 Visual Edit" })

      vim.keymap.set("n", "<leader>9o", function()
        _99.open()
      end, { desc = "99 Open Results" })

      vim.keymap.set("n", "<leader>9l", function()
        _99.view_logs()
      end, { desc = "99 View Logs" })

      vim.keymap.set("n", "<leader>9x", function()
        _99.stop_all_requests()
      end, { desc = "99 Stop Requests" })

      vim.keymap.set("n", "<leader>9c", function()
        _99.clear_previous_requests()
      end, { desc = "99 Clear Results" })

      vim.keymap.set("n", "<leader>9m", function()
        require("99.extensions.telescope").select_model()
      end, { desc = "99 Select Model" })

      vim.keymap.set("n", "<leader>9p", function()
        require("99.extensions.telescope").select_provider()
      end, { desc = "99 Select Provider" })
    end,
  },
}
