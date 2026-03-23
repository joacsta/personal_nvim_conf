return {
    {
        "saghen/blink.cmp",
        event        = { "InsertEnter", "CmdlineEnter" },
        version      = "*",
        dependencies = { "rafamadriz/friendly-snippets" },
        opts = {
            keymap = {
                preset    = "default",
                ["<Tab>"]   = { "select_next", "snippet_forward", "fallback" },
                ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
                ["<CR>"]    = { "accept", "fallback" },
                ["<C-e>"]   = { "cancel" },
                ["<C-Space>"] = { "show" },
            },
            appearance = {
                use_nvim_cmp_as_default = false,
                nerd_font_variant       = "mono",
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
            completion = {
                menu          = { border = "rounded" },
                documentation = { window = { border = "rounded" } },
            },
        },
    },
}
