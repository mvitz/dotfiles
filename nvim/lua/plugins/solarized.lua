return {
    "ishan9299/nvim-solarized-lua",
    lazy = false, -- load during startup
    priority = 1000, -- load before all other plugins
    config = function()
        vim.cmd([[colorscheme solarized]])
    end,
}
