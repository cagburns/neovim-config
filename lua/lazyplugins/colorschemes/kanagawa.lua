return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			commentStyle = { italic = true },
			statementStyle = { bold = true },
		})
	end,
}
