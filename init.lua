vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")

vim.cmd([[colorscheme kanagawa-dragon]])

-- Auto-clean old main.shada.tmp.* files on startup (Windows-safe)
local shada_dir = vim.fn.stdpath("data") .. "\\shada"
local max_age_days = 3 -- delete files older than this

local function clean_old_shada_temps()
	local handle = vim.loop.fs_scandir(shada_dir)
	if not handle then
		return
	end

	local entry = vim.loop.fs_scandir_next(handle)
	while entry do
		if entry:match("^main%.shada%.tmp%.") then
			local fullpath = shada_dir .. "\\" .. entry
			local stat = vim.loop.fs_stat(fullpath)
			if stat then
				local age_days = (os.time() - stat.mtime.sec) / 86400
				if age_days > max_age_days then
					os.remove(fullpath)
				end
			end
		end
		entry = vim.loop.fs_scandir_next(handle)
	end
end

-- Run once on startup
pcall(clean_old_shada_temps)
