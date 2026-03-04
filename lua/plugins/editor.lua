return {
  {
    "nvim-telescope/telescope.nvim",
    tag          = "0.1.8",
    cmd          = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>",  desc = "Buscar arquivos" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>",   desc = "Buscar texto" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>",     desc = "Buscar buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>",   desc = "Buscar help" },
      { "<leader>fr", "<cmd>Telescope oldfiles<CR>",    desc = "Arquivos recentes" },
      { "<leader>fc", "<cmd>Telescope colorscheme<CR>", desc = "Trocar tema" },
      { "<leader>fd", "<cmd>Telescope diagnostics<CR>", desc = "Diagnósticos" },
    },
    config = function()
      local telescope = require("telescope")
      local actions   = require("telescope.actions")
      telescope.setup({
        defaults = {
          prompt_prefix    = "   ",
          selection_caret  = "  ",
          sorting_strategy = "ascending",
          layout_config    = {
            horizontal = { prompt_position = "top", preview_width = 0.55 },
            width = 0.87, height = 0.80,
          },
          preview = { treesitter = false },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<Esc>"] = actions.close,
            },
          },
          file_ignore_patterns = { "node_modules", ".git/", "dist/", "build/" },
        },
        pickers = { find_files = { hidden = true } },
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

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch       = "v3.x",
    cmd          = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
      { "<leader>o", "<cmd>Neotree focus<CR>",  desc = "Focar Neo-tree" },
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style   = "rounded",
        default_component_configs = {
          icon = {
            folder_closed = "",
            folder_open   = "",
            folder_empty  = "󰜌",
          },
          git_status = {
            symbols = {
              added     = " ", modified  = " ",
              deleted   = "󱂥 ", renamed   = "󰁕 ",
              untracked = " ", ignored   = " ",
              unstaged  = "󰄱 ", staged   = "  ",
              conflict  = " ",
            },
          },
        },
        window = {
          position = "left",
          width    = 30,
          mappings = {
            ["<CR>"] = "open",
            ["s"]    = "open_vsplit",
            ["S"]    = "open_split",
            ["a"]    = "add",
            ["d"]    = "delete",
            ["r"]    = "rename",
            ["q"]    = "close_window",
            ["R"]    = "refresh",
          },
        },
        filesystem = {
          filtered_items      = { hide_dotfiles = false, hide_gitignored = true },
          follow_current_file = { enabled = true },
        },
      })
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts  = {
      signs = {
        add          = { text = "▎" },
        change       = { text = "▎" },
        delete       = { text = "" },
        topdelete    = { text = "" },
        changedelete = { text = "▎" },
      },
      on_attach = function(bufnr)
        local gs  = package.loaded.gitsigns
        local map = vim.keymap.set
        local function o(desc) return { buffer = bufnr, silent = true, desc = desc } end

        map("n", "]h", gs.next_hunk,                  o("Próximo hunk"))
        map("n", "[h", gs.prev_hunk,                  o("Hunk anterior"))
        map("n", "<leader>gs", gs.stage_hunk,          o("Stage hunk"))
        map("n", "<leader>gr", gs.reset_hunk,          o("Reset hunk"))
        map("n", "<leader>gS", gs.stage_buffer,        o("Stage buffer"))
        map("n", "<leader>gb", gs.toggle_current_line_blame, o("Toggle blame"))
        map("n", "<leader>gd", gs.diffthis,            o("Diff this"))
        map("n", "<leader>gh", gs.preview_hunk,        o("Preview hunk"))
      end,
    },
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts  = {},
    keys  = {
      { "s",     function() require("flash").jump() end,              desc = "Flash Jump",        mode = { "n", "x", "o" } },
      { "S",     function() require("flash").treesitter() end,        desc = "Flash Treesitter",  mode = { "n", "x", "o" } },
      { "r",     function() require("flash").remote() end,            desc = "Flash Remote",      mode = "o" },
      { "<C-s>", function() require("flash").toggle() end,            desc = "Toggle Flash",      mode = "c" },
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.setup({
        preset = "modern",
        delay  = 300,
        icons  = { breadcrumb = "»", separator = "➜", group = " " },
        win    = { border = "rounded", padding = { 1, 2 } },
      })
      wk.add({
        { "<leader>f", group = "Telescope/Busca",  icon = { icon = " ",  color = "blue" } },
        { "<leader>g", group = "Git",              icon = { icon = " ",  color = "orange" } },
        { "<leader>c", group = "Code",             icon = { icon = " ", color = "green" } },
        { "<leader>d", group = "Diagnóstico",      icon = { icon = " ",  color = "red" } },
        { "<leader>b", group = "Buffers",          icon = { icon = "󰓩 ",  color = "cyan" } },
        { "<leader>q", desc  = "Fechar buffer",    icon = { icon = "󰭌 ",  color = "red" } },
        { "<leader>Q", desc  = "Forçar saída",     icon = { icon = "󰈆 ",  color = "red" } },
        { "<leader>w", desc  = "Salvar",           icon = { icon = "󰆓 ",  color = "green" } },
        { "<leader>e", desc  = "Toggle Neo-tree",  icon = { icon = " ",  color = "yellow" } },
        { "<leader>o", desc  = "Focar Neo-tree",   icon = { icon = " ",  color = "yellow" } },
        { "<leader>v", desc  = "Project View",     icon = { icon = "󰕲 ",  color = "purple" } },
      })
    end,
  },

  {
    "folke/trouble.nvim",
    cmd  = { "Trouble" },
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>",                        desc = "Diagnósticos" },
      { "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",           desc = "Diagnósticos do buffer" },
      { "<leader>xs", "<cmd>Trouble symbols toggle focus=false<CR>",                desc = "Símbolos" },
      { "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>", desc = "LSP" },
      { "<leader>xq", "<cmd>Trouble qflist toggle<CR>",                             desc = "Quickfix" },
    },
    opts = {},
  },

  {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts         = {},
    keys = {
      { "<leader>st", "<cmd>TodoTelescope<CR>", desc = "Buscar TODOs" },
      { "]t", function() require("todo-comments").jump_next() end, desc = "Próximo TODO" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "TODO anterior" },
    },
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts  = {},
    keys  = {
      { "<leader>qs", function() require("persistence").load() end,                desc = "Restaurar sessão" },
      { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Última sessão" },
      { "<leader>qd", function() require("persistence").stop() end,                desc = "Não salvar sessão" },
    },
  },

  {
    "MagicDuck/grug-far.nvim",
    cmd  = { "GrugFar", "GrugFarWithin" },
    keys = {
      { "<leader>sr", "<cmd>GrugFar<CR>", desc = "Buscar e substituir" },
    },
    opts = {},
  },

  {
    "kdheepak/lazygit.nvim",
    cmd          = "LazyGit",
    keys         = { { "<leader>gg", "<cmd>LazyGit<CR>", desc = "LazyGit" } },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 0.9
    end,
  },
}
