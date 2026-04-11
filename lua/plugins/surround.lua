vim.pack.add({ "https://github.com/kylechui/nvim-surround" })
require("nvim-surround").setup({
  version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
})
