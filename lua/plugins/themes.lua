return {
  { "projekt0n/github-nvim-theme", name = "github-theme", lazy = false, priority = 1000,
    config = function()
      require("github-theme").setup({
        options = { styles = { comments = "italic", keywords = "bold", functions = "italic,bold" } },
      })
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = { treesitter = true, telescope = { enabled = true }, neotree = true, gitsigns = true, which_key = true },
      })
    end,
  },
  { "rebelot/kanagawa.nvim", name = "kanagawa", lazy = false, priority = 1000,
    config = function()
      require("kanagawa").setup({ theme = "wave" })
    end,
  },
}
