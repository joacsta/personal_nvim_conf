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
            -- vim.cmd.colorscheme("github_dark")
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
                flavour = "mocha", -- latte, frappe, macchiato, mocha
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
                theme = chosen,
            })
            -- vim.cmd.colorscheme("catppuccin mocha")
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
        end

    },
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
        end


    }
}
