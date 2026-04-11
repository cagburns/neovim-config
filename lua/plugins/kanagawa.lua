vim.pack.add({
    "https://github.com/rebelot/kanagawa.nvim",
})

require("kanagawa").setup({
    commentStyle = { italic = true },
    statementStyle = { bold = true }
})
