vim.pack.add({ "https://github.com/prettier/vim-prettier" })

-- Prefer project-level prettier config (.prettierrc, prettier.config.*).
vim.g["prettier#config#config_precedence"] = "prefer-file"
vim.g["prettier#autoformat"] = 0
vim.g["prettier#autoformat_require_pragma"] = 0
vim.g["prettier#exec_cmd_path"] = "prettier"

local prettier_group = vim.api.nvim_create_augroup("VimPrettierFormat", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	group = prettier_group,
	pattern = {
		"*.js",
		"*.jsx",
		"*.ts",
		"*.tsx",
		"*.css",
		"*.scss",
		"*.less",
		"*.html",
		"*.json",
		"*.md",
		"*.yaml",
		"*.yml",
	},
	callback = function()
		vim.cmd("silent! PrettierAsync")
	end,
})
