return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    -- other dependencies from their docs
  },
  opts = {
    interactions = {
      chat = {
        adapter = "openai",
        model = "gpt-5-nano-2025-08-07",
      },
    },
    opts = {
      log_level = "debug",
    },
  },
  config = true,
}
