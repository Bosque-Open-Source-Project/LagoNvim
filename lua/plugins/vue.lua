return {
  {
    "neovim/nvim-lspconfig", -- ou só um dummy plugin
    config = function()
      -- Caminho do Vue LS
      local vue_language_server_path = vim.fn.stdpath("data")
        .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

      -- Filetypes que o TS server precisa atender
      local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }

      -- Plugin Vue para o TS
      local vue_plugin = {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
        configNamespace = "typescript",
      }

      -- Configuração do vtsls
      local vtsls_config = {
        settings = {
          vtsls = {
            tsserver = {
              globalPlugins = { vue_plugin },
            },
          },
        },
        filetypes = tsserver_filetypes,
        root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
      }

      -- Configuração do TS LS
      local ts_ls_config = {
        init_options = {
          plugins = { vue_plugin },
        },
        filetypes = tsserver_filetypes,
        root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
      }

      -- Configuração do Vue LS
      local vue_ls_config = {
        filetypes = { "vue" },
        root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
      }

      -- Registra os servidores (Neovim >= 0.11)
      vim.lsp.config("vtsls", vtsls_config)
      vim.lsp.config("vue_ls", vue_ls_config)
      vim.lsp.config("ts_ls", ts_ls_config)

      -- Ativa os servidores
      vim.lsp.enable({ "vtsls", "vue_ls" })
    end,
  },
}
