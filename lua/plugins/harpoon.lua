vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  { src = "https://www.github.com/ThePrimeagen/harpoon", version = "harpoon2" },
})
local harpoon = require("harpoon")

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>hh", function()
  harpoon:list():add()
end, opts)
vim.keymap.set("n", "<leader>hl", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, opts)
vim.keymap.set("n", "<leader>ha", function()
  harpoon:list():select(1)
end, opts)
vim.keymap.set("n", "<leader>hs", function()
  harpoon:list():select(2)
end, opts)
vim.keymap.set("n", "<leader>hd", function()
  harpoon:list():select(3)
end, opts)
vim.keymap.set("n", "<leader>hf", function()
  harpoon:list():select(4)
end, opts)
vim.keymap.set("n", "<leader>hg", function()
  harpoon:list():select(5)
end, opts)

vim.keymap.set("n", "<leader>hp", function()
  harpoon:list():prev()
end, opts)
vim.keymap.set("n", "<leader>hn", function()
  harpoon:list():next()
end, opts)

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
    .new({}, {
      prompt_title = "Harpoon",
      finder = require("telescope.finders").new_table({
        results = file_paths,
      }),
      previewer = conf.file_previewer({}),
      sorter = conf.generic_sorter({}),
    })
    :find()
end

vim.keymap.set("n", "<leader>fh", function()
  toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })
