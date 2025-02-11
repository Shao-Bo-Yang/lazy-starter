-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local UserGroup = vim.api.nvim_create_augroup("__UserFormatFix", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
  group = UserGroup,
  callback = function()
    vim.cmd([[ set formatoptions-=cro ]])
  end,
})
