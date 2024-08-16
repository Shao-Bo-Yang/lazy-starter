return {
  "stevearc/conform.nvim",
  version = "*",
  opts = {
    formatters_by_ft = {
      python = { "black" },
      rust = { "rustfmt" },
    },
    formatters = {
      black = {},
    },
  },
}
