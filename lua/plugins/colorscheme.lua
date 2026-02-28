return {
  -- Adiciona o plugin do tema do GitHub
  {
    "projekt0n/github-nvim-theme",
    lazy = false,    -- Carrega ao iniciar
    priority = 1000, -- Garante que carregue primeiro
    config = function()
      -- Tente usar o nome exato que o plugin define
      vim.cmd("colorscheme github_dark_high_contrast")
    end,
  },
}
