vim.pack.add({ "https://www.github.com/nvim-neo-tree/neo-tree.nvim" })
require("neo-tree").setup({
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
})
