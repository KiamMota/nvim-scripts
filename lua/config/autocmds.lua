local autocmd = vim.api.nvim_create_autocmd

autocmd("BufNewFile", {
  pattern = "*.hpp",
  callback = function()
    local filename = vim.fn.expand("%:t")
    local guard = filename:gsub("%.", "_"):upper()
    local lines = {
      "#ifndef _" .. guard,
      "#define _" .. guard,
      "",
      "",
      "#endif // _" .. guard,
    }
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
    vim.api.nvim_win_set_cursor(0, { 4, 0 })
  end,
})
