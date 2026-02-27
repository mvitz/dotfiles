-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-mini/mini.icons" },
  event = "VeryLazy",
  opts = {
    options = {
      always_show_bufferline = false,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(_, _, diag)
        local ret = (diag.error and " " .. diag.error .. " " or "")
          .. (diag.warning and " " .. diag.warning or "")
        return vim.trim(ret)
      end,
      show_buffer_close_icons = false,
      show_close_icon = false,
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
