return {
  {
    "sindrets/winshift.nvim",
    cmd = "WinShift",
    keys = {
      { "<leader>ww", "<cmd>WinShift<cr>", desc = "WinShift" },
      { "<C-w>m", "<cmd>WinShift<cr>", desc = "WinShift" },
    },
    config = function()
      require("winshift").setup({
        highlight_moving_win = true,
        focused_hl_group = "Visual",
        moving_win_options = {
          wrap = false,
          cursorline = false,
        },
      })
    end,
  },
}

