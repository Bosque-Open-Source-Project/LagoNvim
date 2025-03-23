-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--declare default opts
local opts = { noremap = true, silent = true }
--------------------------------------------------

----> START BUFFER LINE KEYMAPS <----

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", opts)

----> END BUFFER LINE KEYMAPS <----

--------------------------------------------------

----> START TERMINAL KEYMAPS <----

vim.keymap.set("n", "<C-j>", "<Cmd>terminal<CR>", opts)
vim.keymap.set("n", "<F7>", "<Cmd>terminal<CR>", opts)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]]) --exit terminal

----> END TERMINAL KEYMAPS <----

--------------------------------------------------

----> START TS TOOLS KEYMAPS <----
local tsTools = require("../language-tools/ts-tools")

vim.keymap.set("n", "<leader>cttc", "<Cmd>!" .. tsTools.compiler .. "<CR>", opts)

----> END TS TOOLS KEYMAPS <----

----> START C AND C++ KEYMAPS <----
vim.keymap.set("n", "<leader>ctcc", function()
  vim.cmd(
    "!" .. "gcc " .. vim.api.nvim_buf_get_name(0) .. " -o " .. vim.api.nvim_buf_get_name(0):match("(.+)%..+") .. ".out"
  )
  vim.notify("Compilado UwU", "info", { title = "LagoNvim" })
end, opts)

----> END C AND C++ KEYMAPS <----
