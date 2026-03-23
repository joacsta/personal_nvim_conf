return {
    "saghen/blink.cmp",
    version      = "1.*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    opts = {
        keymap = {
            preset = "default",
            ["<Tab>"]   = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },
            ["<CR>"]    = { "accept", "fallback" },
            ["<C-space>"] = { "show", "fallback" },
            ["<C-e>"]   = { "hide" },
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        completion = {
            documentation = {
                auto_show       = true,
                auto_show_delay_ms = 200,
            },
            ghost_text = { enabled = true },
        },
        signature = { enabled = true },
    },
}
