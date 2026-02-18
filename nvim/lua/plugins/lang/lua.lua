return {
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "lua",
        "luadoc",
        "luap",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts_extend = { "formatters_by_ft" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "stylua",
      },
    },
  },
}
