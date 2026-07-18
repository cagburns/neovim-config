vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_user_command('CopyFilePath', function()
   vim.fn.setreg('+', vim.fn.expand('%:p'))
   print("Copied absolute path: " .. vim.fn.expand('%:p'))
end, {})
