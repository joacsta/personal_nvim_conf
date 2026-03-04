return {
    {
        "nvimdev/dashboard-nvim",
        lazy         = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("dashboard").setup({
                theme = "hyper",
                config = {
                    header = {
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠤⢤",
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⢠⡇⠀⠀⠀⠀⢀⡰⠚⠉⠉⠀⠀⡰⠃",
                        "⠀⠀⠀⣀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢞⣴⡞⠁⢀⡠⠖⠉⠀⢀⣀⡠⠖⠉⠀⠀⠀",
                        "⢀⣤⣤⣿⢳⣿⣹⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⡶⠛⠿⢿⠿⠟⠉⣀⡴⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀",
                        "⠀⢷⣯⠛⡎⣿⢿⠀⠀⠀⠀⠀⠀⢰⣏⣀⣀⠺⠿⠿⠃⠀⠀⡜⠻⣷⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀",
                        "⠀⠈⢿⣧⢻⢸⢸⠀⠀⠀⠀⠀⠀⠻⡿⠿⠯⡝⠓⠶⣶⣲⠀⠀⠀⠘⣧⠘⢦⠀⠀⠀⠀⠀⠀⠀",
                        "⠀⠀⠀⢻⣻⠈⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣷⣾⣿⡇⢀⠈⠳⡀⠘⣧⠈⣇⠀⠀⠀⠀⠀⠀",
                        "⠀⠀⠀⠈⣿⣶⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⢰⡿⣠⣿⢷⣄⠹⡄⢹⡇⣿⠀⠀⠀⠀⠀⠀",
                        "⠀⠀⠀⣰⠇⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠽⣟⡵⣷⠏⠀⢹⠷⣽⣼⡇⡿⠀⠀⠀⠀⠀⠀",
                        "⠀⠀⣸⠿⢃⡞⠁⠀⢠⣏⣹⡭⡿⣄⠀⠀⠀⠈⠉⠉⠀⠀⢀⡴⠋⠀⣸⠟⣸⠃⠀⠀⠀⠀⠀⠀",
                        "⠀⢰⣿⠀⡾⠀⠀⠀⢰⣻⣿⠒⢳⡿⠀⠀⠀⠀⠀⢀⠴⠋⠉⠻⣦⡾⢃⡴⠃⠀⢀⣴⢏⢙⡆⠀",
                        "⠀⣿⣟⣠⣷⣦⡀⠀⠈⠁⠈⠻⣟⢿⡀⠀⢠⣴⣾⡃⠀⠀⠀⣠⣘⣷⣟⠁⠀⠀⢸⣗⣻⣿⣿⡆",
                        "⢠⡾⣏⠘⣯⢿⢷⠀⠀⠀⠀⠀⠸⡌⡿⢶⡿⢫⡾⠛⠛⠛⡟⠁⣨⢿⣻⣷⢆⣠⢞⣳⠼⠷⠟⠁",
                        "⢸⠃⠸⣧⠘⣾⣼⡧⠀⠀⠀⠀⠀⠙⠛⣞⣰⣏⠀⠀⠀⣠⢿⡤⢟⣦⣌⣹⢉⡴⠋⠀⠀⠀⠀⠀",
                        "⠀⠱⢦⣀⡿⣯⣝⢧⣀⠀⠀⠀⢠⣖⣒⡟⠀⠈⠙⣦⡾⣡⢎⣠⣾⠏⠀⠈⠉⠳⣦⡀⠀⠀⠀⠀",
                        "⠀⠀⠈⠛⠻⣷⣼⣧⣉⡳⢦⣤⡿⠿⡾⠁⠀⠀⣼⣿⣾⣿⠿⠿⣷⣶⣿⣶⠀⠀⠻⣷⠀⠀⠀⠀",
                        "⠀⠀⠀⠀⠀⠈⠳⢿⣯⣝⣷⡤⠧⢴⠏⠀⢀⣼⢿⢿⣠⠬⣷⣻⠛⠁⢀⡟⠷⣄⣠⣿⠀⠀⠀⠀",
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠺⠿⠿⣽⠀⠀⢸⡁⣼⡿⠁⠀⣹⣧⠴⠚⠁⠀⠀⡼⣻⢧⡀⠀⠀⠀",
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠘⠷⢿⡳⠦⠾⠓⢦⡀⢀⣠⡴⠊⠀⣨⣧⠗⠀⠀⠀",
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣄⠀⠀⠈⣿⠛⢳⡄⣈⡇⣿⣅⠀⣠⣾⡿⠋⠀⠀⠀⠀",
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⢤⠀⠙⠶⠾⢛⣫⣧⣼⣿⣯⠗⠋⠀⠀⠀⠀⠀⠀",
                        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠈⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                        "",
                        "",
                        "",
                    },
                    shortcut = {
                        { icon = " ", desc = "Arquivos",  action = "Telescope find_files", key = "f" },
                        { icon = " ", desc = "Grep",      action = "Telescope live_grep",  key = "g" },
                        { icon = " ", desc = "Lazy",      action = "Lazy",                 key = "l" },
                        { icon = " ", desc = "Recentes",  action = "Telescope oldfiles",   key = "r" },
                        { icon = " ", desc = "Sair",      action = "qa",                   key = "q" },
                    },
                    project = { enable = true, limit = 5, icon = " ", label = " Projetos recentes", action = "Telescope find_files cwd=" },
                    mru     = { limit = 5, icon = " ", label = " Arquivos recentes" },
                    footer  = function()
                        local v = vim.version()
                        return { string.format("  Neovim v%d.%d.%d", v.major, v.minor, v.patch) }
                    end,
                },
            })
            vim.api.nvim_create_autocmd("FileType", {
                pattern  = "dashboard",
                callback = function()
                    vim.opt.showtabline = 0
                    vim.api.nvim_create_autocmd("BufUnload", {
                        buffer   = 0,
                        callback = function() vim.opt.showtabline = 2 end,
                    })
                end,
            })
        end,
    },

    {
        "akinsho/bufferline.nvim",
        version = "*",
        event   = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { "<S-l>",      "<cmd>BufferLineCycleNext<CR>",  desc = "Próximo buffer" },
            { "<S-h>",      "<cmd>BufferLineCyclePrev<CR>",  desc = "Buffer anterior" },
            { "<leader>bp", "<cmd>BufferLineTogglePin<CR>",  desc = "Pin buffer" },
            { "<leader>bx", "<cmd>BufferLineCloseOthers<CR>", desc = "Fechar outros" },
        },
        opts = {
            options = {
                mode            = "buffers",
                separator_style = "slant",
                diagnostics     = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    return (level:match("error") and " " or " ") .. count
                end,
                offsets = {{
                    filetype  = "neo-tree",
                    text      = "  Explorer",
                    highlight = "Directory",
                    separator = true,
                }},
            },
        },
    },

    {
        "nvim-lualine/lualine.nvim",
        event        = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme                = "auto",
                    globalstatus         = true,
                    component_separators = { left = "", right = "" },
                    section_separators   = { left = "", right = "" },
                    disabled_filetypes   = { statusline = { "neo-tree", "lazy", "mason", "dashboard" } },
                },
                sections = {
                    lualine_a = { { "mode", icon = "" } },
                    lualine_b = {
                        { "branch", icon = "" },
                        { "diff", symbols = { added = " ", modified = " ", removed = " " } },
                    },
                    lualine_c = { { "filename", path = 1, symbols = { modified = "  ", readonly = "  " } } },
                    lualine_x = {
                        { "diagnostics", sources = { "nvim_lsp" }, symbols = { error = " ", warn = " ", hint = " ", info = " " } },
                        "encoding", "fileformat",
                        { "filetype", icon_only = false },
                    },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            })
        end,
    },

    {
        "folke/noice.nvim",
        event        = "VeryLazy",
        dependencies = { "MunifTanjim/nui.nvim" },
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"]                = true,
                    ["cmp.entry.get_documentation"]                  = true,
                },
            },
            presets = {
                bottom_search         = true,
                command_palette       = true,
                long_message_to_split = true,
                inc_rename            = false,
            },
        },
    },

    {
        "echasnovski/mini.hipatterns",
        event = { "BufReadPost", "BufNewFile" },
        version = "*",
        config = function()
            local hi = require("mini.hipatterns")
            hi.setup({
                highlighters = {
                    hex_color = hi.gen_highlighter.hex_color(),
                },
            })
        end,
    },

    {
        "echasnovski/mini.icons",
        version = "*",
        opts    = {},
        lazy    = true,
    },
}
