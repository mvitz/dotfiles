-- https://github.com/nvim-mini/mini.icons
return {
  "nvim-mini/mini.icons",
  version = false,
  lazy = true,
  opts = {},
  init = function(_)
    package.preload["nvim-web-devicons"] = function()
      require("mini.icons").mock_nvim_web_devicons()
      return package.loaded["nvim-web-devicons"]
    end
  end,
}
