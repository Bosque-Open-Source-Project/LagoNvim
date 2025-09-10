return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    local vue_language_server =
      vim.fn.expand("~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server")

    lspconfig.ts_ls.setup({
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_language_server,
            languages = { "vue" },
          },
        },
      },
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
    })

    lspconfig.lua_ls.setup({})
    lspconfig.html.setup({})
    lspconfig.cssls.setup({})
    lspconfig.jsonls.setup({})
    lspconfig.intelephense.setup({
      filetypes = { "php" },
      root_dir = function()
        return vim.loop.cwd()
      end,
      handlers = {
        ["client/registerCapability"] = function(_, _, _, _)
          return { result = nil, error = nil }
        end,
        ["workspace/configuration"] = function(_, _, _, _)
          return { result = nil, error = nil }
        end,
      },
    })

    -- Diagnósticos inline
    vim.diagnostic.config({
      virtual_text = {
        prefix = "●",
        spacing = 2,
      },
      signs = true,
      underline = true,
      update_in_insert = false,
    })
  end,
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "mason-org/mason.nvim",
  },
}
