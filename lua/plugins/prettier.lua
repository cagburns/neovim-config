return {
  "prettier/vim-prettier",
  build = "yarn install --frozen-lockfile --production",
  ft = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "css",
    "scss",
    "json",
    "graphql",
    "markdown",
    "html",
    "yaml",
    "lua",
  },
  config = function()
    -- Auto-format on save
    vim.g["prettier#autoformat"] = 1
    -- vim.g["prettier#autoformat_require_pragma"] = 0
    -- vim.g["prettier#config#single_quote"] = "true"
    -- vim.g["prettier#config#trailing_comma"] = "none"
    -- vim.g["prettier#config#semi"] = "true"
  end,
}
