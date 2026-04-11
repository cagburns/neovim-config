vim.pack.add({ "https://github.com/folke/trouble.nvim" })
require("trouble").setup({
  cmd = "Trouble",
  auto_close = true,
  focus = true,
})
