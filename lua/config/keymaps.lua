-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>t", vim.cmd.terminal, { desc = "Terminal" })
vim.keymap.set("n", "<leader>cw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Change words" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centralizado" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centralizado" })
vim.keymap.set("n", "<leader>A", "gg<S-v>G", { desc = "Select all" })
vim.keymap.set("n", "<leader>li", ":LiveServerInstall<CR>", { desc = "Install Live Server" })
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", { desc = "Start Live Server" })
vim.keymap.set("n", "<leader>lq", ":LiveServerStop<CR>", { desc = "Stop Live Server" })
vim.keymap.set("n", "<leader>M", function()
	Snacks.dashboard.open()
end, { desc = "Main Menu" })
