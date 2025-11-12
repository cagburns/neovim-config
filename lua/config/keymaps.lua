--
-- Views/Sidebars
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Toggle File Explorer" })
vim.keymap.set("n", "<leader>vg", ":Neogit<CR>", { desc = "Open Git Status" })
vim.keymap.set("n", "<leader>vo", ":copen<CR>", { desc = "Toggle Quickfix" })
vim.keymap.set("n", "<leader>vt", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Requires toggleterm.nvim
-- vim.keymap.set("n", "<leader>vc", ":ChatGPT<CR>", { desc = "Open ChatGPT" }) -- Requires ChatGPT.nvim
-- vim.keymap.set("n", "<leader>vd", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Debugger" }) -- Requires nvim-dap

-- Editor Management
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Save All Files" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit" })
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

-- Refactoring and Formatting

-- NOTE these are already configured in lsp
-- vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename Symbol" }) -- Requires LSP
-- vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" }) -- Requires LSP

-- Errors
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle Trouble" })
vim.keymap.set("n", "<leader>en", ":lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>ep", ":lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous Diagnostic" })

-- Search
-- NOTE: Already configured in telescope
-- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live Grep" }) -- Requires Telescope
-- vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find Files" }) -- Requires Telescope

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down and Center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up and Center" })

-- Init.lua
-- Don't really need this cause of telescope
-- vim.keymap.set("n", "<leader>mv", ":e $MYVIMRC<CR>", { desc = "Open Init.lua" })

-- Leap.nvim
vim.keymap.set("n", "s", "<Plug>(leap)", { desc = "Leap" })
vim.keymap.set("n", "S", "<Plug>(leap-from-window)", { desc = "Leap Forward From Window" })
