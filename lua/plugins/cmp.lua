return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  enabled = true,
  event = "InsertEnter",
  dependencies = { "hrsh7th/cmp-emoji" },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      window = {
        width = 90,
        height = 90,
      },
    })
  end,
}
