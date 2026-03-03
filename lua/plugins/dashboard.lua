return {
    {
        "nvimdev/dashboard-nvim",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("dashboard").setup({
                theme = "hyper", -- hyper ou doom

                config = {
                    -- ═══════════════════════════════════════════
                    --  Header
                    -- ═══════════════════════════════════════════
                    header = {
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
                        "",},

-- ═══════════════════════════════════════════
--  Atalhos rápidos (tema hyper)
-- ═══════════════════════════════════════════
shortcut = {
    {
        icon = " ",
        desc = "Arquivos",
        action = "Telescope find_files",
        key = "f",
    },
    {
        icon = " ",
        desc = "Grep",
        action = "Telescope live_grep",
        key = "g",
    },
    {
        icon = " ",
        desc = "Lazy",
        action = "Lazy",
        key = "l",
    },
    {
        icon = " ",
        desc = "Recentes",
        action = "Telescope oldfiles",
        key = "r",
    },
    {
        icon = " ",
        desc = "Sair",
        action = "qa",
        key = "q",
    },
},

-- ═══════════════════════════════════════════
--  Projetos recentes
-- ═══════════════════════════════════════════
project = {
    enable = true,
    limit  = 5,
    icon   = " ",
    label  = " Projetos recentes",
    action = "Telescope find_files cwd=",
},

-- ═══════════════════════════════════════════
--  Arquivos recentes
-- ═══════════════════════════════════════════
mru = {
    limit = 5,
    icon  = " ",
    label = " Arquivos recentes",
},

-- ═══════════════════════════════════════════
--  Footer
-- ═══════════════════════════════════════════
footer = function()
    local version = vim.version()
    return {
        string.format(
            "  Neovim v%d.%d.%d",
            version.major, version.minor, version.patch
        ),
    }
end,
        },
    })

    -- Esconde bufferline quando dashboard está aberto
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "dashboard",
        callback = function()
            vim.opt.showtabline = 0
            vim.api.nvim_create_autocmd("BufUnload", {
                buffer = 0,
                callback = function()
                    vim.opt.showtabline = 2
                end,
            })
        end,
    })
end,
},
}
