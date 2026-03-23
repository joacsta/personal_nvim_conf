return {
    -- ─── Desativa o Neo-tree ────────────────────
    {
        "nvim-neo-tree/neo-tree.nvim",
        enabled = false,
    },

    -- ─── Oil.nvim ───────────────────────────────
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        keys = {
            { "-",         "<cmd>Oil<CR>",   desc = "Oil (cwd)" },
            { "<leader>e", "<cmd>Oil .<CR>", desc = "Oil (root)" },
        },
        opts = {
            default_file_explorer         = true,
            delete_to_trash               = true,
            skip_confirm_for_simple_edits = true,
            view_options                  = {
                show_hidden = true,
            },
            float                         = {
                padding    = 2,
                max_width  = 80,
                max_height = 30,
                border     = "rounded",
            },
            win_options                   = {
                wrap          = false,
                signcolumn    = "no",
                cursorcolumn  = false,
                foldcolumn    = "0",
                spell         = false,
                list          = false,
                conceallevel  = 3,
                concealcursor = "nvic",
            },
        },
    },
}
