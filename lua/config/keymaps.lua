-- Move word by word in insert mode with Alt/Option + arrows
vim.keymap.set("i", "<M-f>", "<C-o>w", { desc = "Move forward one word" })
vim.keymap.set("i", "<M-b>", "<C-o>b", { desc = "Move backward one word" })
-- Copy relative path
vim.keymap.set("n", "<leader>yr", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  print("Copied: " .. path)
end, { desc = "Yank relative path" })

-- Copy absolute path
vim.keymap.set("n", "<leader>ya", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("Copied: " .. path)
end, { desc = "Yank absolute path" })

-- Resize window using <ctrl> hjkl keys
vim.keymap.set("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
