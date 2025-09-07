return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      blade = { "blade-formatter" },
      vue = { "prettierd" },      -- Adiciona prettier para Vue
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      css = { "prettierd" },
      html = { "prettierd" },
      lua = {"stylua"}
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
    },
  },
}

