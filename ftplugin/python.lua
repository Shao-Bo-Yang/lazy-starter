vim.b.slime_cell_delimiter = "#\\s\\=%%"
vim.keymap.set({ "n" }, "<s-i>", "<esc>i# %%<cr>", { desc = "[i]nsert code chunk" })
-- vim.keymap.set({ 'n' }, '<leader>ci', ':split term://ipython<cr>', { desc = '[c]ode repl [i]python' })
vim.keymap.set({ "n" }, [[<c-/>]], function()
  local terms = require("toggleterm.terminal")
  local py_env = os.getenv("VIRTUAL_ENV")
  if py_env ~= nil then
    py_env = py_env .. "/bin/activate"
  end
  if #terms.get_all() == 0 then
    if py_env == nil then
      vim.cmd([[
      TermExec cmd="env ipython"
    ]])
    else
      local cmd = "source " .. py_env .. ";" .. "env ipython"
      vim.cmd(string.format(
        [[
      TermExec cmd="%s"
    ]],
        cmd
      ))
    end
  else
    vim.cmd([[
      ToggleTerm
    ]])
  end
end, { desc = "Toggle ipython", silent = true })
