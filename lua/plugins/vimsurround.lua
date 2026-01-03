return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        visual = "m",
        visual_line = "gS",
      },
    })
  end,
}
