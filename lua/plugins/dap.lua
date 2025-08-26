return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Adaptador PHP para Xdebug
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME") .. "/.local/share/php-debug/out/phpDebug.js" },
      }

      -- Configurações do Xdebug
      dap.configurations.php = {
        -- Config para rodar direto no host (sem Sail/Docker)
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug (Host)",
          port = 9003, -- Porta padrão do Xdebug 3
          log = true,
        },
        -- Config para rodar dentro do Sail/Docker
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug (Sail)",
          port = 9003,
          log = true,
          pathMappings = {
            ["/var/www/html"] = "${workspaceFolder}", -- mapeamento container → host
          },
        },
      }
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      -- Auto open/close UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}
