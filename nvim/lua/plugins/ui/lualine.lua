return {
  -- https://github.com/nvim-lualine/lualine.nvim
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-mini/mini.icons" },
  event = "VeryLazy",
  opts = {
    options = {
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        {
          "filetype",
          icon_only = true,
          separator = "",
          padding = { left = 1, right = 0 },
        },
        "filename",
      },
      lualine_x = {
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
        },
        {
          "diff",
          symbols = {
            added = " ",
            modified = " ",
            removed = " ",
          },
        },
      },
    },
    extensions = { "lazy" },
  },
  init = function()
    vim.opt.statusline = " " -- set an empty statusline till lualine loads
    vim.opt.showmode = false -- don't show the mode, since it's already in the status line
  end,
}
