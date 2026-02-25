-- https://github.com/nvim-mini/mini.completion
return {
  {
    "nvim-mini/mini.completion",
    version = false,
    opts = {},
  },
  {
    "catppuccin/nvim",
    optional = true,
    opts = {
      integrations = {
        mini = {
          enabled = true,
          indentscope_color = "overlay2",
        },
      },
    },
  },
}
