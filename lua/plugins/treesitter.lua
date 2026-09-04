vim.pack.add({
"https://github.com/nvim-treesitter/nvim-treesitter" 
})
require("nvim-treesitter").setup({
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  ensure_installed = {
    "typescript",
    "javascript",
    "tsx",
    "html",
    "css",
    "scss",
    "c_sharp",
    "c",
    "json",
    "yaml",
    "lua",
    "vim",
    "vimdoc",
    "powershell",
  },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
})
