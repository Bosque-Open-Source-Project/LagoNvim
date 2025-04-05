return {
  {
    "andweeb/presence.nvim",
    lazy = false, -- Load immediatelu
    config = function()
      require("presence").setup({
        auto_update = true,
        neovim_image_text = "LagoVim",
        main_image = "lagovim",
        client_id = "1358142505832550567",
        log_level = "error",
        debounce_timeout = 10,
        enable_line_number = false,
        show_time = true,
        editing_text = "Editing %s",
        file_explorer_text = "Browsing %s",
        git_commit_text = "Committing changes...",
      })
    end,
  },
}
