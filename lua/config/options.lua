-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

vim.g.mapleader = ","
vim.g.maplocalleader = ","

opt.smoothscroll = false
opt.relativenumber = true

-- =============================================================================
-- DIAGNOSTICOS
-- =============================================================================

vim.diagnostic.config({
	float = {
		max_width = 80, -- largura máxima do float
		wrap = true, -- quebra o texto
	},
})

-- =============================================================================
-- TEMAS ALEATORIOS
-- =============================================================================

vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	once = true,
	callback = function()
		local themes = {
			"github_dark",
			"github_dark_high_contrast",
			"github_dark_tritanopia",
			"github_dark_default",
			"catppuccin-mocha",
			"catppuccin-frappe",
			"catppuccin-macchiato",
			"kanagawa-dragon",
			"kanagawa-wave",
			"tokyonight-night",
			"tokyonight-moon",
			"tokyonight-storm",
			"dracula",
			"everforest",
			"onedark",
			"ayu-dark",
			"ayu-mirage",
		}
		math.randomseed(os.time())
		local chosen = themes[math.random(#themes)]
		vim.cmd.colorscheme(chosen)
		vim.notify("colorscheme: " .. chosen, vim.log.levels.INFO, { title = "Theme" })
	end,
})

-- =============================================================================
-- INDENTAÇÃO
-- =============================================================================

opt.tabstop = 4 -- um tab ocupa 4 espaços visualmente
opt.shiftwidth = 4 -- >> e << deslocam 4 espaços
opt.expandtab = true -- converte tab em espaços ao digitar
opt.smartindent = true -- indenta automaticamente ao abrir blocos (if, for, func...)

-- =============================================================================
-- BUSCA
-- =============================================================================

opt.ignorecase = true -- busca case-insensitive por padrão (/foo acha Foo e FOO)
opt.smartcase = true -- mas se digitar maiúscula, vira case-sensitive (/Foo só acha Foo)
opt.hlsearch = true -- destaca todos os resultados da busca
opt.incsearch = true -- destaca enquanto você ainda está digitando o padrão

-- =============================================================================
-- VISUAL
-- =============================================================================

opt.wrap = false -- não quebra linhas longas (melhor para código)
opt.scrolloff = 8 -- mantém 8 linhas de contexto acima/abaixo do cursor
opt.sidescrolloff = 8 -- idem horizontalmente
opt.signcolumn = "yes" -- reserva espaço fixo para ícones de erro/git na margem
-- sem isso o layout "pula" quando aparece um ícone
--opt.colorcolumn = "88"     -- linha guia na coluna 88 (limite padrão do black/python)
opt.cursorline = true -- destaca a linha onde o cursor está
opt.termguicolors = true -- habilita cores 24-bit (necessário para temas modernos)
opt.showmode = false -- não mostra "-- INSERT --" (a lualine já faz isso)
opt.cmdheight = 1 -- altura da linha de comando
opt.pumheight = 10 -- máximo de itens visíveis no menu de autocomplete
vim.opt.laststatus = 3
-- =============================================================================
-- COMPORTAMENTO
-- =============================================================================

opt.mouse = "a" -- habilita mouse em todos os modos
opt.clipboard = "unnamedplus" -- integra com o clipboard do sistema
-- permite Ctrl+C fora do nvim e colar com p dentro

-- você pode desfazer mudanças mesmo após fechar o arquivo
opt.swapfile = false -- desativa arquivos .swp (evita lixo no projeto)
opt.backup = false -- sem backup automático

opt.updatetime = 250 -- tempo (ms) para salvar swap e disparar CursorHold
-- afeta velocidade de diagnósticos LSP e gitsigns
opt.timeoutlen = 300 -- tempo (ms) para sequências de teclas
-- ex: which-key aparece após esse tempo

opt.splitright = true -- split vertical abre à direita (mais natural)
opt.splitbelow = true -- split horizontal abre abaixo (mais natural)

opt.completeopt = "menu,menuone,noselect" -- comportamento do menu de autocomplete:
-- menu: mostra popup
-- menuone: mesmo com só 1 opção
-- noselect: não pré-seleciona nada

opt.fileencoding = "utf-8" -- encoding padrão dos arquivos
opt.conceallevel = 0 -- não esconde caracteres (ex: aspas no JSON)
opt.iskeyword:append("-") -- trata palavras-com-hífen como uma palavra só
-- útil para CSS, variáveis bash, etc.
