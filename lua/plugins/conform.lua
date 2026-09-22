vim.pack.add({ "https://www.github.com/stevearc/conform.nvim" })
local conform = require("conform")

conform.setup({
  event = { "BufReadPre", "BufNewFile" },
  formatters_by_ft = (function()
    local m = {}
    if vim.fn.executable("stylua") == 1 then
      m.lua = { "stylua" }
    end
    if vim.fn.executable("prettier") == 1 then
      for _, ft in ipairs({ "javascript", "typescript", "javascriptreact", "typescriptreact", "css", "scss", "less", "html", "json", "yaml", "markdown" }) do
        m[ft] = { "prettier" }
      end
    end
    return m
  end)(),
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>rf", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format file or range (in visual mode)" })
