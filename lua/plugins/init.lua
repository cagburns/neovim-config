local lazy = require("config.lazy")

-- Plugins that must be ready before the first buffer/UI paints: colorscheme,
-- LSP/mason/treesitter core, and oil (must beat netrw for `nvim .`/`:e dir`).
local eager = {
	"plugins.kanagawa",
	"plugins.mason",
	"plugins.lsp",
	"plugins.treesitter",
	"plugins.snacks",
	"plugins.vim-prettier",
	"plugins.repeat",
	"plugins.oil",
}

for _, module_name in ipairs(eager) do
	require(module_name)
end

-- Everything else is deferred until it's actually needed, so a big repo's
-- startup isn't paying for e.g. Roslyn, Telescope or Mason registry work it
-- hasn't asked for yet.

-- Fires on (almost) every real buffer anyway, just moved off the blocking
-- startup path.
lazy.on_event({ "BufReadPost", "BufNewFile" }, "plugins.gitsigns")
lazy.on_event({ "BufReadPost", "BufNewFile" }, "plugins.colorizer")
lazy.on_event({ "BufReadPost", "BufNewFile" }, "plugins.leap") -- keymaps.lua maps s/S to <Plug>(leap)
lazy.on_event("BufReadPre", "plugins.persistence")
lazy.on_startup("plugins.persistence", 0) -- safety net if nvim opens with no file args

lazy.on_event("InsertEnter", "plugins.copilot")
lazy.on_event("InsertEnter", "plugins.autopairs")
lazy.on_event({ "InsertEnter", "CmdlineEnter" }, "plugins.blink-cmp")

lazy.on_ft("lua", "plugins.lazydev")
-- Roslyn preload/background solution scanning only pays off once you're
-- actually editing .NET files - huge win on a large C# backend.
lazy.on_ft({ "cs", "fsharp", "sln" }, "plugins.easy-dotnet")
lazy.on_cmd({ "Secrets" }, "plugins.easy-dotnet")
lazy.on_keys({ { "<C-p>" } }, "plugins.easy-dotnet")

lazy.on_cmd({ "Telescope" }, "plugins.telescope")
lazy.on_keys({
	{ "<leader>ff" },
	{ "<leader>fg" },
	{ "<leader>fb" },
	{ "<leader>fr" },
	{ "<leader>fk" },
	{ "<leader>fq" },
	{ "<leader>fc" },
}, "plugins.telescope")

lazy.on_keys({
	{ "<leader>hh" },
	{ "<leader>hl" },
	{ "<leader>ha" },
	{ "<leader>hs" },
	{ "<leader>hd" },
	{ "<leader>hf" },
	{ "<leader>hg" },
	{ "<leader>hp" },
	{ "<leader>hn" },
	{ "<leader>fh" },
}, "plugins.harpoon")

-- nvim-surround registers its own ys/cs/ds/S mappings in setup(), safe to stub.
lazy.on_keys({
	{ "ys" },
	{ "yss" },
	{ "cs" },
	{ "ds" },
	{ "S", mode = "x" },
}, "plugins.surround")

lazy.on_cmd({ "Neotree" }, "plugins.neotree")
lazy.on_cmd({ "ToggleTerm", "TermExec", "TermSelect" }, "plugins.toggleterm")
lazy.on_cmd({ "Trouble" }, "plugins.trouble")
lazy.on_cmd({
	"GitBlameToggle",
	"GitBlameEnable",
	"GitBlameDisable",
	"GitBlameOpenCommitURL",
	"GitBlameOpenFileURL",
	"GitBlameCopySHA",
	"GitBlameCopyCommitURL",
	"GitBlameCopyFileURL",
	"GitBlameCopyPRURL",
}, "plugins.git-blame")

-- Cosmetic/UI-only, fine to load a tick after the UI has already painted.
lazy.on_startup("plugins.which-key", 0)
lazy.on_startup("plugins.smear-cursor", 0)
