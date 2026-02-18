-- https://github.com/folke/flash.nvim
return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  opts = {},
  keys = {
    {
      mode = { "n", "x", "o" },
      "s",
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      mode = { "n", "x", "o" },
      "S",
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      mode = { "c" },
      "<C-s>",
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
}
