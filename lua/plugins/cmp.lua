return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  opts = function(_, opts)
    local cmp = require("cmp")
    return {
      window = {
        completion = cmp.config.window.bordered(),
      },
    }
  end,
}
