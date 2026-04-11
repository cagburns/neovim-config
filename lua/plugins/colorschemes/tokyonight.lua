vim.pack.add({ "folke/tokyonight.nvim" })
require("tokyonight").setup({
  lazy = false,
  priority = 1000,
  opts = {},
  style = "night",
})
