local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ═══════════════════════════════════════════
--  Geral
-- ═══════════════════════════════════════════

-- Salvar
map("n", "<leader>w", "<cmd>w<CR>", vim.tbl_extend("force", opts, { desc = "Salvar arquivo" }))

-- Fechar buffer
map("n", "<leader>q", "<cmd>bd<CR>", vim.tbl_extend("force", opts, { desc = "Fechar buffer" }))

-- Sair sem salvar
map("n", "<leader>Q", "<cmd>q!<CR>", vim.tbl_extend("force", opts, { desc = "Forçar saída" }))

-- Limpar highlight de busca
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Ir para project view
map("n", "<leader>v", "<cmd>Ex<CR>", vim.tbl_extend("force", opts, { desc = "Project View" }))
-- ═══════════════════════════════════════════
--  Navegação entre splits
-- ═══════════════════════════════════════════

map("n", "<C-h>", "<C-w>h", vim.tbl_extend("force", opts, { desc = "Split esquerdo" }))
map("n", "<C-j>", "<C-w>j", vim.tbl_extend("force", opts, { desc = "Split abaixo" }))
map("n", "<C-k>", "<C-w>k", vim.tbl_extend("force", opts, { desc = "Split acima" }))
map("n", "<C-l>", "<C-w>l", vim.tbl_extend("force", opts, { desc = "Split direito" }))

-- ═══════════════════════════════════════════
--  Buffers
-- ═══════════════════════════════════════════

map("n", "<S-l>", "<cmd>bnext<CR>", vim.tbl_extend("force", opts, { desc = "Próximo buffer" }))
map("n", "<S-h>", "<cmd>bprevious<CR>", vim.tbl_extend("force", opts, { desc = "Buffer anterior" }))

-- ═══════════════════════════════════════════
--  Indentação visual (mantém seleção)
-- ═══════════════════════════════════════════

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- ═══════════════════════════════════════════
--  Mover linhas selecionadas
-- ═══════════════════════════════════════════

map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- ═══════════════════════════════════════════
--  Neo-tree
-- ═══════════════════════════════════════════

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", vim.tbl_extend("force", opts, { desc = "Toggle Neo-tree" }))
map("n", "<leader>o", "<cmd>Neotree focus<CR>", vim.tbl_extend("force", opts, { desc = "Focar Neo-tree" }))

-- ═══════════════════════════════════════════
--  Telescope
-- ═══════════════════════════════════════════

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", vim.tbl_extend("force", opts, { desc = "Buscar arquivos" }))
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", vim.tbl_extend("force", opts, { desc = "Buscar texto" }))
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", vim.tbl_extend("force", opts, { desc = "Buscar buffers" }))
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", vim.tbl_extend("force", opts, { desc = "Buscar help" }))
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", vim.tbl_extend("force", opts, { desc = "Arquivos recentes" }))

-- ═══════════════════════════════════════════
--  Git (Gitsigns — complementado em plugins/gitsigns.lua)
-- ═══════════════════════════════════════════

map("n", "<leader>gh", "<cmd>Gitsigns preview_hunk<CR>", vim.tbl_extend("force", opts, { desc = "Preview hunk" }))
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", vim.tbl_extend("force", opts, { desc = "Git blame" }))
map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", vim.tbl_extend("force", opts, { desc = "Stage hunk" }))
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", vim.tbl_extend("force", opts, { desc = "Reset hunk" }))

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", vim.tbl_extend("force", opts, { desc = "Abrir LazyGit" }))

-- ═══════════════════════════════════════════
--  LSP (complementado em plugins/lsp.lua)
-- ═══════════════════════════════════════════

map("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Ir para definição" }))
map("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "Referências" }))
map("n", "K",  vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover doc" }))
map("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Renomear símbolo" }))
map("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code action" }))
map("n", "<leader>d", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "Diagnóstico flutuante" }))
map("n", "[d", vim.diagnostic.goto_prev, vim.tbl_extend("force", opts, { desc = "Diagnóstico anterior" }))
map("n", "]d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, { desc = "Próximo diagnóstico" }))


-- ═══════════════════════════════════════════
--  Bufferline
-- ═══════════════════════════════════════════
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", vim.tbl_extend("force", opts, { desc = "Próximo buffer" }))
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", vim.tbl_extend("force", opts, { desc = "Buffer anterior" }))
map("n", "<leader>bp", "<cmd>BufferLineTogglePin<CR>", vim.tbl_extend("force", opts, { desc = "Pin buffer" }))
map("n", "<leader>bx", "<cmd>BufferLineCloseOthers<CR>", vim.tbl_extend("force", opts, { desc = "Fechar outros buffers" }))
