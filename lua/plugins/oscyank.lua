return {
  {
    "ojroques/vim-oscyank",
    config = function()
      vim.keymap.set("n", "<leader>h", "<Plug>OSCYankOperator")
      vim.keymap.set("n", "<leader>cc", "<leader>c_", { remap = true })
      vim.keymap.set("v", "<leader>h", "<Plug>OSCYankVisual")
    end,
  },
}
