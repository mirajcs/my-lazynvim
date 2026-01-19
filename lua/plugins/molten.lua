return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- Configuration options
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = true
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
    end,
    keys = {
      { "<localleader>mi", ":MoltenInit<CR>", desc = "Initialize Molten" },
      { "<localleader>me", ":MoltenEvaluateLine<CR>", desc = "Evaluate line" },
      { "<localleader>mr", ":MoltenReevaluateCell<CR>", desc = "Re-evaluate cell" },
      { "<localleader>md", ":MoltenDelete<CR>", desc = "Delete cell" },
      { "<localleader>mo", ":noautocmd MoltenEnterOutput<CR>", desc = "Open output window" },
      { "<localleader>mh", ":MoltenHideOutput<CR>", desc = "Hide output" },
      { "<localleader>ms", ":MoltenShowOutput<CR>", desc = "Show output" },

      -- Evaluate operator
      { "<localleader>e", ":MoltenEvaluateOperator<CR>", mode = "n", desc = "Evaluate operator" },

      -- Visual mode: evaluate selection
      { "<localleader>e", ":<C-u>MoltenEvaluateVisual<CR>gv", mode = "v", desc = "Evaluate visual selection" },
    },
  },

  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- or "wezterm"
      integrations = {}, -- remove default integrations
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}
