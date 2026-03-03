return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")

      wk.setup({
        preset = "modern",
        delay  = 300, -- ms para aparecer
        icons  = {
          breadcrumb = "»",
          separator  = "➜",
          group      = " ",
        },
        win = {
          border   = "rounded",
          padding  = { 1, 2 },
        },
      })

      -- ═══════════════════════════════════════════
      --  Grupos de prefixos
      -- ═══════════════════════════════════════════
      wk.add({
          { "<leader>f", group = "Telescope/Busca", icon = { icon = "", color = "blue" } },
          { "<leader>g", group = "Git",             icon = { icon = "", color = "orange" } },
          { "<leader>r", group = "Renomear",        icon = { icon = "󰑕", color = "yellow" } },
          { "<leader>c", group = "Code Action",     icon = { icon = " ", color = "green" } },
          { "<leader>d", group = "Diagnóstico",     icon = { icon = "", color = "red" } },
          { "<leader>b", group = "Buffers",         icon = { icon = "󰓩", color = "cyan" } },
          { "<leader>o", desc  = "Focar Neo-tree",  icon = { icon = "", color = "yellow" } },
          { "<leader>v", desc  = "Project View",    icon = { icon = "󰕲", color = "purple" } },
          { "<leader>Q", desc = "Forçar saída", icon = { icon = "󰈆", color = "red" } },
      })
    end,
  },
}

