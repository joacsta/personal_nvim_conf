return {
    {
        "nvim-treesitter/nvim-treesitter",
        build        = ":TSUpdate",
        lazy         = false,
        dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
        config = function()
            local ok, configs = pcall(require, "nvim-treesitter.configs")
            if not ok then return end
            configs.setup({
                ensure_installed = {
                    "lua", "vim", "vimdoc",
                    "python", "javascript", "typescript", "tsx",
                    "html", "css", "json", "yaml", "toml",
                    "bash", "markdown", "markdown_inline",
                    "c", "cpp",
                },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable                            = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true },
                incremental_selection = {
                    enable  = true,
                    keymaps = {
                        init_selection    = "<C-space>",
                        node_incremental  = "<C-space>",
                        scope_incremental = "<C-s>",
                        node_decremental  = "<M-space>",
                    },
                },
                textobjects = {
                    select = {
                        enable    = true,
                        lookahead = true, -- pula pro próximo se não estiver em cima
                        keymaps = {
                            ["af"] = { query = "@function.outer", desc = "outer function" },
                            ["if"] = { query = "@function.inner", desc = "inner function" },
                            ["ac"] = { query = "@class.outer",    desc = "outer class" },
                            ["ic"] = { query = "@class.inner",    desc = "inner class" },
                            ["aa"] = { query = "@parameter.outer", desc = "outer parameter" },
                            ["ia"] = { query = "@parameter.inner", desc = "inner parameter" },
                        },
                    },
                    move = {
                        enable              = true,
                        set_jumps           = true, -- adiciona ao jumplist (<C-o> volta)
                        goto_next_start = {
                            ["]f"] = { query = "@function.outer", desc = "Next function" },
                            ["]c"] = { query = "@class.outer",    desc = "Next class" },
                        },
                        goto_next_end = {
                            ["]F"] = { query = "@function.outer", desc = "Next function end" },
                            ["]C"] = { query = "@class.outer",    desc = "Next class end" },
                        },
                        goto_previous_start = {
                            ["[f"] = { query = "@function.outer", desc = "Prev function" },
                            ["[c"] = { query = "@class.outer",    desc = "Prev class" },
                        },
                        goto_previous_end = {
                            ["[F"] = { query = "@function.outer", desc = "Prev function end" },
                            ["[C"] = { query = "@class.outer",    desc = "Prev class end" },
                        },
                    },
                },
            })
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        event = { "BufReadPost", "BufNewFile" },
        opts  = {},
    },
}
