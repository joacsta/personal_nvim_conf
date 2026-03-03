return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
      { "<leader>o", "<cmd>Neotree focus<CR>",  desc = "Focar Neo-tree" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style   = "rounded",

        default_component_configs = {
          indent = {
            indent_size         = 2,
            with_markers        = true,
            indent_marker       = "│",
            last_indent_marker  = "└",
            highlight           = "NeoTreeIndentMarker",
          },
          icon = {
            folder_closed = "",
            folder_open   = "",
            folder_empty  = "󰜌",
            default       = "󰈙",
          },
          git_status = {
            symbols = {
              added     = " ",
              modified  = " ",
              deleted   = " ",
              renamed   = "󰁕 ",
              untracked = " ",
              ignored   = " ",
              unstaged  = "󰄱 ",
              staged    = " ",
              conflict  = " ",
            },
          },
        },

        window = {
          position = "left",
          width     = 30,
          mappings  = {
            ["<space>"] = "toggle_node",
            ["<CR>"]    = "open",
            ["s"]       = "open_vsplit",
            ["S"]       = "open_split",
            ["t"]       = "open_tabnew",
            ["w"]       = "open_with_window_picker",
            ["C"]       = "close_node",
            ["z"]       = "close_all_nodes",
            ["a"]       = "add",
            ["d"]       = "delete",
            ["r"]       = "rename",
            ["y"]       = "copy_to_clipboard",
            ["x"]       = "cut_to_clipboard",
            ["p"]       = "paste_from_clipboard",
            ["q"]       = "close_window",
            ["R"]       = "refresh",
            ["?"]       = "show_help",
          },
        },

        filesystem = {
          filtered_items = {
            visible         = false,
            hide_dotfiles   = false,
            hide_gitignored = true,
          },
          follow_current_file = {
            enabled = true,
          },
          use_libuv_file_watcher = true,
        },
      })
    end,
  },
}
