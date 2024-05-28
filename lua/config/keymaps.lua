-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Toggle Term
vim.keymap.set({ "n" }, "<c-/>", function()
  vim.cmd([[ ToggleTerm ]])
end, { desc = "Toggle Term", silent = true })
