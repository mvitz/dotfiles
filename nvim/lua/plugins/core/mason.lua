return {
  {
    -- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {},
  },
  {
    -- https://github.com/mason-org/mason.nvim
    "mason-org/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
    keys = {
      { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
  {
    "catppuccin/nvim",
    optional = true,
    opts = {
      integrations = {
        mason = true,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts_extend = { "extensions" },
    opts = {
      extensions = { "mason" },
    },
  },
}
