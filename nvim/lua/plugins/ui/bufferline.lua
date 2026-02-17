return {
  -- https://github.com/akinsho/bufferline.nvim
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-mini/mini.icons" },
  event = "VeryLazy",
  after = "catppuccin",
  opts = {
    options = {
      always_show_bufferline = false,
    },
  },
  keys = {
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
}
