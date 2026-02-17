-- UI
--vim.opt.background = "light"
vim.opt.colorcolumn = "+1" -- show colored margin at textwidth
vim.opt.cursorline = true -- enable highlighting of the current line
vim.opt.list = true -- show hidden characters
vim.opt.listchars = {
  tab = "»·", -- show »· for tab
  trail = "·", -- show · for trailing spaces
  nbsp = "␣", -- show ␣ for non breaking spaces
}
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true -- show relative line numbers

-- SEARCH
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- don't ignore case when pattern contains an upper-case character

-- INDENTATION
vim.opt.expandtab = true -- use spaces instead of tab
vim.opt.shiftwidth = 2 -- use two spaces for indent
vim.opt.smartindent = true -- use C syntax like rules for indentation
vim.opt.softtabstop = 2 -- display tab as two spaces during editing
vim.opt.tabstop = 2 -- display tab as two spaces

-- SCROLLING
vim.opt.sidescrolloff = 11 -- start scrolling right/left when we're 11 columns away from margins
vim.opt.scrolloff = 8 -- start scrolling up/down when we're 8 lines away from margins
