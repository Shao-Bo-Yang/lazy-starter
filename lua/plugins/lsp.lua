return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
  -- {
  --   "MysticalDevil/inlay-hints.nvim",
  --   event = "LspAttach",
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   config = function()
  --     require("inlay-hints").setup()
  --   end,
  -- },
}
