-- =============================================================================
-- init.lua — Ponto de entrada da configuração do Neovim
-- Apenas carrega os módulos na ordem correta.
-- =============================================================================

-- Leader key precisa ser definida ANTES dos plugins
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Opções gerais (números, indentação, visual...)
require("config.options")

-- Bootstrap do lazy.nvim + carregamento dos plugins
require("config.lazy")

-- Atalhos gerais (atalhos de LSP ficam em plugins/lsp.lua)
require("config.keymaps")

-- Autocmds (automações por filetype, highlight de yank, etc.)
require("config.autocmds")
