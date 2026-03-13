return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            -- ─── Pyright ────────────────────────────
            vim.lsp.config("pyright", {
                settings = {
                    python = {
                        analysis = {
                            autoImportCompletions = true,
                        },
                    },
                },
            })

            -- ─── Lua ────────────────────────────────
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace   = { checkThirdParty = false },
                        telemetry   = { enable = false },
                    },
                },
            })

            -- ─── Diagnósticos ───────────────────────
            vim.diagnostic.config({
                virtual_text     = true,
                underline        = true,
                update_in_insert = false,
                signs            = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN]  = " ",
                        [vim.diagnostic.severity.HINT]  = " ",
                        [vim.diagnostic.severity.INFO]  = " ",
                    },
                },
                float            = { border = "rounded" },
            })
        end,
    },

    -- ─── Lua dev ────────────────────────────────────
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
