return {
  -- ═══════════════════════════════════════════
  --  Mason
  -- ═══════════════════════════════════════════
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed   = " ",
            package_pending     = " ",
            package_uninstalled = " ",
          },
        },
      })
    end,
  },

  -- ═══════════════════════════════════════════
  --  Mason + LSPConfig
  -- ═══════════════════════════════════════════
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "ts_ls",
          "html",
          "cssls",
          "jsonls",
          "bashls",
        },
        automatic_installation = true,
      })
    end,
  },

  -- ═══════════════════════════════════════════
  --  LSPConfig (nova API 0.11)
  -- ═══════════════════════════════════════════
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Configuração dos servidores via nova API
      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace   = { checkThirdParty = false },
            telemetry   = { enable = false },
          },
        },
      })

      vim.lsp.enable({
        "lua_ls",
        "pyright",
        "ts_ls",
        "html",
        "cssls",
        "jsonls",
        "bashls",
      })

      -- ═══════════════════════════════════════
      --  Ícones de diagnóstico (nova API)
      -- ═══════════════════════════════════════
      vim.diagnostic.config({
        virtual_text  = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN]  = " ",
            [vim.diagnostic.severity.HINT]  = " ",
            [vim.diagnostic.severity.INFO]  = " ",
          },
        },
        underline        = true,
        update_in_insert = false,
        float            = { border = "rounded" },
      })
    end,
  },
}
