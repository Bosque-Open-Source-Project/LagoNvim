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

vim.keymap.set("n", "<leader>cLtc", function()
  local result = vim.fn.system("tsc " .. vim.api.nvim_buf_get_name(0))
  if result == "" then
    vim.notify("Compilation sucessful", "info", { title = "LagoNvim" })
  else
    vim.notify("Compilation failed", "error", { title = "LagoNvim" })
  end
end, { desc = "Compile typescript" })

----> END TS TOOLS KEYMAPS <----

--------------------------------------------------

----> START C AND C++ KEYMAPS <----
vim.keymap.set("n", "<leader>cLcc", function()
  local result = vim.fn.systemlist(
    "gcc " .. vim.api.nvim_buf_get_name(0) .. " -o " .. vim.api.nvim_buf_get_name(0):match("(.+)%..+") .. ".out"
  )
  if vim.v.shell_error == 0 then
    vim.notify("Compilation successful", "info", { title = "LagoNvim" })
  else
    vim.notify("Compilation failed: " .. table.concat(result, "\n"), "error", { title = "LagoNvim" })
  end
end, { desc = "Compile gcc" })
----> END C AND C++ KEYMAPS <----

--------------------------------------------------

----> START LIVE SERVER KEYMAPS <----

vim.keymap.set("n", "<leader>ctls", function()
  vim.cmd("LiveServerStart")
  vim.notify("Server started", "info", { title = "LagoNvim" })
end, { desc = "Start live server" })

vim.keymap.set("n", "<leader>ctld", function()
  vim.cmd("LiveServerStop")
  vim.notify("Server Stopped", "info", { title = "LagoNvim" })
end, { desc = "Stop live server" })

----> END LIVE SERVER KEYMAPS <----

--------------------------------------------------

----> START COPILOTCHAT KEYMAPS <----

vim.keymap.set("n", "<leader>ctc", "<Cmd>CopilotChatToggle<CR>", { desc = "Toggle Copilot Chat" })

----> END COPILOTCHAT KEYMAPS <----

--------------------------------------------------

--->> START MOVIMENT KEYMAPS <----

vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move current line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move current line up" })

----> END MOVIMENT KEYMAPS <-----

--------------------------------------------------

--->> START CTRL KEYMAPS <----

vim.keymap.set("i", "<C-v>", "<C-r>+", opts)

vim.keymap.set("i", "<C-z>", "<Esc>ui", opts)

vim.keymap.set("i", "<C-a>", "<Esc>ggVG<CR>a", opts)

vim.keymap.set("i", "<C-c>", "<Esc>yyi", opts)
---> END CTRL KEYMAPS <----
