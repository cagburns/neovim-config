return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = {
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
         {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      },
  config = function()
    require("telescope").setup({
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
        },
        file_ignore_patterns = { "node_modules", "build", "dist" },
        mappings = {
          i = {
            ["<C-u>"] = false,
        },
      },
      },
        pickers = {
          file_files = {
            hidden = true,
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
        case_mode = "smart_case",
          },
      },
    })

    require("telescope").load_extension("fzf")

  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find Files"})
  vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
  vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
  vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
  vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Key Maps" })
  end,
}
