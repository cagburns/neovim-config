vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
  animate = { enabled = true },
  bigfile = { enabled = true },
  dashboard = { enabled = true },
  explorer = { enabled = false },
  indent = { enabled = false },
  input = { enabled = true },
  image = { enabled = false },
  picker = { enabled = false },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  scratch = { enabled = false },
  terminal = { enabled = false },
  statuscolumn = { enabled = true },
  lazygit = { enabled = false },
  words = { enabled = false },
})
