return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts  = {
        check_ts        = true, -- usa treesitter pra decisões mais inteligentes
        disable_filetype = { "TelescopePrompt" },
    },
}
