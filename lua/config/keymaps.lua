-- Views/Sidebars
vim.keymap.set("n", "<leader>fe", ":Oil<CR>", { desc = "Toggle File Explorer" })
vim.keymap.set("n", "<leader>vo", ":copen<CR>", { desc = "Toggle Quickfix" })
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Requires toggleterm.nvim
vim.keymap.set("n", "\\", ":Neotree toggle<CR>", { desc = "Toggle Neotree" }) -- Requires neotree.nvim
vim.keymap.set("n", "<leader>cc", ":CopilotChatToggle<CR>", { desc = "Toggle Copilot Chat" })
-- vim.keymap.set("n", "<leader>vd", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Debugger" }) -- Requires nvim-dap

-- Editor Management
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Save All Files" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit" })
vim.keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Quit" })

-- Buffer Management
vim.keymap.set("n", "<leader>bl", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bh", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Window Navigation
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>wh", "<Esc><C-w>h", { desc = "Focus Left Window" })
vim.keymap.set("n", "<leader>wl", "<Esc><C-w>l", { desc = "Focus Right Window" })
vim.keymap.set("n", "<leader>wj", "<Esc><C-w>j", { desc = "Focus Lower Window" })
vim.keymap.set("n", "<leader>wk", "<Esc><C-w>k", { desc = "Focus Upper Window" })

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous Tab" })

-- Errors
vim.keymap.set("n", "<leader>ee", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle Trouble" })
vim.keymap.set("n", "<leader>el", ":lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>eh", ":lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous Diagnostic" })

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down and Center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up and Center" })

-- Leap.nvim
vim.keymap.set("n", "s", "<Plug>(leap)", { desc = "Leap" })
vim.keymap.set("n", "S", "<Plug>(leap-from-window)", { desc = "Leap Forward From Window" })

vim.keymap.set("n", "z%", "0<S-v>%zf", { desc = "Fold to Matching Bracket" })
vim.keymap.set("n", "zi", "gg<S-v>}zf", { desc = "Fold imports" })

vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Equalize Window Sizes" })
