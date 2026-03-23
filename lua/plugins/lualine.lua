return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event        = "VeryLazy",
    opts = {
        options = {
            theme                = "auto", -- pega o tema ativo automaticamente
            globalstatus         = true,   -- uma statusline só pra todos os splits
            component_separators = { left = "", right = "" },
            section_separators   = { left = "", right = "" },
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = { { "filename", path = 1 } }, -- path relativo
            lualine_x = { "encoding", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
    },
}
