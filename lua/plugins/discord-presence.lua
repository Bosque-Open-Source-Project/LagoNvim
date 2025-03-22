return {
  {
    "andweeb/presence.nvim",
    lazy = false, -- Load immediately
    config = function()
      require("presence").setup({
        auto_update = true,
        neovim_image_text = "LagoNvim",
        main_image = "neovim",
        client_id = "1353099539237699624",
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
