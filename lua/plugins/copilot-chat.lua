return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    depencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      --After see this
    },
    lazy = false,
  },
}
