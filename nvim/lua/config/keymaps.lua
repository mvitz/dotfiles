-- disable arrow keys
vim.keymap.set("", "<Up>", "<NOP>") -- disable Up
vim.keymap.set("", "<Right>", "<NOP>") -- disable Right
vim.keymap.set("", "<Down>", "<NOP>") -- disable Down
vim.keymap.set("", "<Left>", "<NOP>") -- disable Left

-- enter command mode with single keystroke
vim.keymap.set("n", ";", ":") -- map ; to : in normal mode
vim.keymap.set("n", ":", ";") -- map : to ; in normal mode

-- start external command with single keystroke
vim.keymap.set("n", "!", ":!") -- map ! to :! in normal mode

-- fix some misspellings
vim.keymap.set("ca", "ew", ":wq") -- map ew to :wq in command mode
vim.keymap.set("ca", "qw", ":wq") -- map qw to :wq in command mode

-- easier exit of insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- save current file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- clear search highlighting when pressing escape
vim.keymap.set({ "i", "n", "s" }, "<ESC>", function()
  vim.cmd("noh")
  return "<esc>"
end, { expr = true, desc = "Escape and Clear hlsearch" })

-- simplify system clipboard usage
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set({ "n", "x" }, "<leader>p", '"+p', { desc = "Paste from system clipboard after the cursor position" })
vim.keymap.set({ "n", "x" }, "<leader>P", '"+P', { desc = "Paste from system clipboard before the cursor position" })
