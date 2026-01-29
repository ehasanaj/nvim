return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        groovyls = {
          cmd = {
            "java",
            "-jar",
            vim.fn.stdpath("data")
              .. "/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar",
          },
          filetypes = { "groovy" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "settings.gradle",
              "settings.gradle.kts",
              "build.gradle",
              "build.gradle.kts",
              "Jenkinsfile",
              ".git"
            )(fname)
          end,
          settings = {
            groovy = {
              classpath = {},
            },
          },
        },
      },
    },
  },

  -- Mason - Ensure groovy-language-server is installed
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "groovy-language-server" })
    end,
  },

  -- TreeSitter - Custom Groovy parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.groovy = {
        install_info = {
          url = "https://github.com/murtaza64/tree-sitter-groovy",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "groovy",
      }

      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, { "groovy" })
      end
    end,
  },

  -- Filetype Detection
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.filetype.add({
        extension = {
          groovy = "groovy",
          gradle = "groovy",
          gsp = "gsp",
        },
        filename = {
          ["Jenkinsfile"] = "groovy",
          ["build.gradle"] = "groovy",
          ["settings.gradle"] = "groovy",
        },
        pattern = {
          ["Jenkinsfile.*"] = "groovy",
        },
      })
    end,
  },
}
