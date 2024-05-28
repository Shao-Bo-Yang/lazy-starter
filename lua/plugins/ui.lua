return {
  -- VSCode theme
  -- {
  --     "Mofiqul/vscode.nvim",
  --     priority = 1000, -- Make sure to load this before all the other start plugins.
  --     enabled = true,
  --     lazy = false,
  -- },

  { "catppuccin/nvim", name = "catppuccin", priority = 1000, enabled = true, lazy = false },
  -- Configure LazyVim to load vscode
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
