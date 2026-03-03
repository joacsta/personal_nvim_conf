return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({

        -- ═══════════════════════════════════════════
        --  Ícones no gutter
        -- ═══════════════════════════════════════════
        signs = {
          add          = { text = "▎" },
          change       = { text = "▎" },
          delete       = { text = "" },
          topdelete    = { text = "" },
          changedelete = { text = "▎" },
          untracked    = { text = "▎" },
        },

        -- ═══════════════════════════════════════════
        --  Configurações gerais
        -- ═══════════════════════════════════════════
        signcolumn         = true,
        numhl              = false,
        linehl             = false,
        word_diff          = false,
        watch_gitdir       = { follow_files = true },
        attach_to_untracked = true,
        current_line_blame = false, -- blame inline (toggle com <leader>gb)
        current_line_blame_opts = {
          virt_text         = true,
          virt_text_pos     = "eol",
          delay             = 500,
        },

        preview_config = {
          border   = "rounded",
          style    = "minimal",
          relative = "cursor",
          row      = 0,
          col      = 1,
        },

        -- ═══════════════════════════════════════════
        --  Keymaps
        -- ═══════════════════════════════════════════
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local map = vim.keymap.set

          local function opts(desc)
            return { buffer = bufnr, silent = true, noremap = true, desc = desc }
          end

          -- Navegação entre hunks
          map("n", "]h", gs.next_hunk,        opts("Próximo hunk"))
          map("n", "[h", gs.prev_hunk,        opts("Hunk anterior"))

          -- Ações
          map("n", "<leader>gs", gs.stage_hunk,           opts("Stage hunk"))
          map("n", "<leader>gr", gs.reset_hunk,           opts("Reset hunk"))
          map("n", "<leader>gS", gs.stage_buffer,         opts("Stage buffer"))
          map("n", "<leader>gu", gs.undo_stage_hunk,      opts("Undo stage hunk"))
          map("n", "<leader>gR", gs.reset_buffer,         opts("Reset buffer"))
          map("n", "<leader>gh", gs.preview_hunk,         opts("Preview hunk"))
          map("n", "<leader>gb", gs.toggle_current_line_blame, opts("Toggle blame"))
          map("n", "<leader>gd", gs.diffthis,             opts("Diff this"))

          -- Seleção visual de hunks
          map("v", "<leader>gs", function()
            gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
          end, opts("Stage hunk selecionado"))

          map("v", "<leader>gr", function()
            gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
          end, opts("Reset hunk selecionado"))
        end,
      })
    end,
  },
}
