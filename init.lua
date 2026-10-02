-- Cache compiled Lua bytecode so plugin modules don't get recompiled from
-- source on every startup (biggest single startup-time win, especially when
-- antivirus/EDR scanning makes cold file reads slow).
vim.loader.enable()

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("plugins")

vim.cmd.colorscheme("kanagawa-dragon")
