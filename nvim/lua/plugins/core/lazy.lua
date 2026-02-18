-- https://github.com/folke/lazy.nvim
return {
  {
    "folke/lazy.nvim",
    tag = "stable",
    init = function(_)
      vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts_extend = { "extensions" },
    opts = {
      extensions = { "lazy" },
    },
  },
}
