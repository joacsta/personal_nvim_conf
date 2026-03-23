return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {
                    settings = {
                        python = {
                            analysis = {
                                autoImportCompletions  = true,
                                autoSearchPaths        = true,
                                useLibraryCodeForTypes = true,
                                diagnosticMode         = "openFilesOnly",
                            },
                        },
                    },
                },
            },
        },
    },
}
