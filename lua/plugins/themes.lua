return {
    -- ═══════════════════════════════════════════
    --  GitHub Theme
    -- ═══════════════════════════════════════════
    {
        "projekt0n/github-nvim-theme",
        lazy = false,
        priority = 1000,
        config = function()
            require("github-theme").setup({
                options = {
                    transparent = true,
                    styles = {
                        comments  = "italic",
                        keywords  = "bold",
                        functions = "italic,bold",
                    },
                },
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  Catppuccin
    -- ═══════════════════════════════════════════
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            local themes = { "frappe", "macchiato", "mocha" }
            math.randomseed(os.time())
            local chosen = themes[math.random(#themes)]

            require("catppuccin").setup({
                flavour = chosen,
                transparent_background = false,
                styles = {
                    comments  = { "italic" },
                    keywords  = { "bold" },
                    functions = { "italic", "bold" },
                },
                integrations = {
                    treesitter  = true,
                    telescope   = { enabled = true },
                    neotree     = true,
                    gitsigns    = true,
                    cmp         = true,
                    mason       = true,
                    which_key   = true,
                    lsp_trouble = true,
                },
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  Kanagawa
    -- ═══════════════════════════════════════════
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = false,
        priority = 1000,
        config = function()
            local themes = { "wave", "dragon" }
            math.randomseed(os.time())
            local chosen = themes[math.random(#themes)]

            require("kanagawa").setup({
                transparent = false,
                styles = {
                    comments  = { italic = true },
                    keywords  = { bold = true },
                    functions = { italic = true, bold = true },
                },
                theme = chosen,
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  Tokyonight
    -- ═══════════════════════════════════════════
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                transparent = false,
                styles = {
                    comments  = { italic = true },
                    keywords  = { bold = true },
                    functions = { italic = true, bold = true },
                },
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  Dracula
    -- ═══════════════════════════════════════════
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        lazy = false,
        priority = 1000,
        config = function()
            require("dracula").setup({
                transparent = false,
                styles = {
                    comments  = { italic = true },
                    keywords  = { bold = true },
                    functions = { italic = true, bold = true },
                },
            })
        end,
    },

    -- ═══════════════════════════════════════════
    --  Everforest
    -- ═══════════════════════════════════════════
    {
        "sainnhe/everforest",
        name = "everforest",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.everforest_background         = "hard" -- soft, medium, hard
            vim.g.everforest_better_performance = 1
            vim.g.everforest_enable_italic      = 1
        end,
    },
}
