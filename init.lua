-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.which-key")
require("config.ui")

vim.g.oscyank_term = "tmux"
vim.g.oscyank_tmux_passthrough = true
