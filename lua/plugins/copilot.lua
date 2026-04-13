-- Avoid runtime npx installs (can fail on Windows cache file locks).
-- Use the language server bundled with copilot.vim instead.
vim.g.copilot_version = false
vim.g.copilot_npx_command = 0

vim.pack.add({
  "https://www.github.com/github/copilot.vim",
})
