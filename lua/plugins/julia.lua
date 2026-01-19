return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        julials = {
          -- Automatically install Julia LS via Mason if available
          mason = false,
          settings = {
            julia = {
              -- Path to Julia executable (optional, usually auto-detected)
              -- executablePath = "/path/to/julia",
              lint = {
                run = true,
              },
              -- Enable/disable specific features
              enableCrashReporter = false,
              enableTelemetry = false,
            },
          },
        },
      },
    },
  },

  -- Optional: Add Julia-specific treesitter support
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "julia" })
    end,
  },
}
