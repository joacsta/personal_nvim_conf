

--mover linhas
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

--salvar arquivos
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

--substituit palavras no arquivo todo
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--edicao
-- selecionar tudo
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- duplicar linha
vim.keymap.set("n", "<A-d>", "yyp")

-- navegacao
-- Centralizar cursor ao navegar
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centralizar ao buscar
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Início/fim de linha mais fácil
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

--splits
-- Criar splits
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>-", "<cmd>split<CR>")

--fechar janelas
vim.keymap.set("n", "<leader>wq", "<cmd>close<CR>", { desc = "Fechar janela" })

-- Redimensionar splits
vim.keymap.set("n", "<C-Up>",    "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Down>",  "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Left>",  "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- copiar para clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
