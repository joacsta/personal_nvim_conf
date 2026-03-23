return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy         = false,
    opts = {
        default_file_explorer = true, -- substitui o netrw
        delete_to_trash       = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
            show_hidden = false, -- <leader>h pra alternar
        },
        float = {
            padding        = 2,
            border         = "rounded",
        },
        keymaps = {
            ["<CR>"]  = "actions.select",
            ["<BS>"]  = "actions.parent",
            ["-"]     = "actions.parent",
            ["_"]     = "actions.open_cwd",
            ["<C-h>"] = "actions.toggle_hidden",
            ["<C-p>"] = "actions.preview",
            ["q"]     = "actions.close",
            ["?"]     = "actions.show_help",
        },
    },
    keys = {
        { "-", "<cmd>Oil<cr>", desc = "Abrir Oil" },
    },
}
