-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Open the file explorer at the current projects directory
vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "Explorer (Project Directory)" })
