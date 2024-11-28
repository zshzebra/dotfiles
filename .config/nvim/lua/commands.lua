vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd("BufWritePost", {
  group = "AutoFormat",
  callback = function()
    vim.cmd "silent Neoformat"
  end,
})
