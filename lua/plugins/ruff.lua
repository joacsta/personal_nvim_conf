return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                ruff = {
                    settings = {
                        ruff = {
                            lineLength = 88,
                            fix        = true,
                            lint       = {
                                select = { "E", "W", "F", "I", "N", "UP" },
                                isort  = {
                                    forceSortWithinSections = true,
                                },
                            },
                            format     = {
                                quoteStyle         = "double",
                                indentStyle        = "space",
                                magicTrailingComma = false,
                            },
                        },
                    },
                },
            },
        },
    },
}
