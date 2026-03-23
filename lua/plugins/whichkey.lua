return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts  = {
        delay = 500,
        icons = {
            rules    = false,
            mappings = false,
        },
        spec = {
            -- ─── Grupos ─────────────────────────────────
            { "<leader>f", group = "find" },
            { "<leader>p", group = "grep" },
            { "<leader>w", group = "window" },
            { "<leader>h", group = "hunk (git)" },

            -- ─── Geral ──────────────────────────────────
            { "<leader>s", desc = "Substituir palavra no arquivo" },
            { "<leader>y", desc = "Copiar para clipboard",        mode = { "n", "v" } },

            -- ─── Splits ─────────────────────────────────
            { "<leader>|",  desc = "Split vertical" },
            { "<leader>-",  desc = "Split horizontal" },
            { "<leader>wq", desc = "Fechar janela" },

            -- ─── Find (Telescope) ────────────────────────
            { "<leader>ff", desc = "Find files" },
            { "<leader>fg", desc = "Git files" },
            { "<leader>fr", desc = "Live grep" },
            { "<leader>fb", desc = "Buffers" },
            { "<leader>fh", desc = "Hidden files" },

            -- ─── Grep (Telescope) ────────────────────────
            { "<leader>pws", desc = "Grep word sob cursor" },
            { "<leader>pWs", desc = "Grep WORD sob cursor" },

            -- ─── LSP ────────────────────────────────────
            { "gd",  desc = "Go to definition" },
            { "gr",  desc = "References" },
            { "gD",  desc = "Go to declaration" },
            { "gi",  desc = "Go to implementation" },
            { "K",   desc = "Hover doc" },
            { "<leader>ca", desc = "Code action" },
            { "<leader>rn", desc = "Rename" },
            { "<leader>d",  desc = "Diagnostics float" },
            { "]d",  desc = "Next diagnostic" },
            { "[d",  desc = "Prev diagnostic" },

            -- ─── Treesitter textobjects ──────────────────
            { "]f", desc = "Next function" },
            { "[f", desc = "Prev function" },
            { "]F", desc = "Next function end" },
            { "[F", desc = "Prev function end" },
            { "]c", desc = "Next class" },
            { "[c", desc = "Prev class" },
            { "]C", desc = "Next class end" },
            { "[C", desc = "Prev class end" },

            -- ─── Blink (completion) ──────────────────────
            { "<C-Space>", desc = "Abrir completion",  mode = "i" },
            { "<Tab>",     desc = "Próximo item",       mode = "i" },
            { "<S-Tab>",   desc = "Item anterior",      mode = "i" },
            { "<CR>",      desc = "Aceitar sugestão",   mode = "i" },
            { "<C-e>",     desc = "Fechar completion",  mode = "i" },

            -- ─── Oil ────────────────────────────────────
            { "-", desc = "Abrir Oil (file explorer)" },

            -- ─── Mover linhas ────────────────────────────
            { "<A-j>", desc = "Mover linha abaixo", mode = { "n", "v" } },
            { "<A-k>", desc = "Mover linha acima",  mode = { "n", "v" } },
        },
    },
}
