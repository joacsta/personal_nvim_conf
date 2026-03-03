local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- ═══════════════════════════════════════════
--  Highlight ao copiar (yank)
-- ═══════════════════════════════════════════

augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
  desc = "Highlight ao copiar",
})

-- ═══════════════════════════════════════════
--  Voltar para a última posição ao abrir arquivo
-- ═══════════════════════════════════════════

augroup("RestoreCursor", { clear = true })
autocmd("BufReadPost", {
  group = "RestoreCursor",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
  desc = "Restaurar posição do cursor",
})

-- ═══════════════════════════════════════════
--  Remover whitespace ao salvar
-- ═══════════════════════════════════════════

augroup("TrimWhitespace", { clear = true })
autocmd("BufWritePre", {
  group = "TrimWhitespace",
  pattern = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(save)
  end,
  desc = "Remover espaços no final das linhas",
})

-- ═══════════════════════════════════════════
--  Fechar alguns buffers com 'q'
-- ═══════════════════════════════════════════

augroup("CloseWithQ", { clear = true })
autocmd("FileType", {
  group = "CloseWithQ",
  pattern = { "help", "lspinfo", "man", "notify", "qf", "checkhealth" },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = event.buf, silent = true })
  end,
  desc = "Fechar buffer com q",
})

-- ═══════════════════════════════════════════
--  Desativar auto-comment em nova linha
-- ═══════════════════════════════════════════

augroup("NoAutoComment", { clear = true })
autocmd("BufEnter", {
  group = "NoAutoComment",
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Não continuar comentário em nova linha",
})

-- ═══════════════════════════════════════════
--  Resize automático dos splits ao redimensionar janela
-- ═══════════════════════════════════════════

augroup("ResizeSplits", { clear = true })
autocmd("VimResized", {
  group = "ResizeSplits",
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
  desc = "Equalizar splits ao redimensionar",
})
