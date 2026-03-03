return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        cmd = "Telescope",
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<CR>",  desc = "Buscar arquivos" },
            { "<leader>fg", "<cmd>Telescope live_grep<CR>",   desc = "Buscar texto" },
            { "<leader>fb", "<cmd>Telescope buffers<CR>",     desc = "Buscar buffers" },
            { "<leader>fh", "<cmd>Telescope help_tags<CR>",   desc = "Buscar help" },
            { "<leader>fr", "<cmd>Telescope oldfiles<CR>",    desc = "Arquivos recentes" },
            { "<leader>fc", "<cmd>Telescope colorscheme<CR>", desc = "Trocar tema" },
            { "<leader>fd", "<cmd>Telescope diagnostics<CR>", desc = "Diagnósticos LSP" },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },
        config = function()
            local telescope = require("telescope")
            local actions   = require("telescope.actions")

            telescope.setup({
                defaults = {
                    prompt_prefix   = "   ",
                    selection_caret = "  ",
                    entry_prefix    = "  ",
                    sorting_strategy = "ascending",
                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                            preview_width   = 0.55,
                        },
                        width  = 0.87,
                        height = 0.80,
                    },
                    mappings = {
                        i = {
                            ["<C-k>"]    = actions.move_selection_previous,
                            ["<C-j>"]    = actions.move_selection_next,
                            ["<C-q>"]    = actions.send_selected_to_qflist + actions.open_qflist,
                            ["<Esc>"]    = actions.close,
                        },
                    },
                    file_ignore_patterns = {
                        "node_modules", ".git/", "dist/", "build/", "%.lock",
                    },
                    preview = {
                        treesitter = false, -- desativa highlight do treesitter no preview
                    },

                },
                pickers = {
                    find_files = {
                        hidden = true, -- mostra arquivos ocultos
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy                   = true,
                        override_generic_sorter = true,
                        override_file_sorter    = true,
                        case_mode               = "smart_case",
                    },
                },
            })

            telescope.load_extension("fzf")
        end,
    },
}
