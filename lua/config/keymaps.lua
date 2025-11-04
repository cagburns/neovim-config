-- Views/Sidebars
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Toggle File Explorer" })
-- vim.keymap.set("n", "<leader>vg", ":Git<CR>", { desc = "Open Git Status" }) -- Requires fugitive or lazygit
-- vim.keymap.set("n", "<leader>vd", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Debugger" }) -- Requires nvim-dap
-- vim.keymap.set("n", "<leader>vo", ":copen<CR>", { desc = "Toggle Quickfix" })
-- vim.keymap.set("n", "<leader>vt", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Requires toggleterm.nvim
-- vim.keymap.set("n", "<leader>vc", ":ChatGPT<CR>", { desc = "Open ChatGPT" }) -- Requires ChatGPT.nvim

-- Editor Management
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Save All Files" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit" })
vim.keymap.set("n", "<leader>wn", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>wp", ":bprevious<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split Window Vertically" })

-- Window Navigation
vim.keymap.set("n", "<leader>gp", "<C-w>h", { desc = "Focus Left Window" })
vim.keymap.set("n", "<leader>gn", "<C-w>l", { desc = "Focus Right Window" })

-- Refactoring and Formatting

-- NOTE these are already configured in lsp 
-- vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename Symbol" }) -- Requires LSP
-- vim.keymap.set("n", "<leader>rf", ":lua vim.lsp.buf.format({ async = true })<CR>", { desc = "Format Document" }) -- Requires LSP
-- vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" }) -- Requires LSP

-- Errors
-- vim.keymap.set("n", "<leader>vp", ":TroubleToggle<CR>", { desc = "Toggle Problems" }) -- Requires Trouble.nvim
vim.keymap.set("n", "<leader>]d", ":lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" }) -- Requires LSP
vim.keymap.set("n", "<leader>[d", ":lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous Diagnostic" }) -- Requires LSP

-- Search
-- NOTE: Already configured in telescope
-- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live Grep" }) -- Requires Telescope
-- vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find Files" }) -- Requires Telescope

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down and Center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up and Center" })
