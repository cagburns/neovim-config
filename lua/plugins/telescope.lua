vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://www.github.com/nvim-telescope/telescope.nvim",
  "https://www.github.com/nvim-telescope/telescope-ui-select.nvim",
  "https://www.github.com/nvim-telescope/telescope-fzf-native.nvim",
})

-- Run make in the fzf-native directory after pack sync
local fzf_path = vim.fn.stdpath("data") .. "/site/pack/nvim/opt/telescope-fzf-native.nvim"
if vim.fn.filereadable(fzf_path .. "/Makefile") == 1 and vim.fn.filereadable(fzf_path .. "/build/libfzf.so") == 0 then
  vim.fn.system({ "make", "-C", fzf_path })
end

local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local themes = require("telescope.themes")

local show_hidden = false

local function find_files_toggle_hidden()
  show_hidden = not show_hidden
  builtin.find_files({
    hidden = show_hidden,
  })
end

telescope.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    file_ignore_patterns = { "node_modules", "dist" },
    mappings = {
      i = {
        ["<C-u>"] = false,
      },
      n = {
        ["<C-h>"] = function(prompt_bufnr)
          actions.close(prompt_bufnr)
          find_files_toggle_hidden()
        end,
      },
    },
    path_display = { "truncate" },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  extensions = {
    ["ui-select"] = {
      themes.get_dropdown({}),
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent" })
-- vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" }) -- currently taken by harpoon
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Key Maps" })
vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "Quickfix List" })
vim.keymap.set("n", "<leader>fc", function()
  builtin.find_files({ cwd = "~/AppData/Local/nvim" })
end, { desc = "Config Files" })

telescope.load_extension("fzf")
telescope.load_extension("ui-select")
