return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      blade = { "blade-formatter" },
      vue = { "prettierd" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      css = { "prettierd" },
      html = { "prettierd" },
      lua = { "stylua" },
      php = { "pretty-php" },
    },
    formatters = {
      blade_formatter = {
        command = "blade-formatter",
        args = { "--write" },
      },
      prettierd = {
        command = vim.fn.expand("~/.local/share/nvim/mason/bin/prettierd"),
        args = { "--stdin-filepath", "$FILENAME" },
      },
      php_cs_fixer = {
        command = vim.fn.expand("~/.local/share/nvim/mason/bin/pretty-php"),
        args = { "fix", "$FILENAME" },
        stdin = false,
      },
    },
  },
}
