return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if not ok then return end
      configs.setup({
        ensure_installed = {
          "lua", "vim", "vimdoc",
          "python", "javascript", "typescript",
          "html", "css", "json", "yaml", "toml",
          "bash", "markdown", "markdown_inline",
          "c", "cpp",
        },
        sync_install    = false,
        auto_install    = true,
        highlight       = { enable = true, additional_vim_regex_highlighting = false },
        indent          = { enable = true },
      })
    end,
  },
  { "nvim-treesitter/nvim-treesitter-textobjects", lazy = true },
  { "windwp/nvim-ts-autotag", event = { "BufReadPost", "BufNewFile" } },
}
