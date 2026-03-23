return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd   = { "ConformInfo" },
        keys  = {
            {
                "<leader>cf",
                function() require("conform").format({ async = true }) end,
                desc = "Format file",
            },
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
}
