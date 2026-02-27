local map = vim.keymap.set

-- disable arrow keys
map("", "<Up>", "<NOP>") -- disable Up
map("", "<Right>", "<NOP>") -- disable Right
map("", "<Down>", "<NOP>") -- disable Down
map("", "<Left>", "<NOP>") -- disable Left

-- enter command mode with single keystroke
map("n", ";", ":") -- map ; to : in normal mode
map("n", ":", ";") -- map : to ; in normal mode

-- start external command with single keystroke
map("n", "!", ":!") -- map ! to :! in normal mode

-- fix some misspellings
map("ca", "ew", ":wq") -- map ew to :wq in command mode
map("ca", "qw", ":wq") -- map qw to :wq in command mode

-- easier exit of insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- save current file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- clear search highlighting when pressing escape
map({ "i", "n", "s" }, "<ESC>", function()
  vim.cmd("noh")
  return "<esc>"
end, { expr = true, desc = "Escape and Clear hlsearch" })

-- simplify system clipboard usage
map({ "n", "x" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
map({ "n", "x" }, "<leader>p", '"+p', { desc = "Paste from system clipboard after the cursor position" })
map({ "n", "x" }, "<leader>P", '"+P', { desc = "Paste from system clipboard before the cursor position" })

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  return function()
    vim.diagnostic.jump({
      count = (next and 1 or -1) * vim.v.count1,
      severity = severity and vim.diagnostic.severity[severity] or nil,
      float = true,
    })
  end
end
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
