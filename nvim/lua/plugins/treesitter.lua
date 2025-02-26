return {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.3",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "bash",
                "css",
                "csv",
                "diff",
                "dockerfile",
                "editorconfig",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "gpg",
                "html",
                "http",
                "hurl",
                "java",
                "javascript",
                "jq",
                "json",
                "json5",
                "just",
                "lua",
                "markdown",
                "nginx",
                "printf",
                "properties",
                "regex",
                "ruby",
                "scss",
                "sql",
                "ssh_config",
                "terraform",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "xml",
                "yaml",
            },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })
    end,
}
