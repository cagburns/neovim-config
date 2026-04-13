vim.pack.add({"https://github.com/folke/persistence.nvim"})
require("persistence").setup({
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
})
