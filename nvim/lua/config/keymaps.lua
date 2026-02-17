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
