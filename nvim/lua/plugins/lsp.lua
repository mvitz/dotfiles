return {
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "omnisharp",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.omnisharp.setup({
                cmd = {
                    "/Users/mvitz/.local/share/nvim/mason/packages/omnisharp/omnisharp",
                },
            })

            vim.keymap.set(
                { "n", "v" },
                "<space>ca",
                vim.lsp.buf.code_action,
                {}
            )
        end,
    },
}
