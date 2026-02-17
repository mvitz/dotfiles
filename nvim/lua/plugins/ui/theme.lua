return {
  -- https://github.com/catppuccin/nvim
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before all other plugins
  opts = {
    background = {
      dark = "macchiato",
      light = "latte",
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd([[colorscheme catppuccin]])
  end,
}
