-- https://github.com/catppuccin/nvim
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before all other plugins
    opts = {
      background = {
        dark = "macchiato",
        light = "latte",
      },
      default_integrations = false,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      opts.highlights = require("catppuccin.special.bufferline").get_theme()
    end,
  },
}
