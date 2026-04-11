vim.pack.add({ "https://github.com/folke/lazydev.nvim" })
require("lazydev").setup({
  ft = "lua", -- only load on lua files
  opts = {
    library = {
      -- Load luvit types when the `vim.uv` word is found
      "~/AppData/local/nvim-data/lazy/",
    },
  },
})
