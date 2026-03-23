-- ═══════════════════════════════════════════
--  Mover linhas
-- ═══════════════════════════════════════════
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- ═══════════════════════════════════════════
--  Salvar
-- ═══════════════════════════════════════════
vim.keymap.set("n", "<C-s>", function()
    if vim.bo.buftype == "" and vim.fn.expand("%") == "" then
        vim.ui.input({ prompt = "Nome do arquivo: " }, function(name)
            if name and name ~= "" then
                vim.cmd("file " .. name)
                vim.cmd("write")
            end
        end)
    else
        vim.cmd("write")
    end
end, { desc = "Salvar arquivo" })

vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { desc = "Salvar (insert)" })

-- ═══════════════════════════════════════════
--  Edição
-- ═══════════════════════════════════════════
-- Selecionar tudo
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
-- Duplicar linha
vim.keymap.set("n", "<A-d>", "yyp")
-- Substituir palavra sob cursor no arquivo todo
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ═══════════════════════════════════════════
--  Navegação
-- ═══════════════════════════════════════════
-- Centralizar cursor ao scrollar
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Centralizar ao buscar
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Início/fim de linha
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- ═══════════════════════════════════════════
--  Splits
-- ═══════════════════════════════════════════
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<CR>",           { desc = "Split vertical" })
vim.keymap.set("n", "<leader>-", "<cmd>split<CR>",            { desc = "Split horizontal" })
vim.keymap.set("n", "<leader>wq", "<cmd>close<CR>",           { desc = "Fechar janela" })
vim.keymap.set("n", "<C-Up>",    "<cmd>resize +2<CR>",        { desc = "Resize up" })
vim.keymap.set("n", "<C-Down>",  "<cmd>resize -2<CR>",        { desc = "Resize down" })
vim.keymap.set("n", "<C-Left>",  "<cmd>vertical resize -2<CR>", { desc = "Resize left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Resize right" })

-- ═══════════════════════════════════════════
--  Clipboard
-- ═══════════════════════════════════════════
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copiar para clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copiar para clipboard" })

-- ═══════════════════════════════════════════
--  Autocommands
-- ═══════════════════════════════════════════
vim.api.nvim_create_autocmd("TextYankPost", {
    desc     = "Highlight ao yankar",
    group    = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
