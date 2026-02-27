-- https://github.com/ThePrimeagen/refactoring.nvim
return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    show_success_message = true,
  },
  keys = {
    { "<leader>r", "", desc = "+refactor", mode = { "n", "x" } },
    {
      "<leader>rx",
      function()
        return require("refactoring").refactor("Extract Variable")
      end,
      mode = { "n", "x" },
      desc = "Extract Variable",
      expr = true,
    },
    {
      "<leader>ri",
      function()
        return require("refactoring").refactor("Inline Variable")
      end,
      mode = { "n", "x" },
      desc = "Inline Variable",
      expr = true,
    },
    {
      "<leader>rX",
      function()
        return require("refactoring").refactor("Extract Function")
      end,
      mode = { "n", "x" },
      desc = "Extract Function",
      expr = true,
    },
    {
      "<leader>rI",
      function()
        return require("refactoring").refactor("Inline Function")
      end,
      mode = { "n", "x" },
      desc = "Inline Function",
      expr = true,
    },
  },
}
