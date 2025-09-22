-- Desativa clipboard global
vim.opt.clipboard = ""

-- Clipboard integration with Windows (win32yank)
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}

local opts = { noremap = true, silent = true }

-- Ctrl+C / Ctrl+V para Windows clipboard
vim.keymap.set("i", "<C-c>", '<Esc>"+y', opts)
vim.keymap.set("v", "<C-c>", '"+y', opts)
vim.keymap.set("n", "<C-c>", '"+yy', opts)
vim.keymap.set("i", "<C-v>", "<C-r>+", opts)
vim.keymap.set("v", "<C-v>", '"+p', opts)
vim.keymap.set("n", "<C-v>", '"+p', opts)

-- Forçar todos os comandos de delete/yank/change a usarem apenas o register interno
-- via autocmd, após todos os plugins carregarem
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.opt.clipboard = "" -- desativa qualquer override
  end,
})
