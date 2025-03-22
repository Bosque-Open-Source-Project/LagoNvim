-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--declare default opts
local opts = { noremap = true, silent = true }

----> START BUFFER LINE KEYMAPS <----

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", opts)

----> END BUFFER LINE KEYMAPS <----

----> START TERMINAL KEYMAPS <----

vim.keymap.set("n", "<C-j>", "<Cmd>terminal<CR>", opts)
vim.keymap.set("n", "<F7>", "<Cmd>terminal<CR>", opts)
