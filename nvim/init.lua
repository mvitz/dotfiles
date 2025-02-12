require('config.lazy')

-- GENERAL
vim.opt.number = true   -- show line numbers
vim.opt.showmode = true -- show current mode at the bottom
vim.opt.list = true     -- show hidden characters
vim.opt.listchars = {
    tab = '»·',         -- show »· for tab
    trail = '·',        -- show · for trailing spaces
}

-- SEARCH
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true  -- don't ignore case when pattern contains an upper-case character

-- INDENTATION
vim.opt.autoindent = true  -- indent line on enter based on previous one
vim.opt.smartindent = true -- use C syntax like rules for indentation
vim.opt.expandtab = true   -- use spaces instead of tab
vim.opt.tabstop = 2        -- display tab as two spaces
vim.opt.softtabstop = 2    -- display tab as two spaces during editing
vim.opt.shiftwidth = 2     -- use two spaces for indent

-- KEYS
-- disable arrow keys
vim.keymap.set('', '<Up>', '<NOP>')    -- disable Up
vim.keymap.set('', '<Right>', '<NOP>') -- disable Right
vim.keymap.set('', '<Down>', '<NOP>')  -- disable Down
vim.keymap.set('', '<Left>', '<NOP>')  -- disable Left

-- goto previous tab
vim.keymap.set('', 'gb', 'gT')         -- map gb to gT in normal, visual, and operator-pending mode

-- enter command mode with single keystroke
vim.keymap.set('n', ';', ':')          -- map ; to : in normal mode
vim.keymap.set('n', ':', ';')          -- map : to ; in normal mode

-- start external command with single keystroke
vim.keymap.set('n', '!', ':!')         -- map ! to :! in normal mode

-- fix some misspellings
vim.keymap.set('ca', 'ew', ':wq')      -- map ew to :wq in command mode
vim.keymap.set('ca', 'qw', ':wq')      -- map qw to :wq in command mode

-- COLORS
--vim.opt.background = 'light'

require('lazy').setup({
    spec = {
        -- import plugins from plugin directory
        { import = 'plugins' },
    },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
