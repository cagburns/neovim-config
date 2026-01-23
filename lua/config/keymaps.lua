-- Views/Sidebars
vim.keymap.set("n", "<leader>fe", ":Oil<CR>", { desc = "Toggle File Explorer" })
vim.keymap.set("n", "<leader>gg", ":Neogit<CR>", { desc = "Open Git Status" })
vim.keymap.set("n", "<leader>vo", ":copen<CR>", { desc = "Toggle Quickfix" })
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Requires toggleterm.nvim
vim.keymap.set("n", "\\", ":Neotree toggle<CR>", { desc = "Toggle Neotree" }) -- Requires neotree.nvim
-- vim.keymap.set("n", "<leader>vd", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Debugger" }) -- Requires nvim-dap

-- Editor Management
vim.keymap.set("n", "<leader>ss", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>sa", ":wa<CR>", { desc = "Save All Files" })
vim.keymap.set("n", "<leader>sq", ":wq<CR>", { desc = "Save and Quit" })
vim.keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Quit" })

-- Buffer Management
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Window Navigation
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Focus Left Window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Focus Right Window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Focus Lower Window" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Focus Upper Window" })

-- Errors
vim.keymap.set("n", "<leader>ee", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle Trouble" })
vim.keymap.set("n", "<leader>en", ":lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>ep", ":lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous Diagnostic" })

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down and Center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up and Center" })

-- Leap.nvim
vim.keymap.set("n", "s", "<Plug>(leap)", { desc = "Leap" })
vim.keymap.set("n", "S", "<Plug>(leap-from-window)", { desc = "Leap Forward From Window" })
