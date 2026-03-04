return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<CR>", desc = "Mason" } },
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          icons  = {
            package_installed   = "󰄲",
            package_pending     = "󱥸",
            package_uninstalled = "",
          },
        },
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "pyright", "ts_ls",
          "html", "cssls", "jsonls", "bashls",
          "clangd",
        },
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "saghen/blink.cmp",
    },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.lsp.config("*", { capabilities = capabilities })

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
        "lua_ls", "pyright", "ts_ls",
        "html", "cssls", "jsonls", "bashls", "clangd",
      })

      vim.diagnostic.config({
        virtual_text  = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN]  = " ",
            [vim.diagnostic.severity.HINT]  = " ",
            [vim.diagnostic.severity.INFO]  = " ",
          },
        },
        underline        = true,
        update_in_insert = false,
        float            = { border = "rounded" },
      })
    end,
  },

  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd   = { "ConformInfo" },
    keys  = {
      { "<leader>cF", function() require("conform").format({ async = true }) end, desc = "Formatar arquivo" },
    },
    opts = {
      formatters_by_ft = {
        lua        = { "stylua" },
        python     = { "ruff_format" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html       = { "prettier" },
        css        = { "prettier" },
        json       = { "prettier" },
        bash       = { "shfmt" },
        c          = { "clang_format" },
        cpp        = { "clang_format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        python     = { "ruff" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      }
      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
