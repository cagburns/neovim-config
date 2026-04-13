vim.pack.add({
  "https://github.com/prettier/vim-prettier",
})
require("vim-prettier").setup({
  ft = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "css",
    "scss",
    "less",
    "json",
    "graphql",
    "markdown",
    "html",
    "yaml",
    "lua",
  },
})

vim.g["prettier#autoformat"] = 1
vim.g["prettier#autoformat_require_pragma"] = 0
vim.g["prettier#config#single_quote"] = "true"
vim.g["prettier#config#trailing_comma"] = "none"
vim.g["prettier#config#semi"] = "true"
