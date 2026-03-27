return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event        = "ColorScheme",
    opts = {
        options = {
            theme = function()
                local ok, theme = pcall(require, "lualine.themes." .. (vim.g.colors_name or "auto"))
                if ok then return theme end
                return "auto"
            end,
            globalstatus         = true,
            component_separators = { left = "", right = "" },
            section_separators   = { left = "", right = "" },
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = {
                { "filename", path = 1, symbols = { modified = "[+]", readonly = "[RO]" } },
            },
            lualine_x = { "encoding", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
    },
}
