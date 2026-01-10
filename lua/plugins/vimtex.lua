return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      -- PDF Viewer:
      -- http://manpages.ubuntu.com/manpages/focal/man5/vimtex.5.html
      vim.g.vimtex_view_method = "zathura" -- Change to your preferred PDF viewer (zathura, skim, etc.)

      -- VimTeX compiler settings
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "",
        out_dir = "",
        callback = 1,
        continuous = 1,
        executable = "latexmk",
        hooks = {},
        options = {
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }

      -- TOC settings
      vim.g.vimtex_toc_config = {
        name = "TOC",
        layers = { "content", "todo", "include" },
        split_width = 25,
        todo_sorted = 0,
        show_help = 1,
        show_numbers = 1,
      }

      -- Quickfix settings
      vim.g.vimtex_quickfix_mode = 0 -- Don't auto-open quickfix on warnings

      -- Disable overfull/underfull \hbox and all package warnings
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        "Overfull",
      }

      -- Syntax highlighting
      vim.g.vimtex_syntax_enabled = 1

      -- Syntax concealment (optional - set to 0 to disable)
      vim.g.tex_conceal = "abdmg"
      vim.opt.conceallevel = 2

      -- Folding
      vim.g.vimtex_fold_enabled = 0 -- Set to 1 to enable folding

      -- Indent settings
      vim.g.vimtex_indent_enabled = 1

      -- Imaps (insert mode mappings) - set to 0 to disable
      vim.g.vimtex_imaps_enabled = 0

      -- Auto-close delimiters
      vim.g.vimtex_complete_close_braces = 1

      -- Key mappings
      vim.g.vimtex_mappings_enabled = 1

      -- Disable default mapping for localleader
      -- vim.g.maplocalleader = ","

      -- Custom commands and mappings can be added here
      -- Example: vim.keymap.set("n", "<localleader>lv", "<cmd>VimtexView<CR>", { desc = "View PDF" })
    end,
    ft = { "tex", "bib" }, -- Load only for TeX and BibTeX files
    keys = {
      { "<localleader>l", "", desc = "+VimTeX", ft = "tex" },
      { "<localleader>ll", "<cmd>VimtexCompile<cr>", desc = "Toggle Compilation", ft = "tex" },
      { "<localleader>lv", "<cmd>VimtexView<cr>", desc = "View PDF", ft = "tex" },
      { "<localleader>lc", "<cmd>VimtexClean<cr>", desc = "Clean Aux Files", ft = "tex" },
      { "<localleader>lC", "<cmd>VimtexClean!<cr>", desc = "Clean Aux + PDF", ft = "tex" },
      { "<localleader>lt", "<cmd>VimtexTocToggle<cr>", desc = "Toggle TOC", ft = "tex" },
      { "<localleader>le", "<cmd>VimtexErrors<cr>", desc = "Show Errors", ft = "tex" },
      { "<localleader>lk", "<cmd>VimtexStop<cr>", desc = "Stop Compilation", ft = "tex" },
      { "<localleader>lK", "<cmd>VimtexStopAll<cr>", desc = "Stop All", ft = "tex" },
      { "<localleader>li", "<cmd>VimtexInfo<cr>", desc = "VimTeX Info", ft = "tex" },
      { "<localleader>ls", "<cmd>VimtexStatus<cr>", desc = "Compilation Status", ft = "tex" },
      { "<localleader>lg", "<cmd>VimtexCompileSS<cr>", desc = "Compile Single Shot", ft = "tex" },
      { "<localleader>lm", "<cmd>VimtexImapsList<cr>", desc = "List Insert Maps", ft = "tex" },
      { "<localleader>lx", "<cmd>VimtexReload<cr>", desc = "Reload VimTeX", ft = "tex" },
      { "<localleader>lo", "<cmd>VimtexCompileOutput<cr>", desc = "Show Output", ft = "tex" },
    },
  },
}
