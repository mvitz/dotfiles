-- https://github.com/stevearc/conform.nvim
return {
  "stevearc/conform.nvim",
  lazy = true,
  cmd = "ConformInfo",
  keys = {
    {
      mode = { "n", "x" },
      "<leader>cf",
      function()
        require("conform").format()
      end,
      desc = "Format",
    },
    {
      mode = { "n", "x" },
      "<leader>cF",
      function()
        require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
      end,
      desc = "Format Injected Langs",
    },
  },
  opts = {
    default_format_opts = {
      async = false,
      lsp_format = "fallback",
      timeout_ms = 3000,
      quiet = false,
    },
    formatters = {
      injected = { options = { ignore_errors = true } },
    },
  },
}
