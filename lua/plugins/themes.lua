return {
    -- ═══════════════════════════════════════════
    --  GitHub Theme
    -- ═══════════════════════════════════════════
{
    "projekt0n/github-nvim-theme",
    lazy     = false,
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
},    -- ═══════════════════════════════════════════
    --  Catppuccin
    -- ═══════════════════════════════════════════
    {
        "catppuccin/nvim",
        name     = "catppuccin",
        lazy     = false,
        priority = 1000,
        opts = {
            transparent_background = false,
            styles = {
                comments  = { "italic" },
                keywords  = { "bold" },
                functions = { "italic", "bold" },
            },
            integrations = {
                treesitter = true,
                telescope  = { enabled = true },
                neotree    = true,
                gitsigns   = true,
                cmp        = true,
                mason      = true,
                which_key  = true,
            },
        },
    },

    -- ═══════════════════════════════════════════
    --  Kanagawa
    -- ═══════════════════════════════════════════
    {
        "rebelot/kanagawa.nvim",
        lazy     = false,
        priority = 1000,
        opts = {
            transparent = false,
            styles = {
                comments  = { italic = true },
                keywords  = { bold   = true },
                functions = { italic = true, bold = true },
            },
        },
    },

    -- ═══════════════════════════════════════════
    --  Tokyonight
    -- ═══════════════════════════════════════════
    {
        "folke/tokyonight.nvim",
        lazy     = false,
        priority = 1000,
        opts = {
            transparent = false,
            styles = {
                comments  = { italic = true },
                keywords  = { bold   = true },
                functions = { italic = true, bold = true },
            },
        },
    },

    -- ═══════════════════════════════════════════
    --  Dracula
    -- ═══════════════════════════════════════════
    {
        "Mofiqul/dracula.nvim",
        lazy     = false,
        priority = 1000,
        opts = {
            transparent = false,
            styles = {
                comments  = { italic = true },
                keywords  = { bold   = true },
                functions = { italic = true, bold = true },
            },
        },
    },

    -- ═══════════════════════════════════════════
    --  Everforest
    -- ═══════════════════════════════════════════
    {
        "sainnhe/everforest",
        lazy     = false,
        priority = 1000,
        config = function()
            vim.g.everforest_background         = "hard"
            vim.g.everforest_better_performance = 1
            vim.g.everforest_enable_italic      = 1
        end,
    },
}
