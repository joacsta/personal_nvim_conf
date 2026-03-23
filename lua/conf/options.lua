local opt = vim.opt

-- ═══════════════════════════════════════════
--  Tema aleatório
-- ═══════════════════════════════════════════
vim.api.nvim_create_autocmd("User", {
    pattern  = "VeryLazy",
    once     = true,
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
        }
        math.randomseed(os.time())
        local chosen = themes[math.random(#themes)]
        vim.cmd.colorscheme(chosen)
        vim.notify("colorscheme: " .. chosen, vim.log.levels.INFO, { title = "Theme" })
    end,
})

-- ═══════════════════════════════════════════
--  Indentação
-- ═══════════════════════════════════════════
opt.tabstop     = 4    -- tab ocupa 4 espaços visualmente
opt.shiftwidth  = 4    -- >> e << deslocam 4 espaços
opt.expandtab   = true -- converte tab em espaços
opt.smartindent = true -- indenta automaticamente em blocos

-- ═══════════════════════════════════════════
--  Busca
-- ═══════════════════════════════════════════
opt.ignorecase = true -- case-insensitive por padrão
opt.smartcase  = true -- case-sensitive se digitar maiúscula
opt.hlsearch   = true -- destaca resultados
opt.incsearch  = true -- destaca enquanto digita

-- ═══════════════════════════════════════════
--  Visual
-- ═══════════════════════════════════════════
opt.number         = true  -- número de linha absoluto
opt.relativenumber = true  -- número relativo
opt.cursorline     = true  -- destaca linha do cursor
opt.wrap           = false -- não quebra linhas longas
opt.scrolloff      = 8     -- contexto vertical ao scrollar
opt.sidescrolloff  = 8     -- contexto horizontal ao scrollar
opt.signcolumn     = "yes" -- espaço fixo para ícones LSP/git
opt.termguicolors  = true  -- cores 24-bit
opt.showmode       = false -- não mostra -- INSERT -- (lualine já faz isso)
opt.cmdheight      = 1     -- altura da linha de comando
opt.pumheight      = 10    -- máximo de itens no menu de autocomplete
-- opt.colorcolumn = "88"  -- guia na coluna 88 (black/python)
opt.smoothscroll   = false

-- ═══════════════════════════════════════════
--  Comportamento
-- ═══════════════════════════════════════════
opt.mouse        = "a"             -- mouse em todos os modos
opt.clipboard    = "unnamedplus"   -- integra com clipboard do sistema
opt.swapfile     = false           -- sem arquivos .swp
opt.backup       = false           -- sem backup automático
opt.undofile     = true            -- histórico de undo persiste após fechar
opt.updatetime   = 250             -- ms para CursorHold (LSP, gitsigns)
opt.timeoutlen   = 300             -- ms para sequências de teclas (which-key)
opt.splitright   = true            -- split vertical abre à direita
opt.splitbelow   = true            -- split horizontal abre abaixo
opt.fileencoding = "utf-8"
opt.conceallevel = 0               -- não esconde caracteres (ex: aspas no JSON)
opt.iskeyword:append("-")          -- trata palavras-com-hífen como uma palavra só

opt.completeopt = "menu,menuone,noselect"
