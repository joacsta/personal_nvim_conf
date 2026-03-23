return {
    "nvim-telescope/telescope.nvim",
    branch       = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    cmd  = "Telescope",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>",          desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope git_files<cr>",           desc = "Git Files" },
        { "<leader>fr", "<cmd>Telescope live_grep<cr>",           desc = "Live Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",             desc = "Buffers" },
        { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "Hidden Files" },
    },
    config = function()
        local telescope = require("telescope")
        local builtin   = require("telescope.builtin")

        telescope.setup({
            extensions = {
                fzf = {},
            },
        })
        telescope.load_extension("fzf")

        -- grep word sob cursor
        vim.keymap.set("n", "<leader>pws", function()
            builtin.grep_string({ search = vim.fn.expand("<cword>") })
        end)
        vim.keymap.set("n", "<leader>pWs", function()
            builtin.grep_string({ search = vim.fn.expand("<cWORD>") })
        end)
    end,
}
