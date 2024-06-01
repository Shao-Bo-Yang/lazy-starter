return {
  {
    "neovim/nvim-lspconfig",
    version = "*",
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
                reportIncompatibleMethodOverride = "no",
                reportIncompatibleVariableOverride = "warning",
                reportDeprecated = "warning",
                diagnosticSeverityOverrides = {
                  reportIncompatibleVariableOverride = "warning",
                  reportIncompatibleMethodOverride = "warning",
                  reportDeprecated = "warning",
                  reportMissingSuperCall = "warning",
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "MysticalDevil/inlay-hints.nvim",
    event = "LspAttach",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("inlay-hints").setup()
    end,
  },
}
