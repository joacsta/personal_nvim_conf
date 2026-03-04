return {
  {
    "saghen/blink.cmp",
    event        = { "InsertEnter", "CmdlineEnter" },
    version      = "*",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"]   = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"]    = { "accept", "fallback" },
        ["<C-e>"]   = { "cancel" },
        ["<C-Space>"] = { "show" },
      },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      completion = {
        menu      = { border = "rounded" },
        documentation = { window = { border = "rounded" } },
      },
    },
  },

  {
    "echasnovski/mini.pairs",
    event   = "VeryLazy",
    version = "*",
    opts    = {},
  },

  {
    "echasnovski/mini.ai",
    event   = "VeryLazy",
    version = "*",
    opts    = {},
  },

  {
    "kylechui/nvim-surround",
    event   = "VeryLazy",
    version = "*",
    opts    = {},
  },

  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts  = {},
  },
}
