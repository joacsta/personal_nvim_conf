-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Atalho para abrir/fechar o Copilot Chat

vim.keymap.set("n", "<leader>M", function() Snacks.dashboard.open() end, { desc = "Main Menu" })
vim.keymap.set("n", "<leader>P", vim.cmd.Ex, { desc = "Netrw" })
vim.keymap.set("n", "<leader>cw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
