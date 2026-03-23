return {
    -- ═══════════════════════════════════════════
    --  Mason
    -- ═══════════════════════════════════════════
    {
        "williamboman/mason.nvim",
        cmd  = "Mason",
        keys = { { "<leader>cm", "<cmd>Mason<CR>", desc = "Mason" } },
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                    icons  = {
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
                    "clangd",
                },
                automatic_installation = true,
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  LSPConfig
    -- ═══════════════════════════════════════════
    {
        "neovim/nvim-lspconfig",
        event        = { "BufReadPost", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()

            -- ─── Servidores ─────────────────────────
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace   = { checkThirdParty = false },
                        telemetry   = { enable = false },
                    },
                },
            })

            vim.lsp.config("pyright", {
                settings = {
                    python = {
                        analysis = {
                            autoImportCompletions  = true,
                            autoSearchPaths        = true,
                            useLibraryCodeForTypes = true,
                            diagnosticMode         = "openFilesOnly",
                        },
                    },
                },
            })

            vim.lsp.enable({
                "lua_ls", "pyright", "ts_ls",
                "html", "cssls", "jsonls",
                "bashls", "clangd",
            })

            -- ─── Diagnósticos ───────────────────────
            vim.diagnostic.config({
                virtual_text     = true,
                underline        = true,
                update_in_insert = false,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN]  = " ",
                        [vim.diagnostic.severity.HINT]  = " ",
                        [vim.diagnostic.severity.INFO]  = " ",
                    },
                },
                float = { border = "rounded" },
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  Lazydev (LSP para Lua/Neovim)
    -- ═══════════════════════════════════════════
    {
        "folke/lazydev.nvim",
        ft   = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
