-- Caminho onde o lazy.nvim será instalado
-- stdpath("data") → ~/.local/share/nvim no Linux
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Se a pasta não existir, clona o repositório
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone",
    "--filter=blob:none",          -- clona sem baixar blobs (mais rápido)
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",             -- usa a branch estável
    lazypath,
  })
end

-- Adiciona lazy.nvim ao runtime path para que possa ser carregado com require
vim.opt.rtp:prepend(lazypath)

-- =============================================================================
-- SETUP DO LAZY.NVIM
-- Cada string em "import" aponta para um arquivo dentro de lua/plugins/
-- O lazy.nvim carrega todos os arquivos dessa pasta automaticamente
-- =============================================================================

require("lazy").setup({

  -- Em vez de listar plugins aqui, importamos os arquivos de lua/plugins/
  -- Isso mantém cada grupo de plugins no seu próprio arquivo
  { import = "plugins" },

}, {
  -- ==========================================================================
  -- CONFIGURAÇÕES DO LAZY.NVIM
  -- ==========================================================================

  ui = {
    border = "rounded", -- borda arredondada na janela do :Lazy
    icons = {
      cmd        = "",
      config     = "",
      event      = "",
      ft         = "",
      init       = "⚙",
      keys       = "🗝",
      plugin     = "",
      runtime    = "󰢹",
      source     = "",
      start      = "",
      task       = "✔ ",
    },
  },

  checker = {
    enabled = true,  -- verifica atualizações disponíveis em background
    notify = false,  -- mas não exibe notificação (você decide quando rodar :Lazy update)
  },

  change_detection = {
    notify = false,  -- não notifica quando detecta mudança nos arquivos de config
  },

  performance = {
    rtp = {
      -- Desabilita plugins nativos do Neovim que você provavelmente não usa
      -- Isso reduz o tempo de inicialização
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
