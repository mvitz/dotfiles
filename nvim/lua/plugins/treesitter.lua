-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    version = false, -- last release is way too old and doesn't work on Windows
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "c_sharp",
        "clojure",
        "comment",
        "css",
        "csv",
        "diff",
        "dockerfile",
        "editorconfig",
        "embedded_template",
        "fsharp",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "gpg",
        "groovy",
        "hcl",
        "hocon",
        "html",
        "html_tags",
        "http",
        "hurl",
        "ini",
        "java",
        "javadoc",
        "javascript",
        "jinja",
        "jinja_inline",
        "jq",
        "jsdoc",
        "json",
        "json5",
        "jsx",
        "just",
        "kotlin",
        "make",
        "markdown",
        "markdown_inline",
        "nginx",
        "printf",
        "properties",
        "regex",
        "robots_txt",
        "ruby",
        "scss",
        "sql",
        "ssh_config",
        "styled",
        "superhtml",
        "templ",
        "terraform",
        "tmux",
        "toml",
        "tsv",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "xml",
        "yaml",
      },
    },
    config = function(_, opts)
      local filetypes = opts.ensure_installed or {}
      if #filetypes > 0 then
        require("nvim-treesitter").install(filetypes)
        vim.api.nvim_create_autocmd("FileType", {
          pattern = filetypes,
          callback = function()
            vim.treesitter.start()
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end,
        })
      end
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "tree-sitter-cli",
      },
    },
  },
}
