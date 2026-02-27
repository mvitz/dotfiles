return {
  -- https://github.com/neovim/nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      -- https://github.com/mason-org/mason-lspconfig.nvim
      { "mason-org/mason-lspconfig.nvim", config = function() end },
    },
    opts = {
      diagnostics = {
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = " ",
            [vim.diagnostic.severity.INFO] = " ",
          },
        },
        underline = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "●",
        },
      },
      servers = {
        -- configuration for all lsp servers
        ["*"] = {
          capabilities = {
            workspace = {
              fileOperations = {
                didRename = true,
                willRename = true,
              },
            },
          },
        },
      },
      keys = {
        {
          "<leader>cl",
          function()
            Snacks.picker.lsp_config()
          end,
          desc = "Lsp Info",
        },
        { "gd", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
        { "gr", vim.lsp.buf.references, desc = "References", nowait = true },
        { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation" },
        { "gy", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
        { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
        {
          "K",
          function()
            return vim.lsp.buf.hover()
          end,
          desc = "Hover",
        },
        { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "x" }, has = "codeAction" },
        { "<leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
      },
    },
    config = function(_, opts)
      vim.diagnostic.config(opts.diagnostics)

      for _, keySpec in pairs(opts.keys) do
        local key = vim.deepcopy(keySpec)
        key.mode = key.mode or "n"

        local mode = key.mode
        local lhs = key[1]
        local rhs = key[2]

        key[1] = nil
        key[2] = nil

        if key.has then
          local has = key.has
          local method = has:find("/") and has or ("textDocument/" .. has)
          key.lsp = { method }
        end

        Snacks.keymap.set(mode, lhs, rhs, key)
      end

      vim.lsp.config("*", opts.servers["*"])
      for server, server_opts in pairs(opts.servers) do
        if server ~= "*" then
          vim.lsp.config(server, server_opts)
          vim.lsp.enable(server)
        end
      end
    end,
  },
  {
    "catppuccin/nvim",
    optional = true,
    opts = {
      lsp_styles = {
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
    },
  },
}
