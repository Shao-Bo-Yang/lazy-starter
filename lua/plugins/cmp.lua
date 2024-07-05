return {
  "hrsh7th/cmp-cmdline",
  version = "*",
  config = function()
    local cmp = require("cmp")
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
      -- matching = { disallow_symbol_nonprefix_matching = false },
    })
  end,
}
