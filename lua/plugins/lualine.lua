return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local function diff_source()
        local gitsigns = vim.b.gitsigns_status_dict
        if gitsigns then
          return {
            added    = gitsigns.added,
            modified = gitsigns.changed,
            removed  = gitsigns.removed,
          }
        end
      end

      require("lualine").setup({
        options = {
          theme                = "auto", -- se adapta ao tema ativo
          globalstatus         = true,
          component_separators = { left = "", right = "" },
          section_separators   = { left = "", right = "" },
          disabled_filetypes   = { statusline = { "neo-tree", "lazy", "mason" } },
        },

        sections = {
          lualine_a = {
            { "mode", icon = "" },
          },
          lualine_b = {
            { "branch", icon = "" },
            { "diff", source = diff_source,
              symbols = { added = " ", modified = " ", removed = " " },
            },
          },
          lualine_c = {
            { "filename",
              path = 1, -- 0=nome, 1=relativo, 2=absoluto
              symbols = {
                modified = "  ",
                readonly = "  ",
                unnamed  = "  ",
              },
            },
          },
          lualine_x = {
            { "diagnostics",
              sources  = { "nvim_lsp" },
              symbols  = { error = " ", warn = " ", hint = " ", info = " " },
            },
            { "encoding" },
            { "fileformat" },
            { "filetype", icon_only = false },
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },

        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
      })
    end,
  },
}
