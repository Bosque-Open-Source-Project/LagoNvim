return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      blade = { "blade-formatter" }, -- Adiciona o Blade Formatter
    },
    formatters = {
      blade_formatter = {
        command = "blade-formatter",
        args = { "--write" },
      },
    },
  },
}
