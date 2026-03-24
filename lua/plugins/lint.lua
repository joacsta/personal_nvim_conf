return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            python = { "ruff" },
            lua    = { "luacheck" },
        }

        -- roda o linter ao salvar e ao entrar no buffer
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
            group    = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
