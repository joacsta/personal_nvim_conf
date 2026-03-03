return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if not ok then
        vim.notify("nvim-treesitter não carregado ainda, reinicie o Neovim", vim.log.levels.WARN)
        return
      end

      configs.setup({
        ensure_installed = {
          "lua", "vim", "vimdoc",
          "python", "javascript", "typescript",
          "html", "css", "json", "yaml", "toml",
          "bash", "markdown", "markdown_inline",
          "c", "cpp", "rust", "go",
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection    = "<C-space>",
            node_incremental  = "<C-space>",
            scope_incremental = "<C-s>",
            node_decremental  = "<M-space>",
          },
        },
      })
    end,
  },
}
