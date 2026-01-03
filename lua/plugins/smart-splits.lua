return {
  {
    "mrjones2014/smart-splits.nvim",
    keys = {
      -- Resize with Ctrl+Arrow keys
      { "<C-Left>", function() require("smart-splits").resize_left() end, desc = "Resize left" },
      { "<C-Down>", function() require("smart-splits").resize_down() end, desc = "Resize down" },
      { "<C-Up>", function() require("smart-splits").resize_up() end, desc = "Resize up" },
      { "<C-Right>", function() require("smart-splits").resize_right() end, desc = "Resize right" },
      -- Resize with Ctrl+hjkl
      { "<C-h>", function() require("smart-splits").resize_left() end, desc = "Resize left" },
      { "<C-j>", function() require("smart-splits").resize_down() end, desc = "Resize down" },
      { "<C-k>", function() require("smart-splits").resize_up() end, desc = "Resize up" },
      { "<C-l>", function() require("smart-splits").resize_right() end, desc = "Resize right" },
    },
    opts = {
      resize_mode = {
        silent = true,
        hooks = {
          on_enter = function()
            vim.notify("Entering resize mode")
          end,
          on_leave = function()
            vim.notify("Exiting resize mode", vim.log.levels.WARN)
          end,
        },
      },
    },
  },
}

